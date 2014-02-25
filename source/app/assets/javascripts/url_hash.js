$(document).ready(function(){
  detectHash()
})


function detectHash() {
  var hash = document.location.hash.replace('#', '');
  if (hash){
    $("a[data-url-hash='"+hash+"']").trigger("click")
  }
}