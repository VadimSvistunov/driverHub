const Router = require('express')
const router = new Router()
const carController = require('../controllers/carController')

router.get('/', carController.index)

module.exports = router