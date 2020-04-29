<%@ Page Title="" Language="C#" MasterPageFile="~/Patient.Master" AutoEventWireup="true" CodeBehind="PatientChooseSpecialist.aspx.cs" Inherits="DiabetesFinalProject.PatientChooseSpecialist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div>
        <asp:Label ID="lblHeader" runat="server" Text="Choose Your Specialist" Font-Bold="True" Font-Size="Large"></asp:Label>
        <br />
        <asp:DropDownList ID="ddlSpecialist" runat="server" DataSourceID="SqlDataSource1" DataTextField="Firstname" DataValueField="SpecialistId" AutoPostBack="True"></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DiabetesConnectionString %>" SelectCommand="SELECT [SpecialistId], [Firstname], [Lastname] FROM [SpecialistRegister]"></asp:SqlDataSource>
        <br />
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td>Specialist Name : </td>
                        <td>
                            <asp:Label ID="FirstnameLabel" runat="server" Text='<%# Eval("Firstname") %>' />
                            &nbsp;
                            <asp:Label ID="MiddlenameLabel" runat="server" Text='<%# Eval("Middlename") %>' />
                            &nbsp;
                            <asp:Label ID="LastnameLabel" runat="server" Text='<%# Eval("Lastname") %>' />
                            </td>
                    </tr>
                    <tr>
                        <td>Email : </td>
                        <td>
                            <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>Gender : </td>
                        <td>
                            <asp:Label ID="GenderLabel" runat="server" Text='<%# Eval("Gender") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>Address :</td>
                        <td>
                            <asp:Label ID="AddressLine1Label" runat="server" Text='<%# Eval("AddressLine1") %>' />
                            <br />
                            <asp:Label ID="AddressLine2Label" runat="server" Text='<%# Eval("AddressLine2") %>' />
                            <br />
                            <asp:Label ID="CityLabel" runat="server" Text='<%# Eval("City") %>' />
                            <br />
                            <asp:Label ID="StateLabel" runat="server" Text='<%# Eval("State") %>' />
                            <br />
                            <asp:Label ID="ZipcodeLabel" runat="server" Text='<%# Eval("Zipcode") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>Best Phone Number : </td>
                        <td>
                            <asp:Label ID="PhoneLabel" runat="server" Text='<%# Eval("Phone") %>' />
                        </td>
                    </tr>
                </table>                
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DiabetesConnectionString %>" SelectCommand="SELECT [SpecialistId], [Firstname], [Lastname], [Middlename], [Email], [Gender], [AddressLine1], [AddressLine2], [City], [Zipcode], [State], [Phone] FROM [SpecialistRegister] WHERE ([SpecialistId] = @SpecialistId)">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlSpecialist" Name="SpecialistId" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
        <br />
        <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
    </div>
</asp:Content>
