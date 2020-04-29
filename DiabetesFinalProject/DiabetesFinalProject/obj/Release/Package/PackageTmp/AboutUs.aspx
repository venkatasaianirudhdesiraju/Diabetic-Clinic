<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="DiabetesFinalProject.AboutUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%-- Style tag for displaying CSS --%>
    <style type="text/css">
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
    <%-- Division for Heading About Us --%>
    <div>
        <%-- H2 tag for displaying heading --%>
        <h2>
            About Us
        </h2>
    </div>
    <%-- Division Aboout the content displaying --%>
    <div id="paraDiv">
        <%-- paragraph for displaying the content --%>
        <p style="text-align: justify; font-size: large">
            This System allows patient to update his present condition to a doctor. Then the doctor recommends the patient some tests by monitoring his present condition. After that the patient is allowed to update the results of the tests into the database. Then the doctor monitors the test reports and suggests the patient with the suitable treatment. The condition of the patient after treatment is examined and then if the condition of the patient is not stable then the system suggests the patient to choose a specialist  if needed or if stable then continue the process of treatment. 
        </p>
    </div>
    <%-- Division for Home and Back buttons --%>
    <div id="buttonsDiv">
        <%-- buttons for Back and home --%>
        <asp:Button ID="btnBack" runat="server" Text="Back" OnClientClick="window.history.back(1);return false;" Height="45px" Width="85px"/>
        <asp:Button ID="btnHome" runat="server" Text="Home" PostBackUrl="~/Default.aspx" Height="45px" Width="85px" />              
    </div>
</asp:Content>
