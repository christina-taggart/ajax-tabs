var Challenge = {
  bindEvents: function() {
    $('.tabbable').on('ajax:success', '.challenge-link', this.appendChallenge);
    $('.tabbable').on('ajax:error', '.challenge-link', this.appendError);
  },

  appendChallenge: function(event, data) {
    event.preventDefault();
    $(this).parent().html(data)
  },

  appendError: function(event, xhr) {
    event.preventDefault();
    $(this).next('.challenge-content').html(xhr.responseData)
  }
}

$(document).ready(function(){
  Challenge.bindEvents();
})