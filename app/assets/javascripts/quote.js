$( document ).ready( function () {
    getQuote();
    setInterval(getQuote, 10000);
});

function getQuote() {
    $.ajax({
        url: "http://quotesondesign.com/wp-json/posts?filter[orderby]=rand&filter[posts_per_page]=1",
        context: document.body
    }).done(function(response) {
        // console.log(response)
        if(response[0].content.length > 150) return;
        $('#quote').html(response[0].content);
    });
}