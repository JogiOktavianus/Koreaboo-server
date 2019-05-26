const conn = require('./databaseConfig');
const kvarietyshowDb = {
    getKvarietyshow: (callback) => {
        conn.getConnection((err, con) => {
            if (err) {
                console.log(err);
                return callback(err, null);
            }
            const sql = 'SELECT * FROM kvarietyshow';
            con.query(sql, null, (err, res) => {
                con.release();
                if (err) {
                    console.log(err);
                    return callback(err, null);
                }
                return callback(null, res);
            });
        });
    },
    getKvarietyshowId: (id, callback) => {
        conn.getConnection((err, con) => {
            if (err) {
                console.log(err);
                return callback(err, null);
            }
            const sql = 'SELECT * FROM kvarietyshow WHERE id=?';
            con.query(sql, [id], (err, res) => {
                con.release();
                if (err) {
                    console.log(err);
                    return callback(err, null);
                }
                return callback(null, res);
            });
        });
    },
    addKvarietyshow: (title, synopsisShort, synopsis, aka, airTime, director, broadcastNetwork, released, cast, poster, callback) => {
        conn.getConnection((err, con) => {
            if (err) {
                console.log(err);
                return callback(err, null);
            }
            const shortid = require('shortid');
            const id = shortid.generate();
            const sql = 'INSERT INTO kvarietyshow (id, title, synopsisShort, synopsis, aka, airTime, director, broadcastNetwork, released, cast, poster) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)';
            con.query(sql, [id, title, synopsisShort, synopsis, aka, airTime, director, broadcastNetwork, released, cast, poster], (err, res) => {
                con.release();
                if (err) {
                    console.log(err);
                    return callback(err, null);
                }
                return callback(null, res);
            });
        });
    }

}

module.exports = kvarietyshowDb;
