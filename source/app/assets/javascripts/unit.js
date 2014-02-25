var Unit = {
  bindEvents: function() {
    $('.unit-link').on('ajax:success', this.appendUnit);
    $('.unit-link').on('ajax:error', this.appendError);
  },

  appendUnit: function(event, data) {
    event.preventDefault();
    document.location.hash = $(this).attr('data-url-hash')
    $('.challenge-area').html(data)
  },

  appendError: function(event, xhr) {
    debugger
    event.preventDefault();
  }
}

$(document).ready(function(){
  Unit.bindEvents();
})