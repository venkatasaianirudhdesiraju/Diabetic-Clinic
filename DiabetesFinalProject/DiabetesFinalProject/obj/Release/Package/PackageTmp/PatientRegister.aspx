<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="PatientRegister.aspx.cs" Inherits="DiabetesFinalProject.PatientRegister" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">       
        
        .auto-style1 {
            text-align: right;
        }
        .auto-style2 {
            width: 231px;
        }
        .auto-style3 {
            width: 110px;
            text-align: right;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="Please Enter the Following...." ForeColor="#FF3300" />
        <h2>Patient Register</h2>
        <table cellpadding="2" cellspacing="10">
            <tr>
                <td class="auto-style1">First Name : </td>
                <td>
                    <asp:TextBox ID="txtFirstName" runat="server" ToolTip="Enter Your First Name"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFirstName" ErrorMessage="Please Enter Your First Name" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style3">Last Name : </td>
                <td>
                    <asp:TextBox ID="txtLastName" runat="server" ToolTip="Enter Your Last Name"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLastName" ErrorMessage="Please Enter Your Last Name" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                </td>
            </tr>
           
            <tr>
                <td class="auto-style1">Middle Name : </td>
                <td>
                    <asp:TextBox ID="txtMiddleName" runat="server" ToolTip="Enter Your Middle Name"></asp:TextBox>
                </td>
                <td class="auto-style2"></td>
                <td class="auto-style3">E-Mail : </td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" ToolTip="ForExample : test@mail.com"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="Please Enter Your E-Mail" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Please Enter Valid E-Mail" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
                         
            <tr>
                <td class="auto-style1">Gender : </td>
                <td>
                    <asp:TextBox ID="txtGender" runat="server" ToolTip="Enter Your Gender"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtGender" ErrorMessage="Please Enter Your Gender" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style3"> Date Of Birth :</td>
                <td>
                    <asp:TextBox ID="txtDob" runat="server" TextMode="Date" ToolTip="Choose Your Date Of Birth"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtDob" ErrorMessage="Please Enter Your Date Of Birth" ForeColor="#FF3300">*</asp:RequiredFieldValidator>

                </td>    
            </tr>
            <tr>
                <td class="auto-style1">Address Line 1 : </td>
                <td>
                    <asp:TextBox ID="txtAdd1" runat="server" ToolTip="Enter Your Address Line 1"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtAdd1" ErrorMessage="Please Enter Your Address Line 1" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Address Line 2 : </td>
                <td>
                    <asp:TextBox ID="txtAdd2" runat="server" ToolTip="Enter Your Address Line 2"></asp:TextBox>
                </td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style1">City : </td>
                <td>
                    <asp:TextBox ID="txtCity" runat="server" ToolTip="Enter Your City"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtCity" ErrorMessage="Please Enter Your City" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">State : </td>
                <td>
                    <asp:TextBox ID="txtState" runat="server" ToolTip="Enter Your State"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtState" ErrorMessage="Please Enter Your State" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Zip-Code : </td>
                <td>
                    <asp:TextBox ID="txtZip" runat="server" ToolTip="Enter Your Zipcode"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtZip" ErrorMessage="Please Enter Your Zip-Code" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtZip" ErrorMessage="Please Enter Valid Zip-Code" ForeColor="#FF3300" ValidationExpression="\d{5}(-\d{4})?"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Best Number : </td>
                <td>
                    <asp:TextBox ID="txtPhone" runat="server" ToolTip="For Example : 111-111-1111"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtPhone" ErrorMessage="Please Enter Your Best Phone Number" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPhone" ErrorMessage="Please Enter Valid US Phone Number" ForeColor="#FF3300" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Button ID="Button1" runat="server" CausesValidation="False" Height="40px" OnClientClick="JavaScript:window.history.back(1);return false;" Text="Back" Width="80px" />
                </td>
                <td>
                    <asp:Button ID="btnRegister" runat="server" Text="Register" Height="40px" Width="80px" OnClick="btnRegister_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1"></td>
                <td>
                    <asp:Label ID="lblMessage" runat="server" Text="" ForeColor="#009900"></asp:Label>
                </td>
                <td class="auto-style2"></td>
            </tr>
        </table>
    </div>
</asp:Content>
