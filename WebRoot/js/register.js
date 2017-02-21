	
	function CheckForm()
	{
		var name=document.getElementById("userName").value;
		var pass=document.getElementById("password").value;
		var conpass=document.getElementById("confirmPassword").value;
		var ans=document.getElementById("answer").value;
		var radio=document.getElementById("radio");
		if(name=="")
		{
			
			alert("Enter your userName ,please");
			document.form1.userName.focus();
			return false;
		}
		else if(name.length>20)
		{
			alert("The userName is too long,try again");
			document.form1.userName.focus();
			return false;
		}
		else if(pass=="")
		{
			alert("Set your password,please");
			document.form1.password.focus();
			return false;
		}
		else if(pass.length<6||pass.length>12)
		{
			alert("The length of password should be between 6 and 12");
			document.form1.password.focus();
			return false;
		}
		else if(conpass=="")
		{
			alert("Confirm your new password,please");
			document.form1.confirmPassword.focus();
			return false;
		}
		else if(conpass!=pass)
		{
			alert("Not the same to the former");
			document.form1.password.focus();
			return false;
		}
		else if(ans=="")
		{
			alert("Set your secret question answer,please");
			
			document.form1.answer.focus();
			return false;
		}
		else if(!radio.checked)
		{
			alert("To operate advance,you should agree our rules");
			document.form1.radio.focus();
			return false;
		}
		else
		{
			return true;
		}
	} 
