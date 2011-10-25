<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserInfo.ascx.cs" Inherits="ExamCrazy.Control.UserInfo" %>
<div class="userInfo unit">
    <h2>
        Welcome Examcrazy user</h2>
    <p>
        examcrazy@examcrazy.com</p>
    <div class="size1of2 unit">
        <a href="#" title="User Wall">
            <img src="~/img/userwall.gif" alt="User wall" title="User Wall" runat="server" /></a>
    </div>
    
    <asp:Repeater ID="userinfo" runat="server">
        <HeaderTemplate>
            <div class="lastUnit">
                <ul>
        </HeaderTemplate>
        <ItemTemplate>
            <li><a id="A1" href="<%#Page.ResolveUrl(((System.Xml.XmlNode)Container.DataItem).Attributes["link"].InnerText)%>"
                runat="server">
                <%#((System.Xml.XmlNode)Container.DataItem).Attributes["name"].InnerText%></a>
        </ItemTemplate>
        <FooterTemplate>
            </ul> </div>
        </FooterTemplate>
    </asp:Repeater>
</div>
