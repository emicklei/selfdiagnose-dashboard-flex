package com.philemonworks.selfdiagnose.dashboard.rest
{
	// RemoteGroupService is generated by RestWorks FlexGenerator on Mon Apr 30 20:10:36 CEST 2007

	import com.philemonworks.flex.Command;
	import com.philemonworks.flex.RestClient;
	
	public class RemoteGroupService {
		/**
		 * @param groupXml : String
		 * @param replyHandler : Function
		 */
		public function save(groupXml:String, replyHandler:Function):void {
			var restclient:RestClient = new RestClient()
			var cmd:Command = new Command("save")
			cmd.setParameter("groupXml",groupXml)				
			restclient.remoteExecute(cmd,"groups/command",replyHandler)
		}
		/**
		 * @param groupID : String
		 * @param replyHandler : Function
		 */
		public function remove(groupID:String, replyHandler:Function):void {
			var restclient:RestClient = new RestClient()
			var cmd:Command = new Command("remove")
			cmd.setParameter("groupID",groupID)				
			restclient.remoteExecute(cmd,"groups/command",replyHandler)
		}
		/**
		 * @param groupID : String
		 * @param replyHandler : Function
		 */
		public function copy(groupID:String, replyHandler:Function):void {
			var restclient:RestClient = new RestClient()
			var cmd:Command = new Command("copy")
			cmd.setParameter("groupID",groupID)				
			restclient.remoteExecute(cmd,"groups/command",replyHandler)
		}
			
	}
}