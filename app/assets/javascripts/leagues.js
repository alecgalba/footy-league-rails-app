$(function(){
  $("a.load_comments").on("click", function(e) {
    e.preventDefault();
    //You just clicked on the Load Comments link
    //We'd love to use the HREF attribute of that link as the URL for the request

    //Fire some AJAX
    $.ajax({
      method: "GET",
      url: this.href
    }).success(function(response){
      //Get the response(it's variable data)

      $("div.comments").html(response)
      //We'd really want to load the data to the DOM(append it to page)
    }).error(function(blergh){
      alert("You Broke Me!")
    });

    //load that response into the HTML of the page

  })
})
