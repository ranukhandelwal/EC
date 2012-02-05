<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MemberList.ascx.cs"
    Inherits="ExamCrazy.Control.MemberList" %>
<div style="margin-left: 15px;">
    <table border="0" cellpadding="2" align="left" cellspacing="2" width="75%">
        <tr>
            <td width="68%">
                <fieldset>
                    <legend>
                        <table>
                            <tr>
                                <td>
                                    <span class="sortcat">Sort Option:</span>&nbsp; <span class="content2">
                                </td>
                                <td>
                                    <asp:HyperLink ID="SortLinkUsername" CssClass="dsort" runat="server" />&nbsp;
                                </td>
                                <td>
                                    <asp:Image ID="ArrowImage2" runat="server" />
                                </td>
                                <td>
                                    &nbsp;|&nbsp;
                                </td>
                                <td>
                                    <asp:HyperLink ID="SortLinkHits" CssClass="dsort" runat="server" />&nbsp;
                                </td>
                                <td>
                                    <asp:Image ID="ArrowImage1" runat="server" />
                                </td>
                                <td>
                                    &nbsp;|&nbsp;
                                </td>
                                <td>
                                    <asp:HyperLink ID="SortLinkDateJoined" CssClass="dsort" runat="server" />&nbsp;
                                </td>
                                <td>
                                    <asp:Image ID="ArrowImage4" runat="server" />
                                </td>
                                <td>
                                    &nbsp;|&nbsp;
                                </td>
                                <td>
                                    <asp:HyperLink ID="SortLinkLastVisit" CssClass="dsort" runat="server" />&nbsp;
                                </td>
                                <td>
                                    <asp:Image ID="ArrowImage5" runat="server" />
                                    </span>
                                </td>
                            </tr>
                        </table>
                    </legend>
                    <div style="padding-top: 8px;">
                        <div style="margin-top: 5px; margin-bottom: 10px;">
                            <asp:Label runat="server" ID="lblcounter" CssClass="content12" EnableViewState="false" />
                        </div>
                        <div style="margin-top: 12px; margin-bottom: 20px;">
                            <asp:Label runat="server" ID="lblAplhaLetterLinks" CssClass="content12" EnableViewState="false" />
                        </div>
                        <asp:Repeater ID="MembersRep" runat="server">
                            <ItemTemplate>
                                <div class="dcnt2" style="margin-top: 6px;">
                                    <img src="/images/user-icon.gif" />&nbsp;<a class="content12" onmouseover="Tip('Click username to view the complete profile', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')"
                                        onmouseout="UnTip()" href='/User/<%# Eval("UserName")%>'><%# Eval("UserName")%></a>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                    <!--Begin Record count,page count and paging link-->
                    <div style="margin-left: 4px; margin-top: 22px;">
                        <asp:Label ID="lblRecpage" runat="server" CssClass="content2" EnableViewState="false" />
                        <div style="margin-top: 10px;">
                            <asp:Label CssClass="content2" ID="lbPagerLink" runat="server" Font-Bold="True" EnableViewState="false" />
                        </div>
                    </div>
                    <!--End Record count,page count and paging link-->
                </fieldset>
            </td>
        </tr>
    </table>
</div>
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
