import { DataTypes } from "sequelize";
import sequelize from "../config/db.config.js";

const User = sequelize.define(
    "users",
    {
        firstName: {
            type: DataTypes.STRING(50),
            allowNull: false,
            validate: {
                notEmpty: true,
            },
        },
        lastName: {
            type: DataTypes.STRING(50),
            allowNull: false,
            validate: {
                notEmpty: true,
            },
        },
        email: {
            type: DataTypes.STRING(254),
            allowNull: false,
            unique: true,
            validate: {
                isEmail: true,
                notEmpty: true,
            },
        },
        status: {
            type: DataTypes.BOOLEAN,
            defaultValue: true
        },
        password: {
            type: DataTypes.STRING,
            validate: {
                len: [8]
            }
        }
    },
    {
        timestamps: true,
        tableName: "users",
    }
);

export default User;