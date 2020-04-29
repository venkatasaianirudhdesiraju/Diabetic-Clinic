<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor.Master" AutoEventWireup="true" CodeBehind="DoctorReports.aspx.cs" Inherits="DiabetesFinalProject.DoctorReports" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <h2>Patients Reports</h2>
    <div id="DocPatDiv" style="overflow: scroll; width: 1024px;">
        
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="1" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" CellSpacing="2">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Firstname" HeaderText="First Name" SortExpression="Firstname" />
                <asp:BoundField DataField="Lastname" HeaderText="Last Name" SortExpression="Lastname" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:TemplateField HeaderText="Date Of Birth" SortExpression="DateOfBirt">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("DateOfBirt") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("DateOfBirt", "{0:d}") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Date of Report" SortExpression="ReportDate">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("ReportDate") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("ReportDate", "{0:d}") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="WeightLoss" HeaderText="Weight Loss" SortExpression="WeightLoss" />
                <asp:BoundField DataField="MoreThirsty" HeaderText="More Thirsty" SortExpression="MoreThirsty" />
                <asp:BoundField DataField="FeelingHungry" HeaderText="Feeling Hungry" SortExpression="FeelingHungry" />
                <asp:BoundField DataField="OrganFail" HeaderText="Organ Failure" SortExpression="OrganFail" />
                <asp:BoundField DataField="BlurryVision" HeaderText="Blurry Vision" SortExpression="BlurryVision" />
                <asp:BoundField DataField="FatherMother" HeaderText="Other Family Members" SortExpression="FatherMother" />
                <asp:BoundField DataField="Cholestrol" HeaderText="Cholestrol Level" SortExpression="Cholestrol" />
                <asp:BoundField DataField="Vldl" HeaderText="VLDL Cholestrol" SortExpression="Vldl" />
                <asp:BoundField DataField="Hdl" HeaderText="HDL Cholestrol" SortExpression="Hdl" />
                <asp:BoundField DataField="Ldl" HeaderText="LDL Cholestrol" SortExpression="Ldl" />
                <asp:BoundField DataField="Trigl" HeaderText="Triglycerides" SortExpression="Trigl" />
                <asp:BoundField DataField="Others" HeaderText="Other Issues" SortExpression="Others" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DiabetesConnectionString %>" SelectCommand="SELECT PatientDoctor.PatientId, PatientDoctor.DoctorId, PatientRegister.Firstname, PatientRegister.Lastname, PatientRegister.Gender, PatientRegister.DateOfBirt, PatientReport.ReportId, PatientReport.WeightLoss, PatientReport.MoreThirsty, PatientReport.FeelingHungry, PatientReport.Others, PatientReport.ReportDate, PatientReport.Trigl, PatientReport.Vldl, PatientReport.Hdl, PatientReport.Ldl, PatientReport.FatherMother, PatientReport.Cholestrol, PatientReport.OrganFail, PatientReport.BlurryVision FROM PatientRegister INNER JOIN PatientReport ON PatientRegister.PatientId = PatientReport.PatientId INNER JOIN PatientDoctor ON PatientRegister.PatientId = PatientDoctor.PatientId WHERE (PatientDoctor.DoctorId = @doctorId)">
            <SelectParameters>
                <asp:SessionParameter Name="doctorId" SessionField="doctorId" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
