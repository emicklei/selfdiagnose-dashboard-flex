package events
{
	import flash.events.Event;
	import valueObjects.SelfDiagnoseProvider;

	public class ProviderEvent extends Event	
	{
		public var provider:SelfDiagnoseProvider;
		
		public function ProviderEvent(selfdiagnoseProvider:SelfDiagnoseProvider, type:String):void {
			super(type);
			provider = selfdiagnoseProvider;
		}
		
		override public function clone():Event {
			return new ProviderEvent(provider,type);
		}
	}
}