
	function CheckForm()
	{
		var name=document.getElementById("userName").value;
		var phone=document.getElementById("mobilePhone").value;
		var ans=document.getElementById("answer").value;
		if(name=="")
		{
			alert("Enter username,please");
			document.form1.userName.focus();
			return false;
		}
		else if(phone=="")
		{
			alert("Enter your mobile,please");
			document.form1.mobilePhone.focus();
			return false;
		}
		else if(!isMobile(phone))
		{
			alert("Bad format for mobile");
			document.form1.mobilePhone.focus();
			return false;
		}
		else if(ans=="")
		{
			alert("Enter your secret answer");
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
