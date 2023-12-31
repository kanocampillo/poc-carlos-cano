const Pool = require('pg').Pool
const pool = new Pool({
  user: 'postgres',
  host: 'localhost',
  database: 'pocData',
  password: 'postgres',
  port: 5432,
})

const getProducts = (request, response) => {
    pool.query('SELECT * FROM productos ORDER BY id ASC', (error, results) => {
      if (error) {
        throw error
      }
      response.status(200).json(results.rows)
    })
  }

  module.exports = {
    getProducts
  }