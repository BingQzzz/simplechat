// Action Cable provides the framework to deal with WebSockets in Rails.
// You can generate new channels where WebSocket features live using the `rails generate channel` command.
console.log('🐶🐶🐶🐶Reading consumer.js....')
// Import from rails Gemfile lock
// rails (6.0.0)
//  actioncable (= 6.0.0)
// or package.json dependencies???
import { createConsumer } from "@rails/actioncable"

export default createConsumer()

console.log(createConsumer())
// Consumer {}
console.log(createConsumer().subscriptions)
console.log('imported createConsumer and exported default createConsumer() in consumer.js')
