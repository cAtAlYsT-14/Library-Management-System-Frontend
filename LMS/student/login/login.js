function validate()
{
	var un=document.getElementById("uname").value;
	var up=document.getElementById("upass").value;
	
	if( /[^a-zA-Z0-9]/.test( un ) )
	{
		alert("user id should be alphanumeric");
		return false;
	}
}