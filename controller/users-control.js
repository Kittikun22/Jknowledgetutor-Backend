const mysql = require('mysql');
const bcrypt = require('bcrypt');
const saltRounds = 10;
const jwt = require('jsonwebtoken');
const secret = 'Jknowledge-login-nodejs-login-21-10-22'

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

    bcrypt.hash(password, saltRounds, (err, hashPassword) => {
        db.query("INSERT INTO j_users (tel, password, access_level) VALUES (?,?,?)",
            [tel, hashPassword, access_level],
            (err, result) => {
                if (err) {
                    console.log(err);
                } else {
                    res.send('register successfully.')
                }
            }

        );
    });
};

const Signin = (req, res) => {
    const tel = req.body.tel;
    const password = req.body.password;

    db.query("SELECT * FROM j_users WHERE tel= ?", [tel],
        (err, result) => {
            if (err) {
                res.json({ status: 'error', message: err });
            }
            if (result.length == 0) {
                res.json({ status: 'error', message: 'ไม่พบเบอร์โทรศัพท์!' })
            }
            if (result.length > 0) {
                bcrypt.compare(password, result[0].password, (err, isLogin) => {
                    if (isLogin) {
                        const token = jwt.sign({ tel: result[0].tel }, secret);
                        res.json({ status: 'ok', message: result, token })
                    } else {
                        res.json({ status: 'error', message: 'รหัสผ่านไม่ถูกต้อง' })
                    }
                });
            }
        })
}

const authToken = (req, res) => {
    try {
        const token = req.body.headers.Authorization.split(' ')[1];
        const decoded = jwt.verify(token, secret);
        res.send({ status: 'ok', decoded });
    } catch (err) {
        res.send({ status: 'error', message: err.message })
    }
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
    Signin,
    authToken
};