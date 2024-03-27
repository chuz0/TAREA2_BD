import { Router } from "express";
import { createEmpleado, getEmpleado } from "../controllers/empleado.controller";

const router = Router();

router.get('/empleado', getEmpleado)

router.post('/empleado', createEmpleado)

router.delete('/empleado', )

router.put('/empleado', )

export default router;