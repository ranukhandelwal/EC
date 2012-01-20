<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Announcement.ascx.cs"
    Inherits="ExamCrazy.Control.Announcement" %>
<asp:Repeater ID="AnnounceListId" runat="server">
    <HeaderTemplate>
        <div class="announcement mod">
            <h3>
                <span class="unit">Announcements</span> <span class="arrows"></span>
            </h3>
            <div class="">
                <ul>
    </HeaderTemplate>
    <ItemTemplate>
        <li><%# Eval("Summary")%></li>
            
        
    </ItemTemplate>
    <FooterTemplate>
        </ul> </div> </div>
    </FooterTemplate>
</asp:Repeater>
