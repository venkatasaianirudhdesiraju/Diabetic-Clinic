<%@ Page Title="" Language="C#" MasterPageFile="~/Specialist.Master" AutoEventWireup="true" CodeBehind="SpecialistCreateSchedule.aspx.cs" Inherits="DiabetesFinalProject.SpecialistCreateSchedule" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
       <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 181px;
            text-align: right;
        }
        .auto-style3 {
            text-align: right;
        }
    .auto-style4 {
        width: 185px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div>
    <h2>Create Schedule</h2>
        <table cellpadding="8" class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="Schedule Name : "></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtSchduleName" runat="server"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* Enter Schedule Name" ControlToValidate="txtSchduleName" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style3"><asp:Label ID="Label4" runat="server" Text="Monday"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtMonday" runat="server" TextMode="MultiLine"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtMonday" ErrorMessage="* Enter Monday Schedule or Enter N/A" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="From Date : "></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtFrmDate" runat="server" TextMode="Date"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtFrmDate" ErrorMessage="* Choose Your From Date" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style3"><asp:Label ID="Label5" runat="server" Text="Tuesday : "></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtTuesday" runat="server" TextMode="MultiLine"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtTuesday" ErrorMessage="* Enter Tuesday Schedule or Enter N/A" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="To Date : "></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtToDate" runat="server" TextMode="Date"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtToDate" ErrorMessage="* Choose Your To Date" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style3">
                    <asp:Label ID="Label6" runat="server" Text="Wednesday : "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtWednesday" runat="server" TextMode="MultiLine"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtWednesday" ErrorMessage="* Enter Wednesday Schedule or Enter N/A" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    
                    <asp:Label ID="Label12" runat="server" Text="Patient Allocated : "></asp:Label>
                    
                </td>
                <td class="auto-style4">
                    <asp:DropDownList ID="ddlPatient" runat="server" DataSourceID="SqlDataSource1" DataTextField="Firstname" DataValueField="PatientId">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DiabetesConnectionString %>" SelectCommand="SELECT PatientSpecialist.PatientId, PatientSpecialist.SpecialistId, PatientRegister.Firstname, PatientRegister.Lastname FROM PatientSpecialist INNER JOIN PatientRegister ON PatientSpecialist.PatientId = PatientRegister.PatientId WHERE (PatientSpecialist.SpecialistId = @specialistId)">
                        <SelectParameters>
                            <asp:SessionParameter Name="specialistId" SessionField="specialistid" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddlPatient" ErrorMessage="* Choose Your Patient" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                <td class="auto-style3">
                    <asp:Label ID="Label7" runat="server" Text="Thursday : "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtThursday" runat="server" TextMode="MultiLine"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtThursday" ErrorMessage="* Enter Thursday Schedule or Enter N/A" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    
                    <asp:Button ID="Button1" runat="server" Height="55px" Text="back" OnClientClick="JavaScript:window.history.back(1);return false;" Width="90px" />
                    
                </td>
                <td class="auto-style4">
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" Height="55px" Width="85px" OnClick="btnSubmit_Click" />
                    </td>
                <td class="auto-style3">
                    <asp:Label ID="Label8" runat="server" Text="Friday : "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtFriday" runat="server" TextMode="MultiLine"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtFriday" ErrorMessage="* Enter Friday Schedule or Enter N/A" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label11" runat="server" Text="Saturday : "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtSaturday" runat="server" TextMode="MultiLine"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtSaturday" ErrorMessage="* Enter Saturday Schedule or Enter N/A" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label9" runat="server" Text="Sunday : "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtSunday" runat="server" TextMode="MultiLine"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtSunday" ErrorMessage="* Enter Sunday Schedule or Enter N/A" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="lblMessage" runat="server" Font-Bold="True" ForeColor="#FF3300"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:Label ID="Label10" runat="server" Text="Others : "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtOthers" runat="server" TextMode="MultiLine"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtSunday" ErrorMessage="* Enter Others or Enter N/A" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
                     
        </table>


    </div>
</asp:Content>
