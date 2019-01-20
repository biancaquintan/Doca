/*$(document).ready(function(){
  $(document).on('click', '#btn-search', function(event){
    var show_url = $(event.currentTarget);
    var newprogress;
    let mensagem;

    $.ajax({
      url: show_url.data('url') + '?pasta=' + $('#search').val(),
      type: 'GET',
      dataType: 'script'
      }
    );
  });
});*/

$(document).ready(function() {
  $(document).on('click', '#btn-search', function(event) {
    var show_url = $(event.currentTarget);
    // if ($('#search').val() == '') {
    //   //document.getElementById('msg-andamento').innerHTML = "Não encontrado!!!";
    //   //$('#status-bar').attr('aria-valuenow', newprogress).css('width', 0 + "%");
    //   alert("Digite a pasta!");
    // }
    // else {
      $.ajax({
        url: show_url.data('url') + '?pasta=' + $('#search').val(),
        type: 'GET',
        dataType: 'script',
        success:function(result) {
          var newprogress;
          let mensagem;
          //date = new Date.parse(result.updated_at).toString("DD-MM-YYYY");
          
          switch (result.situacao_id) {
            case 1:
            newprogress = 15;
            mensagem = "Aguardando liberação do Nada Consta pelo setor bibliotecário."
            break;
            
            case 2:
              newprogress = 40;
              mensagem = "Encaminhado ao Registro Acadêmico para digitalização.";
              break;

            case 3:
              newprogress = 100;
              $('#status-bar').css('background-color', 'red');
              mensagem = "Nada Consta recusado devido a pendências no setor bibliotecário.<br> Obervação: " + result.observacao + "<br> Acesse <a href='http://gru.centro.iff.edu.br/'>http://gru.centro.iff.edu.br/</a>.";
              break;
            
            case 4:
              newprogress = 100;
              $('#status-bar').css('background-color', 'red');
              mensagem = "Pedido Indeferido devido a pendências no setor registro acadêmico.<br> Obervação: " + result.observacao + ".";
              break;

            case 5:
              newprogress = 80;
              mensagem = "O documento encontra-se disponível no Registro Acadêmico.";
              break;

            case 6:
              newprogress = 100;
              mensagem = "Documento retirado em " + date + ".";
              $('#status-bar').css('background-color', 'green');
              break;
            
            default:
              result = nil
              newprogress = 0;
              mensagem = "Nada Encontrado!"
              break;       
          }
          document.getElementById('msg-andamento').innerHTML = mensagem;
          $('#status-bar').attr('aria-valuenow', newprogress).css('width', newprogress + "%");
        },
        error: function() {
          document.getElementById('msg-andamento').innerHTML = "Não encontrado!!!";
          $('#status-bar').attr('aria-valuenow', newprogress).css('width', 0 + "%");
        }
      });
    //}
  });
});