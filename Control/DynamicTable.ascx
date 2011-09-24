<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DynamicTable.ascx.cs"
    Inherits="DynamicTable" %>
<asp:Panel Visible="true" ID="RawTable" runat="server" Style="margin-top: 30px;">
    <div>
        <div>
            Rows:
            <asp:TextBox ID="txtRows" runat="server" Width="30px"> </asp:TextBox>
            &nbsp;&nbsp;Cols: &nbsp;<asp:TextBox ID="txtCols" runat="server" Width="30px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btnGenerate" OnClick="btnGenerate_Click" runat="server" Text="Generate" />&nbsp;<br />
            <br />
            <br />
            <br />
        </div>
    </div>
</asp:Panel>
<asp:PlaceHolder ID="__dynamictable" runat="server"></asp:PlaceHolder>
