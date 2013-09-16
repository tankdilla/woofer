$(document).ready(function(){
  $("#jquery_jplayer_1").jPlayer({
    ready: function () {
      $(this).jPlayer("setMedia", {
        m4a: "http://www.jplayer.org/audio/m4a/Miaow-07-Bubble.m4a"
      });
    },
    swfPath: "/app/assets/javascripts/",
    supplied: "m4a"
  });
});