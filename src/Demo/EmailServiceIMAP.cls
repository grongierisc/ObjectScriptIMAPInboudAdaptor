Class Demo.EmailServiceIMAP Extends Ens.BusinessService
{

Parameter ADAPTER = "Demo.Adapter.Inbound.ExtEns.EmailMAP";

Method OnProcessInput(pMailMessage As %Net.MailMessage, pOutput As %RegisteredObject) As %Status
{
	set tSC = $$$OK
	// Your codes here
	
	do pMailMessage.TextData.Rewind()
	set att=pMailMessage.TextData.Read()
	set cont=pMailMessage.ContentTransferEncoding
	set isbin=pMailMessage.Parts.GetAt(1).Parts.GetAt(2).IsBinary
	set cont=pMailMessage.Parts.GetAt(1).Parts.GetAt(1).ContentTransferEncoding
	set c=pMailMessage.Parts.GetAt(1).Parts.GetAt(1).Charset
	set f=pMailMessage.Parts.GetAt(1).Parts.GetAt(2).FileName
	set texte=pMailMessage.Parts.GetAt(1).Parts.GetAt(1).TextData.Read() 
	
	$$$TRACE("texte :"_texte)
	$$$TRACE("encoding :"_cont)
	Quit tSC
}

}
