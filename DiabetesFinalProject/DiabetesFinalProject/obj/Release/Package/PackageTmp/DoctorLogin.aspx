<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="DoctorLogin.aspx.cs" Inherits="DiabetesFinalProject.DoctorLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 123px;
            text-align: right;
        }
        #DoctorLoginDiv{
            margin-left:250px;
        }
        .auto-style3 {
            width: 175px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="DoctorLoginDiv">
        <h2><strong>Doctor Login</strong></h2>
        <table cellpadding="2" cellspacing="10" class="auto-style1">
        <tr>
            <td class="auto-style2">User Name : </td>
            <td class="auto-style3">
                <asp:TextBox ID="txtUserName" runat="server" ToolTip="Enter Your User Name"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* Please Enter Your User Name" ControlToValidate="txtUserName" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Password : </td>
            <td class="auto-style3">
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" ToolTip="Enter Your Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="* Please Enter Your Password" ControlToValidate="txtPassword" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
            <td class="auto-style3">
                <asp:Button ID="btnLogin" runat="server" Text="Login" Height="32px" Width="70px" OnClick="btnLogin_Click" />
            </td>
        </tr>
        <tr>
            <td></td>
            <td class="auto-style3">
                <asp:Label ID="lblMessage" runat="server" Font-Bold="True" ForeColor="#FF3300"></asp:Label>
            </td>
        </tr>
    </table>
    </div>
</asp:Content>
