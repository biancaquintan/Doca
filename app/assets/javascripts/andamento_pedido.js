$(document).ready(function(){
  $(document).on('click', '#btn-search', function(event){
    var show_url = $(event.currentTarget);

    $.ajax({
      url: show_url.data('url') + '?pasta=' + $('#search').val(),
      type: 'GET',
      dataType: 'script'
      }
    );
  });
});
