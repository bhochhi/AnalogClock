package com.bhochhi.clock;
import flash.events.Event;
import nme.display.Sprite;

/**
 * ...
 * @author Rupesh
 */

class SecondPin extends Sprite
{
	private var second:Int;
	public function new() 
	{
		super();			
		this.graphics.beginFill(0xff0000);
		this.graphics.drawRect(x, y, 2, 190);
		this.graphics.endFill();
		x = 180;
		y = 250;
		second = Date.now().getSeconds();
		
	}	
	
	private function this_enterFrame(e:Event):Void 
	{
		//var newSec = Date.now().getSeconds();
		//if (second != newSec)
		//{
		//	this.rotation += 6;
			
			//second = newSec;
		//}
	}	
}