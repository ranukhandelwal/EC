<%@ Page Title="" Language="C#" MasterPageFile="~/AdminArticle.master" AutoEventWireup="true"
    CodeBehind="AddArticle.aspx.cs" Inherits="ExamCrazy.admin.AddArticle" %>

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
    Add Articles
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="Panel2" runat="server" Width="500px">
        <div style="width: 400px">
            <div class="nifty">
                <b class="rtop"><b class="r1"></b><b class="r2"></b><b class="r3"></b><b class="r4">
                </b></b>
                <div class="dcntmenu">
                    <asp:Label ID="lblheaderform" CssClass="contadmin" runat="server" /></div>
            </div>
            <div class="contentdisplay3">
                <div class="contentdis5">
                    <asp:Label ID="lblnamedis2" CssClass="content2" runat="server" />
                    <asp:TextBox runat="server" ID="CategoryName" CssClass="textbox" Width="200px" maxlenght="18" />
                    <br />
                    <div class="content2">
                        Description:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox runat="server" ID="CategoryDesc" CssClass="textbox" Width="200px" maxlenght="200" />
                        <br />
                        IsActive:
                        <asp:CheckBox runat="server" ID="CheckisActive" />
                    </div>
                    <asp:Button runat="server" Text="Update" ID="updatebutton" ToolTip="Click to update"
                        CssClass="submitadmin" align="center" OnClick="Update_Category" />
                    <asp:Button runat="server" Text="Add" ToolTip="Click to add new category" ID="addbutton"
                        CssClass="submitadmin" align="center" OnClick="Add_Category" />
                    <input type="text" runat="server" id="CategoryID" name="CategoryID" class="textbox"
                        size="2" maxlenght="2" readonly="True" style="visibility: hidden;" />
                    <br />
                    <asp:Panel ID="Panel3" runat="server">
                        <div style="padding-top: 4px; padding-bottom: 6px;">
                            <span class="content2"><span class="cred">Are you sure you want to delete this category?
                                <br />
                                Note: all article belong to this category will be deleted as well. </span>
                                <br />
                                <asp:Button runat="server" Text="Delete" ToolTip="Click to delete category and its associated recipes"
                                    ID="DelCategory" CssClass="submitadmin" />
                            </span>
                        </div>
                    </asp:Panel>
                </div>
            </div>
            <br />
        </div>
    </asp:Panel>
    <fieldset>
        <legend>Available Article Category</legend>
        <div style="margin-bottom: 5px;">
            <span class="content12">Edit/Delete a category</span>
        </div>
        <asp:Repeater ID="ArtCategoryList" runat="server" OnItemDataBound="ArtCategoryList_ItemDataBound"
            OnItemCommand="Delete_Category">
            <ItemTemplate>
                <div class="dcnt2">
                    <asp:HyperLink ID="editbutton2" NavigateUrl='<%# "addarticle.aspx?editcatid=" + Eval("CAT_ID")%>'
                        CssClass="content2" runat="server" />&nbsp;&nbsp;<asp:LinkButton ID="delbutton2"
                            CssClass="content2" runat="server" CommandName='Delete' CommandArgument='<%# Eval("CAT_ID") %>' />&nbsp;&nbsp;<span
                                class="catart1"><%# Eval("CAT_NAME") %>
                                (<%# Eval("REC_COUNT") %>)</span>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </fieldset>
    <asp:Literal ID="JSLiteral" runat="server"></asp:Literal>
</asp:Content>
