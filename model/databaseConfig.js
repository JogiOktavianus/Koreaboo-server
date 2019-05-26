const mysql = require('mysql');
const dbConnect = mysql.createPool({
    host: 'remotemysql.com',
    user: '63N8KO9ZzK',
    password: 'F3QdJwFM2h',
    database: '63N8KO9ZzK'
});

module.exports = dbConnect;
