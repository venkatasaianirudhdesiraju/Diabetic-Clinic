<%@ Page Title="" Language="C#" MasterPageFile="~/Specialist.Master" AutoEventWireup="true" CodeBehind="SpecialistEditProfile.aspx.cs" Inherits="DiabetesFinalProject.SpecialistEditProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #EditDiv{
            margin-left:250px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div id="EditDiv">
        <h2>Edit Your Profile :</h2>
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="390px" AutoGenerateRows="False" CellPadding="4" CellSpacing="10" DataKeyNames="SpecialistId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
            <EditRowStyle BackColor="#2461BF" />
            <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="Firstname" HeaderText="Firstname" SortExpression="Firstname" />
                <asp:BoundField DataField="Lastname" HeaderText="Lastname" SortExpression="Lastname" />
                <asp:BoundField DataField="Middlename" HeaderText="Middlename" SortExpression="Middlename" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="AddressLine1" HeaderText="AddressLine1" SortExpression="AddressLine1" />
                <asp:BoundField DataField="AddressLine2" HeaderText="AddressLine2" SortExpression="AddressLine2" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                <asp:BoundField DataField="Zipcode" HeaderText="Zipcode" SortExpression="Zipcode" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                <asp:CommandField ButtonType="Button" ShowEditButton="True" />
            </Fields>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DiabetesConnectionString %>" SelectCommand="SELECT * FROM [SpecialistRegister] WHERE ([SpecialistId] = @SpecialistId)" DeleteCommand="DELETE FROM [SpecialistRegister] WHERE [SpecialistId] = @SpecialistId" InsertCommand="INSERT INTO [SpecialistRegister] ([Firstname], [Lastname], [Middlename], [Email], [Username], [Password], [Gender], [AddressLine1], [AddressLine2], [City], [State], [Zipcode], [Phone]) VALUES (@Firstname, @Lastname, @Middlename, @Email, @Username, @Password, @Gender, @AddressLine1, @AddressLine2, @City, @State, @Zipcode, @Phone)" UpdateCommand="UPDATE [SpecialistRegister] SET [Firstname] = @Firstname, [Lastname] = @Lastname, [Middlename] = @Middlename, [Email] = @Email, [Username] = @Username, [Password] = @Password, [Gender] = @Gender, [AddressLine1] = @AddressLine1, [AddressLine2] = @AddressLine2, [City] = @City, [State] = @State, [Zipcode] = @Zipcode, [Phone] = @Phone WHERE [SpecialistId] = @SpecialistId">
            <DeleteParameters>
                <asp:Parameter Name="SpecialistId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Firstname" Type="String" />
                <asp:Parameter Name="Lastname" Type="String" />
                <asp:Parameter Name="Middlename" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="AddressLine1" Type="String" />
                <asp:Parameter Name="AddressLine2" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="State" Type="String" />
                <asp:Parameter Name="Zipcode" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="SpecialistId" SessionField="specialistId" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Firstname" Type="String" />
                <asp:Parameter Name="Lastname" Type="String" />
                <asp:Parameter Name="Middlename" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="AddressLine1" Type="String" />
                <asp:Parameter Name="AddressLine2" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="State" Type="String" />
                <asp:Parameter Name="Zipcode" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="SpecialistId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
