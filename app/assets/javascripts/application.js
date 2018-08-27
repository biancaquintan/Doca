// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require_tree .
//= require rails-ujs
//= require jquery-3.3.1.min
//= require activestorage
//= require turbolinks
//= require popper.min
//= require bootstrap.min
//= require mdb.min

function celular(component){
  var v = component.value;

  if (v.length < 16){
    v= v.replace(/\D/g,"");
    v= v.replace(/^(\d{2})(\d)/g, "($1) $2");
    v= v.replace(/(\d)(\d{4})$/, "$1-$2");

    component.value = v;
  }else{
    component.value = v.substring(0,(component.value.length - 1));
  }
}

function telefone(component){
  var v = component.value;

  if (v.length < 15){
    v= v.replace(/\D/g,"");
    v= v.replace(/^(\d{2})(\d)/g, "($1) $2");
    v= v.replace(/(\d)(\d{4})$/, "$1-$2");

    component.value = v;
  }else{
    component.value = v.substring(0,(component.value.length - 1));
  }
}

function SomenteNumero(e){
    var tecla=(window.event)?event.keyCode:e.which;
    if((tecla>47 && tecla<58)) return true;
    else{
    	if (tecla==8 || tecla==0) return true;
	else  return false;
    }
}
