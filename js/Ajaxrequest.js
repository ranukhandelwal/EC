/*******************************************************
Author: Dexter Zafra
Website: www.ex-designz.net and www.myasp-net.com
Purpose: Check Username Availability and email during registration. 
            This is the same code use in Ex-designz.net registration page.

*******************************************************/

//Global variable
 var http = createRequestObject();

//Return request object
 function createRequestObject() 
     {
           var xmlhttp;
	 try 
                 { 
                    xmlhttp=new ActiveXObject("Msxml2.XMLHTTP"); 
                 }
	  catch(e) 
                 {
	    try { xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");}
	    catch(f) { xmlhttp=null; }
	    }
	        if(!xmlhttp&&typeof XMLHttpRequest!="undefined") 
                        {
	  	   xmlhttp=new XMLHttpRequest();
	           }
		   return  xmlhttp;
 }

//***********************************************************************************************/
//Begin check username availability - Send the username via GET
//***********************************************************************************************/
function sendRequestTextUsernamePost() 
  {
      var loginname = escape(document.getElementById("ctl00_MainContent_Username").value);
            try
              {
                 http.open('Get','AjaxRequest/AjaxRequest.aspx?mode=checkusername&uname='+ loginname);
                 http.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                 http.onreadystatechange = handleResponseUsernameText;
	             http.send(null);
	 }
	    catch(e){}
	    finally{}
  }

//Get the username response text
function handleResponseUsernameText() 
  {
     $("#idforresults").addClass('content12').text('Checking...');
     
         if((http.readyState == 4)&& (http.status == 200))
             {
               document.getElementById('subbutton').disabled = true;
                  
	           var response = http.responseText;

                $("#idforresults").fadeTo(1500,0.1,function()
	                { 
	                   $(this).html(response).fadeTo(900,1);	
	                }
                 );
             }
}
//End ************************************************************************************************/



//***********************************************************************************************/
//Begin Check email exists - Send the email via GET
//***********************************************************************************************/
function sendRequestEmailTextPost() 
  {
    var email = escape(document.getElementById("ctl00_MainContent_Email").value);
            try
              {
                 http.open('Get','AjaxRequest/AjaxRequest.aspx?mode=checkemail&email='+ email);
                 http.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                 http.onreadystatechange = handleResponseEmailText;
	    http.send(null);
	 }
	    catch(e){alert("An error has occured.");}
	    finally{}
  }

//Get the email response text
function handleResponseEmailText() 
  {
  
   $("#idforresultsemail").addClass('content12').text('Checking...');

     if((http.readyState == 4)&& (http.status == 200))
         {
           document.getElementById('subbutemail').disabled = true;
           
           var response = http.responseText;

            $("#idforresultsemail").fadeTo(1500,0.1,function()
                { 
                   $(this).html(response).fadeTo(900,1);	
                }
             );       
         }
}
//End ************************************************************************************************/



//***********************************************************************************************/
//Begin password recovery - Send the email via GET
//***********************************************************************************************/
function sendRequestLostPasswordTextPost() 
  {
    var email = escape(document.getElementById("ctl00_MainContent_useremailrecoverpass").value);
            try
              {
                 http.open('Get','AjaxRequest/AjaxRequest.aspx?mode=recoverpass&email='+ email);
                 http.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                 http.onreadystatechange = handleResponseLostpasswordText;
	    http.send(null);
	 }
	    catch(e){alert("An error has occured.");}
	    finally{}
  }

//Get the email response text
function handleResponseLostpasswordText() 
  {
  
     $("#idforresultslostpass").addClass('content12').text('Checking...');

     if((http.readyState == 4)&& (http.status == 200))
         {
         
           document.getElementById('passsubbutton').disabled = true;
           
           var response = http.responseText;

            $("#idforresultslostpass").fadeTo(1500,0.1,function()
                { 
                   $(this).html(response).fadeTo(900,1);	
                }
             );           
         }
}
//End ************************************************************************************************/


 //***********************************************************************************************/
//Begin Mark PM Message as Old when clicking the Subject - Send the pmid via GET
//***********************************************************************************************/
function sendRequestMarkOldMsg(pmid) 
  {
            try
              {
                 http.open('Get','AjaxRequest/AjaxRequest.aspx?mode=markpmold&pmid='+ pmid);
                 http.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
	             http.send(null);
	 }
	    catch(e){alert("An error has occured.");}
	    finally{}
  }
//End ************************************************************************************************/


//***********************************************************************************************/
//Begin Mark PM Message as Old when clicking the icon image - Send the pmid via GET
//***********************************************************************************************/
function sendRequestMarkOldMsgOnClickIconImage(uid, pmid, val) 
  {
            try
              {
                 http.open('Get','AjaxRequest/AjaxRequest.aspx?mode=markpmoldIconImg&uid=' + uid + '&pmid='+ pmid + '&val=' + val);
                 http.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
	             http.send(null);
	 }
	    catch(e){alert("An error has occured.");}
	    finally{}
	    
	    window.location.reload();
  }
//End ************************************************************************************************/


//***********************************************************************************************/
//Begin Move PM to trash can
//***********************************************************************************************/
function sendRequestMovePMToTrash(pmid) 
  {
            try
              {
                 http.open('Get','AjaxRequest/AjaxRequest.aspx?mode=movetotrash&pmid='+ pmid);
                 http.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
	             http.send(null);
	 }
	    catch(e){alert("An error has occured.");}
	    finally{}
	    
	    window.location.reload();
  }
//End ************************************************************************************************/


//***********************************************************************************************/
//Begin Move PM back to inbox
//***********************************************************************************************/
function sendRequestMovePMBackToInbox(pmid) 
  {
            try
              {
                 http.open('Get','AjaxRequest/AjaxRequest.aspx?mode=movetoinbox&pmid='+ pmid);
                 http.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
	             http.send(null);
	 }
	    catch(e){alert("An error has occured.");}
	    finally{}
	    
	    window.location.reload();
  }
//End ************************************************************************************************/


//***********************************************************************************************/
//Begin Delete user recipe in cook book
//***********************************************************************************************/
function sendRequestDeleteUserRecipeInCookBook(rid) 
  {
            try
              {
                 http.open('Get','AjaxRequest/AjaxRequest.aspx?mode=delcookbook&rid=' + rid);
                 http.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
	             http.send(null);
	 }
	    catch(e){alert("An error has occured.");}
	    finally{}
	    
	    window.location.reload();
  }
//End ************************************************************************************************/


//***********************************************************************************************/
//Begin Delete a friend in Friends List
//***********************************************************************************************/
function sendRequestDeleteAFriend(fid) 
  {
            try
              {
                 http.open('Get','AjaxRequest/AjaxRequest.aspx?mode=delfriend&fid=' + fid);
                 http.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
	             http.send(null);
	 }
	    catch(e){alert("An error has occured.");}
	    finally{}
	    
	    window.location.reload();
  }
//End ************************************************************************************************/


//***********************************************************************************************/
//Begin delete user inbox private message
//***********************************************************************************************/
function sendRequestDeleteTrashInboxPM(pmid) 
  {
            try
              {
                 http.open('Get','AjaxRequest/AjaxRequest.aspx?mode=delinboxpm&pmid='+ pmid);
                 http.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
	             http.send(null);
	 }
	    catch(e){alert("An error has occured.");}
	    finally{}
	    
	    window.location.reload();
  }
//End ************************************************************************************************/


//***********************************************************************************************/
//Begin delete user sent private message
//***********************************************************************************************/
function sendRequestDeleteSentPM(pmid) 
  {
            try
              {
                 http.open('Get','AjaxRequest/AjaxRequest.aspx?mode=delsentpm&pmid='+ pmid);
                 http.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
	             http.send(null);
	 }
	    catch(e){alert("An error has occured.");}
	    finally{}
	    
	    window.location.reload();
  }
//End ************************************************************************************************/


//***********************************************************************************************/
//Begin delete messages in trash
//***********************************************************************************************/
function sendRequestEmptyTrash() 
  {
            try
              {
                 http.open('Get','AjaxRequest/AjaxRequest.aspx?mode=emptytrash');
                 http.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
	             http.send(null);
	 }
	    catch(e){alert("An error has occured.");}
	    finally{}
	    
	    window.location.reload();
  }
//End ************************************************************************************************/


//***********************************************************************************************/
//Begin Public Events Calendar View and List View Detail Ajax
//***********************************************************************************************/
function showEvent(id, posV, posH)
{
    $('.event').attr("class","event");
    $('.eventDetail').hide();
    $('#eventID' + id).attr("class","event eventSelected");

    var myClass = 'eventDetail';
    if (posV == "bottom") { myClass = myClass + " bottom"; } else { myClass = myClass + " top"; }
    if (posH == "left") { myClass = myClass + " left"; } else { myClass = myClass + " right"; }

    $.ajax({
        type: "GET",
        url: "AjaxRequest/AjaxRequest.aspx?mode=pubeventdetails&id=" + id,
        success: function(htmlContent) {
            $('#eventID' + id).append("<div id='hover_" + id + "' class='" + myClass + "'>" + htmlContent + "</div>");
        }
    });
}

function showUpcomingEvent(id, posV, posH)
{
    $('.event').attr("class","event");
    $('.eventDetail').hide();
    $('#upcomingeventID' + id).attr("class","event eventSelected");

    var myClass = 'eventDetail';
    if (posV == "bottom") { myClass = myClass + " bottom"; } else { myClass = myClass + " top"; }
    if (posH == "left") { myClass = myClass + " left"; } else { myClass = myClass + " right"; }

    $.ajax({
        type: "GET",
        url: "AjaxRequest/AjaxRequest.aspx?mode=pubeventdetails&id=" + id,
        success: function(htmlContent) {
            $('#upcomingeventID' + id).append("<div id='hover_" + id + "' class='" + myClass + "'>" + htmlContent + "</div>");
        }
    });
}

function showRecentEvent(id, posV, posH)
{
    $('.event').attr("class","event");
    $('.eventDetail').hide();
    $('#recenteventID' + id).attr("class","event eventSelected");

    var myClass = 'eventDetail';
    if (posV == "bottom") { myClass = myClass + " bottom"; } else { myClass = myClass + " top"; }
    if (posH == "left") { myClass = myClass + " left"; } else { myClass = myClass + " right"; }

    $.ajax({
        type: "GET",
        url: "AjaxRequest/AjaxRequest.aspx?mode=pubeventdetails&id=" + id,
        success: function(htmlContent) {
            $('#recenteventID' + id).append("<div id='hover_" + id + "' class='" + myClass + "'>" + htmlContent + "</div>");
        }
    });
}

function showUpcomingEventSideMenu(id, posV, posH)
{
    $('.event').attr("class","event");
    $('.eventDetail').hide();
    $('#sideupcomingeventID' + id).attr("class","event eventSelected");

    var myClass = 'eventDetail';
    if (posV == "bottom") { myClass = myClass + " bottom"; } else { myClass = myClass + " top"; }
    if (posH == "left") { myClass = myClass + " left"; } else { myClass = myClass + " right"; }

    $.ajax({
        type: "GET",
        url: "AjaxRequest/AjaxRequest.aspx?mode=pubeventdetails&id=" + id,
        success: function(htmlContent) {
            $('#sideupcomingeventID' + id).append("<div id='hover_" + id + "' class='" + myClass + "'>" + htmlContent + "</div>");
        }
    });
}

function showRecentEventSideMenu(id, posV, posH)
{
    $('.event').attr("class","event");
    $('.eventDetail').hide();
    $('#siderecenteventID' + id).attr("class","event eventSelected");

    var myClass = 'eventDetail';
    if (posV == "bottom") { myClass = myClass + " bottom"; } else { myClass = myClass + " top"; }
    if (posH == "left") { myClass = myClass + " left"; } else { myClass = myClass + " right"; }

    $.ajax({
        type: "GET",
        url: "AjaxRequest/AjaxRequest.aspx?mode=pubeventdetails&id=" + id,
        success: function(htmlContent) {
            $('#siderecenteventID' + id).append("<div id='hover_" + id + "' class='" + myClass + "'>" + htmlContent + "</div>");
        }
    });
}

function closeEvent()
{
    $('.event').attr("class","event");
    $('.eventDetail').hide();
}

function closeEventDetail(id)
{
    $('.event').attr("class","event");
    $('#eventID' + id).attr("class","eventItemDiv");
    $('.eventDetail').hide();
}
//End ************************************************************************************************/


//***********************************************************************************************/
//Toggle Private Message
//***********************************************************************************************/
function ShowMessage(contID)
{
    $('#msgcont' + contID).slideDown();
    sendRequestMarkOldMsg(contID);
}
function ShowMessageNoAjaxCall(contID)
{
    $('#msgcont' + contID).slideDown();
}
function HideMessage(contID)
{
    $('#msgcont' + contID).slideUp();
    window.location.reload();
}
function HideMessageNoReload(contID)
{
    $('#msgcont' + contID).slideUp();
}
//End ************************************************************************************************/


//Enabled button and clear the reponse text container.
function LostPassKeyDown()
 {
      document.getElementById('passsubbutton').disabled = false;
      document.getElementById('idforresultslostpass').innerHTML = '';
}

//Enabled button and clear the reponse text container.
function PassKeyDown()
 {
      document.getElementById('passwordval').innerHTML = '';
      document.getElementById('repeatpass').innerHTML = '';
}

//Enabled button and clear the reponse text container.
function UnameKeyDown()
 {
      document.getElementById('subbutton').disabled = false;
      document.getElementById('idforresults').innerHTML = '';
}

//Enabled button and clear the reponse text container.
function EmailKeyDown()
   {
     document.getElementById('subbutemail').disabled = false;
     document.getElementById('idforresultsemail').innerHTML = '';
}

//Clear the reponse text container.
function OnlickPass()
   {
     document.getElementById('idforresults').innerHTML = '';
}

//Clear the reponse text container.
function OnclickFirstname()
   {
     document.getElementById('idforresultsemail').innerHTML = '';
}

