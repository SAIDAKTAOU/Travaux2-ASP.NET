
 <!-- When we use the GET method the password is not validated because GET method is used to fetch data from the server
        while the POST method is used to send data to a server to create/update a resource
        -->

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Form.aspx.cs" Inherits="Homework2.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin-left: 400px">
              <fieldset style="width:400px ; margin-left:10px ; margin-top:10px ; margin-bottom:10px">
                <legend>Login</legend>
                  <br />

                    <asp:Label ID="Label1" runat="server" Text="Your name:"></asp:Label><br />
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

                  <br />
                  <br />
                    <asp:RequiredFieldValidator 
                         ID="RequiredFieldValidator1" 
                         runat="server" 
                         ControlToValidate="TextBox1" 
                         ErrorMessage="Please, Enter your name!" 
                         ForeColor="Red"></asp:RequiredFieldValidator>

                  <br />

                  <asp:RegularExpressionValidator 
                      ID="RegularExpressionValidator2" 
                      runat="server"
                      ControlToValidate="TextBox1" 
                      ErrorMessage="Please, make sure to enter a valid name!" 
                      ForeColor="Red"
                      ValidationExpression="[A-Z]?('[A-Z])?[a-z]+(([\s-][A-Z]?('[A-Z])?)?[a-z]+)*" >
                  </asp:RegularExpressionValidator>
            
                  <br />
                  <br />

                     <asp:Label ID="Label2" runat="server" Text="Your password:"></asp:Label>

                  <br />

                     <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" ></asp:TextBox>

                  <br />
                  <br />
                  
                     <asp:RequiredFieldValidator 
                          ID="RequiredFieldValidator2" 
                          runat="server" 
                          ControlToValidate="TextBox2" 
                          ErrorMessage="Please, Enter the paswword!" 
                          ForeColor="Red"></asp:RequiredFieldValidator>
                  
                  <br />

                     <asp:CustomValidator 
                          ID="CustomValidator1"
                          ControlToValidate="TextBox2"
                          Display="Dynamic"
                          ErrorMessage="Sorry, your password is not correct"
                          ForeColor="Red"
                          OnServerValidate="ServerValidation"
                          runat="server" ></asp:CustomValidator>

                  <br />
                  <br />
                
                    <asp:Button ID="Button1" runat="server" Text="Send" PostBackUrl="~/Login.aspx" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Reset"  CommandName="Delete" ValidationGroup="Delete" OnClick="Button2_Click"/>

                  <br />

            </fieldset>
        </div>
    </form>
</body>
</html>
