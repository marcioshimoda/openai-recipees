const express = require('express');
const mysql = require('mysql2');
const cors = require('cors');

const db = mysql.createPool({
    host: 'mysql_db', // the host name MYSQL_DATABASE: node_mysql
    user: 'admin', // database user MYSQL_USER: MYSQL_USER
    password: '4dm1n', // database user password MYSQL_PASSWORD: MYSQL_PASSWORD
    database: 'admin' // database name MYSQL_HOST_IP: mysql_db
  })

const app = express();
app.use(express.json())
app.use(express.urlencoded({ extended: true}))

app.use(cors())

app.get('/', (req, res) => {
    res.send('Hi There')
});

app.get('/list', (req, res) => {
    const SelectQuery = " SELECT * FROM food";
    db.query(SelectQuery, (err, result) => {
      res.send(result)
    })
})

app.post("/insert", (req, res) => {
    const foodName = req.body.setFoodName;
    const foodType = req.body.setType;
    const InsertQuery = "INSERT INTO food (id_type, name) VALUES (?, ?)";
    db.query(InsertQuery, [foodType, foodName], (err, result) => {
      console.log(result)
    })
})

app.delete("/delete/:foodId", (req, res) => {
    const foodId = req.params.foodId;
    const DeleteQuery = "DELETE FROM food WHERE id = ?";
    db.query(DeleteQuery, foodId, (err, result) => {
      if (err) console.log(err);
    })
})

app.put("/update/:foodId", (req, res) => {
console.log(req)
    const foodName = req.body.setFoodName;
    const foodId = req.params.setType;
    const UpdateQuery = "UPDATE food SET name = ? WHERE id = ?";
    db.query(UpdateQuery, [foodName, foodId], (err, result) => {
      if (err) console.log(err)
    })
})

app.listen('3001', () => { })



