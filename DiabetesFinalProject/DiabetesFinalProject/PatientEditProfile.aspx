<%@ Page Title="" Language="C#" MasterPageFile="~/Patient.Master" AutoEventWireup="true" CodeBehind="PatientEditProfile.aspx.cs" Inherits="DiabetesFinalProject.PatientEditProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #editDiv{
            margin-left:350px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div id="editDiv">
        <h2>Edit Your Profile :</h2>
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="196px" AutoGenerateRows="False" CellPadding="4" DataKeyNames="PatientId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
            <EditRowStyle BackColor="#2461BF" />
            <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="Firstname" HeaderText="Firstname" SortExpression="Firstname" />
                <asp:BoundField DataField="Lastname" HeaderText="Lastname" SortExpression="Lastname" />
                <asp:BoundField DataField="Middlename" HeaderText="Middlename" SortExpression="Middlename" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="AddressLine1" HeaderText="AddressLine1" SortExpression="AddressLine1" />
                <asp:BoundField DataField="AddressLine2" HeaderText="AddressLine2" SortExpression="AddressLine2" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                <asp:BoundField DataField="ZipCode" HeaderText="ZipCode" SortExpression="ZipCode" />
                <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
                <asp:BoundField DataField="DateOfBirt" HeaderText="Date Of Birth" SortExpression="DateOfBirt" />
                <asp:CommandField ButtonType="Button" ShowEditButton="True" />
            </Fields>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DiabetesConnectionString %>" SelectCommand="SELECT * FROM [PatientRegister] WHERE ([PatientId] = @PatientId)" DeleteCommand="DELETE FROM [PatientRegister] WHERE [PatientId] = @PatientId" InsertCommand="INSERT INTO [PatientRegister] ([Firstname], [Lastname], [Middlename], [Email], [Gender], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [PhoneNumber], [DateOfBirt]) VALUES (@Firstname, @Lastname, @Middlename, @Email, @Gender, @AddressLine1, @AddressLine2, @City, @State, @ZipCode, @PhoneNumber, @DateOfBirt)" UpdateCommand="UPDATE [PatientRegister] SET [Firstname] = @Firstname, [Lastname] = @Lastname, [Middlename] = @Middlename, [Email] = @Email, [Gender] = @Gender, [AddressLine1] = @AddressLine1, [AddressLine2] = @AddressLine2, [City] = @City, [State] = @State, [ZipCode] = @ZipCode, [PhoneNumber] = @PhoneNumber, [DateOfBirt] = @DateOfBirt WHERE [PatientId] = @PatientId">
            <DeleteParameters>
                <asp:Parameter Name="PatientId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Firstname" Type="String" />
                <asp:Parameter Name="Lastname" Type="String" />
                <asp:Parameter Name="Middlename" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="AddressLine1" Type="String" />
                <asp:Parameter Name="AddressLine2" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="State" Type="String" />
                <asp:Parameter Name="ZipCode" Type="String" />
                <asp:Parameter Name="PhoneNumber" Type="String" />
                <asp:Parameter DbType="Date" Name="DateOfBirt" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="PatientId" SessionField="patientId" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Firstname" Type="String" />
                <asp:Parameter Name="Lastname" Type="String" />
                <asp:Parameter Name="Middlename" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="AddressLine1" Type="String" />
                <asp:Parameter Name="AddressLine2" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="State" Type="String" />
                <asp:Parameter Name="ZipCode" Type="String" />
                <asp:Parameter Name="PhoneNumber" Type="String" />
                <asp:Parameter DbType="Date" Name="DateOfBirt" />
                <asp:Parameter Name="PatientId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
