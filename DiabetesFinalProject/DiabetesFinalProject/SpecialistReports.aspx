<%@ Page Title="" Language="C#" MasterPageFile="~/Specialist.Master" AutoEventWireup="true" CodeBehind="SpecialistReports.aspx.cs" Inherits="DiabetesFinalProject.SpecialistReports" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #SpecialistReportsDiv{
            
        }
        .GridView1 {
    width: 100%; 
    word-wrap:break-word;
    table-layout: fixed;
}
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div style="overflow: scroll; width: 1024px;">
        <h2>Patient Reports</h2>
        <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
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
                <asp:TemplateField HeaderText="Date Of Report" SortExpression="ReportDate">
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
                <asp:BoundField DataField="BlurryVision" HeaderText="Blurry Vision" SortExpression="BlurryVision" />
                <asp:BoundField DataField="OrganFail" HeaderText="Organ Failure" SortExpression="OrganFail" />
                <asp:BoundField DataField="FatherMother" HeaderText="Other Family Members" SortExpression="FatherMother" />
                <asp:BoundField DataField="Cholestrol" HeaderText="Cholestrol Level" SortExpression="Cholestrol" />
                <asp:BoundField DataField="Ldl" HeaderText="LDL Cholestrol" SortExpression="Ldl" />
                <asp:BoundField DataField="Hdl" HeaderText="HDL Cholestrol" SortExpression="Hdl" />
                <asp:BoundField DataField="Vldl" HeaderText="VLDL Cholestrol" SortExpression="Vldl" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DiabetesConnectionString %>" SelectCommand="SELECT PatientSpecialist.PatientId, PatientSpecialist.SpecialistId, PatientReport.ReportId, PatientReport.WeightLoss, PatientReport.MoreThirsty, PatientReport.FeelingHungry, PatientReport.BlurryVision, PatientReport.OrganFail, PatientReport.FatherMother, PatientReport.Cholestrol, PatientReport.Ldl, PatientReport.Hdl, PatientReport.Vldl, PatientReport.Trigl, PatientReport.Others, PatientReport.ReportDate, PatientRegister.Firstname, PatientRegister.Lastname, PatientRegister.Gender, PatientRegister.DateOfBirt FROM PatientSpecialist INNER JOIN PatientReport ON PatientSpecialist.PatientId = PatientReport.PatientId INNER JOIN PatientRegister ON PatientSpecialist.PatientId = PatientRegister.PatientId WHERE (PatientSpecialist.SpecialistId = @specialistId)">
            <SelectParameters>
                <asp:SessionParameter Name="specialistId" SessionField="specialistId" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
