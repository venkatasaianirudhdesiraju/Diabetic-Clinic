<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DiabetesFinalProject.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #mainHeaddiv{
            margin-left:250px;
        }
        #exitdiv{
            margin-left:430px;
        }

    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="mainHeaddiv">
        <h1>Welcome to Online Diabetes Clinic</h1>        
    </div>
    <%--<div id="exitdiv">
        <asp:Button ID="btnExit" runat="server" Text="Exit"  Height="45px" Width="95px"  OnClientClick="javascript:window.close()"  />
    </div>--%>
</asp:Content>
