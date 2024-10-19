import pandas as pd
from db_connection import get_session
from datetime import datetime

# Obtener la sesión de la base de datos
session = get_session()

try:
    # Cargar datos desde las tablas
    incidentes_df = pd.read_sql('SELECT * FROM incidente_criminal', session.bind)
    print("Incidentes DataFrame Loaded:")
    print(incidentes_df.head())

    ubicaciones_df = pd.read_sql('SELECT * FROM ubicacion', session.bind)
    print("Ubicaciones DataFrame Loaded:")
    print(ubicaciones_df.head())

    victimas_df = pd.read_sql('SELECT * FROM victima', session.bind)
    print("Victimas DataFrame Loaded:")
    print(victimas_df.head())

    # Comprobar valores nulos
    print("Incidentes id_victima missing values:", incidentes_df['id_victima'].isnull().sum())
    print("Victimas id_victima missing values:", victimas_df['id_victima'].isnull().sum())
    print("Incidentes id_ubicacion missing values:", incidentes_df['id_ubicacion'].isnull().sum())
    print("Ubicaciones id_ubicacion missing values:", ubicaciones_df['id_ubicacion'].isnull().sum())

    # Verificar tipos de datos
    print("Incidentes id_victima type:", incidentes_df['id_victima'].dtype)
    print("Victimas id_victima type:", victimas_df['id_victima'].dtype)
    print("Incidentes id_ubicacion type:", incidentes_df['id_ubicacion'].dtype)
    print("Ubicaciones id_ubicacion type:", ubicaciones_df['id_ubicacion'].dtype)

    # Imprimir valores únicos
    print("Incidentes id_ubicacion unique values:", incidentes_df['id_ubicacion'].unique())
    print("Ubicaciones id_ubicacion unique values:", ubicaciones_df['id_ubicacion'].unique())

    # Limpieza de datos
    incidentes_df['id_ubicacion'] = incidentes_df['id_ubicacion'].astype(int)
    ubicaciones_df['id_ubicacion'] = ubicaciones_df['id_ubicacion'].astype(int)

    # Fusionar DataFrames por 'id_victima'
    if 'id_victima' in incidentes_df.columns and 'id_victima' in victimas_df.columns:
        análisis_df = incidentes_df.merge(victimas_df, on='id_victima', how='inner')
        print("DataFrames merged on id_victima successfully.")
    else:
        raise KeyError("Error: 'id_victima' not found in one of the DataFrames.")

    # Verificar si 'id_ubicacion' está presente antes de intentar fusionar
    if 'id_ubicacion' in análisis_df.columns:
        análisis_df = análisis_df.merge(ubicaciones_df, on='id_ubicacion', how='inner')
        print("DataFrames merged on id_ubicacion successfully.")
    else:
        raise KeyError("Error: 'id_ubicacion' not found in the merged DataFrame.")

    # Agrupar los datos para obtener la información deseada
    resultados = (análisis_df.groupby('id_ubicacion')
                  .agg(total_incidentes=('id_incidencia', 'count'),
                       delito_predominante=('tipo', lambda x: x.mode()[0]),
                       grupo_vulnerable=('genero', lambda x: x.mode()[0]),
                       edad_promedio=('edad', 'mean'))
                  .reset_index())

    # Añadir la fecha de análisis
    resultados['fecha_analisis'] = datetime.now()

    # Insertar los resultados en la tabla de análisis
    for index, row in resultados.iterrows():
        insert_query = f"""
        INSERT INTO analisis_delictivo (id_ubicacion, total_incidentes, delito_predominante, grupo_vulnerable, edad_promedio, fecha_analisis)
        VALUES ({row['id_ubicacion']}, {row['total_incidentes']}, '{row['delito_predominante']}', '{row['grupo_vulnerable']}', {row['edad_promedio']:.2f}, '{row['fecha_analisis']}');
        """
        with session.bind.connect() as connection:
            connection.execute(insert_query)

    print("Análisis delictivo completado e insertado en la base de datos.")

except Exception as e:
    print(f"Error al cargar datos: {e}")
