<%@ Page Title="" Language="C#" MasterPageFile="~/UserMain.master" AutoEventWireup="true"
    CodeBehind="__user.aspx.cs" Inherits="ExamCrazy.User.__user" %>

<%@ MasterType VirtualPath="~/UserMain.master" %>
<%@ Register TagPrefix="ucl" TagName="discussion" Src="~/Control/DiscussionForm.ascx" %>
<%@ Register TagPrefix="ucl" TagName="announce" Src="~/Control/Announcement.ascx" %>
<%@ Register TagPrefix="ucl" TagName="memlist" Src="~/Control/MemberList.ascx" %>
<%@ Register TagPrefix="ucl" TagName="prodlist" Src="~/Control/PreferredProducts.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="size3of4 unit">
        <div class="middlePart">
            <asp:Panel ID="userpage" Visible="true" runat="server">
                <asp:Label ID="lblwelcomeusername" runat="server" />
                <ucl:announce ID="announce" runat="server" />
                <ucl:discussion ID="discussion" runat="server" />
            </asp:Panel>
            <asp:Panel ID="userlist" Visible="false" runat="server">
                <ucl:memlist ID="memlist" runat="server" />
            </asp:Panel>
        </div>
    </div>
    <div class="size1of4 unit">
        <div class="rightPanel unit">
            <ucl:prodlist ID="prodlist" runat="server" />
        </div>
    </div>
</asp:Content>
