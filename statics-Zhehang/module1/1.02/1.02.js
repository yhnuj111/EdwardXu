function yesnoCheck() {
  if (document.getElementById('yesCheck').checked  ) {
    document.getElementById('ifYesOrNo').style.visibility="visible";
    hide("reset","start");

  } else if(document.getElementById('noCheck').checked){
    document.getElementById('ifYesOrNo2').style.visibility="visible";
    hide("reset1","start1");

  }else {
    document.getElementById('ifYesOrNo').style.visibility = 'hidden';
  }
}


function show(idset){

  document.getElementById(idset).style.visibility="visible";
}
function hide(idset1,idset2){
  document.getElementById(idset1).style.visibility="hidden";
  document.getElementById(idset2).style.visibility="visible";
}
function hide1(){
  document.getElementById('newb').style='text-align:right;';
  document.getElementById('hands').style="width:304px;height:228px;position:fixed";
}
function showbutton(idbutton){
  if(document.getElementById(idbutton).clicked == true){
    alert("button was clicked");
  }
}
function move_hand2(idget) {
  document.getElementById("noCheck").disabled=true;
  document.getElementById("yesCheck").disabled=true;
  Velocity(document.getElementById(idget), {
    translateX: -43
  }, {
    duration: 1000
  });
}
function move_hand3(idget){
  document.getElementById("yesCheck").disabled=true;
  document.getElementById("noCheck").disabled=true;
  Velocity(document.getElementById(idget), {
    translateX: 43
  }, {
    duration: 0

  });
}
