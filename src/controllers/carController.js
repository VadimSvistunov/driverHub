const {Advert} = require('../models/models')

class CarController {
    async index (req, res) {
        const adverts = await Advert.findAll({where: {type: 'car'}})

        return res.json(adverts)
    }
}

module.exports = new CarController()
