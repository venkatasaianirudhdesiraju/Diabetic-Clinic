<%@ Page Title="" Language="C#" MasterPageFile="~/Patient.Master" AutoEventWireup="true" CodeBehind="PatientChooseDoctor.aspx.cs" Inherits="DiabetesFinalProject.PatientChooseDoctor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        #choosedocDiv{
            margin-left:400px;
        }
        #patientdoctableDiv{
            margin-left:80px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div id="choosedocDiv">
        <asp:Label ID="lblHeader" runat="server" Text="Choose Your Doctor" Font-Size="X-Large" Font-Bold="True"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Firstname" DataValueField="DoctorId" AutoPostBack="True">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DiabetesConnectionString %>" SelectCommand="SELECT [DoctorId], [Firstname] FROM [DoctorRegister]"></asp:SqlDataSource>
        <br />
        <br />
        <asp:DataList ID="DataList1" runat="server" DataKeyField="DoctorId" DataSourceID="SqlDataSource2">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td>Full Name : </td>
                        <td>
                            <asp:Label ID="FirstnameLabel" runat="server" Text='<%# Eval("Firstname") %>' />
                            &nbsp
                            <asp:Label ID="MiddlenameLabel" runat="server" Text='<%# Eval("Middlename") %>' />
                            &nbsp
                            <asp:Label ID="LastnameLabel" runat="server" Text='<%# Eval("Lastname") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>Email:</td>
                        <td>
                            <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>Gender:</td>
                        <td>
                            <asp:Label ID="GenderLabel" runat="server" Text='<%# Eval("Gender") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>Address: </td>
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
                        <td>Best Pone Number:</td>
                        <td>
                            <asp:Label ID="PhoneLabel" runat="server" Text='<%# Eval("Phone") %>' />
                        </td>
                    </tr>
                    
                </table>
                
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DiabetesConnectionString %>" SelectCommand="SELECT [Firstname], [Lastname], [Middlename], [Email], [Username], [Password], [Gender], [AddressLine1], [AddressLine2], [City], [State], [Zipcode], [Phone], [DoctorId] FROM [DoctorRegister] WHERE ([DoctorId] = @DoctorId)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="DoctorId" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>       
        <br />
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" Height="45px" OnClick="btnSubmit_Click" Width="95px" />
         <br />
        <asp:Label ID="lblMessage" runat="server" Text="" ForeColor="#FF3300"></asp:Label>         
        </div>
        <div id="patientdoctableDiv">
            <asp:Label ID="lblTableheader" runat="server" Text="Your Doctor" Font-Size="X-Large" Font-Bold="True"></asp:Label>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="PatientId" DataSourceID="SqlDataSource3" CellPadding="10" CellSpacing="2" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="Doctor Firstname" SortExpression="Firstname">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Firstname") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("Firstname") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Patient Lastname" SortExpression="Lastname">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Lastname") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("Lastname") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Doctor Middlename" SortExpression="Middlename">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Middlename") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("Middlename") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Patient First Name" SortExpression="Expr1">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Expr1") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Expr1") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Patient Full Name" SortExpression="Expr2">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Expr2") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Expr2") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Patient Middle Name" SortExpression="Expr3">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Expr3") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("Expr3") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
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
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DiabetesConnectionString %>" SelectCommand="SELECT DoctorRegister.Firstname, DoctorRegister.Lastname, DoctorRegister.Middlename, PatientDoctor.DoctorId, PatientDoctor.PatientId, PatientRegister.Firstname AS Expr1, PatientRegister.Lastname AS Expr2, PatientRegister.Middlename AS Expr3 FROM DoctorRegister INNER JOIN PatientDoctor ON DoctorRegister.DoctorId = PatientDoctor.DoctorId INNER JOIN PatientRegister ON PatientDoctor.PatientId = PatientRegister.PatientId WHERE (PatientRegister.PatientId) = @patientId">
            <SelectParameters>
                <asp:SessionParameter Name="patientId" SessionField="patientId" />
            </SelectParameters>
        </asp:SqlDataSource>
            <br />
            <asp:Label ID="lblSpecialist" runat="server" Text="Your Specialist" Font-Bold="True" Font-Size="Large"></asp:Label>
            <br />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="10" CellSpacing="2" DataKeyNames="PatientId" DataSourceID="SqlDataSource4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Firstname" HeaderText="Specialist Firstname" SortExpression="Firstname" />
                    <asp:BoundField DataField="Lastname" HeaderText="Specialist Lastname" SortExpression="Lastname" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                    <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
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
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:DiabetesConnectionString %>" SelectCommand="SELECT PatientSpecialist.PatientId, PatientSpecialist.SpecialistId, SpecialistRegister.Firstname, SpecialistRegister.Lastname, SpecialistRegister.Email, SpecialistRegister.Gender, SpecialistRegister.Phone FROM PatientSpecialist INNER JOIN SpecialistRegister ON PatientSpecialist.SpecialistId = SpecialistRegister.SpecialistId WHERE (PatientSpecialist.PatientId = @patientId)">
                <SelectParameters>
                    <asp:SessionParameter Name="patientId" SessionField="patientId" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
        
    
</asp:Content>
