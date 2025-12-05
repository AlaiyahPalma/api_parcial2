import pymysql


connector = pymysql.connect(
  user="root",
  password="",
  host="127.0.0.1",
  port=3306,
  database="bd_parcial2"
)
cursor = connector.cursor()
cursor.execute('SELECT * FROM abogado')
result = cursor.fetchall()
print(result)



cursor = connector.cursor()
cursor.execute('SELECT * FROM aseguradora')
result = cursor.fetchall()
print(result)


cursor = connector.cursor()
cursor.execute('SELECT * FROM expedientes')
result = cursor.fetchall()
print(result)

query1 = "INSERT INTO abogado (nombre, apellido, telefono, cedula, correo) VALUES (%s, %s, %s, %s, %s)"
values = ('Cristina', 'Ramirez', '63106790', '9-444-1234', 'Crisramirez28@gmail.com')

cursor.execute(query1, values)
connector.commit()

cursor.execute('SELECT * FROM abogado')
result = cursor.fetchall()
for fila in result:
    print(fila)


cursor.close()
connector.close()