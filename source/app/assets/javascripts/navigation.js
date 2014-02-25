var Navigation = {
  bindEvents: function() {
    $('.nav-tabs.units').on('click', 'li a', this.showTab);
    $('.nav-tabs.content').on('click', 'li a', this.showContent);
  },

  showTab: function() {
    event.preventDefault();
    $('.tab-content').remove();
    Navigation.loadChallenges(this);
  },

  showContent: function() {
    event.stopPropagation();
    $(this).siblings('.challenge-content').toggleClass('hidden');
  },


  loadChallenges: function(target) {
    key_thing = $(target).data('toggle').substr(1)
    $.get("/challenges/"+key_thing)
      .done( function(data) {
        $new_challenges = $(data)
        $new_challenges.find('.tab-pane').addClass('active')
        $('.tabbable').append($new_challenges)
        $('.nav-tabs.content').on('click', 'li a', Navigation.showContent);
      })
  }
}

$(document).ready(function() {
  Navigation.bindEvents();
})
