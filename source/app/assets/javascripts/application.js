// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree ../../../vendor/assets/javascripts
//= require_tree .

$(document).ready(function(){
  $(".phase_link").on("ajax:success", function(e, data, status, xhr){
    console.log(data)
    $(".challenges").html(xhr.responseText)

    location.hash = "units/" + $(".tab-pane").attr("id")
    location.hash = window.location.hash.replace("#", "")

  })

  $("body").on("ajax:success", ".challenge_link", function(e, data, status, xhr){
    console.log(data)
    $(".challenges").html(xhr.responseText)
    location.hash = "units/" + document.location.href.split("/")[4] + "/challenges/" + $(".challenge-content").attr("id")
  })
})
