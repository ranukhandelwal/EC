<%@ Page Language="VB" Debug="True" %>

<script runat="server">

  Sub Page_Load()


  Dim strCatName as string
  Dim strMode as string
  strCatName = Request("catname")
  strMode = Request("mode")

  If strMode = "del" Then
     lblconfirm.text = strCatName & "&nbsp;Recipe Has Been Successfully Deleted"
  ElseIf strMode = "update" Then
     lblconfirm.text = strCatName & "&nbsp;Recipe Has Been Successfully Updated"
  End If


  End Sub

</script>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<META HTTP-EQUIV="refresh" CONTENT="3; URL=recipemanager.aspx">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Admin Viewing Recipe</title>
<style type="text/css" media="screen">@import "../css/cssreciaspx.css";</style>
</head>
<body>
<br />
<br />
<br />
<div style="text-align: center; margin-top: 35px;"><h3><asp:Label ID="lblconfirm" runat="server" /></h3></div>
<br />
<div style="text-align: center;"><span class="content2">Please wait, you will be redirected back to the Main Recipe manager page.
<br />
<asp:HyperLink runat="server" NavigateUrl="categorymanager.aspx" class="content2">Go Back to Category Manager</asp:HyperLink>
</span></div>           
    </body>
</html>

