<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserInfo.ascx.cs" Inherits="ExamCrazy.Control.UserInfo" %>
<div class="userInfo unit">
    <h2>
        <asp:Label ID="lblname" runat="server"></asp:Label></h2>
    <p>
        <asp:Panel ID="pnlverifyemail" runat="server" Visible="false">
            <table>
                <tr>
                    <td>
                        <asp:Label ID="lblemail" runat="server"></asp:Label>                
                    </td>
                    <td>
                    <img id="ImgVerify" alt="Verify Email" title="User Wall" runat="server" />
                        
                    </td>
                </tr>
            </table>
        </asp:Panel>
        
    </p>
    <div class="size1of2 unit">
        <a href="#" title="User Wall">
            <img id="UserImage" alt="User wall" title="User Wall" runat="server" /></a>
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
