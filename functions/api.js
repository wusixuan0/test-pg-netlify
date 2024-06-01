const express = require('express');
const serverless = require('serverless-http');
const app = express();
const router = express.Router();

app.use(bodyParser.json());

home_router.get('/', (req, res) => {
  res.send('Hello World!');
});

program_router.get('/programs', (req, res) => {
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
app.use('/.netlify/functions/api', home_router);
app.use('/.netlify/functions/api', program_router);

module.exports.handler = serverless(app);
