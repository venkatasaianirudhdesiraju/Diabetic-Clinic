<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminAddSpecialist.aspx.cs" Inherits="DiabetesFinalProject.AdminAddSpecialist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%-- style tag to display CSS --%>
    <style type="text/css">
        .auto-style2 {
            width: 138px;
        }
        .auto-style3 {
            height: 40px;
            width: 220px;
        }
        .auto-style5 {
            width: 138px;
            height: 40px;
        }
        .auto-style7 {
            width: 158px;
            text-align: right;
        }
        .auto-style8 {
            text-align: right;
            width: 149px;
            font-weight: bold;
        }
        .auto-style9 {
            height: 40px;
            text-align: right;
            width: 149px;
            font-weight: bold;
        }
        .auto-style10 {
            width: 23px;
            height: 40px;
        }
        .auto-style11 {
            width: 23px;
        }
        .auto-style12 {
            width: 158px;
            text-align: right;
            height: 39px;
        }
        .auto-style13 {
            height: 39px;
            width: 220px;
        }
        .auto-style14 {
            width: 23px;
            height: 39px;
        }
        .auto-style15 {
            text-align: right;
            height: 39px;
            width: 149px;
            font-weight: bold;
        }
        .auto-style16 {
            width: 138px;
            height: 39px;
        }
        .auto-style20 {
            width: 220px;
        }
        .auto-style21 {
            width: 124px;
            height: 40px;
        }
        .auto-style22 {
            width: 124px;
        }
        .auto-style23 {
            width: 124px;
            height: 39px;
        }
        .auto-style24 {
            height: 40px;
            text-align: right;
            width: 158px;
            font-weight: bold;
        }
        .auto-style25 {
            text-align: right;
            width: 158px;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <%-- Validation Summary for Displaying all the Error Messages on the top of the page --%>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#FF3300" HeaderText="Please Fill in the Following..." />
        <h2>Add Specialist</h2>
        <%-- taking all the input from the user from the textboxes --%>
        <table cellpadding="2" cellspacing="10" style="width: 1021px">
            <tr>
                <td class="auto-style24">
                    First Name :
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtFirstName" runat="server" ToolTip="Enter User Name"></asp:TextBox>
                </td>
                <td class="auto-style10">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFirstName" ErrorMessage="Please Enter Specialist First Name" Font-Bold="True" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style9">
                    Last Name :
                </td>
                <td class="auto-style21">
                    <asp:TextBox ID="txtLastName" runat="server" ToolTip="Enter Last Name"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLastName" ErrorMessage="Please Enter Specialist Last Name" Font-Bold="True" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style25">
                    Middle Name : 
                </td>
                <td class="auto-style20">
                    <asp:TextBox ID="txtMiddleName" runat="server" ToolTip="Enter Middle Name"></asp:TextBox>
                </td>
                <td class="auto-style11">

                </td>
                <td class="auto-style8">
                    Email : 
                </td>
                <td class="auto-style22">
                    <asp:TextBox ID="txtEmail" runat="server" ToolTip="Enter Email For Example : test@mail.com"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="Please Enter Specialist Email" Font-Bold="True" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter Valid Email" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style25">
                    User Name : 
                </td>
                <td class="auto-style20">
                    <asp:TextBox ID="txtUserName" runat="server" ToolTip="Enter User Name"></asp:TextBox>
                </td>
                <td class="auto-style11">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtUserName" ErrorMessage="Please Ente Specialist User Name" Font-Bold="True" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style8">
                    Password :
                </td>
                <td class="auto-style22">
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" ToolTip="Enter Your Password"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPassword" ErrorMessage="Please Enter Specialist Password" Font-Bold="True" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style25">
                    Re-Enter Password : 
                </td>
                <td class="auto-style20">
                    <asp:TextBox ID="txtRePassword" runat="server" TextMode="Password" ToolTip="Re-Enter Your Password"></asp:TextBox>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Passwords Must Be Same" ControlToCompare="txtPassword" ControlToValidate="txtRePassword" Font-Bold="True" ForeColor="#FF3300"></asp:CompareValidator>
                </td>
                <td class="auto-style11">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtRePassword" ErrorMessage="Please Re-Enter Password" Font-Bold="True" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                    <br />
                </td>
                <td class="auto-style8">
                    Address Line 1 :
                </td>
                <td class="auto-style22">
                    <asp:TextBox ID="txtAdd1" runat="server" ToolTip="Enter Address Line 1"></asp:TextBox>
                </td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style25">Gender : </td>
                <td class="auto-style20">
                    <asp:TextBox ID="txtGender" runat="server" ToolTip="Enter Gender"></asp:TextBox>
                </td>
                <td class="auto-style11">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtGender" ErrorMessage="Please Enter Specialist Gender" Font-Bold="True" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style8">Address Line 2 : </td>
                <td class="auto-style22">
                    <asp:TextBox ID="txtAdd2" runat="server" ToolTip="Enter Address Line 2"></asp:TextBox>
                </td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style20">
                    <asp:Button ID="btnRegister" runat="server" Height="45px" Text="Register" Width="90px" OnClick="btnRegister_Click" />
                </td>
                <td class="auto-style11"></td>
                <td class="auto-style8">City : </td>
                <td class="auto-style22">
                    <asp:TextBox ID="txtCity" runat="server" ToolTip="Enter City"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtCity" ErrorMessage="Please Enter Specialist City" Font-Bold="True" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style12"></td>
                <td class="auto-style13"></td>
                <td class="auto-style14"></td>
                <td class="auto-style15">State : </td>
                <td class="auto-style23">
                    <asp:TextBox ID="txtState" runat="server" ToolTip="Enter State"></asp:TextBox>
                </td>
                <td class="auto-style16"></td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style20">
                    <asp:Label ID="lblMessage" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                </td>
                <td class="auto-style11"></td>
                <td class="auto-style8">Zip-Code : </td>
                <td class="auto-style22">
                    <asp:TextBox ID="txtZip" runat="server" ToolTip="Enter Zip-Code"></asp:TextBox>
                </td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style20"></td>
                <td class="auto-style11"></td>
                <td class="auto-style8">Best Number : </td>
                <td class="auto-style22">
                    <asp:TextBox ID="txtPhone" runat="server" TextMode="Phone" ToolTip="For Example: 111-111-1111"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtPhone" ErrorMessage="Please Enter Specialist Phone Number" Font-Bold="True" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPhone" ErrorMessage="Enter Phone Number in Correct Format &lt;br /&gt; For Example : 111-111-1111" Font-Bold="True" ForeColor="#FF3300" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
