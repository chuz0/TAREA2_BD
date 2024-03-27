import express from 'express'
import config from './config'
import empleadoRoutes from './routes/empleado.routes'

const app = express()


//settings
app.set('port', config.port)

//middlewares
app.use(express.json());
app.use(express.urlencoded({extended: false}));

app.use(empleadoRoutes)

export default app
