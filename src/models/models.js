const sequelize = require('../db')
const {DataTypes} = require('sequelize')

const Advert = sequelize.define("advert", {
    id: {type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true},
    type: {type: DataTypes.STRING},
    title: {type: DataTypes.STRING},
    description: {type: DataTypes.STRING}
})

module.exports = {
    Advert
}