$(document).ready(function(){
  $(document).on('click', '.btn-detalhes', function(event){
    var show_url = $(event.currentTarget);

    $.ajax({
      url: show_url.data('url'),
      type: 'GET',
      dataType: 'script'
      }
    );
  });
});
