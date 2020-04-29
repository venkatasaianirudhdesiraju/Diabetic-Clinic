<%@ Page Title="" Language="C#" MasterPageFile="~/Specialist.Master" AutoEventWireup="true" CodeBehind="SpecialistAboutUs.aspx.cs" Inherits="DiabetesFinalProject.SpecialistAboutUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #paraDiv{
            width:900px;
            margin-left:45px;
        }
        #buttonsDiv{
            margin-left:400px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h2>
            About Us
        </h2>
    </div>
    <div id="paraDiv">
        <p style="text-align: justify; font-size: large">
            This System allows patient to update his present condition to a doctor. Then the doctor recommends the patient some tests by monitoring his present condition. After that the patient is allowed to update the results of the tests into the database. Then the doctor monitors the test reports and suggests the patient with the suitable treatment. The condition of the patient after treatment is examined and then if the condition of the patient is not stable then the system suggests the patient to choose a specialist  if needed or if stable then continue the process of treatment. 
        </p>
    </div>
    <div id="buttonsDiv">
        <asp:Button ID="btnBack" runat="server" Text="Back" OnClientClick="JavaScript:window.history.back(1);return false;" Height="45px" Width="85px"/>
        <asp:Button ID="btnHome" runat="server" Text="Home" PostBackUrl="~/Specialistindex.aspx" Height="45px" Width="85px" />              
    </div>
</asp:Content>
