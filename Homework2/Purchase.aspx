<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Purchase.aspx.cs" Inherits="Homework2.Purchase" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Computing the price excluding tax and all tax included</title>
</head>
<body>

    <div style="margin-left: 375px">
       
          <h3>Calculation of the purchase price excluding tax and all tax included </h3>

          <h4>Enter the price, the number of products and the VAT and click on the Total <br />
              price button to calculate the price excluding tax and all tax included of the <br />
              product ordered.</h4>
    </div>
    
  <asp:Panel ID="Panel1" runat="server" BorderColor="#000000" 
          BorderStyle="Solid" Width="300px" BackColor="Beige" style="margin-left: 375px " >
    
    <form id="form1" runat="server">
        <div style="margin-left:10px ; margin-top:10px ; margin-bottom:10px">
            <br />
            
            <asp:Label ID="Label3" runat="server" Text="Product price:"></asp:Label><br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

            <br />
            <br />

            <asp:RequiredFieldValidator 
                ID="RequiredFieldValidator1" 
                runat="server" 
                ControlToValidate="TextBox1" 
                ErrorMessage=" Please, Enter the product price!" 
                ForeColor="Red"
                Display="Dynamic">
            </asp:RequiredFieldValidator>
                
            <br />
            <br />

            <asp:RangeValidator 
                ID="RangeValidator1" 
                runat="server" 
                ControlToValidate="TextBox1" 
                ErrorMessage="The value entred is not an real number!" 
                ForeColor="Red" 
                Type="Double" 
                MaximumValue="100000" 
                MinimumValue="0"
                Display="Dynamic">
            </asp:RangeValidator>
                
            <br />
            <br />

            <asp:Label ID="Label4" runat="server" Text="Number of product ordered:"></asp:Label><br />
            <asp:TextBox ID="TextBox2" runat="server">1</asp:TextBox>
            
            <br />
            <br />

            <asp:RangeValidator 
                ID="RangeValidator2" 
                runat="server" 
                ControlToValidate="TextBox2" 
                ErrorMessage="The value entred is not an integer number!" 
                ForeColor="Red" 
                MaximumValue="100000" 
                MinimumValue="0" 
                Type="Integer"
                Display="Dynamic">
            </asp:RangeValidator>

            <br />
            <br />

            <asp:RegularExpressionValidator 
                ID="RegularExpressionValidator2" 
                runat="server" 
                ControlToValidate="TextBox2" 
                ErrorMessage="the number of product ordered must be positive or nul" 
                ForeColor="Red" 
                ValidationExpression="^(0|[1-9]\d*)$"
                Display="Dynamic">
            </asp:RegularExpressionValidator>

            <br />
            <br />

            <asp:RequiredFieldValidator 
                ID="RequiredFieldValidator2" 
                runat="server" 
                ControlToValidate="TextBox2" 
                ErrorMessage=" Please, Enter the Number of product ordered!" 
                ForeColor="Red"
                Display="Dynamic">
            </asp:RequiredFieldValidator>
            
            <br />
            <br />

            <asp:Label ID="Label5" runat="server" Text="VAT:"></asp:Label><br />            
            <asp:TextBox ID="TextBox3" runat="server">0.18</asp:TextBox>
            
            <br />
            <br />

            <asp:RangeValidator 
                ID="RangeValidator3" 
                runat="server" 
                ErrorMessage="The VAT rate must be between 0 and 1" 
                ControlToValidate="TextBox3" 
                ForeColor="Red" 
                MaximumValue="1" 
                MinimumValue="0" 
                Type="Double"
                Display="Dynamic">
            </asp:RangeValidator >

            <br />
            <br />

            <asp:RequiredFieldValidator 
                ID="RequiredFieldValidator3" 
                runat="server" 
                ControlToValidate="TextBox3" 
                ErrorMessage=" Please, Enter the VAT!" 
                ForeColor="Red"
                Display="Dynamic">
            </asp:RequiredFieldValidator>
            
            <br />
            <br />

            <asp:Button ID="Button1" runat="server"  Text="Total price" OnClick="Button1_Click" />

            <br />
            <br />

        </div>
        
    </form>
  </asp:Panel>

    <br />

    <asp:Label ID="Label1" runat="server" style = "margin-left: 375px" ></asp:Label>

    <br />
    <br />
    
    <asp:Label ID="Label2" runat="server" style = "margin-left: 375px"></asp:Label><br />
    
</body>
</html>
