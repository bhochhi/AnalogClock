package com.bhochhi.clock;
import nme.events.Event;
import nme.display.Sprite;

/**
 * ...
 * @author Rupesh
 */

class HourPin extends Sprite
{
	private var hour:Int;
	public function new() 
	{
		super();
		this.graphics.beginFill(0xff0000);
		this.graphics.drawRect(x, y, 5, 100);
		this.graphics.endFill();
		x = 180;
		y = 250;
		hour = Date.now().getHours();
		
	}	
	
	private function this_enterFrame(e:Event):Void 
	{
		var newHour = Date.now().getHours();
		if (hour != newHour) {
				this.rotation += 6;
				hour = newHour;
		}
	}		
}