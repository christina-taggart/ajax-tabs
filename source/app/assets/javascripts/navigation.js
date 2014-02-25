var Navigation = {
  bindEvents: function() {
    // $('.nav-tabs.units').on('click', 'li a', this.showTab);
    $('.tabbable').on('click', '.content-toggle', this.showContent);
  },

  showTab: function() {
    event.preventDefault();
    $('.tab-pane').removeClass('active');
    var contentLink = $(this).data('toggle');
    $(contentLink).addClass('active');
  },

  showContent: function() {
    $(this).siblings('.challenge-content').toggleClass('hidden');
  }
}

$(document).ready(function() {
  Navigation.bindEvents();
})
