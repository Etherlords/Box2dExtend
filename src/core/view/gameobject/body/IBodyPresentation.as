package core.view.gameobject.body 
{
	import flash.geom.Point;
	
	/**
	 * ...
	 * @author 
	 */
	public interface IBodyPresentation 
	{
		function get z():Number;
		function set z(value:Number):void
	
		function get x():Number;
		function set x(value:Number):void
		
		function get y():Number;
		function set y(value:Number):void
		
		function get position():Point
		function set position(value:Point):void
		
		function get width():Number;
		function set width(value:Number):void;
		
		function get height():Number;
		function set height(value:Number):void;
		
		function render():void;
		function preRender():void;
		
		function destroy():void
		
		function set rotation(value:Number):void;
		function get rotation():Number
		
	}
	
}