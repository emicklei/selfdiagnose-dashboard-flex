package valueObjects
{
	import mx.utils.ObjectProxy;
	
	public class SelfDiagnoseProvider
	{
		public var id:String;
		public var name:String;
		public var category:String;
		public var environment:String;
		public var url:String;
		public var description:String;
		
		public function SelfDiagnoseProvider(data:Object = null) {
			super();
			if (data != null){
				this.id = data.id
				this.name = data.name
				this.category = data.category
				this.environment = data.environment
				this.url = data.url
				this.description = data.description
			} else { // new
				//this.id = "0"
			}
		}
		
		public function toXML():XML {
			var data:XML = 
				<provider 
					id={id}
					name={name}
					category={category}
					environment={environment}
					url={url}
				>
					<description>{description}</description>
				</provider>
			return data
 		}
	}
}