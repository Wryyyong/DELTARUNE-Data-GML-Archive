cX = 0;
cY = 0;
nextX = 0;
nextY = 0;
finalX = 0;
finalY = 0;
remFinalX = 0;
remFinalY = 0;
remCurrentView = 0;
remTargetObject = 1049;
lerpProgress = 0;
startLerpX = 0;
startLerpY = 0;
panDir = 0;
panSpeed = 0;
panIdealDir = 0;
panXSpeed = 0;
panYSpeed = 0;
cameraFinished = 0;
accelInit = 0;
specialCameraInit = 0;
currentView = 0;
ignoreFreeze = 0;
ignoreCutscene = 0;
cutscene = 0;
maxViews = 4;

for (i = 0; i < maxViews; i++) {
	targetX[i] = 0;
	targetY[i] = 0;
	targetObject[i] = -4;
	targetObjectCenter[i] = 1;
	targetXRelative[i] = 0;
	targetYRelative[i] = 0;
	specialCamera[i] = 0;
	specialCameraBorderMax[i] = 60 * (global.darkzone + 1);
	ignoreTargetObjectX[i] = false;
	ignoreTargetObjectY[i] = false;
	ignoreX[i] = false;
	ignoreY[i] = false;
	panSpeedInit[i] = 16;
	lerpTime[i] = 30;
	lerpSmooth[i] = 1;
	lerpForceAmount[i] = 0;
	panSpeedMax[i] = 32;
	panAccel[i] = 2;
	panDecelBool[i] = 1;
	panStyle[i] = 0;
	panLimitLeft[i] = 0;
	panLimitRight[i] = room_width - camerawidth();
	panLimitTop[i] = 0;
	panLimitBottom[i] = room_height - cameraheight();
	ignoreFreezeArea[i] = -2;
}

targetObject[0] = 1049;

if (global.darkzone == 0) {
	targetObjectCenter[0] = 0;
	targetXRelative = 11;
	targetYRelative = 17;
}
