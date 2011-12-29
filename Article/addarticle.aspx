<%@ Page Title="" Language="C#" MasterPageFile="~/HeaderFooter.Master" AutoEventWireup="true"
    CodeBehind="addarticle.aspx.cs" Inherits="EC.Article.addarticle" ValidateRequest="false"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/cssreciaspx.css" rel="stylesheet" type="text/css" />
    <!-- TinyMCE -->
    <script type="text/javascript" src="../tinymce_editor/tiny_mce.js"></script>
    <script type="text/javascript">
        tinyMCE.init({
            // General options
            editor_deselector: "mceNoEditor",
            mode: "textareas",
            theme: "advanced",
            plugins: "safari,pagebreak,style,layer,table,save,advhr,advimage,advlink,emotions,iespell,insertdatetime,preview,media,searchreplace,print,contextmenu,paste,directionality,fullscreen,noneditable,visualchars,nonbreaking,xhtmlxtras,template,inlinepopups",

            // Theme options
            theme_advanced_buttons1: "save,newdocument,|,bold,italic,underline,strikethrough,|,justifyleft,justifycenter,justifyright,justifyfull,|,styleselect,formatselect,fontselect,fontsizeselect",
            theme_advanced_buttons2: "cut,copy,paste,pastetext,pasteword,|,search,replace,|,bullist,numlist,|,outdent,indent,blockquote,|,undo,redo,|,link,unlink,anchor,image,cleanup,help,code,|,insertdate,inserttime,preview,|,forecolor,backcolor",
            theme_advanced_buttons3: "tablecontrols,|,hr,removeformat,visualaid,|,sub,sup,|,charmap,emotions,iespell,media,advhr,|,print,|,ltr,rtl,|,fullscreen",
            theme_advanced_buttons4: "insertlayer,moveforward,movebackward,absolute,|,styleprops,|,cite,abbr,acronym,del,ins,attribs,|,visualchars,nonbreaking,template,pagebreak",
            theme_advanced_toolbar_location: "top",
            theme_advanced_toolbar_align: "left",
            theme_advanced_statusbar_location: "bottom",
            theme_advanced_resizing: true,

            // Example word content CSS (should be your site CSS) this one removes paragraph margins
            content_css: "CSS/word.css",

            // Drop lists for link/image/media/template dialogs
            template_external_list_url: "lists/template_list.js",
            external_link_list_url: "lists/link_list.js",
            external_image_list_url: "lists/image_list.js",
            media_external_list_url: "lists/media_list.js",

            // Replace values for the template plugin
            template_replace_values: {
                username: "Some User",
                staffid: "991234"
            }
        });
    </script>
    <!-- /TinyMCE -->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AddToBreadCrum" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="LeftPanelHolder" runat="server">
    Why ExamCrazy
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">
    <table border="0" align="center" cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td valign="top" width="85%">
                <div style="margin-left: 15px;">
                    <asp:Label ID="lbvalenght" runat="server" Font-Bold="True" ForeColor="#C00000" Font-Names="Verdana"
                        Visible="false" />
                    <fieldset>
                        <legend>Article Submission Form</legend>
                        <asp:Label runat="server" ID="lblyouarenotlogin" Visible="false" CssClass="content12"
                            EnableViewState="false" />
                        <asp:Panel ID="HideContentIfNotLogin" Visible="false" runat="server">
                            <div style="padding: 2px; margin-top: 12px; margin-left: 1px; margin-right: 26px;">
                                <span class="cred2">All fields are required</span>
                            </div>
                            <div style="margin-top: 8px;">
                                <table border="0" cellpadding="2" cellspacing="2" width="60%">
                                    <tr>
                                        <td width="20%">
                                            <span class="content12">Category:</span>
                                        </td>
                                        <td width="80%">
                                            <asp:DropDownList ID="ddlarticlecategory" runat="server" CssClass="ddl" AutoPostBack="false">
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldCategory" ControlToValidate="ddlarticlecategory"
                                                SetFocusOnError="true" CssClass="cred2" InitialValue="0" ErrorMessage="Category is blank"
                                                Display="Dynamic"> </asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="20%">
                                            <span class="content12">Author:</span> 
                                        </td>
                                        <td width="80%">
                                            <span class="cmaron">
                                                <asp:Label ID="lblauthorname" CssClass="cmaron" runat="server" /></span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="20%">
                                            <span class="content12">Title:</span><span class="cred2">*</span>
                                        </td>
                                        <td width="80%">
                                            <input type="text" id="Title1" name="Title1" class="textbox" size="60" runat="server"
                                                onfocus="this.style.backgroundColor='#FFFBE1'" onblur="this.style.backgroundColor='#ffffff'"
                                                onmouseover="Tip('65 characters maximum for the <b>Title</b>', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')"
                                                onmouseout="UnTip()" />
                                            <asp:RequiredFieldValidator runat="server" ID="artname" ControlToValidate="Title1"
                                                CssClass="cred2" ErrorMessage="* Article Title:<br />" Display="Dynamic" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="20%" valign="top">
                                            <span class="content12">Summary:</span><span class="cred2">*</span>
                                        </td>
                                        <td width="80%">
                                            <textarea runat="server" id="Summary" class="mceNoEditor textbox" cols="80" rows="3"
                                                onmouseover="Tip('350 characters maximum for the <b>Summary</b>, and should not contain HTML tag.', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')"
                                                onmouseout="UnTip()" />
                                            <asp:RequiredFieldValidator runat="server" ID="summa" ControlToValidate="Summary"
                                                CssClass="cred2" ErrorMessage="* Summary:<br />" Display="Dynamic" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="20%" valign="top">
                                            <span class="content12">Content:</span><span class="cred2">*</span>
                                        </td>
                                        <td width="80%">
                                            <textarea runat="server" id="Content" name="Content" class="textbox" cols="80" style="width: 80%"
                                                rows="50" onfocus="this.style.backgroundColor='#FFFBE1'" onblur="this.style.backgroundColor='#ffffff'" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="20%">
                                            <span class="content12">Keyword:</span><span class="cred2">*</span>
                                        </td>
                                        <td width="80%">
                                            <input type="text" id="Keyword" name="Keyword" class="textbox" size="65" runat="server"
                                                onfocus="this.style.backgroundColor='#FFFBE1'" onblur="this.style.backgroundColor='#ffffff'"
                                                onmouseover="Tip('60 characters maximum for the <b>Summary</b>, and should not contain HTML tag.<br>Multiple keywords must be separated with comma.', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')"
                                                onmouseout="UnTip()" />
                                            <asp:RequiredFieldValidator runat="server" ID="keyw" ControlToValidate="Keyword"
                                                CssClass="cred2" ErrorMessage="* Keyword:<br />" Display="Dynamic" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="20%">
                                        </td>
                                        <td width="80%">
                                            <input type="text" class="textbox" id="hd" name="hd" runat="server" style="visibility: hidden;" />
                                            <br />
                                            <asp:Button runat="server" Text="Submit" ID="AddArticle" CssClass="submitadmin" OnClick="Add_Article"
                                                onmouseover="Tip('Before submitting, you can <b>preview</b> your article by clicking the preview button in the editor menu.', BGCOLOR, '#FFFBE1', BORDERCOLOR, '#acc6db')"
                                                onmouseout="UnTip()" />
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </asp:Panel>
                    </fieldset>
                </div>
            </td>
        </tr>
    </table>
    <asp:Literal ID="JSLiteral" runat="server"></asp:Literal>
</asp:Content>
