<%@ Page Title="" Language="C#" MasterPageFile="~/Patient.Master" AutoEventWireup="true" CodeBehind="PatientScheduledTreatment.aspx.cs" Inherits="DiabetesFinalProject.PatientScheduledTreatment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        #scheduleDiv{
           tabel{
                    border-collapse:inherit;
                }
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div id="scheduleDiv">
        <h2>Scheduled Treatment</h2>
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="402px" AutoGenerateRows="False" CellPadding="4" CellSpacing="10" DataKeyNames="ScheduleId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
            <EditRowStyle BackColor="#2461BF" />
            <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="Schedule_name" HeaderText="Schedule Name" SortExpression="Schedule_name" />
                <asp:TemplateField HeaderText="From Date" SortExpression="Schedule_from">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Schedule_from") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Schedule_from") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Schedule_from", "{0:d}") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="To Date" SortExpression="Schedule_to">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Schedule_to") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Schedule_to") %>'></asp:TextBox>
                    </InsertItemTemplate>
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
            </Fields>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DiabetesConnectionString %>" SelectCommand="SELECT * FROM [DoctorSchedule] WHERE ([PatientId] = @PatientId)">
            <SelectParameters>
                <asp:SessionParameter Name="PatientId" SessionField="patientId" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="10" CellSpacing="2" DataKeyNames="ScheduleId" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Schedule_name" HeaderText="Schedule Name" SortExpression="Schedule_name" />
                <asp:BoundField DataField="Schedule_from" HeaderText="From Date" SortExpression="Schedule_from" />
                <asp:BoundField DataField="Schedule_to" HeaderText="To Date" SortExpression="Schedule_to" />
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DiabetesConnectionString %>" SelectCommand="SELECT * FROM [SpecialistSchedule] WHERE ([PatientId] = @PatientId)">
            <SelectParameters>
                <asp:SessionParameter Name="PatientId" SessionField="patientId" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Are you not satisfied with your treatment?.." Font-Bold="True" Font-Size="Large" ForeColor="#3399FF"></asp:Label>
        <asp:Button ID="btnClick" runat="server" Text="Click Here" OnClick="btnClick_Click" />
    </div>
</asp:Content>
