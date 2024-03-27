import { getConnection } from "../database/conexion"

export const getEmpleado = async   (req, res) => {
    const pool = await getConnection();
    const result = await pool.request().query('SELECT * FROM empleado')
    res.json(result.recordset)
}

export const createEmpleado = async (req, res) => {
    const {Nombre, Identificacion, IdPuesto, FechaContratacion, SaldoVacaciones, EsActivo} = req.body

    console.log(Nombre, Identificacion, IdPuesto, FechaContratacion, SaldoVacaciones, EsActivo) 

    res.json('creating empleado')
}

