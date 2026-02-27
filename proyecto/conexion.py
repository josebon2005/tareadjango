import mysql.connector
from mysql.connector import Error

# Datos de conexión
HOST = "localhost"
PORT = 3306
USER = "root"
PASSWORD = "root"
DATABASE = "videojuegos"

try:
    # Crear conexión
    conexion = mysql.connector.connect(
        host=HOST,
        port=PORT,
        user=USER,
        password=PASSWORD,
        database=DATABASE
    )

    if conexion.is_connected():
        print(" Conexión exitosa a la base de datos 'videojuegos'")

        cursor = conexion.cursor()
        cursor.execute("SHOW TABLES;")
        tablas = cursor.fetchall()

        print("\n Tablas encontradas:")
        for tabla in tablas:
            print("-", tabla[0])

except Error as e:
    print(" Error al conectar:", e)

finally:
    if 'conexion' in locals() and conexion.is_connected():
        cursor.close()
        conexion.close()
        print("\n Conexión cerrada correctamente.")