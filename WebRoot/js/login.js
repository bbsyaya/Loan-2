function loadimage()
	{ 
		document.getElementById("image").src = "AuthImage?"+Math.random(); 
	}
	
	function CheckForm()
	{
		var name=document.getElementById("userName").value;
		var pass=document.getElementById("userPassword").value;
		var code=document.getElementById("code").value;
		if(name=="")
		{
			alert("Enter your userName ,pleaseºÇºÇ");
			document.form1.userName.focus();
			return false;
		}
		else if(pass=="")
		{
			alert("Enter your password ,please");
			document.form1.userPassword.focus();
			return false;
		}
		else if(code=="")
		{
			alert("Enter the verification code");
			document.form1.code.focus();
			return false;
		}
		else
		{
			return true;
		}
	} 