$(document).on('ready page:load', function () {
  $('#curso_id').change(function(event) {
    var select_periodo = $('select#periodo');
    var CursoId = $(event.currentTarget);
    var idPeriodo = document.getElementById("idPeriodo");

    $.ajax({
      type:"GET",
      url:"/cursos",
      dataType:"json",
      data: {curso_id: CursoId.val()},
      success:function(result) {
        select_periodo.empty().append("Selecione o período/módulo");
        select_periodo.append($('<option>').attr('value', "").text("Selecione o período/módulo"));
        select_periodo.attr('disabled', true);

        for (var i = 1; i <= result.quantidadePeriodo; i++) {
          select_periodo.append($('<option>').attr('value', i).text(i));
          select_periodo.attr('disabled', false);
        }
      }
    });
  });
});