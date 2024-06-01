/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> } 
 */
exports.seed = async function(knex) {
  // Deletes ALL existing entries
  await knex('skaters').del()
  await knex('skaters').insert([
    {id: 1, name: 'Hettie Marshall', country: 'CA'},
    {id: 2, name: 'Hester Owens', country: 'US'},
    {id: 3, name: 'Henry Jackson', country: 'RU'}
  ]);
};
