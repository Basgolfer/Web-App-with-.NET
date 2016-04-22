<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Website Request Form.aspx.cs" Inherits="Website_Request_Form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="Content2/bootstrap.min.css"/>
  <link rel="stylesheet" href="Content2/bootstrap.css"/>
  <link rel="stylesheet" href="Content2/Site.css"/>



    <title>Contact a Developer - Website Request</title>
</head>
<body>

<div id="wrapper">







        <!-- /#sidebar-wrapper -->

  <div id="page-content-wrapper" style="padding-left:130px;">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-xs-12 col-md-8">
                      <div class="panel panel-default" >
  <!-- Default panel contents -->
  <div class="panel-heading">
    <h3 class="panel-title-primary">Website request form</h3>
      <span class="red">An * indicates that the field is required.</span>
  </div>
  <div class="panel-body">
    <p></p>
  </div>

  <!-- Form -->
  <form method="post" action="" runat="server" >
  <div class="container-fluid">
    <div class="form-group">
      <label for="firstname">First Name<span class="red"> *</span></label>
        <asp:TextBox CssClass="form-control" id="txtFirstName" placeholder="First Name" runat="server" maxlength="50" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="requiredFieldValidatorTxtFirstName" runat="server"
                controlToValidate ="txtFirstName"
                ErrorMessage ="You must enter your first name."
                CssClass="red" >
            </asp:RequiredFieldValidator>
        <br />
            <asp:RegularExpressionValidator
                 ID="RegularExpressionValidatorTxtFirstName" 
                 runat="server" ControlToValidate="txtFirstName" 
                 ValidationExpression=
                     "[a-zA-Z\s]+"
                 ErrorMessage="No Numbers"
                 CssClass ="red">
            </asp:RegularExpressionValidator>
    </div>
    <div class="form-group">
      <label for="lastname">Last Name<span class="red"> *</span></label>
      <asp:TextBox CssClass="form-control" id="txtLastName" placeholder="Last Name" runat="server" maxlength="50" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="requiredFieldValidatorTxtLastName" runat="server"
                controlToValidate ="txtLastName"
                ErrorMessage ="You must enter your last name."
                CssClass="red" >
            </asp:RequiredFieldValidator>
        <br />
            <asp:RegularExpressionValidator
                 ID="RegularExpressionValidatorTxtLastName" 
                 runat="server" ControlToValidate="txtLastName" 
                 ValidationExpression=
                     "[a-zA-Z\s]+"
                 ErrorMessage="No Numbers"
                 CssClass ="red">
            </asp:RegularExpressionValidator>
    </div>
    <div class="form-group">
      <label for="email">Email address<span class="red"> *</span></label>
      <asp:TextBox CssClass="form-control" id="txtEmail" placeholder="Email" TextMode="Email" runat="server" maxlength="50" ></asp:TextBox>
             <asp:RequiredFieldValidator ID="requiredFieldValidatorTxtEmail" runat="server"
                controlToValidate ="txtEmail"
                ErrorMessage ="You must enter your email."
                CssClass="red" >
            </asp:RequiredFieldValidator>
        <br />
        <br />
    </div>
    <div class="form-group">
      <label for="phone">Phone<span class="red"> *</span></label>
       <asp:TextBox CssClass="form-control" id="txtPhone" placeholder="Telephone" TextMode="Phone" runat="server" maxlength="50" ></asp:TextBox>
             <asp:RequiredFieldValidator ID="requiredFieldValidatorTxtPhone" runat="server"
                controlToValidate ="txtPhone"
                ErrorMessage ="You must enter your phone number."
                CssClass="red" >
            </asp:RequiredFieldValidator>
        <br />
            <asp:RegularExpressionValidator
                 ID="RegularExpressionValidatorTxtPhone" 
                 runat="server" ControlToValidate="txtPhone" 
                 ValidationExpression=
                      "((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"
                 ErrorMessage="Use this format 999-999-9999"
                 CssClass ="red">
            </asp:RegularExpressionValidator>
    </div>
    <div class="form-group">
      <label for="address">Address<span class="red"> *</span></label>
        <asp:TextBox CssClass="form-control" id="txtAddress" placeholder="Address" runat="server" maxlength="50" ></asp:TextBox>
             <asp:RequiredFieldValidator ID="requiredFieldValidatorTxtAddress" runat="server"
                controlToValidate ="txtAddress"
                ErrorMessage ="You must enter your address."
                CssClass="red" >
            </asp:RequiredFieldValidator>
        <br />
        <br />
    </div>
    <div class="form-group">
      <label for="city">City<span class="red"> *</span></label>
      <asp:TextBox CssClass="form-control" id="txtCity" placeholder="City" runat="server" maxlength="50" ></asp:TextBox>
             <asp:RequiredFieldValidator ID="requiredFieldValidatorTxtCity" runat="server"
                controlToValidate ="txtCity"
                ErrorMessage ="You must enter your city."
                CssClass="red" >
            </asp:RequiredFieldValidator>
        <br />
            <asp:RegularExpressionValidator
                 ID="RegularExpressionValidatorTxtCity" 
                 runat="server" ControlToValidate="txtCity" 
                 ValidationExpression=
                     "[a-zA-Z\s]+"
                 ErrorMessage="No Numbers"
                 CssClass ="red">
            </asp:RegularExpressionValidator>
    </div>
    <div class="form-group">
      <label>State<span class="red"> *</span></label>
        <asp:DropDownList ID="ddlState" runat="server" CssClass="form-control">
        </asp:DropDownList>  
        <br />
        <asp:Label ID="ddlStateRequired" runat="server" CssClass="red"></asp:Label>
        <br />
    </div>
    <div class="form-group">
      <label for="zipcode">Zip Code<span class="red"> *</span></label>
      <asp:TextBox CssClass="form-control" id="txtZipCode" placeholder="Zip Code" runat="server" maxlength="50" ></asp:TextBox>
              <asp:RequiredFieldValidator ID="requiredFieldValidatortxtZipCode" runat="server"
                controlToValidate ="txtZipCode"
                ErrorMessage ="You must enter your five digit zip code."
                CssClass="red" >
            </asp:RequiredFieldValidator>
        <br />
            <asp:RegularExpressionValidator
                 ID="RegularExpressionValidatortxtZipCode" 
                 runat="server" ControlToValidate="txtZipCode" 
                 ValidationExpression=
                     "[0-9]{5}"
                 ErrorMessage="Five digit zip code (numbers only)"
                 CssClass ="red">
            </asp:RegularExpressionValidator>
    </div>
      <div class="form-group">
           <label for="description">Please tell us what you want this website to do<span class="red"> *</span></label>
           <asp:TextBox CssClass="form-control" id="txtDescription" placeholder="1000 words or less." runat="server" maxlength="1000" TextMode="MultiLine" ></asp:TextBox>
             <asp:RequiredFieldValidator ID="requiredFieldValidatorDescription" runat="server"
                controlToValidate ="txtDescription"
                ErrorMessage ="You must enter a description."
                CssClass="red" >
            </asp:RequiredFieldValidator>
          <br />
          <br />
      </div>
            <div class="form-group">
           <label for="other websites">Please link us to other websites that you like</label>
           <asp:TextBox CssClass="form-control" id="txtLink" placeholder="No more than five links please." runat="server" maxlength="1000" TextMode="MultiLine" ></asp:TextBox>
                <br />
                <br />
      </div>
      <div class="form-group">
          <label>Please select the features that you want</label>
        <div class="checkbox">
             <label><asp:CheckBox runat="server"/>Mobile friendly</label>
        </div>
        <div class="checkbox">
               <label><asp:CheckBox runat="server"/>Animation</label>
        </div>
        <div class="checkbox">
               <label><asp:CheckBox runat="server"/>Dynamic web pages</label>
        </div>
              </div>

    <!-- <div class="checkbox">
      <label>
        <input type="checkbox"> Check me out
      </label>
    </div> -->
      <asp:Button Text="Submit" runat="server" OnClick="onSubmitButtonClick" CssClass="btn btn-primary" />
  </div> <!--- container-fluid inside the form --->
  </form>
</div>
            </div>
        </div>
    </div>
  </div>
</div>

<div class="container-fluid">

   <!------ panel panel-default --------->
</div><!------ container-fluid --------->




</body>
</html>
