startTime=millis()
endTime=startTime()

function yesnoCheck() {
  if ((document.getElementById('yesCheck1').checked || document.getElementById('noCheck1').checked ) &&
      (document.getElementById('yesCheck2').checked || document.getElementById('noCheck2').checked ) ) {
    document.getElementById('ifYesOrNo1').style.visibility="visible";
    document.getElementById('ifYesOrNo2').style.visibility="visible";
  } else {
    document.getElementById('ifYesOrNo').style.visibility = 'hidden';
  }
}

// function move_hand() {
//   var i = 1;
//   while(i < 10) {
//     Velocity(document.getElementById("hand"),
//     { translateX: 60 }, {duration: 1000});
//     Velocity(document.getElementById("hand"),
//     { translateX: -60 }, {duration: 1000});
//     i++;
//   }
// }

function move_hand() {
  var i = 1;
  while(i < 10) {
    Velocity(document.getElementById("hand"),
    { translateY: 60 }, {duration: 1000});
    Velocity(document.getElementById("blockB"),
    { translateY: 60 }, {duration: 1000});
    Velocity(document.getElementById("hand"),
    { translateY: -60 }, {duration: 1000});
    Velocity(document.getElementById("blockB"),
    { translateY: -60 }, {duration: 1000});
    i++;
  }
}
