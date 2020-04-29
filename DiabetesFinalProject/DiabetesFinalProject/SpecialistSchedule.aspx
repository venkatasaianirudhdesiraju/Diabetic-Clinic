<%@ Page Title="" Language="C#" MasterPageFile="~/Specialist.Master" AutoEventWireup="true" CodeBehind="SpecialistSchedule.aspx.cs" Inherits="DiabetesFinalProject.SpecialistSchedule" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <h2>Patient Schedules</h2>
    <div  style="overflow: scroll; width: 1024px;">        
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="10" CellSpacing="2" DataKeyNames="PatientId,ScheduleId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="1024px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Firstname" HeaderText="Patient Firstname" SortExpression="Firstname" />
                <asp:BoundField DataField="Lastname" HeaderText="Patient Lastname" SortExpression="Lastname" />
                <asp:BoundField DataField="Schedule_name" HeaderText="Schedule Name" SortExpression="Schedule_name" />
                <asp:BoundField DataField="Schedule_from" HeaderText="Schedule From Date" SortExpression="Schedule_from" />
                <asp:BoundField DataField="Schedule_to" HeaderText="Schedule To Date" SortExpression="Schedule_to" />
                <asp:BoundField DataField="Monday" HeaderText="Monday" SortExpression="Monday" />
                <asp:BoundField DataField="Tuesday" HeaderText="Tuesday" SortExpression="Tuesday" />
                <asp:BoundField DataField="Wednesday" HeaderText="Wednesday" SortExpression="Wednesday" />
                <asp:BoundField DataField="Thursday" HeaderText="Thursday" SortExpression="Thursday" />
                <asp:BoundField DataField="Friday" HeaderText="Friday" SortExpression="Friday" />
                <asp:BoundField DataField="Saturday" HeaderText="Saturday" SortExpression="Saturday" />
                <asp:BoundField DataField="Sunday" HeaderText="Sunday" SortExpression="Sunday" />
                <asp:BoundField DataField="Others" HeaderText="Others" SortExpression="Others" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DiabetesConnectionString %>" SelectCommand="SELECT PatientRegister.PatientId, PatientRegister.Firstname, PatientRegister.Lastname, SpecialistSchedule.ScheduleId, SpecialistSchedule.Schedule_name, SpecialistSchedule.Schedule_from, SpecialistSchedule.Schedule_to, SpecialistSchedule.Monday, SpecialistSchedule.Tuesday, SpecialistSchedule.Wednesday, SpecialistSchedule.Thursday, SpecialistSchedule.Friday, SpecialistSchedule.Saturday, SpecialistSchedule.Sunday, SpecialistSchedule.Others, SpecialistSchedule.SpecialistId FROM PatientRegister INNER JOIN SpecialistSchedule ON PatientRegister.PatientId = SpecialistSchedule.PatientId WHERE (SpecialistSchedule.SpecialistId = @specialistId)">
            <SelectParameters>
                <asp:SessionParameter Name="specialistId" SessionField="specialistId" />
            </SelectParameters>
        </asp:SqlDataSource>
        </div>
        <asp:Button ID="btnCreateSchedule" runat="server" Text="Create Schedule" Height="45px" OnClick="btnCreateSchedule_Click" />
    
</asp:Content>
