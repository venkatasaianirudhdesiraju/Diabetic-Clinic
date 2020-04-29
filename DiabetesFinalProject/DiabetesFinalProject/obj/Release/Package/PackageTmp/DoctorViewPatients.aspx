<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor.Master" AutoEventWireup="true" CodeBehind="DoctorViewPatients.aspx.cs" Inherits="DiabetesFinalProject.DoctorViewPatients" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #ViewpatientsDiv{
            margin-left:160px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div id="ViewpatientsDiv">
        <h2>Your Patients</h2>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="10" CellSpacing="5" DataKeyNames="PatientId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Firstname" HeaderText="Patient Firstname" SortExpression="Firstname" />
                <asp:BoundField DataField="Lastname" HeaderText="Patient Lastname" SortExpression="Lastname" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DiabetesConnectionString %>" SelectCommand="SELECT PatientDoctor.PatientId, PatientDoctor.DoctorId, PatientRegister.Firstname, PatientRegister.Lastname, PatientRegister.Email, PatientRegister.Gender, PatientRegister.PhoneNumber FROM PatientDoctor INNER JOIN PatientRegister ON PatientDoctor.PatientId = PatientRegister.PatientId WHERE (PatientDoctor.DoctorId = @doctorId)">
            <SelectParameters>
                <asp:SessionParameter Name="doctorId" SessionField="doctorId" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
