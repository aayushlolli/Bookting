<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Bookting.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link href="Style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        
        <div class="sec2">
            <div class="container">
                 
                <div class="content">
                    <h2>Lets get working!</h2>
                    <asp:TextBox ID="txtUsername" placeholder="Username" runat="server" ></asp:TextBox><br />
                    <asp:TextBox ID="txtPassword" placeholder="Password" TextMode="Password" runat="server"></asp:TextBox><br />
                    <asp:Button ID="btnLogin" runat="server" Text="Login" Width="128px" OnClick="btnLogin_Click" />
                    <asp:Label ID="lblStatus" Style="padding-left: 4vw; padding-top: 2vw;" Font-Size="Medium" ForeColor="Red" runat="server"></asp:Label>
                </div>
            </div>
        </div>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>

