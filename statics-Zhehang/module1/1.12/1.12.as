
import com.xfactorstudio.core.Guid;

shell.LogWhenComplete = false;

currentQuestion = 1;
whiteBox._alpha = 0;
var fadedOut = false;

currentStepBox.text = "Question 1 of 5";
q1Button1.setStyle("themeColor", "0xeeeeee");
q1Button2.setStyle("themeColor", "0xeeeeee");
q1Button3.setStyle("themeColor", "0xeeeeee");
nextButton.setStyle("themeColor", "0xeeeeee");
beginButton.setStyle("themeColor", "0xeeeeee");

hand._visible = false;

nextButton._visible = false;

questionText._visible = false;
q1Text1._visible = false;
q1Text2._visible = false;
q1Text3._visible = false;
q1Button1._visible = false;
q1Button2._visible = false;
q1Button3._visible = false;

currentStepBox._visible = false;

q1image1._visible = false;
q1arrow1._visible = false;
q1label1._visible = false;

q2image1._visible = false;
q2arrow1._visible = false;
q2label1._visible = false;

q3image1._visible = false;
q3arrow1._visible = false;
q3label1._visible = false;

q4image1._visible = false;
q4arrow1._visible = false;
q4label1._visible = false;

q5image1._visible = false;
q5arrow1._visible = false;
q5label1._visible = false;

q1Text2.htmlText = "<font color='#000000'>- magnitude:</font>";
q1Text3.htmlText = "<font color='#000000'>- magnitude:</font>";

//q1Button2.enabled = false;
//q1Button3.enabled = false;


beginButton.onRelease = function() {
	beginButton._visible = false;
	hand._visible = true;
	hand._x = 150;
	moveHandRightTimer = setInterval(moveHandRight, 10);
}


function moveHandRight() {
	if (hand._x < 260) {
		hand._x = hand._x + 2;
	} else if ((hand._x >= 260) and (hand._x < 322)) {
		hand._x = hand._x + 2;
		blockB._x = blockB._x + 2;
		spring1._width = spring1._width + 2;
		spring2._width = spring2._width - 2;
		spring2._x = spring2._x + 2;
	} else {
		hand._x = 322;
		blockB._x = 278;
		clearInterval(moveHandRightTimer);
		fadeOutThenInTimer = setInterval(fadeOutThenIn, 25);
	}
}

q1Button1.onRelease = function() {
	if (currentQuestion == 1) {
		q1arrow1._visible = true;
		q1Button1._visible = false;
		q1Text1.htmlText = "- direction and sense: <font color='#009900'>along the spring, away from it since spring a is stretched</font>";
		q1Button2.enabled = true;
		q1Text2.htmlText = "<font color='#000000'>- magnitude:</font>";	
	} else if (currentQuestion == 2) {
		q2arrow1._visible = true;
		q1Button1._visible = false;
		q1Text1.htmlText = "- direction and sense: <font color='#009900'>force of a on B has same direction but opposite sense of force of B on a (along the spring, away from B since the spring is stretched)</font>";
		q1Button2.enabled = true;
		q1Text2.htmlText = "<font color='#000000'>- magnitude:</font>";	
		nextButton._visible = true;
	} else if (currentQuestion == 3) {
		q3arrow1._visible = true;
		q1Button1._visible = false;
		q1Text1.htmlText = "- direction and sense: <font color='#009900'>along the spring, toward it since spring b is compressed</font>";
		q1Button2.enabled = true;
		q1Text2.htmlText = "<font color='#000000'>- magnitude:</font>";	
	} else if (currentQuestion == 4) {
		q4arrow1._visible = true;
		q1Button1._visible = false;
		q1Text1.htmlText = "- direction and sense: <font color='#009900'>force of b on B has same direction but opposite sense of force of B on b (along the spring, toward B since the spring is compressed)</font>";
		q1Button2.enabled = true;
		q1Text2.htmlText = "<font color='#000000'>- magnitude:</font>";	
	} else if (currentQuestion == 5) {
		q5arrow1._visible = true;
		q1Button1._visible = false;
		q1Text1.htmlText = "- direction and sense: <font color='#009900'>to the right </font>";
		q1Button2.enabled = true;
		q1Text2.htmlText = "<font color='#000000'>- magnitude:</font>";	
	}
}

q1Button2.onRelease = function() {
	if (currentQuestion == 1) {
		q1label1._visible = true;
		q1arrow1._visible = true;
		q1Button2.enabled = false;
		q1Text1.htmlText = "- direction and sense: <font color='#009900'>along the spring, away from it since spring a is stretched</font>";
		q1Text2.htmlText = "- magnitude: <font color='#009900'>unknown, labeled S<font size='10'>a</font> (to be determined from equations of motion/equilibrium, or from deformation and stiffness of spring)</font>";
		nextButton._visible = true;
		logButtonToolOnly(this, "Show Representation Q1");
	} else if (currentQuestion == 2) {
		q2label1._visible = true;
		q2arrow1._visible = true;
		q1Button2.enabled = false;
		q1Text1.htmlText = "- direction and sense: <font color='#009900'>force of a on B has same direction but opposite sense of force of B on a (along the spring, away from B since the spring is stretched)</font>";
		q1Text2.htmlText = "- magnitude: <font color='#009900'>the magnitudes (unknown) are the same, so we label both of them S<font size='10'>a</font> (to be determined from equations of motion/equilibrium, or from deformation and stiffness</font>";
		nextButton._visible = true;
		logButtonToolOnly(this, "Show Representation Q2");
	} else if (currentQuestion == 3) {
		q3label1._visible = true;
		q3arrow1._visible = true;
		q1Button2.enabled = false;
		q1Text1.htmlText = "- direction and sense: <font color='#009900'>along the spring, toward it since spring b is compressed</font>";
		q1Text2.htmlText = "- magnitude: <font color='#009900'>unknown, labeled S<font size='10'>b</font> (to be determined from equations of motion/equilibrium, or from deformation and stiffness of spring)</font>";
		nextButton._visible = true;
		logButtonToolOnly(this, "Show Representation Q3");
	} else if (currentQuestion == 4) {
		q4label1._visible = true;
		q4arrow1._visible = true;
		q1Button2.enabled = false;
		q1Text1.htmlText = "- direction and sense: <font color='#009900'>force of b on B has same direction but opposite sense of force of B on b (along the spring, toward B since the spring is compressed)</font>";
		q1Text2.htmlText = "- magnitude: <font color='#009900'>the magnitudes (unknown) are the same, so we label both of them S<font size='10'>b</font> (to be determined from equations of motion/equilibrium, or from deformation and stiffness</font>";
		nextButton._visible = true;
		logButtonToolOnly(this, "Show Representation Q4");
	} else if (currentQuestion == 5) {
		q5label1._visible = true;
		q5arrow1._visible = true;
		q1Button2.enabled = false;
		q1Text1.htmlText = "- direction and sense: <font color='#009900'>to the right </font>";
		q1Text2.htmlText = "- magnitude: <font color='#009900'>unknown, labeled H; (to be determined from equations of motion/equilibrium: the two forces on the block exerted by springs which both act to the left are balanced by the force exerted by the hand acting to the right)</font>";
		nextButton.setStyle("fontWeight", "bold");
		nextButton.setStyle("color", "0x0000ff");
		nextButton.label = "Start Over";
		nextButton._visible = true;
		logButtonToolOnly(this, "Show Representation Q5");
		shell.logComplete();
	}
}


nextButton.onRelease = function() {
	currentQuestion++;
	disableNextButtons();
	logButtonToolOnly(this, this.label);
	fadeOutThenInTimer = setInterval(fadeOutThenIn, 25);
}

function switchScreens() {
	if (currentQuestion == 1) {
		questionText.htmlText = "How would you represent the force exerted <b>by block B on spring a</b>?  After you have decided on the following attributes, click on Show Representation.";
		preqText._visible = false;
		questionText._visible = true;
		q1Text1._visible = true;
		q1Text2._visible = true;
		q1image1._visible = true;
		currentStepBox._visible = true;
		resetButtons();
	} else if (currentQuestion == 2) {
		questionText.htmlText = "How would you represent the force exerted <b>by spring a on block B</b>?  After you have decided on the following attributes, click on Show Representation.";
		q1image1._visible = false;
		q1arrow1._visible = false;
		q1label1._visible = false;
		q2image1._visible = true;
		resetButtons();
	} else if (currentQuestion == 3) {
		questionText.htmlText = "How would you represent the force exerted <b>by block B on spring b</b>?  After you have decided on the following attributes, click on Show Representation.";
		q2image1._visible = false;
		q2arrow1._visible = false;
		q2label1._visible = false;
		q3image1._visible = true;
		resetButtons();
	} else if (currentQuestion == 4) {
		questionText.htmlText = "How would you represent the force exerted <b>by spring b on block B</b>?  After you have decided on the following attributes, click on Show Representation.";
		q3image1._visible = false;
		q3arrow1._visible = false;
		q3label1._visible = false;
		q4image1._visible = true;
		resetButtons();
	} else if (currentQuestion == 5) {
		questionText.htmlText = "How would you represent the force exerted <b>by the hand on block B</b>?  After you have decided on the following attributes, click on Show Representation.";
		q4image1._visible = false;
		q4arrow1._visible = false;
		q4label1._visible = false;
		q5image1._visible = true;
		resetButtons();
	} else if (currentQuestion == 6) {
		q1Text1.htmlText = "<font color='#000000'>- direction and sense:</font>";
		q1image1._visible = true;
		q5image1._visible = false;
		q5arrow1._visible = false;
		q5label1._visible = false;
		nextButton.label = "Next";
		nextButton.setStyle("fontWeight", "none");
		nextButton.setStyle("color", "0x000000");
		currentQuestion = 1;
		resetButtons();
	}
}

function resetButtons() {
	q1Button1._visible = true;
	q1Button2._visible = true;
	q1Button3._visible = true;
	q1Text1.htmlText = "<font color='#000000'>- direction and sense:</font>";
	q1Text2.htmlText = "<font color='#000000'>- magnitude:</font>";
	q1Text3.htmlText = "<font color='#999999'>- magnitude:</font>";
	q1Button2.enabled = true;
	q1Button3.enabled = false;
	nextButton._visible = false;
	currentStepBox.text = "Question " + currentQuestion + " of 5";
}

function enableNextButtons() {
	nextButton.enabled = true;
}

function disableNextButtons() {
	nextButton.enabled = false;
}


function fadeOutThenIn() {
	if (!fadedOut) {
		//trace("alpha is " + whiteBox._alpha);
		if (whiteBox._alpha < 100) {
			whiteBox._alpha = whiteBox._alpha + 5;
		} else {
			whiteBox._alpha = 100;
			fadedOut = true;
			switchScreens();
		}
	} else {
		//trace("alpha is " + whiteBox._alpha);
		if (whiteBox._alpha > 0) {
			whiteBox._alpha = whiteBox._alpha - 5;
		} else {
			whiteBox._alpha = 0;
			clearInterval(fadeOutThenInTimer);
			fadedOut = false;
			enableNextButtons();
		}
	}
}



stop();


function logButtonCorrect(theButton, theInput, theFeedback) {
	var tempGUID = Guid.newGuid().toString();
	var tempGUID2 = Guid.newGuid().toString();		
	shell.TutorLog("TOOL_ACTION", "ATTEMPT", tempGUID, theButton._name, "ButtonPressed", theInput);
	shell.TutorLog("TUTOR_ACTION", "RESULT", tempGUID, "", "", "", tempGUID2, "CORRECT", theFeedback);	
}

function logButtonIncorrect(theButton, theInput, theFeedback) {
	var tempGUID = Guid.newGuid().toString();
	var tempGUID2 = Guid.newGuid().toString();		
	shell.TutorLog("TOOL_ACTION", "ATTEMPT", tempGUID, theButton._name, "ButtonPressed", theInput);
	shell.TutorLog("TUTOR_ACTION", "RESULT", tempGUID, "", "", "", tempGUID2, "INCORRECT", theFeedback);	
}

function logButtonToolOnly(theButton, theInput) {
	var tempGUID = Guid.newGuid().toString();
	shell.TutorLog("TOOL_ACTION", "ATTEMPT", tempGUID, theButton._name, "ButtonPressed", theInput);
}

function logRadioButtonToolOnly(theGroupName, theName, theLabel) {
	var tempGUID = Guid.newGuid().toString();
	shell.TutorLog("TOOL_ACTION", "ATTEMPT", tempGUID, theGroupName, "UpdateRadioButton", theName+": "+theLabel);
}