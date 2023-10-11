module.exports = {
  apps: [
    {
      name: 'FrontendCICD',
      port: '8080',
      exec_mode: 'cluster',
      instances: 'max',
      script: './.js'
    }
  ]
}