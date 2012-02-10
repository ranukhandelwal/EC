<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DiscussionForm.ascx.cs"
    Inherits="ExamCrazy.Control.DiscussionForm" %>
<div class="discussion mod">
    <h3>
        Recent Post on discussion <span class="arrows"></span>
    </h3>
</div>
<div class="post unit">
    <h4>
        Vanessa Hamlin</h4>
    <h5>
        May 28, 2010 at 8:16 am</h5>
    <p>
        Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem
        Ipsum has been the industry's standard dummy text ever since the 1500s</p>
</div>
<div class="post unit">
    <h4>
        Vanessa Hamlin</h4>
    <h5>
        May 28, 2010 at 8:16 am</h5>
    <p>
        Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem
        Ipsum has been the industry's standard dummy text ever since the 1500s</p>
</div>
<div class="comments unit">
    <ul>
        <asp:Panel ID="discussionpanel" runat="server" Visible="true">
            <li>
                <label>
                    Name</label>
                <asp:TextBox ID="uname" TextMode="SingleLine" Text="Name" runat="server" ToolTip="Enter username" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorUnameMain" ControlToValidate="uname"
                    CssClass="InvalidCred" ValidationGroup="DiscussionGroup1" ErrorMessage="User Name is empty"
                    runat="Server">
                </asp:RequiredFieldValidator>
            </li>
            <li>
                <label>
                    Email</label>
                <asp:TextBox ID="uemail" TextMode="SingleLine" Text="Email" runat="server" ToolTip="Enter email id" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" ControlToValidate="uemail"
                    CssClass="InvalidCred" ValidationGroup="DiscussionGroup1" ErrorMessage="Email is empty"
                    runat="Server">
                </asp:RequiredFieldValidator>
            </li>
        </asp:Panel>
        <li>
            <label>
                Comments</label>
            <textarea rows="5" cols="5"></textarea>
        </li>
        <li>
            <label>
            </label>
            <input class="submit" type="button" value="Submit" />
        </li>
    </ul>
</div>
