<%@ Page Title="" Language="C#" MasterPageFile="~/HeaderFooter.Master" AutoEventWireup="true"
    CodeBehind="articledetail.aspx.cs" Inherits="ExamCrazy.Article.articledetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/contentxd.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AddToBreadCrum" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="LeftPanelHolder" runat="server">
    Why ExamCrazy
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">
    <div style="margin-left: 25px; margin-right: 25px; margin-top: 25px;">
        <h1>
            <asp:Label ID="lbtitle" runat="server"></asp:Label></h1>
        <div style="margin-bottom: 2px; margin-top: 3px;">
            <table border="0" cellpadding="1" cellspacing="1">
                <tr>
                    <td>
                        <span class="content2">By&nbsp;&nbsp;<td>
                            <img src="../images/user-icon.gif" /><td>
                                <asp:Label ID="lbauthor" CssClass="content2" runat="server" /><td>
                                    &nbsp;&nbsp;Date Posted:&nbsp;<asp:Label runat="server" ID="lbldate" CssClass="cyel" />&nbsp;&nbsp;<td>
                                        Hits:&nbsp;<asp:Label ID="lbhits" CssClass="cmaron3" runat="server" />
                                        &nbsp;&nbsp;<td>
                                            Rating:&nbsp;<td>
                                                <br />
                                                <asp:Image ID="starimage" runat="server" />&nbsp;<td>
                                                    (<asp:Label CssClass="cgr" runat="server" ID="lblrating" />)
                                                    <td>
                                                        votes
                                                        <asp:Label CssClass="cyel" runat="server" ID="lblvotescount" />&nbsp;&nbsp;<td>
                                                            Word Count:&nbsp;<asp:Label ID="lblwordcount" CssClass="cmaron3" runat="server" />
                        </span>
                </tr>
            </table>
        </div>
        <div>
            <table border="0" cellpadding="1" cellspacing="1">
                <tr>
                    <td>
                        <img src="../images/save_icon.gif" align="absmiddle" alt="Save/Add <%=strArtTitle%> article to your favorite">
                    </td>
                    <td>
                        &nbsp;&nbsp;<a class="dt" title="Save/Add <%=strArtTitle%> article to favorite" href="javascript:bookmark('<%=strArtTitle%> Article', '<%=strBookmarkURL%>')">
                            Save to favorite</a>
                    </td>
                    <td>
                        &nbsp;&nbsp;<asp:Image ID="CommentImg" ImageUrl="../images/discuss_icon.gif" AlternateText="Discuss <%=strArtTitle%> article"
                            ImageAlign="AbsMiddle" runat="server" />&nbsp;
                    </td>
                    <td>
                        &nbsp;&nbsp;<asp:HyperLink ID="CommentLink" NavigateUrl="#DIS" ToolTip="Comment this article"
                            runat="server" CssClass="dt" />&nbsp;&nbsp;
                    </td>
                    <td>
                        &nbsp;&nbsp;<sup><img src="../images/print_icon.gif" align="absmiddle" alt="Print <%=strArtTitle%> article"></sup>
                    </td>
                    <td>
                        &nbsp;&nbsp;<a class="thickbox dt" title="Print <%=strArtTitle%> article" href="printarticle.aspx?aid=<%=Request.QueryString["aid"]%>&keepThis=true&TB_iframe=true&height=600&width=750">
                            Print this article</a>&nbsp;&nbsp;
                    </td>
                    <td>
                        &nbsp;&nbsp;<sup><img src="../images/email_icon.gif" align="absmiddle" alt="Email <%=strArtTitle%> article to a friend"></sup>
                    </td>
                    <td>
                        &nbsp;&nbsp;<a class="thickbox dt" title="Email <%=strArtTitle%> recipe to friend"
                            href="emailarticle.aspx?aid=<%=Request.QueryString["aid"]%>&amp;n=<%=strArtTitle%>&keepThis=true&TB_iframe=true&height=220&width=400">
                            Email this article</a>&nbsp;&nbsp;&nbsp;<asp:HyperLink CssClass="dt" ID="editarticlelink"
                                Visible="false" runat="server" EnableViewState="false" />
                    </td>
                </tr>
            </table>
        </div>
        <div style="margin-bottom: 7px;">
            <asp:Panel ID="RateArticle" runat="server" Height="50px" Width="220px">
                &nbsp;&nbsp;<b><span id="link<%=Request.QueryString["aid"]%>" class="cgr">Rate this
                    article</span></b>
                <ul class="srating">
                    <li><a href="#" onmouseover="document.getElementById('link<%=Request.QueryString["aid"]%>').innerHTML='Poor - 1 star'"
                        onmouseout="document.getElementById('link<%=Request.QueryString["aid"]%>').innerHTML='Rate this article'"
                        onclick="javascript:top.document.location.href='rate.aspx?id=<%=Request.QueryString["aid"]%>&amp;rateval=1&amp;wp=<%=ArticleSection%>';"
                        title='Rate article: Not sure - 1 star' class='onestar'>1</a></li>
                    <li><a href="#" onmouseover="document.getElementById('link<%=Request.QueryString["aid"]%>').innerHTML='Fair - 2 stars'"
                        onmouseout="document.getElementById('link<%=Request.QueryString["aid"]%>').innerHTML='Rate this article'"
                        onclick="javascript:top.document.location.href='rate.aspx?id=<%=Request.QueryString["aid"]%>&amp;rateval=2&amp;wp=<%=ArticleSection%>';"
                        title='Rate article: Fair - 2 stars' class='twostars'>2</a></li>
                    <li><a href="#" onmouseover="document.getElementById('link<%=Request.QueryString["aid"]%>').innerHTML='Interesting - 3 stars'"
                        onmouseout="document.getElementById('link<%=Request.QueryString["aid"]%>').innerHTML='Rate this article'"
                        onclick="javascript:top.document.location.href='rate.aspx?id=<%=Request.QueryString["aid"]%>&amp;rateval=3&amp;wp=<%=ArticleSection%>';"
                        title='Rate article: Interesting - 3 stars' class='threestars'>3</a></li>
                    <li><a href="#" onmouseover="document.getElementById('link<%=Request.QueryString["aid"]%>').innerHTML='Good - 4 stars'"
                        onmouseout="document.getElementById('link<%=Request.QueryString["aid"]%>').innerHTML='Rate this article'"
                        onclick="javascript:top.document.location.href='rate.aspx?id=<%=Request.QueryString["aid"]%>&amp;rateval=4&amp;wp=<%=ArticleSection%>';"
                        title='Rate article: Very good - 4 stars' class='fourstars'>4</a></li>
                    <li><a href="#" onmouseover="document.getElementById('link<%=Request.QueryString["aid"]%>').innerHTML='Excellent - 5 stars'"
                        onmouseout="document.getElementById('link<%=Request.QueryString["aid"]%>').innerHTML='Rate this article'"
                        onclick="javascript:top.document.location.href='rate.aspx?id=<%=Request.QueryString["aid"]%>&amp;rateval=5&amp;wp=<%=ArticleSection%>';"
                        title='Rate article: Excellent - 5 stars' class='fivestars'>5</a></li>
                </ul>
            </asp:Panel>
        </div>
        <div style="margin-top: 8px; padding-top: 12px; margin-right: 50px;">
            <asp:Label ID="lbcontent" runat="server"></asp:Label>
        </div>
        <div style="clear: both">
            <br />
        </div>
        <div style="width: 750px;">
            <div style="width: 350px; float: left;">
                <asp:Panel ID="PanelOtherArticleByAuthor" Visible="false" runat="server">
                    <fieldset>
                        <legend><span class="sortcat">Other Article by <a href="findallarticlebyauthor.aspx?author=<%=strAuthor%>"
                            onmouseover="Tip('View all article publish by <b><%=strAuthor%></b>', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')"
                            onmouseout="UnTip()">
                            <%=strAuthor%></a></span></legend>
                        <div style="padding-right: 8px; padding-left: 5px; padding-top: 6px; line-height: 18px;">
                            <asp:Repeater ID="OtherArticleByThisAuthor" runat="server">
                                <ItemTemplate>
                                    <div class="dcnt2" style="margin-top: 2px;">
                                        <span class="cyel">&raquo;</span>&nbsp;<a class="content12" href="articledetail.aspx?aid=<%# Eval("ID")%>"
                                            onmouseover="Tip('<b>Category:</b> <%# Eval("Category")%><br><b>Hits:</b><%# Eval("Hits")%><br>Read more...', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')"
                                            onmouseout="UnTip()"><%# Eval("Title")%></a>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                            <div class="dcnt2" style="margin-top: 2px;">
                                <img src="images/arrow7.gif" />&nbsp;<a class="content12" href="findallarticlebyauthor.aspx?author=<%=strAuthor%>"
                                    onmouseover="Tip('View all article published by <b><%=strAuthor%></b>', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')"
                                    onmouseout="UnTip()">More...</a>
                            </div>
                        </div>
                    </fieldset>
                </asp:Panel>
            </div>
            <div style="width: 350px; float: right;">
                <asp:Panel ID="PanelRelatedArticle" Visible="false" runat="server">
                    <fieldset>
                        <legend><span class="sortcat">Related Article</span></legend>
                        <div style="padding-right: 8px; padding-left: 5px; padding-top: 6px; line-height: 18px;">
                            <asp:Repeater ID="RelatedArticle" runat="server">
                                <ItemTemplate>
                                    <div class="dcnt2" style="margin-top: 2px;">
                                        <span class="cyel">&raquo;</span>&nbsp;<a class="content12" href="articledetail.aspx?aid=<%# Eval("ID")%>"
                                            onmouseover="Tip('<b>Category:</b> <%# Eval("Category")%><br><b>Hits:</b><%# Eval("Hits")%><br>Read more...', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')"
                                            onmouseout="UnTip()"><%# Eval("Title")%></a>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                    </fieldset>
                </asp:Panel>
            </div>
        </div>
        <div style="clear: both">
            <br />
        </div>
</asp:Content>
