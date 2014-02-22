var Navigation = {
  bindEvents: function() {
    $('.nav-tabs').on('click', 'li a', this.showTab);
  },

  showTab: function() {
    $('.tab-pane').removeClass('active');
    // go read about window location object
    $(window.location.hash).addClass('active');
  }
}

$(document).ready(function() {
  Navigation.bindEvents();
})
