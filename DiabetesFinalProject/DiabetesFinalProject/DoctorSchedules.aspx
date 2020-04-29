<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor.Master" AutoEventWireup="true" CodeBehind="DoctorSchedules.aspx.cs" Inherits="DiabetesFinalProject.DoctorSchedules" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div>
        <h2>Patient Schedules</h2>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="1" CellSpacing="2" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Firstname" HeaderText="First Name" SortExpression="Firstname" />
                <asp:BoundField DataField="Lastname" HeaderText="Last Name" SortExpression="Lastname" />
                <asp:BoundField DataField="Schedule_name" HeaderText="Schedule Name" SortExpression="Schedule_name" />
                <asp:TemplateField HeaderText="From Date" SortExpression="Schedule_from">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Schedule_from") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Schedule_from", "{0:d}") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="To Date" SortExpression="Schedule_to">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Schedule_to") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Schedule_to", "{0:d}") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Monday" HeaderText="Monday" SortExpression="Monday" />
                <asp:BoundField DataField="Tuesday" HeaderText="Tuesday" SortExpression="Tuesday" />
                <asp:BoundField DataField="Wednesday" HeaderText="Wednesday" SortExpression="Wednesday" />
                <asp:BoundField DataField="Thursday" HeaderText="Thursday" SortExpression="Thursday" />
                <asp:BoundField DataField="Friday" HeaderText="Friday" SortExpression="Friday" />
                <asp:BoundField DataField="Saturday" HeaderText="Saturday" SortExpression="Saturday" />
                <asp:BoundField DataField="Sunday" HeaderText="Sunday" SortExpression="Sunday" />
                <asp:BoundField DataField="Others" HeaderText="Other Suggestions" SortExpression="Others" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DiabetesConnectionString %>" SelectCommand="SELECT PatientDoctor.PatientId, PatientDoctor.DoctorId, DoctorSchedule.ScheduleId, DoctorSchedule.Schedule_name, DoctorSchedule.Schedule_from, DoctorSchedule.Schedule_to, DoctorSchedule.Monday, DoctorSchedule.Tuesday, DoctorSchedule.Wednesday, DoctorSchedule.Thursday, DoctorSchedule.Friday, DoctorSchedule.Saturday, DoctorSchedule.Sunday, DoctorSchedule.Others, PatientRegister.Firstname, PatientRegister.Lastname FROM PatientDoctor INNER JOIN DoctorSchedule ON PatientDoctor.PatientId = DoctorSchedule.PatientId INNER JOIN PatientRegister ON PatientDoctor.PatientId = PatientRegister.PatientId WHERE (PatientDoctor.DoctorId = @doctorId)">
            <SelectParameters>
                <asp:SessionParameter Name="doctorId" SessionField="doctorId" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:Button ID="btnCreateSchedule" runat="server" Text="Create New Schedule" Height="60px" OnClick="btnCreateSchedule_Click" />
    </div>
</asp:Content>
