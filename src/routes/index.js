const Router = require('express')
const router = new Router()
const advertRouter = require('./advertRouter')


router.use('/advert', userRouter)


module.exports = router