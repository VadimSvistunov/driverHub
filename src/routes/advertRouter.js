const Router = require('express')
const router = new Router()
const advertController = require('../controllers/advertController')

router.post('/', advertController.create)
router.get('/:id', advertController.show)

module.exports = router