const conn = require('./databaseConfig');
const ruanganDb = {
    getKpop: (callback) => {
        conn.getConnection((err, con) => {
            if (err) {
                console.log(err);
                return callback(err, null);
            }
            const sql = 'SELECT * FROM kpop';
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
    getKpopId: (id, callback) => {
        conn.getConnection((err, con) => {
            if (err) {
                console.log(err);
                return callback(err, null);
            }
            const sql = 'SELECT * FROM kpop WHERE id=?';
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
    addKpop: (name, shortBio, bio, agency, debut, yearsActive, mostPopularMember, fandom, member, image, callback) => {
        conn.getConnection((err, con) => {
            if (err) {
                console.log(err);
                return callback(err, null);
            }
            const shortid = require('shortid');
            const id = shortid.generate();
            const sql = 'INSERT INTO kpop (id, name, shortBio, bio, agency, debut, yearsActive, mostPopularMember, fandom, member, image) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)';
            con.query(sql, [id, name, shortBio, bio, agency, debut, yearsActive, mostPopularMember, fandom, member, image], (err, res) => {
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

module.exports = ruanganDb;
