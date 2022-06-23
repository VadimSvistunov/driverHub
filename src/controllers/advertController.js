class AdvertController {

    async create (res,req) {
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

    async show (res,req) {
        const {id} = req.params
        const advert = await Advert.findOne({where: {id}})
        if (!advert) {
            return res.status(400).send({ message: "There arn`t such advert" });
        }
        return res.json(advert)
    }

}

module.exports = new AdvertController()