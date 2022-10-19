const express = require('express')

const { getCourses,
    createCourses } = require('../controller/courses-control')

    const courseRoute = express.Router()

    courseRoute.get('/courses', getCourses)
    courseRoute.post('/create-course',createCourses)

module.exports = courseRoute