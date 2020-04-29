<%@ Page Title="" Language="C#" MasterPageFile="~/Specialist.Master" AutoEventWireup="true" CodeBehind="SpecialistContactUs.aspx.cs" Inherits="DiabetesFinalProject.SpecialistContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        
        #contactmain{
            margin-bottom:145px;
        }
        
        #ydiv{
            margin-left:75px;
        }
        #bdiv{
            margin-left:75px;
        }
        #vdiv{
            margin-left:75px;
        }
       #btnDiv{
           margin-left:400px;
       }
       #tablediv{
           margin-top:200px;
       }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="contactmain">
        <h2>Contact Us</h2>
        <br />
        <div id="contactDiv">           
            
        </div>            
    </div>
    
     <div id="tablediv">
        <h2>Contact Form</h2>
        <table cellpadding="10" cellspacing="2" class="auto-style1">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" Text="Your Subject :"></asp:Label>
            </td>

            <td>
                <asp:TextBox ID="txtSubject" runat="server" Height="26px" Width="171px" ToolTip="Your Subject"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Your Subject" ControlToValidate="txtSubject" Font-Bold="True" Font-Size="Large" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
            
            <td>
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" Text="Your E-mail Address : "></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server" Height="26px" Width="171px" ToolTip="For Example : test@mail.com"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Your E-Mail" Font-Bold="True" Font-Size="Large" ForeColor="#FF3300" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
            
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please Enter Valid E-Mail Address" ControlToValidate="txtEmail" Font-Bold="True" Font-Size="Large" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
            
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" Text="Your Message : "></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtMsg" runat="server" Height="108px" TextMode="MultiLine" Width="251px" Rows="5" ToolTip="Your Message of Max 5000 Characters" MaxLength="5000"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Enter Your Message" Font-Bold="True" Font-Size="Large" ForeColor="#FF3300" ControlToValidate="txtMsg"></asp:RequiredFieldValidator>
                <br />
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtMsg" Display="Dynamic" ErrorMessage="Max 5000 Characters" Font-Bold="True" Font-Size="Large" ForeColor="#FF3300" MaximumValue="5000"></asp:RangeValidator>
            </td>       
            <td>
                <asp:Label ID="lblMessage" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#FF3300"></asp:Label>
            </td>
           
        </tr>                 
        </table>
     </div>  

    <div id="btnDiv">
        <asp:Button ID="btnBack" runat="server" Text="Back" OnClientClick="JavaScript:window.history.back(1);return false;" Height="45px" Width="75px"/>
        <asp:Button ID="btnSubmit" runat="server" Heig0ht="44px" Text="Submit" Width="115px" OnClick="btnSubmit_Click" Height="50px" />
        <asp:Button ID="btnHome" runat="server" Text="Home" Height="45px" Width="75px" CausesValidation="False"  PostBackUrl="~/Specialistindex.aspx" />              
    </div>
</asp:Content>
