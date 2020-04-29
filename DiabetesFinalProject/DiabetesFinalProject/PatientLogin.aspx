<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="PatientLogin.aspx.cs" Inherits="DiabetesFinalProject.PatientLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
       
        #patientLoginDiv{
            margin-left:250px;
        }
        .auto-style1 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="patientLoginDiv">
        <h2><strong>Patient Login</strong></h2>
        <table cellpadding="2" cellspacing="10">
        <tr>
            <td class="auto-style1">Patient Last Name : </td>
            <td>
                <asp:TextBox ID="txtLastName" runat="server" ToolTip="Enter Patient Last Name"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* Please Enter Patient Last Name" Font-Bold="True" ForeColor="#FF3300" ControlToValidate="txtLastName"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Patient Gender : </td>
            <td>
                <asp:TextBox ID="txtGender" runat="server" ToolTip="Please Enter Patient Gender"></asp:TextBox>
            </td>
             <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="* Please Enter Patient Gender" Font-Bold="True" ForeColor="#FF3300" ControlToValidate="txtGender"></asp:RequiredFieldValidator>
            </td>
        </tr>
            <tr>
                <td class="auto-style1">Patient Date Of Birth : </td>
                <td>
                    <asp:TextBox ID="txtDob" runat="server" TextMode="Date" ToolTip="Choose Patient Date Of Birth"></asp:TextBox>
                </td>
                 <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="* Please Choose Patient Date Of Birth" Font-Bold="True" ForeColor="#FF3300" ControlToValidate="txtDob"></asp:RequiredFieldValidator>
            </td>
            </tr>
        <tr>
            <td class="auto-style1">Patient City : </td>
            <td>
                <asp:TextBox ID="txtCity" runat="server" ToolTip="Enter Patient City"></asp:TextBox>
            </td>
             <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="* Please Enter Patient City" Font-Bold="True" ForeColor="#FF3300" ControlToValidate="txtCity"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Patient Phone Number : </td>
            <td>
                <asp:TextBox ID="txtPhone" runat="server" TextMode="Phone" ToolTip="Enter Phone Number For Example : 111-111-1111"></asp:TextBox>
            </td>
             <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="* Please Enter Patient Phone Number" Font-Bold="True" ForeColor="#FF3300" ControlToValidate="txtPhone"></asp:RequiredFieldValidator>
                <br />
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please Enter Correct Format @ 111-111-1111" ControlToValidate="txtPhone" Font-Bold="True" ForeColor="#FF3300" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1"></td>
            <td>
                <asp:Button ID="btnLogin" runat="server" Text="Login" Height="32px" Width="70px" OnClick="btnLogin_Click" />
            </td>
        </tr>        
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td>
                <asp:Label ID="lblMessage" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#FF3300"></asp:Label></td>
            <td></td>
        </tr>
    </table>
    </div>
</asp:Content>
