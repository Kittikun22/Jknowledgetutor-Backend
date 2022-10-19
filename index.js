const express = require('express');
const cors = require('cors');
require('dotenv').config()
const omiseRoutes = require('./routes/omise-Route');
const userRoutes = require('./routes/users-Route')
const courseRoute = require('./routes/courses-Route')

const app = express();
app.use(cors());
app.use(express.json());


app.use(omiseRoutes);
app.use(userRoutes);
app.use(courseRoute);

app.listen('3001', () => {
    console.log("Server is running on port :3001");
});

// const db = mysql.createConnection({
//     user: "	jknowledge_react",
//     host: "localhost",
//     password: "pCWChBsi4X",
//     database: "jknowledge_react"
// })