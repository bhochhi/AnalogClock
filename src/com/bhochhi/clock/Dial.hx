package com.bhochhi.clock;
import nme.Assets;
import nme.display.Bitmap;
import nme.display.BitmapData;
import nme.display.Graphics;
import nme.display.Shape;
import nme.display.Sprite;
import nme.events.Event;
import nme.Lib;
import nme.utils.Timer;

/**
 * ...
 * @author Rupesh
 */

class Dial extends Sprite
{
	
	private var min:MinutePin;
	private var hour:HourPin;
	private var sec:SecondPin;
	private var  time:Date; 
	private var dial:Bitmap;

	public function new () {
		super();			
		x = 180;
		y = 250;
		drawDial();
		drawThumbPin();
		sec = new SecondPin();
		addChild(sec);
		min = new MinutePin();
		addChild(min);
		hour = new HourPin();
		addChild(hour);			
		this.addEventListener(Event.ENTER_FRAME, this_updateClock);
		time = Date.now();
		sec.rotation = 180 + time.getSeconds() * 6;
		min.rotation = 180 + (time.getMinutes() * 6);
		hour.rotation = 180 + (time.getHours() * 30);
		this.addEventListener(Event.RESIZE, this_resize);
		
	}
	
	private function this_resize(e:Event):Void 
	{
		
	}
	
	
	
	private function this_updateClock(e:Event):Void 
	{
		sec.rotation += 6;
		
		if (sec.rotation == 0) {		
			min.rotation += 6;	
			hour.rotation += 0.5;
		}	
		trace(min.rotation);
		Sys.sleep(1);
	}
	
	private function drawDial() { 
	
		this.graphics.beginFill(0x000000);
		this.graphics.drawCircle(x, y, 200);
		this.graphics.endFill();
	}
	
	private function drawThumbPin() 
	{
		this.graphics.beginFill(0xff0000);
		this.graphics.drawCircle(x, y, 10);
		this.graphics.endFill();	
	}	
}