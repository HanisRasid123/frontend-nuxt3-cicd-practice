'use strict';

const express = require('express');
const app = express();

app.set('env', 'production')

app.use(express.static(path.join(__dirname, './website-nuxt/.output/public'), {
	maxAge: '1d'
}))

let server = app.listen('8080', '0.0.0.0', function () {
  console.log("Listening on port 8080...")
})