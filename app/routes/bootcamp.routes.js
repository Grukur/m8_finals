import express from "express";
import {createBootcamp, findAll, addUser, findById} from "../controllers/bootcamp.controller.js";
import {emitToken, verifyToken} from '../middleware/auth.js';

const router = express.Router();

router.get("/", findAll);
router.get("/:id", findById);
router.post("/", verifyToken, createBootcamp);
router.post("/vinculate", verifyToken, addUser);

export default router;