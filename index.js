import sequelize from "./app/config/db.config.js";
import app from "./app/app.js";

//importamos modelos
import "./app/models/asociaciones.js";
import "./app/models/bootcamp.model.js";
import "./app/models/user.model.js";

const main = async () => {
    try {
        await sequelize.authenticate();
        await sequelize.sync({ force: false, alter: true });
        let PORT = 3000;
        app.listen(PORT, () =>
            console.log("Servidor escuchando en http://localhost:" + PORT)
        );
    } catch (error) {
        console.log("Ha ocurrido un error: ", error);
    }
};

main();