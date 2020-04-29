<%@ Page Title="" Language="C#" MasterPageFile="~/Patient.Master" AutoEventWireup="true" CodeBehind="PatientProfile.aspx.cs" Inherits="DiabetesFinalProject.PatientProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        #PatientProfileDiv{
            margin-left:400px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">    
    <br />
    <div id="PatientProfileDiv">
        <h2>Your Profile</h2>
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" DataKeyField="PatientId">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td>Full Name : </td>
                        <td>
                            <asp:Label ID="FirstnameLabel" runat="server" Text='<%# Eval("Firstname") %>' />
                            <br />
                            <asp:Label ID="MiddlenameLabel" runat="server" Text='<%# Eval("Middlename") %>' />
                            <br />
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
                        <td>Gender :</td>
                        <td>
                            <asp:Label ID="GenderLabel" runat="server" Text='<%# Eval("Gender") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>Address:</td>
                        <td>
                            <asp:Label ID="AddressLine1Label" runat="server" Text='<%# Eval("AddressLine1") %>' />
                            <br />
                            <asp:Label ID="AddressLine2Label" runat="server" Text='<%# Eval("AddressLine2") %>' />
                            <br />
                            <asp:Label ID="CityLabel" runat="server" Text='<%# Eval("City") %>' />
                            <br />
                            <asp:Label ID="StateLabel" runat="server" Text='<%# Eval("State") %>' />
                            <br />
                            <asp:Label ID="ZipCodeLabel" runat="server" Text='<%# Eval("ZipCode") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>Phone Number :</td>
                        <td>
                            <asp:Label ID="PhoneNumberLabel" runat="server" Text='<%# Eval("PhoneNumber") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>Date of Birth : </td>
                        <td>
                            <asp:Label ID="DateofBirtLabel" runat="server" Text='<%# Eval("DateofBirt") %>' />
                        </td>
                    </tr>
                    
                </table>
                
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DiabetesConnectionString %>" SelectCommand="SELECT [PatientId], [Firstname], [Lastname], [Middlename], [Email],  [Gender], [AddressLine1], [PhoneNumber], [ZipCode], [State], [City], [AddressLine2], [DateofBirt] FROM [PatientRegister] WHERE ([PatientId] = @patientid)">
            <SelectParameters>
                <asp:SessionParameter Name="patientid" SessionField="patientid" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<asp:Button ID="btnEdit" runat="server" Text="Edit Your Profile" Height="40px" OnClick="btnEdit_Click" />
    </div>
</asp:Content>
