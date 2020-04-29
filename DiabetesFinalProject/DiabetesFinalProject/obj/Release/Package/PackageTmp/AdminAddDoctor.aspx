<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminAddDoctor.aspx.cs" Inherits="DiabetesFinalProject.AdminAddDoctor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%-- style tag to display CSS --%>
    <style type="text/css">
        .auto-style1 {
            width: 29px;
        }
        .auto-style2 {
            width: 138px;
        }
        .auto-style3 {
            height: 40px;
        }
        .auto-style4 {
            width: 29px;
            height: 40px;
        }
        .auto-style5 {
            width: 138px;
            height: 40px;
        }
        .auto-style6 {
            width: 153px;
            height: 40px;
            text-align: right;
        }
        .auto-style7 {
            width: 153px;
            text-align: right;
        }
        .auto-style8 {
            text-align: right;
        }
        .auto-style9 {
            height: 40px;
            text-align: right;
        }
        .auto-style10 {
            height: 40px;
            width: 223px;
        }
        .auto-style11 {
            width: 223px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">     
    <div>
        <%-- Validation Summary for Displaying all the Error Messages on the top of the page --%>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#FF3300" HeaderText="Please Fill in the Following..." />
        <h2>Add Doctor</h2>
        <%-- taking all the input from the user from the textboxes --%>
        <table cellpadding="2" cellspacing="10">
            <tr>
                <td class="auto-style6">
                    First Name :
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtFirstName" runat="server" ToolTip="Enter First Name"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFirstName" ErrorMessage="Please Doctor First Name" Font-Bold="True" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style9">
                    Last Name :
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtLastName" runat="server" ToolTip="Enter Last Name"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLastName" ErrorMessage="Please Doctor Last Name" Font-Bold="True" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    Middle Name : 
                </td>
                <td class="auto-style11">
                    <asp:TextBox ID="txtMiddleName" runat="server" ToolTip="Enter Middle Name"></asp:TextBox>
                </td>
                <td class="auto-style1">

                </td>
                <td class="auto-style8">
                    Email : 
                </td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server" ToolTip="Enter Email Address : test@mail.com"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="Please Doctor Email" Font-Bold="True" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter Valid Email" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    User Name : 
                </td>
                <td class="auto-style11">
                    <asp:TextBox ID="txtUserName" runat="server" ToolTip="Enter UserName"></asp:TextBox>
                </td>
                <td class="auto-style1">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtUserName" ErrorMessage="Enter Doctor User Name" Font-Bold="True" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style8">
                    Password :
                </td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" ToolTip="Enter Password"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPassword" ErrorMessage="Please Enter Doctor Password" Font-Bold="True" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    Re-Enter Password : 
                </td>
                <td class="auto-style11">
                    <asp:TextBox ID="txtRePassword" runat="server" TextMode="Password" ToolTip="Re-Enter Password"></asp:TextBox>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Passwords Must Be Same" ControlToCompare="txtPassword" ControlToValidate="txtRePassword" Font-Bold="True" ForeColor="#FF3300"></asp:CompareValidator>
                </td>
                <td class="auto-style1">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtRePassword" ErrorMessage="Please Re-Enter Password" Font-Bold="True" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                    <br />
                </td>
                <td class="auto-style8">
                    Address Line 1 :
                </td>
                <td>
                    <asp:TextBox ID="txtAdd1" runat="server" ToolTip="Enter Address Line1"></asp:TextBox>
                </td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style7">Gender : </td>
                <td class="auto-style11">
                    <asp:TextBox ID="txtGender" runat="server" ToolTip="Enter the Gender"></asp:TextBox>
                </td>
                <td class="auto-style1">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtGender" ErrorMessage="Please Enter Doctor Gender" Font-Bold="True" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style8">Address Line 2 : </td>
                <td>
                    <asp:TextBox ID="txtAdd2" runat="server" ToolTip="Enter the address Line2"></asp:TextBox>
                </td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style11">
                    <asp:Button ID="btnRegister" runat="server" Height="45px" Text="Register" Width="90px" OnClick="btnRegister_Click" />
                </td>
                <td class="auto-style1"></td>
                <td class="auto-style8">City : </td>
                <td>
                    <asp:TextBox ID="txtCity" runat="server" ToolTip="Ente City"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtCity" ErrorMessage="Please Enter Doctor City" Font-Bold="True" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style11"></td>
                <td class="auto-style1"></td>
                <td class="auto-style8">State : </td>
                <td>
                    <asp:TextBox ID="txtState" runat="server" ToolTip="Enter State"></asp:TextBox>
                </td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style11">
                    <asp:Label ID="lblMessage" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                </td>
                <td class="auto-style1"></td>
                <td class="auto-style8">Zip-Code : </td>
                <td>
                    <asp:TextBox ID="txtZip" runat="server" ToolTip="Enter Zip-Code"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtZip" ErrorMessage="Enter Valid Zip-Code" Font-Bold="True" ForeColor="#FF3300" ValidationExpression="\d{5}(-\d{4})?"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style11"></td>
                <td class="auto-style1"></td>
                <td class="auto-style8">Best Number : </td>
                <td>
                    <asp:TextBox ID="txtPhone" runat="server" TextMode="Phone" ToolTip="Enter Best Number"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtPhone" ErrorMessage="Please Enter Doctor Phone Number" Font-Bold="True" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPhone" ErrorMessage="Enter Correct Format : 111-111-1111" Font-Bold="True" ForeColor="#FF3300" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
