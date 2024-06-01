require('dotenv').config()

module.exports = {

 

  production: {
    client: 'postgresql',
    connection: process.env.DATABASE_URL,
    pool: {
      min: 2,
      max: 10
    },
    migrations: {
      tableName: 'knex_migrations'
    }
  }

};

// development: {
//     client: 'pg',
//     connection: {
//       host: 'localhost',
//       database: 'knex_tutorials' // TODO
//     },
//     migrations: {
//       tableName: 'knex_migrations'
//     }
//   },