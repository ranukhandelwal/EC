<%@ Page Title="" Language="C#" MasterPageFile="~/AdminArticle.master" AutoEventWireup="true"
    CodeBehind="articlemanager.aspx.cs" Inherits="ExamCrazy.admin.articlemanager" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headerquerycss" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageName" runat="server">
    Article Manager
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="AddToBreadCrum" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="PageNameBox" runat="server">
    Article Manager
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="MainContent" runat="server">
    <div style="margin-bottom: 16px;">
        <asp:Literal ID="JSLiteral" runat="server"></asp:Literal>
        <fieldset>
            <legend>Article Waiting for Approval</legend>
            <div style="margin-bottom: 5px;">
                <asp:Label ID="lblcountunapprovearticle" CssClass="content12" runat="server" />
            </div>
            <asp:Repeater ID="UnApprovedArticleList" runat="server" OnItemDataBound="UnApprovedArticleList_ItemDataBound"
                OnItemCommand="ApprovedDelete_Article">
                <ItemTemplate>
                    <div class="dcnt2">
                        <asp:LinkButton ID="approvebutton" CssClass="content2" CommandName='Approved' CommandArgument='<%# Eval("ID") + "," + Eval("UID")%>'
                            runat="server" />&nbsp;&nbsp;<asp:HyperLink ID="editunapprovebutton" CssClass="content2"
                                runat="server" />&nbsp;&nbsp;<asp:LinkButton ID="delbuttonunapprove" CssClass="content2"
                                    runat="server" CommandName='Delete' CommandArgument='<%# Eval("ID") + "," + Eval("UID")%>' />&nbsp;&nbsp;<a
                                        class="dt" href='javascript:void(0)' onclick="window.open('articlepreview.aspx?aid=<%# Eval("ID") %>','','width=850,height=700,scrollbars=yes,resizable=yes,status=no,left=180,top=180'); return false;"
                                        onmouseover="Tip('Click to preview and review article.<br><b>Category: </b><%# Eval("Category") %><br><b>Author: </b><%# Eval("Author") %><br><b>Posted on: </b> <%# Eval("Date", "{0:M/d/yyyy}")%>', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')"
                                        onmouseout="UnTip()"><%# Eval("Title")%></a></span>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </fieldset>
    </div>
</asp:Content>
