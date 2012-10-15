package com.bhochhi.clock;

import nme.display.Sprite;
import nme.events.Event;
import nme.Lib;
class Triangle extends Sprite {
 private	var triangle:Sprite ;
	public function new () {
 
		super ();
		this.addEventListener(Event.ADDED_TO_STAGE, this_addedToStage);
	}
	
	
	private function this_addedToStage(e:Event):Void 
	{
		removeEventListener(Event.ADDED_TO_STAGE, this_addedToStage);
		
		this.triangle = new Sprite();
		triangle.graphics.beginFill (0xFF0000);
		triangle.graphics.moveTo (0, 0.5);
		triangle.graphics.lineTo (-0.5, -0.5);
		triangle.graphics.lineTo (0.5, -0.5);
		triangle.graphics.endFill ();
 
		triangle.scaleX = 100;
		triangle.scaleY = 100;
		triangle.x = triangle.y = 10;
		addChild (triangle);
		this.addEventListener(Event.ENTER_FRAME, this_enterFrame);
	}
	
	private function this_enterFrame(e:Event):Void 
	{
		this.triangle.rotation += 1;
	}
 
	public static function main () {
 
		var main:Triangle =	new Triangle ();	
		Lib.current.addChild(main);
 
	}
}