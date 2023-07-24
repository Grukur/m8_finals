import express from "express";
import {createUser, findUserById, findAll, updateUserById, deleteUserById, changeStatus, login} from "../controllers/user.controller.js";
import {validateEmail} from '../middleware/verifySignUp.js';
import {emitToken, verifyToken} from '../middleware/auth.js';

const router = express.Router();

router.get("/", findAll);
router.post("/", createUser);
router.post("/login", validateEmail, emitToken, login);
router.get("/:id", findUserById);
router.put("/:id", verifyToken, updateUserById);
router.delete("/:id", verifyToken, changeStatus);
router.delete("/destroy/:id", verifyToken, deleteUserById);


export default router;