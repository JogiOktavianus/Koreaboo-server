const express = require('express');
const app = express();

const bodyParser = require('body-parser');
const urlEncodedParser = bodyParser.urlencoded({
    extended: false
});
const jsonParser = bodyParser.json();

const path = require('path');

const cors = require('cors');
app.use(urlEncodedParser);
app.use(jsonParser);
app.use(cors());
app.use(express.static(path.join(__dirname, '../public')));
app.use((req, res, next) => {
    res.header('Access-Control-Allow-Origin', '*');
    res.header('Access-Control-Allow-Headers', '*, content-type');
    if (req.method === 'OPTIONS') {
        res.header('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE');
        return res.status(200).json({});
    }
    next();
});

const kdrama = require('../model/kdrama');
const kpop = require('../model/kpop');
const kmovie = require('../model/kmovie');
const kvarietyshow = require('../model/kvarietyshow');
const user = require('../model/user');

app.get('/api/kdrama', (req, res, next) => {
    kdrama.getKdrama((err, result) => {
        if (err) {
            console.log(err);
            return res.status(500).send(err);
        }
        const data = result.map(val => {
            const cast = val.cast.split(', ');
            return {
                ...val,
                cast: cast
            }
        });
        res.status(200).send(data);
    });
});

app.get('/api/kdrama/:id', (req, res, next) => {
    const {
        id
    } = req.params;
    kdrama.getKdramaId(id, (err, result) => {
        if (err) {
            console.log(err);
            return res.status(500).send(err);
        }
        const data = result.map(val => {
            const cast = val.cast.split(', ');
            return {
                ...val,
                cast: cast
            }
        });
        res.status(200).send(data[0]);
    });
});

app.post('/api/kdrama/', (req, res, next) => {
    const {
        title,
        synopsisShort,
        synopsis,
        revised,
        hangul,
        director,
        writer,
        network,
        episodes,
        releaseDate,
        cast,
        poster
    } = req.body;
    kdrama.addKdrama(title, synopsisShort, synopsis, revised, hangul, director, writer, network, episodes, releaseDate, cast, poster, (err, result) => {
        if (err) {
            console.log(err);
            return res.status(500).send(err);
        }
        res.status(200).send(result);
    });
});

app.get('/api/kpop', (req, res, next) => {
    kpop.getKpop((err, result) => {
        if (err) {
            console.log(err);
            return res.status(500).send(err);
        }
        const data = result.map(val => {
            const member = JSON.parse(val.member);
            return {
                ...val,
                member
            }
        });
        res.status(200).send(data);
    });
});

app.get('/api/kpop/:id', (req, res, next) => {
    const {
        id
    } = req.params;
    kpop.getKpopId(id, (err, result) => {
        if (err) {
            console.log(err);
            return res.status(500).send(err);
        }
        const data = result.map(val => {
            const member = JSON.parse(val.member);
            return {
                ...val,
                member
            }
        });
        res.status(200).send(data[0]);
    });
});

app.post('/api/kpop/', (req, res, next) => {
    const {
        name,
        shortBio,
        bio,
        agency,
        debut,
        yearsActive,
        mostPopularMember,
        fandom,
        member,
        image
    } = req.body;
    kpop.addKpop(name, shortBio, bio, agency, debut, yearsActive, mostPopularMember, fandom, member, image, (err, result) => {
        if (err) {
            console.log(err);
            return res.status(500).send(err);
        }
        res.status(200).send(result);
    });
});

app.get('/api/kmovie', (req, res, next) => {
    kmovie.getKmovie((err, result) => {
        if (err) {
            console.log(err);
            return res.status(500).send(err);
        }
        const data = result.map(val => {
            const cast = val.cast.split(', ');
            return {
                ...val,
                cast: cast
            }
        });
        res.status(200).send(data);
    });
});

app.get('/api/kmovie/:id', (req, res, next) => {
    const {
        id
    } = req.params;
    kmovie.getKmovieId(id, (err, result) => {
        if (err) {
            console.log(err);
            return res.status(500).send(err);
        }
        const data = result.map(val => {
            const cast = val.cast.split(', ');
            return {
                ...val,
                cast: cast
            }
        });
        res.status(200).send(data[0]);
    });
});

app.post('/api/kmovie/', (req, res, next) => {
    const {
        title,
        synopsisShort,
        synopsis,
        movie,
        revised,
        hangul,
        director,
        writer,
        producer,
        cinematographer,
        releaseDate,
        runtime,
        genre,
        distributor,
        cast,
        poster
    } = req.body;
    kmovie.addKmovie(title, synopsisShort, synopsis, movie, revised, hangul, director, writer, producer, cinematographer, releaseDate, runtime, genre, distributor, cast, poster, (err, result) => {
        if (err) {
            console.log(err);
            return res.status(500).send(err);
        }
        res.status(200).send(result);
    });
});

app.get('/api/kvarietyshow', (req, res, next) => {
    kvarietyshow.getKvarietyshow((err, result) => {
        if (err) {
            console.log(err);
            return res.status(500).send(err);
        }
        const data = result.map(val => {
            const cast = val.cast.split(', ');
            return {
                ...val,
                cast: cast
            }
        });
        res.status(200).send(data);
    });
});

app.get('/api/kvarietyshow/:id', (req, res, next) => {
    const {
        id
    } = req.params;
    kvarietyshow.getKvarietyshowId(id, (err, result) => {
        if (err) {
            console.log(err);
            return res.status(500).send(err);
        }
        const data = result.map(val => {
            const cast = val.cast.split(', ');
            return {
                ...val,
                cast: cast
            }
        });
        res.status(200).send(data[0]);
    });
});

app.post('/api/kvarietyshow/', (req, res, next) => {
    const {
        title,
        synopsisShort,
        synopsis,
        aka,
        airTime,
        director,
        broadcastNetwork,
        released,
        cast,
        poster
    } = req.body;
    kvarietyshow.addKvarietyshow(title, synopsisShort, synopsis, aka, airTime, director, broadcastNetwork, released, cast, poster, (err, result) => {
        if (err) {
            console.log(err);
            return res.status(500).send(err);
        }
        res.status(200).send(result);
    });
});

app.post('/api/user/create-account', (req, res, next) => {
    const {
        nama,
        email,
        password
    } = req.body;
    user.addUser(nama, email, password, (err, result) => {
        if (err) {
            console.log(err);
            return res.status(500).send(err);
        }
        res.status(200).send(result);
    });
});

app.post('/api/user/login', (req, res, next) => {
    const {
        email,
        password
    } = req.body;
    user.loginUser(email, password, (err, result) => {
        if (err) {
            console.log(err);
            return res.status(500).send(err);
        }
        res.status(200).send(result);
    });
});

module.exports = app;
