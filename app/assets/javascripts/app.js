// $( document ).ready(function() {
//   $(".upvote-question").on('click', function(e) {
//     var clickTarget = e.target;
//     // debugger
//     $.ajax({
//       url: "/questions/" + clickTarget.name[0] + "/vote",
//       method: "post",
//       data: {vote: {
//         value: 1,
//         voteable_type: "Question",
//         voteable_id: clickTarget.name[0],
//         voter_id: clickTarget.name[3]
//         }
//       }
//     }).done(function(response) {
//       console.log("yay, here's the response", response)
//     }).fail(function(err) {
//       debugger
//       console.log(':(', err)
//     })
//
//   });
// });
