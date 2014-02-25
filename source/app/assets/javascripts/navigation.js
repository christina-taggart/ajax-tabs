var Navigation = {
  bindEvents: function() {
    $('.nav-tabs.units').on('click', 'li a', this.showTab);
    $('.nav-tabs.content').on('click', 'li a', this.showContent);
  },

  showTab: function() {
    event.preventDefault();
    $('.tab-pane').removeClass('active');
    var contentLink = $(this).data('toggle');
    $(contentLink).addClass('active');
  },

  showContent: function() {
    event.stopPropagation();
    $(this).siblings('.challenge-content').toggleClass('hidden');
  }
}

function phaseUnitToggle(){
  $('ul.nav.nav-tabs.units').on('click', 'a', function(e){
      e.preventDefault();
      $(this).text("works");
  })
}

$(document).ready(function() {
  Navigation.bindEvents();
  phaseUnitToggle();
})
