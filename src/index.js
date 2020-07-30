const express = require('express');
const pool = require('./utils/db');
const { request, response } = require('express');
const { createPool } = require('mysql');
const app = express();





// const hamxuly = (request, response) => {

//     const data = {
//         name: 'huu',
//         tuoi: '18'
//     } 
//     response.send(data);
// }

app.get('/', (request, response) => {

    pool.query('select * from `user`;', (err, data) => {
        if (err) { response.send(err) }
        console.log(data);
        response.send(data)
    })
});
const callback = () => {
    console.log("mày đã chạy ở cổng 8080");
}
app.listen(8080, callback);