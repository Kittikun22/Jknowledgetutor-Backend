const express = require('express')

const { checkoutCreditCard } = require('../controller/omise-control')

const omiseRoute = express.Router()

omiseRoute.post('/checkout-credit-card', checkoutCreditCard)

module.exports = omiseRoute