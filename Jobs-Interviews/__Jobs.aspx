<%@ Page Title="" Language="C#" MasterPageFile="~/Job.master" AutoEventWireup="true"
    CodeBehind="__Jobs.aspx.cs" Inherits="__Jobs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AddToBreadCrum" runat="server">
    <div class="breadArrow">
        &gt;</div>
    <a class="unit" href="" title="Job Home">Other Jobs</a>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jobDetail unit">
        <h3>
            <asp:Label ID="lblTitle" runat="server" />
        </h3>
        <ul>
            <li>
                <h5>
                    JOB Summary</h5>
            </li>
            <li>
                <asp:Label ID="lblSummary" runat="server" />
            </li>
        </ul>
        <ul>
            <li>
                <h5>
                    JOB Details</h5>
            </li>
            <li>
                <asp:Label ID="lbldetails" runat="server" />
            </li>
        </ul>
    </div>
</asp:Content>
