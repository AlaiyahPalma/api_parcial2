from flask import Flask, request, jsonify
import pymysql

app = Flask(__name__)

def getConexion():
    connector = pymysql.connect(
        user="root",
        password="",
        host="127.0.0.1",
        port=3306,
        database="bd_parcial2",
        cursorclass=pymysql.cursors.DictCursor
    )
    return connector


@app.route('/abogados', methods=['GET'])
def getAbogados():
    connector = getConexion()
    cursor = connector.cursor()

    cursor.execute('SELECT * FROM abogado')
    result = cursor.fetchall()

    cursor.close()
    connector.close()

    return jsonify(result)


@app.route('/abogados', methods=['POST'])
def addAbogado():

    data = request.get_json()

    nombre = data.get('nombre')
    apellido = data.get('apellido')
    telefono = data.get('telefono')
    cedula = data.get('cedula')
    correo = data.get('correo')

    connector = getConexion()
    cursor = connector.cursor()

    query = "INSERT INTO abogado (nombre, apellido, telefono, cedula, correo) VALUES (%s, %s, %s, %s, %s)"
    values = (nombre, apellido, telefono, cedula, correo)

    cursor.execute(query, values)
    connector.commit()

    cursor.close()
    connector.close()

    return jsonify({"mensaje": "Abogado agregado correctamente"}), 201



if __name__ == '__main__':
    app.run(debug=True)

