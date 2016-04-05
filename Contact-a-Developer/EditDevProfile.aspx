<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="EditDevProfile.aspx.cs" Inherits="EditDevProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2>Edit Developer Profile</h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

    <div class="form-horizontal">
        <hr />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="ResumeUpload" CssClass="col-md-2 control-label">Resume</asp:Label>
            <div class="col-md-10">
                <asp:FileUpload ID="ResumeUpload" runat="server" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ResumeUpload"
                    CssClass="text-danger" ErrorMessage="The resume field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Overview" CssClass="col-md-2 control-label">Overview</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Overview" TextMode="MultiLine" Rows="10" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Overview"
                    CssClass="text-danger" ErrorMessage="The overview field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="CertUpload" CssClass="col-md-2 control-label">Certifications</asp:Label>
            <div class="col-md-10">
                <asp:FileUpload ID="CertUpload" runat="server" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="CertUpload"
                    CssClass="text-danger" ErrorMessage="The certification field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="PrevSites" CssClass="col-md-2 control-label">Previous websites (comma separated)</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="PrevSites" CssClass="form-control" />
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-10 col-md-offset-2">
                <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn btn-default" />
            </div>
        </div>
    </div>
</asp:Content>

