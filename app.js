const knex = require('knex')(require('./db/knexfile').production);

const express = require('express');
const bodyParser = require('body-parser');
const app = express();

app.use(bodyParser.json());

app.get('/', (req, res) => {
  res.send('Hello World!');
});

app.get('/programs', (req, res) => {
  knex('programs')
    .select('*')
    .then((users) => {
      return res.json(users);
    })
    .catch((err) => {
      console.error(err);
      return res.json({success: false, message: 'An error occurred'});
    })
})

module.exports = app;