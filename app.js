const app = express()

/** Set up public folder */
app.use(express.static(path.join(__dirname, 'dist'), {
	maxAge: '1d'
}))
app.use(history())
/** Set up public folder */
app.use(express.static(path.join(__dirname, 'dist'), {
	maxAge: '1d'
}))

port = 8080

let server = app.listen(port, '0.0.0.0', function () {
  console.log(`Server is listening on port ${port}`)
})