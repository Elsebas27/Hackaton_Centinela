from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker

# Configuración de la base de datos
DB_USER = 'root'      # Reemplaza con tu nombre de usuario
DB_PASSWORD = ''  # Reemplaza con tu contraseña
DB_HOST = 'localhost'     # Cambia si tu base de datos está en otro host
DB_NAME = 'centinela'     # Reemplaza con el nombre de tu base de datos

# Crear la cadena de conexión
DATABASE_URL = f'mysql+pymysql://{DB_USER}:{DB_PASSWORD}@{DB_HOST}/{DB_NAME}'

# Crear el motor de conexión
engine = create_engine(DATABASE_URL)

# Crear una clase de sesión
Session = sessionmaker(bind=engine)

from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker

# Configuración de la base de datos
DB_USER = 'root'      # Reemplaza con tu nombre de usuario
DB_PASSWORD = ''  # Reemplaza con tu contraseña
DB_HOST = 'localhost'     # Cambia si tu base de datos está en otro host
DB_NAME = 'centinela'     # Reemplaza con el nombre de tu base de datos

# Crear la cadena de conexión
DATABASE_URL = f'mysql+pymysql://{DB_USER}:{DB_PASSWORD}@{DB_HOST}/{DB_NAME}'

# Crear el motor de conexión
engine = create_engine(DATABASE_URL)

# Crear una clase de sesión
Session = sessionmaker(bind=engine)

def get_session():
    """Función para obtener una nueva sesión."""
    session = Session()
    return session

if __name__ == "__main__":
    # Probar la conexión
    try:
        with engine.connect():
            print("Conexión a la base de datos exitosa.")
    except Exception as e:
        print(f"Error en la conexión: {e}")
