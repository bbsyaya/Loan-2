	function CheckForm()
	{
		var name=document.getElementById("realName").value;
		var man=document.getElementById("sex1");
		var woman=document.getElementById("sex2");
		var paper=document.getElementById("paper").value;
		var idcard=document.getElementById("paperID").value;
		var mail=document.getElementById("email").value;
		var mobile=document.getElementById("mobilePhone").value;
		var tele=document.getElementById("telePhone").value;
		var addr=document.getElementById("address").value;
		if(name=="")
		{
			alert("Enter your realName ,please");
			document.form1.realName.focus();
			return false;
		}
		else if(!(man.checked||woman.checked))
		{
			alert("Choose your sex ,please");
			document.form1.sex1.focus();
			return false;
		}
		else if((paper=="idcard")&&(idcard==""))
		{
			alert("Enter your IDCard ,please");
			document.form1.paperID.focus();
			return false;
		}
		else if((paper=="idcard")&&(!isIdCard(idcard)))
		{
				alert("Bad format for IDCard");
				document.form1.paperID.focus();
				return false;
			
		}
		else if((paper=="passport")&&(idcard==""))
		{
			alert("Enter your passport ,please");
			document.form1.paperID.focus();
			return false;
		}
		else if((paper=="passport")&&(!checknumber(idcard)))
		{
			alert("Bad format for passport");
			document.form1.paperID.focus();
			return false;
		}
		else if(mail=="")
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
	
	function isIdCard(card)  
    {  
		var reg = /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/
		if(reg.test(card))  
		{  
			return  true;  
		} 
		else
		{
			return false;
		}
    }  
	
	function checknumber(number)
	{
		var Expression=/(P\d{7})|(G\d{8})/ 
		if(Expression.test(number))
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
	
	