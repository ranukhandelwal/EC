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
    <asp:Panel ID="job_details" visibility="false" runat="server">
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
    </asp:Panel>
    <asp:Panel ID="joblistpanel" visibility="false" runat="server">
        <div class="size1of1 unit">
            <asp:Repeater ID="JobListId" runat="server">
                <HeaderTemplate>
                    <div class="job mod">
                        <h3>
                            <span class="unit">Technical Jobs for Freshers in India</span> <span class="arrows">
                            </span>
                        </h3>
                        <ul>
                </HeaderTemplate>
                <ItemTemplate>
                    <li><a href="<%# ResolveUrl((string)Eval("Link"))%>">
                        <%# Eval("Title")%></a><span>Last date 13/08/11</span></li>
                </ItemTemplate>
                <FooterTemplate>
                    </ul> </div>
                </FooterTemplate>
            </asp:Repeater>
        </div>
    </asp:Panel>
</asp:Content>
