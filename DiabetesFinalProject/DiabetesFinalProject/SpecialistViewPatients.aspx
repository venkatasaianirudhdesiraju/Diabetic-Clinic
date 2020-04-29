<%@ Page Title="" Language="C#" MasterPageFile="~/Specialist.Master" AutoEventWireup="true" CodeBehind="SpecialistViewPatients.aspx.cs" Inherits="DiabetesFinalProject.SpecialistViewPatients" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #SpecialistPatientsDiv{
            margin-left:165px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div id="SpecialistPatientsDiv">
        <h2>Your Patients</h2>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="10" CellSpacing="2" DataKeyNames="PatientId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Firstname" HeaderText="Patient Firstname" SortExpression="Firstname" />
                <asp:BoundField DataField="Lastname" HeaderText="Patient Lastname" SortExpression="Lastname" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DiabetesConnectionString %>" SelectCommand="SELECT PatientSpecialist.PatientId, PatientSpecialist.SpecialistId, PatientRegister.Firstname, PatientRegister.Lastname, PatientRegister.Email, PatientRegister.Gender, PatientRegister.PhoneNumber, PatientRegister.AddressLine1, PatientRegister.AddressLine2, PatientRegister.City, PatientRegister.State, PatientRegister.ZipCode FROM PatientSpecialist INNER JOIN PatientRegister ON PatientSpecialist.PatientId = PatientRegister.PatientId WHERE (PatientSpecialist.SpecialistId = @specialistId)">
            <SelectParameters>
                <asp:SessionParameter Name="specialistId" SessionField="specialistId" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
