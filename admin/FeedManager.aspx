<%@ Page Title="" Language="C#" MasterPageFile="~/AdminFeed.master" AutoEventWireup="true" CodeBehind="FeedManager.aspx.cs" Inherits="ExamCrazy.admin.FeedManager" %>
<asp:Content ID="Content1" ContentPlaceHolderID="PageName" runat="server">
Feed Manager
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AddToBreadCrum" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="PageNameBox" runat="server">
Feed Manager
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">
<!--Begin display datagrid-->
<asp:Label Runat="server" ID="lbOrderBy" Visible="false"></asp:Label>
<asp:Label Runat="server" ID="lbDesc" Visible="false"></asp:Label>
<asp:Label font-names="verdana" font-size="9" ID="lblCurrentSort" Visible="false" runat="server" />
<asp:Label font-names="verdana" font-size="9" ID="lbsort" Visible="false" runat="server" />
<asp:DataGrid runat="server" id="dgrd_announcement" cssclass="hlink" AutoGenerateColumns="False" AllowSorting="true"
     Backcolor="#ffffff" BorderStyle="none" BorderColor="#E1EDFF" cellpadding="5" Width="95%" HorizontalAlign="Center"  onSortCommand="Announcements_SortCommand" AllowPaging="True" AllowCustomPaging="true" OnPageIndexChanged="New_Page" OnItemDataBound="dgAnnouncement_ItemDataBound" DataKeyField="FeedID" OnDeleteCommand="Delete_Announcements" onItemCommand="Edit_Handle" > 
     <HeaderStyle Font-Bold="True" BackColor="#CEE76D" cssclass="header" />
     <AlternatingItemStyle BackColor="White" />                                  
     <Columns>    
     <asp:BoundColumn DataField="FeedID" HeaderText="FeedID" SortExpression="FeedID" />   
     <asp:BoundColumn DataField="Title" HeaderText="Announcement Title" SortExpression="Title" />
     <asp:BoundColumn DataField="Category" HeaderText="Category" SortExpression="Category" />    
     <asp:BoundColumn DataField="Author" HeaderText="Author" SortExpression="Author" />
     <asp:BoundColumn DataField="DatePublished" DataFormatString="{0:d}" HeaderText="Date" SortExpression="DatePublished" />
     <asp:BoundColumn DataField="Hits" HeaderText="Hits" SortExpression="Hits" />
     <asp:ButtonColumn Text='<img border="0" src="../images/icon_edit.gif">' HeaderText="Edit" CommandName="edit" />
     <asp:ButtonColumn Text='<img border="0" src="../images/icon_delete.gif">' HeaderText="Delete" CommandName="Delete" />
     </Columns>
     <PagerStyle Mode="NumericPages" BackColor="#fcfcfc" HorizontalAlign="left" />
    </asp:DataGrid>
<!--End display datagrid-->

<!--Begin display pager button-->
<div style="margin-left: 28px; margin-right: 20px; margin-top: 5px; background-color: #fff; padding-left: 2px; padding-top: 1px;">
<asp:Linkbutton id="Firstbutton" Text='<img border="0" src="../images/firstpage.gif" align="absmiddle">' CommandArgument="0" runat="server" OnCommand="FooterPagerClick"/>&nbsp;
<asp:linkbutton id="Prevbutton" Text='<img border="0" src="../images/prevpage.gif" align="absmiddle">' CommandArgument="prev" runat="server" OnCommand="FooterPagerClick"/>&nbsp;
<asp:linkbutton id="Nextbutton" Text='<img border="0" src="../images/nextpage.gif" align="absmiddle">' CommandArgument="next" runat="server" OnCommand="FooterPagerClick"/>&nbsp;
<asp:linkbutton id="Lastbutton" Text='<img border="0" src="../images/lastpage.gif" align="absmiddle">' CommandArgument="last" runat="server" OnCommand="FooterPagerClick"/>&nbsp;&nbsp;
<asp:Label ID="LblPageInfo" cssClass="content2" runat="server" />
<asp:Label ID="lblrcdCatcountfooter" cssClass="content2" runat="server" /> <asp:Label ID="lbCountAnnouncementFooter" cssClass="content2" runat="server" /> <asp:Label ID="lblrcdalphaletterfooter" cssClass="content2" runat="server" />&nbsp;&nbsp;<asp:Label ID="lblrecordperpageFooter" cssClass="content2" runat="server" />


</div>
<!--End display pager button-->  
</asp:Content>
