const {Advert} = require('../models/models')

class AdvertController {

    async create (req, res) {
    
        const {title, description} = req.body
        if (!title || !description) {
            return res.status(400).send({ message: "Invalid data" })
        }
        const candidate = await Advert.findOne({where: {title}})
        if (candidate) {
            return res.status(400).send({ message: "Such advert already exist" });
        }
        const advert = await Advert.create({title, description})
        return res.json(advert)
    }

    async show (req, res) {
        const {id} = req.params
        const advert = await Advert.findOne({where: {id}})
        if (!advert) {
            return res.status(400).send({ message: "There arn`t such advert" });
        }
        return res.json(advert)
    }

}

module.exports = new AdvertController()