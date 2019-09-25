import consumer from "./consumer"

consumer.subscriptions.create("RoomsChannel", {
  connected() {},
  disconnected() {},
  received(data) {
    console.log(data)
    let body = document.getElementById('id')
    let node = document.createElement("p")
    node.innerHTML = data.message.content
    body.appendChild(node)
    // if (Rooms.permission === 'granted') {
    //   var title = 'Push message'
    //   var body = data
    //   var options = { body: body }
    //   new Message(title, options)
    // }
  }
});

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
