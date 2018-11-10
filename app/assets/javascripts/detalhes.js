$(document).ready(function(){
  $(document).on('click', '.btn-detalhe', function(event){
    var btnPedido = $(event.currentTarget);

    $.ajax({ type: "GET",
      data: { },
      url: btnPedido.data("url"),
      dataType: '',
    });
  });

  // var modal = $(document).find("#modal_detalhes");
  // var th_vagas_expiradas = $(document).find('th#vagas_expiradas');
  // var td_vagas_expiradas = $(document).find('td[id^=count_vagas_vencidas]');
  // var th_options = $(document).find('th#options');
  // var td_options = $(document).find('td[id=options]');
  // var th_privado = $(document).find('th#privado');
  // var td_privado = $(document).find('td[id=privado]');
/*
  if (modais.length <= 1){
    th_vagas_expiradas.hide();
    td_vagas_expiradas.hide();
    th_options.hide();
    td_options.hide();
    th_privado.hide();
    td_privado.hide();
  }
  else{
    th_vagas_expiradas.show();
    td_vagas_expiradas.show();
    th_options.show();
    td_options.show();
    th_privado.show();
    td_privado.show();
  }*/
/*
  $('#modal_vagas').on('show.bs.modal', function (e) {
    button = $(e.relatedTarget);
    //console.log(button);
    modal = $(e.target);
    //console.log(modal);
    div_modal = $(modal[0]);
    hidden_field_empregador = div_modal.find("#empregador_id");
    hidden_field_perfil_vaga = div_modal.find("#id");
    hidden_field_empregador.attr("value", button.attr('data-empregador-id'));
    hidden_field_perfil_vaga.attr("value", button.attr('data-perfil-vaga-id'));
    //div_modal.find("#field_codigo").click();
    //div_modal.find("#field_nome").click();
  });

  $('#modal_renew_vagas').on('show.bs.modal', function (e) {
    button = $(e.relatedTarget);
    //console.log(button);
    modal = $(e.target);
    //console.log(modal);
    div_modal = $(modal[0]);
    hidden_field_empregador = div_modal.find("#empregador_id");
    hidden_field_perfil_vaga = div_modal.find("#id");
    range_field = div_modal.find("#vagas");
    hidden_field_empregador.attr("value", button.attr('data-empregador-id'));
    hidden_field_perfil_vaga.attr("value", button.attr('data-perfil-vaga-id'));
    count_vagas = $('td#count_vagas_vencidas_'+button.attr('data-perfil-vaga-id')).text();
    range_field.attr("max", count_vagas);
    range_field.val("0");
    // console.log(div_modal.find("#vagas_vencidas"));
    div_modal.find("#vagas_vencidas").html(count_vagas);
    div_modal.find("#count_vagas").html("0");
  });
  */
});