
import com.xfactorstudio.core.Guid;

shell.LogWhenComplete = false;

currentQuestion = 1;
whiteBox._alpha = 0;
var fadedOut = false;


currentStepBox.text = "Question 1 of 5";
showMeButton1.setStyle("themeColor", "0xeeeeee");
showMeButton2.setStyle("themeColor", "0xeeeeee");
showMeButton3.setStyle("themeColor", "0xeeeeee");
nextButton.setStyle("themeColor", "0xeeeeee");

questionText1.htmlText = "How would you represent the force exerted <b>by the earth on block C</b>?  After you have decided on the following attributes, click on Show Representation.";

nextButton._visible = false;
blockC._visible = true;
blockB._visible = false;
blockF._visible = false;
blockG._visible = false;

q1point1._visible = false;
q1arrow1._visible = false;
q1label1._visible = false;

q3point1._visible = false;
q3arrow1._visible = false;
q3label1._visible = false;

q4point1._visible = false;
q4arrow1._visible = false;
q4label1._visible = false;

q5point1._visible = false;
q5point2._visible = false;
q5point3._visible = false;
q5arrow1._visible = false;
q5arrow2._visible = false;
q5arrow3._visible = false;
q5label1._visible = false;
q5label2._visible = false;
q5label3._visible = false;

//questionText3.htmlText = "<font color='#999999'>- direction and sense:</font>";
//questionText4.htmlText = "<font color='#999999'>- magnitude:</font>";

showMeButton2.enabled = false;
//showMeButton3.enabled = false;

showMeButton1.onRelease = function() {
	if (currentQuestion == 1) {
		q1point1._visible = true;
		showMeButton1._visible = false;
		questionText2.htmlText = "- point of application: <font color='#009900'>at the geometric center of C</font>";
		showMeButton2.enabled = true;
		questionText3.htmlText = "<font color='#000000'>- direction and sense:</font>";	
	} else if (currentQuestion == 2) {
		showMeButton1._visible = false;
		showMeButton2._visible = false;
		showMeButton3._visible = false;
		questionText2.htmlText = "- point of application: <font color='#009900'>there is no such force; A and B are not in contact</font>";
		questionText3.htmlText = "";//- direction and sense: <font color='#009900'>there is no such force; A and B are not in contact</font>";
		questionText4.htmlText = "";//- magnitude: <font color='#009900'>there is no such force; A and B are not in contact</font>";
		nextButton._visible = true;
	} else if (currentQuestion == 3) {
		q3point1._visible = true;
		showMeButton1._visible = false;
		questionText2.htmlText = "- point of application: <font color='#009900'>at the center of the area of contact</font>";
		showMeButton2.enabled = true;
		questionText3.htmlText = "<font color='#000000'>- direction and sense:</font>";	
	} else if (currentQuestion == 4) {
		q4point1._visible = true;
		showMeButton1._visible = false;
		questionText2.htmlText = "- point of application: <font color='#009900'>at the center of the area of contact</font>";
		showMeButton2.enabled = true;
		questionText3.htmlText = "<font color='#000000'>- direction and sense:</font>";	
	} else if (currentQuestion == 5) {
		q5point1._visible = true;
		q5point2._visible = true;
		q5point3._visible = true;
		showMeButton1._visible = false;
		questionText2.htmlText = "- point of application: <font color='#009900'>where the cable is attached</font>";
		showMeButton2.enabled = true;
		questionText3.htmlText = "<font color='#000000'>- direction and sense:</font>";	
	}
}

showMeButton2.onRelease = function() {
	if (currentQuestion == 1) {
		q1point1._visible = false;
		q1arrow1._visible = true;
		showMeButton2._visible = false;
		questionText3.htmlText = "- direction and sense: <font color='#009900'>downward</font>";
		showMeButton3.enabled = true;
		questionText4.htmlText = "<font color='#000000'>- magnitude:</font>";	
	} else if (currentQuestion == 3) {
		q3point1._visible = false;
		q3arrow1._visible = true;
		showMeButton2._visible = false;
		questionText3.htmlText = "- direction and sense: <font color='#009900'>normal to the contacting surface, toward F</font>";
		showMeButton3.enabled = true;
		questionText4.htmlText = "<font color='#000000'>- magnitude:</font>";	
	} else if (currentQuestion == 4) {
		q4point1._visible = false;
		q4arrow1._visible = true;
		showMeButton2._visible = false;
		questionText2.htmlText = "- point of application: <font color='#009900'>at the center of the area of contact</font>";
		questionText3.htmlText = "- direction and sense: <font color='#009900'>normal to the contacting surface, toward G</font>";
		showMeButton3.enabled = true;
		questionText4.htmlText = "<font color='#000000'>- magnitude:</font>";	
	} else if (currentQuestion == 5) {
		q5point1._visible = false;
		q5point2._visible = false;
		q5point3._visible = false;
		q5arrow1._visible = true;
		q5arrow2._visible = true;
		q5arrow3._visible = true;
		showMeButton2._visible = false;
		questionText2.htmlText = "- point of application: <font color='#009900'>where the cable is attached</font>";
		questionText3.htmlText = "- direction and sense: <font color='#009900'>along the cable, away from C</font>";
		showMeButton3.enabled = true;
		questionText4.htmlText = "<font color='#000000'>- magnitude:</font>";	
	}
}

showMeButton3.onRelease = function() {
	if (currentQuestion == 1) {
		q1label1._visible = true;
		q1point1._visible = false;
		q1arrow1._visible = true;
		showMeButton3.enabled = false;
		questionText2.htmlText = "- point of application: <font color='#009900'>at the geometric center of C</font>";
		questionText3.htmlText = "- direction and sense: <font color='#009900'>downward</font>";
		questionText4.htmlText = "- magnitude: <font color='#009900'>known, 50 lb</font>";
		nextButton._visible = true;
		logButtonToolOnly(this, "Show Representation Q1");
	} else if (currentQuestion == 2) {
		showMeButton3.enabled = false;
		questionText2.htmlText = "- point of application: <font color='#009900'>there is no such force; A and B are not in contact</font>";
		questionText3.htmlText = "- direction and sense: <font color='#009900'>there is no such force; A and B are not in contact</font>";
		questionText4.htmlText = "- magnitude: <font color='#009900'>there is no such force; A and B are not in contact</font>";
		nextButton._visible = true;
		logButtonToolOnly(this, "Show Representation Q2");
	} else if (currentQuestion == 3) {
		q3label1._visible = true;
		q3point1._visible = false;
		q3arrow1._visible = true;
		showMeButton3.enabled = false;
		questionText3.htmlText = "- direction and sense: <font color='#009900'>normal to the contacting surface, toward F</font>";
		questionText2.htmlText = "- point of application: <font color='#009900'>at the center of the area of contact</font>";
		questionText4.htmlText = "- magnitude: <font color='#009900'>unknown (to be determined from equations of motion/equilibrium)</font>";
		nextButton._visible = true;
		logButtonToolOnly(this, "Show Representation Q3");
	} else if (currentQuestion == 4) {
		q4label1._visible = true;
		q4point1._visible = false;
		q4arrow1._visible = true;
		showMeButton3.enabled = false;
		questionText2.htmlText = "- point of application: <font color='#009900'>at the center of the area of contact</font>";
		questionText3.htmlText = "- direction and sense: <font color='#009900'>normal to the contacting surface, toward G</font>";
		questionText4.htmlText = "- magnitude: <font color='#009900'>unknown (to be determined from equations of motion/equilibrium); equal to the magnitude of force exerted by the block G on block F</font>";
		nextButton._visible = true;
		logButtonToolOnly(this, "Show Representation Q4");
	} else if (currentQuestion == 5) {
		q5label1._visible = true;
		q5label2._visible = true;
		q5label3._visible = true;
		q5point1._visible = false;
		q5point2._visible = false;
		q5point3._visible = false;
		q5arrow1._visible = true;
		q5arrow2._visible = true;
		q5arrow3._visible = true;
		showMeButton3.enabled = false;
		questionText2.htmlText = "- point of application: <font color='#009900'>where the cable is attached</font>";
		questionText3.htmlText = "- direction and sense: <font color='#009900'>along the cable, away from C</font>";
		questionText4.htmlText = "- magnitude: <font color='#009900'>unknown (to be determined from equations of motion/equilibrium)</font>";
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
	if (currentQuestion == 2) {
		questionText1.htmlText = "How would you represent the force exerted <b>by block A on block B</b>?  After you have decided on the following attributes, click on Show Representation.";
		blockC._visible = false;
		blockB._visible = true;
		q1arrow1._visible = false;
		q1label1._visible = false;
		resetButtons();
	} else if (currentQuestion == 3) {
		questionText1.htmlText = "How would you represent the force exerted <b>by block G on block F</b>?  After you have decided on the following attributes, click on Show Representation.";
		blockB._visible = false;
		blockF._visible = true;
		resetButtons();
	} else if (currentQuestion == 4) {
		questionText1.htmlText = "How would you represent the force exerted <b>by block F on block G</b>?  After you have decided on the following attributes, click on Show Representation.";
		blockF._visible = false;
		blockG._visible = true;
		q3arrow1._visible = false;
		q3label1._visible = false;
		resetButtons();
	} else if (currentQuestion == 5) {
		questionText1.htmlText = "How would you represent the force exerted <b>by the cables on block C</b>?  After you have decided on the following attributes, click on Show Representation.";
		blockG._visible = false;
		blockC._visible = true;
		q4arrow1._visible = false;
		q4label1._visible = false;
		resetButtons();
	} else if (currentQuestion == 6) {
		questionText1.htmlText = "How would you represent the force exerted <b>by the earth on block C</b>?  After you have decided on the following attributes, click on Show Representation.";
		questionText2.htmlText = "<font color='#000000'>- point of application:</font>";
		q5arrow1._visible = false;
		q5arrow2._visible = false;
		q5arrow3._visible = false;
		q5label1._visible = false;
		q5label2._visible = false;
		q5label3._visible = false;
		nextButton.setStyle("fontWeight", "normal");
		nextButton.setStyle("color", "0x000000");
		nextButton.label = "Next";
		currentQuestion = 1;
		resetButtons();
	}
}

function resetButtons() {
	showMeButton3.enabled = true;
	questionText2.htmlText = "<font color='#000000'>- point of application:</font>";
	questionText3.htmlText = "<font color='#000000'>- direction and sense:</font>";
	questionText4.htmlText = "<font color='#000000'>- magnitude:</font>";
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