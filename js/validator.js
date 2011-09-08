/*******************************************************
Author: Dexter Zafra
Website: www.ex-designz.net and www.myasp-net.com
Purpose: Validate text fields 

*******************************************************/

//Validate password match
function CheckIfPasswordMatch() 
  {
     var password1 = document.getElementById('ctl00_MainContent_Password1').value;
     var password2 = document.getElementById('ctl00_MainContent_Password2').value;
     
     var errmsg = "<span class='content12' style='border: solid 1px #800000; padding: 3px;'><img src='images/takenuname.gif'> Password did not match.</span>";
         
     if (password1 != password2)
        {       
               $("#repeatpass").fadeTo(300,0.1,function()
                { 
                   $(this).html(errmsg).fadeTo(900,1);
                }
             );    
             
        }
}

//Validate username
function ValUsername() 
  {
     var username = document.getElementById('ctl00_MainContent_Username').value;
     
     var errmsg1 = "<span class='content12' style='border: solid 1px #800000; padding: 3px;'><img src='images/takenuname.gif'> Username contain invalid characters.</span>";
     var errmsg2 = "<span class='content12' style='border: solid 1px #800000; padding: 3px;'><img src='images/takenuname.gif'> Username is too short. Min of 6 characters.</span>";
     var errmsg3 = "<span class='content12' style='border: solid 1px #800000; padding: 3px;'><img src='images/takenuname.gif'> Username is too long. Max of 15 characters.</span>";
     var errmsg4 = "<span class='content12' style='border: solid 1px #800000; padding: 3px;'><img src='images/takenuname.gif'> Username cannot be blank.</span>";

     var regex = new RegExp("^([a-zA-Z0-9]+)[\\w-_\.\@a-zA-Z0-9]+([a-zA-Z0-9]+)$");

	if(!regex.test(username))
	{
		     $("#idforresults").fadeTo(300,0.1,function()
                { 
                   $(this).html(errmsg1).fadeTo(900,1);
                }
             );    
	}
	
	if (username.length == 0)
	{
        		$("#idforresults").fadeTo(300,0.1,function()
                { 
                   $(this).html(errmsg4).fadeTo(900,1);
                }
             ); 
	}
	else if (username.length < 6 )
	{
        		$("#idforresults").fadeTo(300,0.1,function()
                { 
                   $(this).html(errmsg2).fadeTo(900,1);
                }
             ); 
	}
	else if (username.length > 15 )
	{
       		    $("#idforresults").fadeTo(300,0.1,function()
                { 
                   $(this).html(errmsg3).fadeTo(900,1);
                }
             );   
	}
}

//Validate password
function ValPassword1() 
  {
     var password1 = document.getElementById('ctl00_MainContent_Password1').value;
     
     var errmsg1 = "<span class='content12' style='border: solid 1px #800000; padding: 3px;'><img src='images/takenuname.gif'> Password should be mix of alphabets and numerals.</span>";
     var errmsg2 = "<span class='content12' style='border: solid 1px #800000; padding: 3px;'><img src='images/takenuname.gif'> Password is too short. Min of 6 characters.</span>";
     var errmsg3 = "<span class='content12' style='border: solid 1px #800000; padding: 3px;'><img src='images/takenuname.gif'> Password is too long. Max of 12 characters.</span>";
     var errmsg4 = "<span class='content12' style='border: solid 1px #800000; padding: 3px;'><img src='images/takenuname.gif'> Password cannot be blank.</span>";

     //var regex = new RegExp("^([a-zA-Z0-9_-]+)$");
     var regex = new RegExp("(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{6,12})$");

	if(!regex.test(password1))
	{
		     $("#passwordval").fadeTo(300,0.1,function()
                { 
                   $(this).html(errmsg1).fadeTo(900,1);
                }
             );    
	}
	
	if (password1.length == 0)
	{
        		$("#passwordval").fadeTo(300,0.1,function()
                { 
                   $(this).html(errmsg4).fadeTo(900,1);
                }
             ); 
	}
	else if (password1.length < 6 )
	{
        		$("#passwordval").fadeTo(300,0.1,function()
                { 
                   $(this).html(errmsg2).fadeTo(900,1);
                }
             ); 
	}
	else if (password1.length > 12 )
	{
       		    $("#passwordval").fadeTo(300,0.1,function()
                { 
                   $(this).html(errmsg3).fadeTo(900,1);
                }
             );   
	}
}


//Validate email
function ValEmail() 
  {
     var email = document.getElementById('ctl00_MainContent_Email').value;
     
     var errmsg1 = "<span class='content12' style='border: solid 1px #800000; padding: 3px;'><img src='images/takenuname.gif'> Invalid email format.</span>";
     var errmsg2 = "<span class='content12' style='border: solid 1px #800000; padding: 3px;'><img src='images/takenuname.gif'> Email cannot be blank.</span>";
     var errmsg3 = "<span class='content12' style='border: solid 1px #800000; padding: 3px;'><img src='images/takenuname.gif'> Email is too long. Max of 45 characters.</span>";
     
     var regex = new RegExp("^[\\w-_\.+]*[\\w-_\.]\@([\\w]+\\.)+[\\w]+[\\w]$");

	if(!regex.test(email))
	{
		     $("#idforresultsemail").fadeTo(300,0.1,function()
                { 
                   $(this).html(errmsg1).fadeTo(900,1);
                }
             );    
	}
	
	if (email.length == 0)
	{
        		$("#idforresultsemail").fadeTo(300,0.1,function()
                { 
                   $(this).html(errmsg2).fadeTo(900,1);
                }
             ); 
	}
    else if (email.length > 45 )
	{
       		    $("#idforresultsemail").fadeTo(300,0.1,function()
                { 
                   $(this).html(errmsg3).fadeTo(900,1);
                }
             );   
	}
}

//Validate Firstname
function ValFirstname()
  {
     var firstname = document.getElementById('ctl00_MainContent_Firstname').value;
        
     var errmsg1 = "<span class='content12' style='border: solid 1px #800000; padding: 3px;'><img src='images/takenuname.gif'> Firstname is invalid. Only letters allowed.</span>";
     var errmsg2 = "<span class='content12' style='border: solid 1px #800000; padding: 3px;'><img src='images/takenuname.gif'> Firstname is too long. Max of 15 characters.</span>";
     var errmsg3 = "<span class='content12' style='border: solid 1px #800000; padding: 3px;'><img src='images/takenuname.gif'> Firstname is too short. Min 2 characters.</span>";
     
     var regex = new RegExp("^[a-zA-Z ]+$");

	if (firstname.length != 0)
	{
	    if(!regex.test(firstname))
	    {
		         $("#resultfirstname").fadeTo(300,0.1,function()
                    { 
                       $(this).html(errmsg1).fadeTo(900,1);
                    }
                 );    
	    }
    	
    	if (firstname.length < 2 )
	    {
       		        $("#resultfirstname").fadeTo(300,0.1,function()
                    { 
                       $(this).html(errmsg3).fadeTo(900,1);
                    }
                 );   
	    }
        else if (firstname.length > 15 )
	    {
       		        $("#resultfirstname").fadeTo(300,0.1,function()
                    { 
                       $(this).html(errmsg2).fadeTo(900,1);
                    }
                 );   
	    }
    }
}

//Validate Lastname
function ValLastname()
  {
     var lastname = document.getElementById('ctl00_MainContent_Lastname').value;
     
     var errmsg1 = "<span class='content12' style='border: solid 1px #800000; padding: 3px;'><img src='images/takenuname.gif'> Lastname is invalid. Only letters allowed.</span>";
     var errmsg2 = "<span class='content12' style='border: solid 1px #800000; padding: 3px;'><img src='images/takenuname.gif'> Lastname is too long. Max of 15 characters.</span>";
     var errmsg3 = "<span class='content12' style='border: solid 1px #800000; padding: 3px;'><img src='images/takenuname.gif'> Lastname is too short. Min 2 characters.</span>";
     
     var regex = new RegExp("^[a-zA-Z ]+$");

	if (lastname.length != 0)
	{
	    if(!regex.test(lastname))
	    {
		         $("#resultlastname").fadeTo(300,0.1,function()
                    { 
                       $(this).html(errmsg1).fadeTo(900,1);
                    }
                 );    
	    }
    	
    	if (lastname.length < 2 )
	    {
       		        $("#resultlastname").fadeTo(300,0.1,function()
                    { 
                       $(this).html(errmsg3).fadeTo(900,1);
                    }
                 );   
	    }
        else if (lastname.length > 15 )
	    {
       		        $("#resultlastname").fadeTo(300,0.1,function()
                    { 
                       $(this).html(errmsg2).fadeTo(900,1);
                    }
                 );   
	    }
    }
}


//Enabled button and clear the reponse text container.
function FirstLastnameKeyDown()
 {
      document.getElementById('resultfirstname').innerHTML = '';
      document.getElementById('resultlastname').innerHTML = '';
}

function LetterNumberDashUnderscoreOnly(e)
{
    if (window.event) {// IE
        keyCode = e.keyCode;
    } else if (e.which) {// Netscape/Firefox/Opera
        keyCode = e.which;
    }
    return ((keyCode == 8) || (keyCode == 45) || (keyCode == 46) || (keyCode == 64) || (keyCode == 95) || ((keyCode >= 49) && (keyCode <= 57)) || ((keyCode >= 65) && (keyCode <= 90)) || ((keyCode >= 97) && (keyCode <= 122)));
    
}

function LetterOnly(e)
{
    if (window.event) {// IE
        keyCode = e.keyCode;
    } else if (e.which) {// Netscape/Firefox/Opera
        keyCode = e.which;
    }
    return ((keyCode > 64 && keyCode < 91) || (keyCode > 96 && keyCode < 123) || keyCode == 8);
}

function NumberOnly(e) {
    if (window.event) {// IE
        keyCode = e.keyCode;
    } else if (e.which) {// Netscape/Firefox/Opera
        keyCode = e.which;
    }
    return (((keyCode >= 48) && (keyCode <= 57)));
}

function isNumber(str)
{
	return (!isNaN(parseInt(str))) ? true : false;
}

function inputNumber()
{
	return ((event.keyCode >= 48) && (event.keyCode <= 57));
}

function strLength(str)
{
	var num=str.length;
	var arr=str.match(/[^\x00-\x80]/ig);
	if(arr!=null)num+=arr.length;
	return num;
}

function trim(str)
{
	return str.replace(/(^\s*)|(\s*$)/g,"");
}
