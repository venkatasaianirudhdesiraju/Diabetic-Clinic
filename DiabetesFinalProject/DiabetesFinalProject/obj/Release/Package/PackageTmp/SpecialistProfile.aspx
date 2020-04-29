<%@ Page Title="" Language="C#" MasterPageFile="~/Specialist.Master" AutoEventWireup="true" CodeBehind="SpecialistProfile.aspx.cs" Inherits="DiabetesFinalProject.SpecialistProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        #SpecialistProfileDiv{
            margin-left:350px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div id="SpecialistProfileDiv">
        <h2>Your Profile</h2>
        <br />
        <asp:DataList ID="DataList1" runat="server" DataKeyField="SpecialistId" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td>Your Name : </td>
                        <td>
                            <asp:Label ID="FirstnameLabel" runat="server" Text='<%# Eval("Firstname") %>' />
                            &nbsp;
                            <asp:Label ID="MiddlenameLabel" runat="server" Text='<%# Eval("Middlename") %>' />
                            &nbsp;
                            <asp:Label ID="LastnameLabel" runat="server" Text='<%# Eval("Lastname") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>E-Mail : </td>
                        <td>
                            <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>User Name :</td>
                        <td>
                            <asp:Label ID="UsernameLabel" runat="server" Text='<%# Eval("Username") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>Gender :</td>
                        <td>
                            <asp:Label ID="GenderLabel" runat="server" Text='<%# Eval("Gender") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>Address : </td>
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
                        <td>Best Phone Number to Reach :</td>
                        <td>
                            <asp:Label ID="PhoneLabel" runat="server" Text='<%# Eval("Phone") %>' />
                        </td>
                    </tr>
                    
                </table>
               
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DiabetesConnectionString %>" SelectCommand="SELECT * FROM [SpecialistRegister] WHERE ([SpecialistId] = @SpecialistId)">
            <SelectParameters>
                <asp:SessionParameter Name="SpecialistId" SessionField="specialistId" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<asp:Button ID="btnEdit" runat="server" Text="Edit Your Profile" Height="45px" OnClick="btnEdit_Click" />
    </div>
</asp:Content>
