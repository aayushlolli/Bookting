<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="Bookting.Customer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customer</title>
     <link href="style.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
</head>
<body>
    <form id="form1" runat="server">
                        
                <div class="content">
                    <asp:Button ID="btnLogout" runat="server" OnClick="btnLogout_Click" Text="Logout" Height="41px" Width="75px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblID" runat="server" Font-Bold="True" ForeColor="#1ABC9C"></asp:Label>
                    </div>
                    <div class="header">
                        <h1>Welcome
                            <asp:Label ID="lblName" runat="server"></asp:Label>
                        </h1>
                        <h6>Please enter your details below</h6>
                    </div>
            
                   <%-- <div class="topnav" id="myTopnav">
                      <a href="#home" class="active">Home</a>
                      <a href="#news">News</a>
                      <a href="#contact">Contact</a>
                      <a href="#about">About</a>
                      <a href="javascript:void(0);" class="icon" onclick="myFunction()">
                        <i class="fa fa-bars"></i>
                      </a>
                    </div>--%>
            
                        <div class="w3-bar w3-black">
                          <a href="#" class="w3-bar-item w3-button w3-mobile w3-green">Home</a>
                          <a href="#Capturing Wizard" class="w3-bar-item w3-button w3-mobile">Capture Wizard</a>
                          <a href="#" class="w3-bar-item w3-button w3-mobile">Invoicing</a>
                          <a href="#" class="w3-bar-item w3-button w3-mobile">Reports</a>
                        </div><br />

        
                 
                <section id="Capturing Wizard">
                <div class="content">
                    <h2><b>Enter the following:</b></h2>
                    <br />
                     
                    
                    <asp:Label ID="Label13" runat="server" Text="Business Name:" CssClass="labelstyle"></asp:Label>
                    <asp:DropDownList ID="ddBusName" runat="server" Height="35px" Width="150px" CssClass="ddl">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="reqBusName" runat="server" EnableClientScript="true" ControlToValidate="ddBusName" ErrorMessage="Please Select Business Name"></asp:RequiredFieldValidator>
                    <br />




                    <asp:Label ID="Label2" runat="server" Text="Processing Month:"></asp:Label>
                    <asp:DropDownList ID="ddProcessingMonth" runat="server" Height="35px" Width="150px" CssClass="ddl">
                        <asp:ListItem Text="" Value="">--Select--</asp:ListItem>
                        <asp:ListItem>January</asp:ListItem>
                        <asp:ListItem>February</asp:ListItem>
                        <asp:ListItem>March</asp:ListItem>
                        <asp:ListItem>April</asp:ListItem>
                        <asp:ListItem>May</asp:ListItem>
                        <asp:ListItem>June</asp:ListItem>
                        <asp:ListItem>July</asp:ListItem>
                        <asp:ListItem>August</asp:ListItem>
                        <asp:ListItem>September</asp:ListItem>
                        <asp:ListItem>October</asp:ListItem>
                        <asp:ListItem>November</asp:ListItem>
                        <asp:ListItem>December</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="reqProcessingMonth" EnableClientScript="true" ControlToValidate="ddProcessingMonth" runat="server" ErrorMessage="Select processing month"></asp:RequiredFieldValidator>
                    <br />




                    <asp:Label ID="Label3" runat="server" Text="Financial Period:"></asp:Label>
                    <asp:DropDownList ID="ddFinancialPeriod" runat="server" Height="35px" Width="150px" CssClass="ddl">
                        <asp:ListItem Text="" Value="">--Select--</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="reqFinancialPeriod" EnableClientScript="true" ControlToValidate="ddFinancialPeriod" runat="server" ErrorMessage="Select Financial Period"></asp:RequiredFieldValidator>
                    <br />



                    <asp:Label ID="Label4" runat="server" Text="Transaction Date:"></asp:Label>
                    <asp:TextBox ID="txtTransDate" placeholder="Transaction Date" runat="server" TextMode="Date" CssClass="number" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqTransDate" EnableClientScript="true" runat="server" ControlToValidate="txtTransDate" ErrorMessage="Enter transaction date"></asp:RequiredFieldValidator>
                    <br />



                    <asp:Label ID="Label5" runat="server" Text="Transaction Amount:"></asp:Label>
                    <asp:TextBox ID="txtTransAmount" placeholder="Amount in Rands" TextMode="Number" runat="server" CssClass="number"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqTransAmount" EnableClientScript="true" runat="server" ControlToValidate="txtTransAmount" ErrorMessage="Enter Transaction amount"></asp:RequiredFieldValidator>
                    <br />



                    <asp:Label ID="Label6" runat="server" Text="Target Account:"></asp:Label>
                    <asp:DropDownList ID="ddTargetAcc" runat="server" Height="35px" Width="150px" CssClass="ddl" DataSourceID="SqlDataSource2" DataTextField="target_account" DataValueField="target_account">     
                   </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:acc_systemConnectionString %>" ProviderName="<%$ ConnectionStrings:acc_systemConnectionString.ProviderName %>" SelectCommand="SELECT target_account FROM target_acc"></asp:SqlDataSource>
                    <asp:RequiredFieldValidator ID="reqTargetAcc" EnableClientScript="true" runat="server" ControlToValidate="ddTargetAcc" ErrorMessage="Select Target Account"></asp:RequiredFieldValidator>
                    <br />



                    <asp:Label ID="Label7" runat="server" Text="Target Description:"></asp:Label>
                    <asp:DropDownList ID="ddTargetDesc" runat="server" Height="35px" Width="150px" CssClass="ddl" DataSourceID="SqlDataSource3" DataTextField="target_acc_desc" DataValueField="target_acc_desc">
                    </asp:DropDownList>                    
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:acc_systemConnectionString %>" ProviderName="<%$ ConnectionStrings:acc_systemConnectionString.ProviderName %>" SelectCommand="SELECT target_acc_desc FROM target_acc"></asp:SqlDataSource>
                    <asp:RequiredFieldValidator ID="reqTragetDesc" EnableClientScript="true" ControlToValidate="ddTargetDesc" runat="server" ErrorMessage="Select Target description"></asp:RequiredFieldValidator>
                    <br />



                    <asp:Label ID="Label8" runat="server" Text="Target Effect:"></asp:Label>
                    <asp:RadioButtonList ID="rbTargetEffect" runat="server" Height="36px" Width="150px" RepeatLayout="Flow" RepeatDirection="Horizontal">
                        <asp:ListItem>Debit</asp:ListItem>  
                        <asp:ListItem>Credit</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="reqTargetEffect" EnableClientScript="true" ControlToValidate="rbTargetEffect" runat="server" ErrorMessage="Select Target Effect"></asp:RequiredFieldValidator>
                    <br />



                    <asp:Label ID="Label9" runat="server" Text="Contra Account:"></asp:Label>
                    <asp:DropDownList ID="ddContraAcc" runat="server" Height="35px" Width="150px" CssClass="ddl" DataSourceID="SqlDataSource1" DataTextField="contra_account" DataValueField="contra_account"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:acc_systemConnectionString %>" ProviderName="<%$ ConnectionStrings:acc_systemConnectionString.ProviderName %>" SelectCommand="SELECT contra_account FROM contra_acc"></asp:SqlDataSource>
                    <asp:RequiredFieldValidator ID="reqContraAcc" EnableClientScript="true" ControlToValidate="ddContraAcc" runat="server" ErrorMessage="Select Contra Account"></asp:RequiredFieldValidator>
                    <br />    
                    


                    <asp:Label ID="Label10" runat="server" Text="Contra Description:"></asp:Label>
                    <asp:DropDownList ID="ddContraDesc" runat="server" Height="35px" Width="150px" CssClass="ddl" DataSourceID="SqlDataSource4" DataTextField="contra_acc_desc" DataValueField="contra_acc_desc"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:acc_systemConnectionString %>" ProviderName="<%$ ConnectionStrings:acc_systemConnectionString.ProviderName %>" SelectCommand="Select contra_acc_desc From contra_acc"></asp:SqlDataSource>
                    <asp:RequiredFieldValidator ID="reqContraDesc" EnableClientScript="true" ControlToValidate="ddContraDesc" runat="server" ErrorMessage="Select Contra Description"></asp:RequiredFieldValidator>
                    <br />



                    <asp:Label ID="Label11" runat="server" Text="Contra Effect:"></asp:Label>
                    <asp:RadioButtonList ID="rbContraEffect" runat="server" Height="35px" Width="150px" CssClass="checkmark"  RepeatLayout="Flow" RepeatDirection="Horizontal">
                        <asp:ListItem>Debit</asp:ListItem>
                        <asp:ListItem>Credit</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="reqContraEffect" EnableClientScript="true" ControlToValidate="rbContraEffect" runat="server" ErrorMessage="Select Contra Effect"></asp:RequiredFieldValidator>
                    <br />



                    <asp:Label ID="Label12" runat="server" Text="Tax Effect:"></asp:Label>
                    <asp:DropDownList ID="ddTaxEffect" runat="server" Height="35px" Width="150px" CssClass="ddl">
                        <asp:ListItem Text="" Value="0"></asp:ListItem>
                        <asp:ListItem>VATable</asp:ListItem>
                        <asp:ListItem>Not VATable</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="reqTaxEffect" EnableClientScript="true" ControlToValidate="ddTaxEffect" runat="server" ErrorMessage="Select Tax effect"></asp:RequiredFieldValidator>
                    <br />



                    <hr />
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                    <asp:Label ID="lblStatus" Style="padding-left: 4vw; padding-top: 2vw;" Font-Size="Medium" ForeColor="Red" runat="server"></asp:Label>
                </div>
            </section>


                
           
    </form>
</body>
</html>
