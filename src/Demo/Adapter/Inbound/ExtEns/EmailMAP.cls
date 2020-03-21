Class Demo.Adapter.Inbound.ExtEns.EmailMAP Extends ExtEns.EMail.InboundAdapterIMAP
{

Parameter SETTINGS = "AttachDir::directorySelector";

/// Directory where stored attached documents
Property AttachDir As %String(MAXLEN = 200);

Method OnInit() As %Status
{

	Set tSC = ##super()
	If 'tSC Quit tSC
	Set ..MailServer.AttachDir = ..AttachDir
	Set ..MailServer.StoreAttachToFile = 1
	Set ..MailServer.StoreInlineToFile = 1
	Quit tSC
}

}
