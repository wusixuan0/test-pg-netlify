const knex = require('knex')(require('../db/knexfile').production);
const express = require('express');
const serverless = require('serverless-http');
const app = express();
const router = express.Router();
const bodyParser = require('body-parser');
app.use(bodyParser.json());



router.get('/programs', (req, res) => {
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
app.use('/.netlify/functions/api', router);

module.exports.handler = serverless(app);
