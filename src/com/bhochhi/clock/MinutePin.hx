package com.bhochhi.clock;
import nme.display.Sprite;
import nme.events.Event;

/**
 * ...
 * @author Rupesh
 */

class MinutePin extends Sprite
{

	private var minute:Int;
	public function new() 
	{
		super();		
		this.graphics.beginFill(0xff0000);
		this.graphics.drawRect(x, y, 4, 170);
		this.graphics.endFill();
		x = 180;
		y = 250;	
		minute = Date.now().getMinutes();
		
	}
	
	private function this_enterFrame(e:Event):Void 
	{
		var newMin = Date.now().getMinutes();
		if (minute != newMin) {
				this.rotation += 6;
				minute = newMin;
		}	
	}	
	
}