$( document ).ready(function() {
  $(".upvote-question").on('click', function(e) {
    var clickTarget = e.target;
    // debugger
    $.ajax({
      url: "/questions/" + clickTarget.name + "/vote",
      method: "post"
    }).done(function(response) {
      console.log("yay, here's the response", response)
    }).fail(function(err) {
      console.log(':(', err)
    })

  });
});