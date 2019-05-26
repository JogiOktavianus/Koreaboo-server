const conn = require('./databaseConfig');
const kdramaDb = {
    getKdrama: (callback) => {
        conn.getConnection((err, con) => {
            if (err) {
                console.log(err);
                return callback(err, null);
            }
            const sql = 'SELECT * FROM kdrama';
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
    getKdramaId: (id, callback) => {
        conn.getConnection((err, con) => {
            if (err) {
                console.log(err);
                return callback(err, null);
            }
            const sql = 'SELECT * FROM kdrama WHERE id=?';
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
    addKdrama: (title, synopsisShort, synopsis, revised, hangul, director, writer, network, episodes, releaseDate, cast, poster, callback) => {
        conn.getConnection((err, con) => {
            if (err) {
                console.log(err);
                return callback(err, null);
            }
            const shortid = require('shortid');
            const id = shortid.generate();
            const sql = 'INSERT INTO kdrama (id, title, synopsisShort, synopsis, revised, hangul, director, writer, network, episodes, releaseDate, cast, poster) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)';
            con.query(sql, [id, title, synopsisShort, synopsis, revised, hangul, director, writer, network, episodes, releaseDate, cast, poster], (err, res) => {
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

module.exports = kdramaDb;
