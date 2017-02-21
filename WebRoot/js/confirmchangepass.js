function CheckForm()
	{
		var newPass=document.getElementById("newPassword").value;
		var conNewPass=document.getElementById("confirmNewPassword").value;
		if(newPass=="")
		{
			alert("Enter your new password");
			document.form1.newPassword.focus();
			return false;
		}
		else if(newPass.length<6||newPass.length>12)
		{
			alert("The length of password should be between 6 and 12");
			document.form1.newPassword.focus();
			return false;
		}
		else if(conNewPass=="")
		{
			alert("Confirm your new password,please");
			document.form1.confirmNewPassword.focus();
			return false;
		}
		else if(newPass!=conNewPass)
		{
			alert("Not the same to the former");
			document.form1.newPassword.focus();
			return false;
		}
		else
		{
			return true;
		}
	} 
