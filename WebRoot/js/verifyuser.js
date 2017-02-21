	function CheckForm()
	{
		var mobile=document.getElementById("mobilePhone").value;
		var ans=document.getElementById("answer").value;
		if(mobile=="")
		{
			alert("Enter your mobile ,please");
			document.form1.mobilePhone.focus();
			return false;
		}
		
		else if(!isMobile(mobile))
		{
			alert("Bad format for mobile");
			document.form1.mobilePhone.focus();
			return false;
		}
		else if(ans=="")
		{
			alert("Enter your secret question answer,please");
			document.form1.answer.focus();
			return false;
		}
		else
		{
			return true;
		}
	} 

	function isMobile(sMobile)
	{  
	    if(/^1[3|4|5|8][0-9]\d{8}$/.test(sMobile))
	    { 
	        return true; 
	    }
	    else
	    {
	    	return false;
	    }
	} 