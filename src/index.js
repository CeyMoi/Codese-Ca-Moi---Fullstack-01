const express = require('express');
const pool = require('./utils/db');
const { request, response } = require('express');
const { createPool } = require('mysql');
const app = express();

app.get('/user', (request, response) => {

    pool.query('select * from `user`;', (err, data) => {
        if (err) { response.send(err) }
        console.log(data);
        response.send(data)
    })
});

app.get('/category', (request, response) => {

    pool.query('select * from `category`;', (err, data) => {
        if (err) { response.send(err) }
        console.log(data);
        response.send(data)
    })
});

app.get('/order', (request, response) => {

    pool.query('select * from `order`;', (err, data) => {
        if (err) { response.send(err) }
        console.log(data);
        response.send(data)
    })
});

app.get('/product', (request, response) => {

    pool.query('select * from `product`;', (err, data) => {
        if (err) { response.send(err) }
        console.log(data);
        response.send(data)
    })
});


const callback = () => {
    console.log("mày đã chạy ở cổng 8080");
}
app.listen(8080, callback);