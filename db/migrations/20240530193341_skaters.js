exports.up = function(knex) {
  return knex.schema
    .createTable('skaters', function (table) {
      table.increments('id');
      table.string('name', 255).notNullable();
      table.string('country', 255);
      table.timestamps();
    });
};

exports.down = function(knex) {
  return knex.schema
    .dropTable('skaters');
};