const mysql = require('mysql');

const db = mysql.createConnection({
    user: "root",
    host: "localhost",
    password: "",
    database: "jknowledge"
});

const createUser = (req, res) => {
    const tel = req.body.tel;
    const password = req.body.password;
    const access_level = req.body.access_level;

    db.query("INSERT INTO j_users (tel, password, access_level) VALUES (?,?,?)",
        [tel, password, access_level],
        (err, result) => {
            if (err) {
                console.log(err);
            } else {
                res.send("Inserted")
            }
        }

    );
};
const Signin = (req, res) => {
    const tel = req.body.tel;
    const password = req.body.password;

    db.query("SELECT * FROM j_users WHERE tel= ? AND password= ?", [tel, password],
        (err, result) => {
            if (err) {
                res.send({ err: err });
            }
            if (result.length > 0) {
                res.send(result);
            } else {
                res.send({ message: "Something Wrong, Check Your tel and password" })
            }
        })
}

const getUsers = (req, res) => {
    db.query("SELECT * FROM j_users", (err, result) => {
        if (err) {
            console.log(err);
        } else {
            res.send(result);
        }
    });
};

const updateUser = (req, res) => {
    const id = req.body.id;
    const access_level = req.body.access_level;
    db.query("UPDATE j_users SET access_level = ? WHERE id = ?",
        [access_level, id],
        (err, result) => {
            if (err) {
                console.log(err);
            } else {
                res.send(result);
            }
        });
};

const deleteUser = (req, res) => {
    const id = req.params.id;
    console.log(id);
    db.query("DELETE FROM j_users WHERE id = ?", id, (err, result) => {
        if (err) {
            console.log(err);
        } else {
            res.send(result);
        }
    });
};

module.exports = {
    getUsers,
    createUser,
    updateUser,
    deleteUser,
    Signin
};