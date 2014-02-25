var Navigation = {
  bindEvents: function() {
    $('.nav-tabs.units').on('click', 'li a', function() {});
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

$(document).ready(function() {
  Navigation.bindEvents();
})
