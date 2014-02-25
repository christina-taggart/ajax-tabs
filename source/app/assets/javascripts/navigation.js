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




function buildChallengeList(data){
  var allChallengeItems = ""
  $(data).each(function(idx, value){
    var challengeItem = "<li class='challenge-item'><a href='#''>" + value + "</a><div class='challenge-content'></div></li>"
    allChallengeItems += challengeItem
  })
  $('.nav.nav-tabs.nav-stacked.content').append(allChallengeItems);
}

function phaseUnitToggle(){
  $('ul.nav.nav-tabs.units').on('click', 'a', function(e){
      e.preventDefault();
      var unitID = $(this).attr('data-unit-id');
        $.ajax({
        type: "get",
        url: "/unit/" + unitID + "/challenges"
      }).done(function(data) {
        buildChallengeList(data);
      }).fail(function() {
        console.log("fail")
      });
  });
}

$(document).ready(function() {
  Navigation.bindEvents();
  phaseUnitToggle();
})


// we now have the unit id of the phase-unit the user clicked on
// we should send an ajax request to the challenges_controller (we need to build an action there)
// we want to render the challenges partial for that unit (all challenges for unit #7 for example)
// using the unit id, the controller can query Active Record and send the partial the correct info