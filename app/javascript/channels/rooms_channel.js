console.log('🐶🐶🐶🐶Reading rooms_channel.js....')

import consumer from "./consumer"
console.log('imported consumer from consumer.js in rooms_channel.js')
console.log(consumer)
// Consumer {}

consumer.subscriptions.create("RoomsChannel", {
  connected() {
    console.log('receiving connected().')
  },

  disconnected() {
    console.log('receiving disconnected.')
  },
  received(data) {
    console.log('receiving data....')
    console.log(consumer)
    console.log(consumer.subscriptions)
    //array[1]

    console.log("still inside data.......")
    console.log(data)
    //{messages:{}, current_user_id: 7}

    let body = document.getElementById('id')
    console.log(body)
    let node = document.createElement("p")
    console.log(node)
    // let hr = document.createElement('hr')
    // console.log(hr)

    // body.insertAdjacentHTML('beforeBegin', '<hr>');
    // body.insertAdjacentHTML('afterEnd','<hr>');

    // node.classList += ''

    node.innerHTML = `[` + data.created_at + `] ` + data.current_user + ` : `+ data.message.content

    body.appendChild(node)
    // if (Rooms.permission === 'granted') {
    //   var title = 'Push message'
    //   var body = data
    //   var options = { body: body }
    //   new Message(title, options)
    // }
  }
});

console.log('🐶🐶🐶🐶Finished Reading rooms_channel.js....')

// function subscribe (room_id) {
//   console.log('subscribe', room_id)
//   consumer.subscriptions.create({ channel: "RoomsChannel", room: room_id })
// }


// function subscribe (room_id) {
//   console.log('subscribe')
//   consumer.subscriptions.create({ channel: "RoomsChannel", room: room_id })
// }

// export default subscribe()


// consumer.subscriptions.create("RoomsChannel", {
//   connected() {
//     // Called when the subscription is ready for use on the server
//   },

//   disconnected() {
//     // Called when the subscription has been terminated by the server
//   },

//   received(data) {
//     // Called when there's incoming data on the websocket for this channel
//   }
// });


// const chatChannel = consumer.subscriptions.create({ channel: "RoomsChannel", room: "Best Room" }, {
//   received(data) {
//     // data => { sent_by: "Paul", body: "This is a cool chat app." }
//   }
// }

// chatChannel.send({ sent_by: "Paul", body: "This is a cool chat app." })
