const Router = require('express')
const router = new Router()
const advertRouter = require('./advertRouter')
const carRouter = require('./carRouter')

router.use('/adverts', advertRouter)
router.use('/cars', carRouter)

module.exports = router
