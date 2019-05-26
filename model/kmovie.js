const conn = require('./databaseConfig');
const kmovieDb = {
    getKmovie: (callback) => {
        conn.getConnection((err, con) => {
            if (err) {
                console.log(err);
                return callback(err, null);
            }
            const sql = 'SELECT * FROM kmovie';
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
    getKmovieId: (id, callback) => {
        conn.getConnection((err, con) => {
            if (err) {
                console.log(err);
                return callback(err, null);
            }
            const sql = 'SELECT * FROM kmovie WHERE id=?';
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
    addKmovie: (title, synopsisShort, synopsis, movie, revised, hangul, director, writer, producer, cinematographer, releaseDate, runtime, genre, distributor, cast, poster, callback) => {
        conn.getConnection((err, con) => {
            if (err) {
                console.log(err);
                return callback(err, null);
            }
            const shortid = require('shortid');
            const id = shortid.generate();
            const sql = 'INSERT INTO kmovie (id, title, synopsisShort, synopsis, movie, revised, hangul, director, writer, producer, cinematographer, releaseDate, runtime, genre, distributor, cast, poster) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)';
            con.query(sql, [id, title, synopsisShort, synopsis, movie, revised, hangul, director, writer, producer, cinematographer, releaseDate, runtime, genre, distributor, cast, poster], (err, res) => {
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

module.exports = kmovieDb;
