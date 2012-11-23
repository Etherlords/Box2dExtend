package core.view.gameobject.physicalpropeties.constructor 
{

	import core.view.gameobject.body.IBodyPresentation;
	import core.view.gameobject.physicalpropeties.PhysicModel;
	import core.view.gameobject.physicalpropeties.SimplePhysicalProperties;


	public class EmptyPhysicalPropertiesConstructor implements IPhysicalPropertiesConstructor 
	{
		public function EmptyPhysicalPropertiesConstructor() 
		{
			
		}

		public function make(body:IBodyPresentation, physicModel:PhysicModel):SimplePhysicalProperties 
		{
			return null;
		}
	}
}
