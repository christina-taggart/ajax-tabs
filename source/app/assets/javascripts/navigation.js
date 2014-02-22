var Navigation = {
  bindEvents: function() {
    $('.nav-tabs').on('click', 'li a', this.showTab);
    $('.nav-stacked').on('click', 'li a', this.showContent)
  },

  showTab: function() {
    $('.tab-pane').removeClass('active');
    // go read about window location object
    $(window.location.hash).addClass('active');
  },

  showContent: function(e) {
    e.preventDefault();
    $(this).siblings('.challenge-content').toggleClass('hidden');
  }
}

$(document).ready(function() {
  Navigation.bindEvents();
})
