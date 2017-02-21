	function CheckForm()
	{
		var mail=document.getElementById("email").value;
		var mobile=document.getElementById("mobilePhone").value;
		var tele=document.getElementById("telePhone").value;
		var addr=document.getElementById("address").value;
		if(mail=="")
		{
			alert("Enter your email ,please");
			document.form1.email.focus();
			return false;
		}
		else if(!isEmail(mail))
		{
			alert("Bad format for eamil");
			document.form1.email.focus();
			return false;
		}
		else if(mobile=="")
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
		else if(tele!=""&&!isTele(tele))
		{
			alert("Bad format for tele");
			document.form1.telePhone.focus();
			return false;
		}
		else if(addr=="")
		{
			alert("Enter the address where you live now");
			document.form1.address.focus();
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
	function isTele(str)
	{
	    var re = /^0\d{2,3}-?\d{7,8}$/
	    if(re.test(str))
	    {
	        return true;
	    }
	    else
	    {
	        return false;
	    }
	}

	
	function isEmail(temp)
	{
		var re = /^(\w-*\.*)+@(\w-?)+(\.\w{2,})+$/
		if(re.test(temp))
		{
			return true;
		}
		else
		{
		    return false;
		}
	}
	
	