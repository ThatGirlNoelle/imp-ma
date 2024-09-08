function create() {
    overlaya.color = "BLACK";
    addlaya.blend = 0;
    overlaya.blend = 10;

    aura.blend = 0;

    space.visible = false;
    polusandfungle.visible = false;
    mapset.visible = false;
    speaker1.visible = false;
    speaker2.visible = false;
    ground.visible = false;
    bodies1.visible = false;
    bodies2.visible = false;
    speaker2.flipX = true;

    spaceflash.visible = false;
    stars.visible = false;
    base.visible = false;
    table.visible = false;
    overlaya.visible = false;
    addlaya.visible = false;
}

function postCreate() {
    for (i in [accuracyTxt, scoreTxt, healthBar, healthBarBG, iconP1, iconP2]){
        i.alpha = 0;
    }
    missesTxt.size = 35;
    missesTxt.y = 630;
    missesTxt.alpha = 0;
    missesTxt.color = FlxColor.RED;
    
    healthBar.visible = false;
    healthBarBG.visible = false;
    iconP1.visible = false;
    iconP2.visible = false;
}

function postUpdate(elapsed) {
    missesTxt.text = misses + " / 10";
    if (misses > 10){
        gameOver();
    }
}





function stepHit(curStep){
    if (curStep == 128){
        missesTxt.y += 500;
        FlxTween.tween(missesTxt, {y: missesTxt.y - 500}, 2, {ease: FlxEase.expoOut});
        FlxTween.tween(missesTxt, {alpha: 1}, 2, {ease: FlxEase.linear});
    }
    if (curStep == 416){
        space.visible = true;
        polusandfungle.visible = true;
        mapset.visible = true;
        speaker1.visible = true;
        speaker2.visible = true;
        ground.visible = true;
        bodies1.visible = true;
        bodies2.visible = true;
    }
	if (curStep == 1568){
        space.visible = false;
        polusandfungle.visible = false;
        mapset.visible = false;
        speaker1.visible = false;
        speaker2.visible = false;
        ground.visible = false;
        bodies1.visible = false;
        bodies2.visible = false;
        aura.visible = false;
	}
    if (curStep == 1600){
        spaceflash.visible = true;
        stars.visible = true;
        base.visible = true;
        table.visible = true;
        overlaya.visible = true;
        addlaya.visible = true;

        dad.x = 0;
        dad.y = 150;

        boyfriend.x = 1050;
        boyfriend.y = 200;

        defaultCamZoom = 0.7;

	}
    if (curStep == 1872){

        spaceflash.visible = false;
        stars.visible = false;
        base.visible = false;
        table.visible = false;
        overlaya.visible = false;
        addlaya.visible = false; 

        space.visible = true;
        polusandfungle.visible = true;
        mapset.visible = true;
        speaker1.visible = true;
        speaker2.visible = true;
        ground.visible = true;
        bodies1.visible = true;
        bodies2.visible = true;
        aura.visible = true;        

        dad.x = -200;
        dad.y = -125;

        boyfriend.x = 1175;
        boyfriend.y = -100;

        defaultCamZoom = 0.55;

	}
}