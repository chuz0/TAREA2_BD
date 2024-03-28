import { getConnection, sql } from "../database/conexion";

//obtener todos los empleados
export const getEmpleado = async   (req, res) => {
    try {
        const pool = await getConnection();
        const result = await pool.request().query('SELECT * FROM Empleados')
        res.json(result.recordset)
    } catch (error) {
        res.status(500);
        res.send(error.message);
    }
}

//crear un empleado
export const createEmpleado = async (req, res) => {
    const {Puesto, ValorDocumentoIdentidad, Nombre, FechaContratacion} = req.body

    if(Puesto == null || ValorDocumentoIdentidad == null || Nombre == null || FechaContratacion == null){
        return res.status(400).json({msg: 'Rellene todos los campos'})
    }

    const pool = await getConnection()
    await pool.request().input('Puesto', sql.VarChar, Puesto).input('ValorDocumentoIdentidad', sql.Int, ValorDocumentoIdentidad).input('Nombre', sql.VarChar, Nombre).input('FechaContratacion', sql.VarChar, FechaContratacion).query('INSERT INTO EMPLEADOS(Puesto, ValorDocumentoIdentidad, Nombre, FechaContratacion) VALUES (@Puesto, @ValorDocumentoIdentidad, @Nombre, @FechaContratacion)')
    res.json('creating empleado')
}

