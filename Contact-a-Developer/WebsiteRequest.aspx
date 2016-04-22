<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="WebsiteRequest.aspx.cs" Inherits="WebsiteRequest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

<div class="container">
    <h1>Website Design Request</h1>
        <h4>Fill out the form to request a design.</h4>
              <hr />
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="grp" ForeColor="Red" />
               <table style="width: 100%;">
            <tr>
                <td><span class="auto-style4">Job Name</span> :
                    <asp:TextBox ID="TextBox1" runat="server" placeholder="Job name" Width="179px"  ></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Job Name Is Required." ValidationGroup="grp">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                 <td>
                     <br class="auto-style4" />
                     <span class="auto-style4">Other Websites </span>:
                    <asp:TextBox ID="TextBox2" runat="server" placeholder="Other Websites (use ',' to separate)" Width="178px" TextMode="MultiLine"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Other Websites Is Required" ValidationGroup="grp">*</asp:RequiredFieldValidator>
                </td>
                
            </tr>
                   </table>

        <p>&nbsp;</p>
             <p class="auto-style4">What look and feel do you want for this design project?</p>
             <p>
                 <asp:TextBox ID="TextBox5" runat="server" Columns="50" Rows="3" TextMode="MultiLine" Width="590px"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox5" ErrorMessage="Description Is Required" ValidationGroup="grp">*</asp:RequiredFieldValidator>            
             </p>
             
           <p><span class="auto-style4">How urgent (select one):&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                   <asp:ListItem>ASAP</asp:ListItem>
                   <asp:ListItem>Extremely Wicked Urgent</asp:ListItem>
                   <asp:ListItem>It can wait</asp:ListItem>
                   <asp:ListItem>When you get to it</asp:ListItem>
               </asp:DropDownList>
             </p>  
       <p class="auto-style4">&nbsp;</p>
             <p class="auto-style4">Please select type of the website you need?</p>
             <p>
                 <asp:CheckBox ID="CheckBox1" runat="server" Text="Mobile Friendly" CssClass="auto-style5" OnCheckedChanged="CheckBox1_CheckedChanged" />
             </p>
             <p>
                 <asp:CheckBox ID="CheckBox2" runat="server" Text="Animation" CssClass="auto-style5" />
             </p>
             <p>
                 <asp:CheckBox ID="CheckBox3" runat="server" Text="Dynamic Web Pages" CssClass="auto-style5" />
             </p>
             <p>&nbsp;</p>
             <p><span class="auto-style4">Logo design required?&nbsp;&nbsp;&nbsp;&nbsp;
                 </span>
                 <asp:RadioButton ID="RadioButton1" runat="server" Text="Yes" CssClass="auto-style5" AutoPostBack="true" OnCheckedChanged="Radio1Button_CheckedChanged" />
&nbsp;&nbsp;
                 <asp:RadioButton ID="RadioButton2" runat="server" Text="No" CssClass="auto-style5" AutoPostBack="true" OnCheckedChanged="Radio2Button_CheckedChanged" />
             </p>      
             
            <p class="auto-style3">&nbsp;</p>
             <p class="auto-style3"><strong><span class="auto-style4">Type of change you want?</span></strong></p> 
             
             
  
         <asp:RadioButton ID="RadioButton3" runat="server" Text="Change To Existing Content." CssClass="auto-style5" AutoPostBack="true"  OnCheckedChanged="RadioButton3_CheckedChanged" />
         <br />
             <br />
             <strong>
         <asp:RadioButton ID="RadioButton4" runat="server" Text="Add New Content." CssClass="auto-style5" AutoPostBack="true"  OnCheckedChanged="RadioButton4_CheckedChanged"/>
             </strong>
         <br />
         <br />
&nbsp;&nbsp;&nbsp;
         <em>
         <asp:Button ID="Button1" runat="server" Text="Send Request" OnClick="Button1_Click"  CssClass="auto-style7" CausesValidation="true" ValidationGroup="grp"  />
             <br />
             </em
         <br />
         <br />
             </div>
</asp:Content>

