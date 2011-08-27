<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">
 protected void Page_Load(object sender, EventArgs e)
 { 
     string strMode;
     strMode = Request.QueryString["mode"];
    
     if (strMode == "del") 
     {
         lblconfirm.Text = "Recipe Comment #" + Request.QueryString["id"] + " Has Been Successfully Deleted";
     }
     else if (strMode == "update") 
     {
         lblconfirm.Text = "Recipe Comment #" + Request.QueryString["id"] + " Has Been Successfully Updated";
     }
     else if (strMode == "DeleteAll")
     {
         lblconfirm.Text = "The Selected Recipe Comments Has Been Successfully Deleted";
     } 
 }
</script>
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<META HTTP-EQUIV="refresh" CONTENT="3; URL=commentsmanager.aspx">
<title>Recipe Comment Update Delete Confirmation</title>
    <link href="../CSS/cssreciaspx.css" rel="stylesheet" type="text/css" />
</head>
<body>
<br />
<br />
<br />
<div style="text-align: center; margin-top: 35px;"><h3><asp:Label ID="lblconfirm" runat="server" /></h3></div>
<br />
<div style="text-align: center;"><span class="content2">Please wait, you will be redirected back to the Recipe comment manager page.
<br />
<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="commentsmanager.aspx" cssClass="content2">Go Back to Recipe Comment Manager</asp:HyperLink>
</span></div>           
    </body>
</html>