<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Header.ascx.cs" Inherits="Header" %>
<asp:Repeater ID="header" runat="server">
    <HeaderTemplate>
        <div class="main-handle">
            <ul class="main-nav">
    </HeaderTemplate>
    <ItemTemplate>
        <li><a class="main-link" href="#">
            <%#((System.Xml.XmlNode)Container.DataItem).Attributes["name"].InnerText%></a>
            
        <asp:Repeater ID="ajaynodes" runat="server" DataSource='<%# GetChild(((System.Xml.XmlNode)Container.DataItem))%>'>
            <HeaderTemplate>
                <ul class="sub-links">
            </HeaderTemplate>
            <ItemTemplate>
            <li><a href="#" title="AIEEE">AIEEE</a> </li>
            </ItemTemplate>
            <FooterTemplate>
                </ul></li>
            </FooterTemplate>
        </asp:Repeater>
    </ItemTemplate>
    <FooterTemplate>
        </ul> </div>
    </FooterTemplate>
</asp:Repeater>
<div class="topdropMenu unit">
</div>
