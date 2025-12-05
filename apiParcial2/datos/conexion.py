import pymysql


conexion = pymysql.connect(
    user="root",
    password="",
    host="127.0.0.1",
    port=3306,
    database="bd_parcial2",
    cursorclass=pymysql.cursors.DictCursor
)

cursor = conexion.cursor()


def getEntidad(tabla):
    cursor.execute(f"SELECT * FROM {tabla}")
    datos = cursor.fetchall()
    return datos


def addAbogado():
    nombre = "Cristina"
    apellido = "Ramirez"
    telefono = "65432100"
    cedula = "9-654-1234"
    correo = "crisram@gmail.com"

    query = "INSERT INTO abogado (nombre, apellido, telefono, cedula, correo) VALUES (%s,%s,%s,%s,%s)"
    valores = (nombre, apellido, telefono, cedula, correo)

    cursor.execute(query, valores)
    conexion.commit()

    return True


print("Abogados antes de insertar:")
print(getEntidad("abogado"))

addAbogado()

print("Abogados después de insertar:")
print(getEntidad("abogado"))


cursor.close()
conexion.close()

