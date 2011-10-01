<%@ Page Title="" Language="C#" MasterPageFile="~/Job.master" AutoEventWireup="true"
    CodeBehind="__Jobs.aspx.cs" Inherits="__Jobs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AddToBreadCrum" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jobDetail unit">
        <h3>
            <asp:Label id="lblTitle" runat="server"/>
        </h3>
    </div>
    <ul>
        <li>
            <h5>
                JOB Summary</h5>
        </li>
    </ul>
</asp:Content>
