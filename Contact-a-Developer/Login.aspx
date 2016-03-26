<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Login.aspx.vb" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <link rel="stylesheet" href="css/bootstrap.min.css"/>
      <link rel="stylesheet" href="css/styles.css"/>
    <title>Contact a Developer - Login</title>
</head>
<body>

    <br />
    <br />
    <br />
    <br />

    <div class="container">
	    <div class="row">
	        <div class="col-md-4 col-md-offset-7">
	            <div class="panel panel-default">
	                <div class="panel-heading">
	                  <strong>Login</strong>
	                </div>
	                <div class="panel-body">
	                    <form class="form-horizontal" role="form">
	                    <div class="form-group">
	                        <label for="inputEmail3" class="col-sm-3 control-label">
	                            Email</label>
	                        <div class="col-sm-9">
	                            <input type="email" class="form-control" id="inputEmail3" placeholder="Email" required=""/>
	                        </div>
	                    </div>
	                    <div class="form-group">
	                        <label for="inputPassword3" class="col-sm-3 control-label">
	                            Password</label>
	                        <div class="col-sm-9">
	                            <input type="password" class="form-control" id="inputPassword3" placeholder="Password" required=""/>
	                        </div>
	                    </div>
	                    <div class="form-group">
	                        <div class="col-sm-offset-3 col-sm-9">
	                            <div class="checkbox">
	                                <label>
	                                    <input type="checkbox"/>
	                                    Remember me
	                                </label>
	                            </div>
	                        </div>
	                    </div>
	                    <div class="form-group last">
	                        <div class="col-sm-offset-3 col-sm-9">
	                            <button type="submit" class="btn btn-success btn-sm">
	                                Sign in</button>
	                                 <button type="reset" class="btn btn-default btn-sm">
	                                Reset</button>
	                        </div>
	                    </div>
	                    </form>
	                </div>
	                <div class="panel-footer">
	                    Not Registered? <a href="#">Register here</a>
                        <br />
                        Forgot Password? <a href="#">Reset password here</a>
                    </div>
	            </div>
	        </div>
	    </div>
	</div>


</body>
</html>
