require('dotenv').config()

module.exports = {

 

  production: {
    client: 'pg',
    connection: process.env.DATABASE_URL,
    //'postgresql://postgres:XNpExaIQaAUSbJRMmTBXNygYVBCONwOa@monorail.proxy.rlwy.net:52245/railway',
    //process.env.DATABASE_URL,
    pool: {
      min: 2,
      max: 10
    },
    ssl: {
    // SSL options (e.g., SSL certificate, key, CA certificate)
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