<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Adminindex.aspx.cs" Inherits="DiabetesFinalProject.Adminindex" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%-- style tag to display CSS --%>
    <style>
        #mainHeaddiv{
            margin-left:250px;
        }        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%-- Div tag to display the main heading --%>
    <div id="mainHeaddiv">
        <h1>Welcome to Online Diabetes Clinic</h1>        
    </div>
</asp:Content>
