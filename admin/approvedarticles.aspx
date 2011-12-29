<%@ Page Title="" Language="C#" MasterPageFile="~/AdminArticle.master" AutoEventWireup="true"
    CodeBehind="approvedarticles.aspx.cs" Inherits="ExamCrazy.admin.approvedarticles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headerquerycss" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageName" runat="server">
    Articles
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="AddToBreadCrum" runat="server">
    <img id="Img1" src="~/images/arrow.gif" align="absmiddle" runat="server" /><a id="A1"
        href="~/admin/ArticleManager.aspx" class="content12" title="Back to Article manager main page"
        runat="server">Article Manager Main Page</a>&nbsp;&nbsp;<asp:Label runat="server"
            ID="lblreset" Visible="false" CssClass="content12" EnableViewState="false" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="PageNameBox" runat="server">
    Approved Articles
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="MainContent" runat="server">
    <div style="margin-left: 20px; margin-top: 20px; margin-right: 50px;">
        <asp:Panel ID="articlelist" runat="server" Width="700px" Visible="false">
            <fieldset>
                <legend>
                    <asp:Label Font-Names="verdana" ID="lbcatname" runat="server" />
                    Category</legend>
                <asp:Literal ID="Error" runat="server"></asp:Literal>
                <asp:Repeater ID="ArticleCat" runat="server" OnItemDataBound="ArticleCat_ItemDataBound"
                    OnItemCommand="Delete_Article">
                    <ItemTemplate>
                        <div class="dcnt2">
                            <asp:HyperLink ID="editbutton3" CssClass="content2" runat="server" />&nbsp;&nbsp;<asp:LinkButton
                                ID="delbutton3" CssClass="content2" runat="server" CommandName='Delete' CommandArgument='<%# Eval("ID") %>' />&nbsp;&nbsp;<a
                                    class="dt" href='javascript:void(0)' onclick="window.open('articlepreview.aspx?aid=<%# Eval("ID") %>','','width=850,height=700,scrollbars=yes,resizable=yes,status=no,left=180,top=180'); return false;"
                                    onmouseover="Tip('Click to preview article.<br><b>Author: </b><%# Eval("Author") %><br><b>Hits: </b><%# Eval("Hits") %><br><b>Posted on: </b> <%# Eval("Post_Date", "{0:M/d/yyyy}")%>', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')"
                                    onmouseout="UnTip()"><%# Eval("Title")%></a></span>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </fieldset>
        </asp:Panel>
    </div>
    <fieldset>
        <legend>Approved Articles List</legend>
        <div style="margin-bottom: 5px;">
            <span class="content12">Edit an Articles<br />
                Note any article eddited will move to unapproved article list and will not be shown</span>
        </div>
        <asp:Repeater ID="ArtCategoryList" runat="server" OnItemDataBound="ArtCategoryList_ItemDataBound">
            <ItemTemplate>
                <div class="dcnt2">
                    <span class="catart1">
                    <a class="dt" href="approvedarticles.aspx?catid=<%# Eval("CAT_ID") %>" >
                        <%# Eval("CAT_NAME") %>
                        (<%# Eval("REC_COUNT") %>)</span></a>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </fieldset>
</asp:Content>
