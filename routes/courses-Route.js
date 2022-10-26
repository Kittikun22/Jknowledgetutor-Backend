const express = require('express')

const { getCourses,
    createCourses,
    getACourse } = require('../controller/courses-control')

const courseRoute = express.Router()

courseRoute.get('/courses', getCourses)
courseRoute.post('/create-course', createCourses)
courseRoute.get('/getACourse/:courses_id', getACourse)

module.exports = courseRoute