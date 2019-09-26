// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.

console.log('🐶🐶🐶🐶Reading index.js....')

const channels = require.context('.', true, /_channel\.js$/)
console.log('🐶🐶finished const channels, consisting??')

channels.keys().forEach(channels)

console.log('🐶🐶finished channels.keys in index.js....')
console.log('printing channels')
console.log(channels)
console.log('printing channels.keys().forEach(channels)')
console.log(channels.keys().forEach(channels))
console.log('guess there is only one channel so....')
console.log('printing channels.keys()')
console.log(channels.keys())
// ["./rooms_channel.js"]

