package core.Box2D.scene 
{
	import core.Box2D.utils.Box2DWorldController;
	import core.locators.PhysicWorldLocator;
	import core.scene.AbstractSceneController;
	import starling.display.DisplayObjectContainer;
	import flash.geom.Point;
	import starling.events.Event;
	
	/**
	 * ...
	 * @author Nikro
	 */
	public class BaseBox2DScene extends AbstractSceneController 
	{
		protected var worldController:Box2DWorldController;
		protected var isGameInProgress:Boolean = false;
		protected var gameObjectsInstance:DisplayObjectContainer;
		protected var gravity:Point = new Point(0, 0);
		
	
		
		public function BaseBox2DScene() 
		{
			super();
		}
		
		protected function initGameCycles():void
		{
			if (!view.stage.hasEventListener(Event.ENTER_FRAME))
				view.stage.addEventListener(Event.ENTER_FRAME, gameStep);
		}
		
		protected function stopGameCycles():void
		{
			if (view.stage.hasEventListener(Event.ENTER_FRAME))
				view.stage.removeEventListener(Event.ENTER_FRAME, gameStep);
		}
		
		protected function createWorld():void
		{
			worldController = new Box2DWorldController(gravity, gameObjectsInstance, false);
			
			PhysicWorldLocator.instance.world = worldController.world;
		}
		
		public function gameStep(e:Number):void
		{
			if (isGameInProgress)
			{
				worldController.gameStep(e);
			}
		}
		
		public function get step():Number 
		{
			if (!worldController)
				return 0;
				
			return worldController.steps;
		}
		
	}

}