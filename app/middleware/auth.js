import jwt from 'jsonwebtoken';
import Usuario from '../models/user.model.js';
import secret from '../config/auth.config.js';


export const emitToken = async(req, res, next) => {
    let {email, password} = req.body;
    let usuario = await Usuario.findOne({
        where: {email, password},
        attributes: ['id', 'firstName', 'email']
    })
    if(!usuario){
        return res.status(401).send('Credenciais inválidas');
    }
    let token = jwt.sign(JSON.stringify(usuario), secret)
    req.token = token;
    next();
}

export const verifyToken = (req, res, next) => {
    try{
        let token = req.headers['authorization'];
        token = token.split(' ')[1];
        console.log(token)
        if(!token.length > 0){
            throw new Error('No se ha proporcionado un token valido')
        }

        jwt.verify(token, secret, (error, decoded) => {
            if(error){
                res.status(401).json({
                    code:401,
                    message:`Debe proporcionar un toke vaildo`
                })
            }
            req.usuario = decoded
            next()
        })
    }catch(error){
        console.log(error)
    }
}
