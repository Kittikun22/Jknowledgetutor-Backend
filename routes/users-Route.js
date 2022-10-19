const express = require('express')

const { getUsers,
    createUser,
    updateUser,
    deleteUser,
    Signin } = require('../controller/users-control')

const userRoute = express.Router()

userRoute.get('/users', getUsers)
userRoute.post('/create-user', createUser)
userRoute.put('/update', updateUser)
userRoute.delete('/delete/:id', deleteUser)
userRoute.post('/signin', Signin)


module.exports = userRoute