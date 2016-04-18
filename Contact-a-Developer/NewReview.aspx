<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="NewReview.aspx.cs" Inherits="Reviews" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <p><h1>Write a new review for <asp:Label ID="Label1" runat="server" Text="Dev_FirstName"></asp:Label></h1></p>
    <div class="form-group">
        <h3>Add a new rating</h3>
        <div class="col-md-12">    
            <asp:RadioButtonList ID="lstRating" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Select a rating." ControlToValidate="lstRating"></asp:RequiredFieldValidator>
        </div>
    </div>
    <div class="form-group">
        <div class="col-md-12">
            <asp:TextBox id="txtReview" TextMode="multiline" Columns="100" Rows="5" runat="server" CssClass="" />
            <br />
            <asp:Button ID="btnRatingSubmit" runat="server" Text="Submit" />
        </div>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtReview"></asp:RequiredFieldValidator>
    </div>
    <p><a href="PastReviews.aspx">Past ratings for this user.</a></p>
</asp:Content>

