<%@ Page Title="" Language="C#" MasterPageFile="~/Patient.Master" AutoEventWireup="true" CodeBehind="PatientReport.aspx.cs" Inherits="DiabetesFinalProject.PatientReport" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
       
        
        .auto-style1 {
            font-weight: bold;
        }
        .auto-style2 {
            width: 153px;
        }
       
        
        .auto-style3 {
            width: 123px;
        }
        .auto-style4 {
            width: 159px;
        }
       
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
    <div id="FileuploadDiv">
        <h2>Fill Your Report</h2>
        <table cellpadding="2" cellspacing="6">
            <tr>
                <td class="auto-style1">Do you Have Weight Loss? : </td>
                <td class="auto-style2">
                    <asp:RadioButtonList ID="rbWeightLoss" runat="server" RepeatDirection="Horizontal" ToolTip="Choose Yes/No">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* Select One Option" ControlToValidate="rbWeightLoss" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style1">
                    Feeling More Thirsty? : 
                </td>
                <td class="auto-style4">
                    <asp:RadioButtonList ID="rbThirsty" runat="server" RepeatDirection="Horizontal" ToolTip="Choose Yes/No">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="* Select One Option" ControlToValidate="rbThirsty" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            
            <tr>
                <td class="auto-style1">
                    Feeling Hungry? :
                </td>
                <td class="auto-style2">
                    <asp:RadioButtonList ID="rbHungry" runat="server" RepeatDirection="Horizontal" ToolTip="Choose Yes/No">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="* Select One Option" ControlToValidate="rbHungry" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
                 <td class="auto-style1">Blurry Vision? : </td>
                <td class="auto-style4">
                    <asp:RadioButtonList ID="rbBlurry" runat="server" RepeatDirection="Horizontal" ToolTip="Choose Yes/No">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="* Select One Option" ControlToValidate="rbBlurry" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>

           
            <tr>
                <td class="auto-style1">
                    Organ Failure? : 
                </td>
                <td class="auto-style2">
                    <asp:RadioButtonList ID="rbOrgan" runat="server" RepeatDirection="Horizontal" ToolTip="Choose Yes/No">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="* Select One Option" ControlToValidate="rbOrgan" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style7">
                    <b>Do you have Father,<br /> Mother,bother,<br />
                    Sister or Your child<br /> with 
                    type 1 or type 2 Diabetes? : </b>                
                </td>
                <td class="auto-style4">
                    <asp:RadioButtonList ID="rbType" runat="server" RepeatDirection="Horizontal" ToolTip="Choose Yes/No">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="* Select One Option" ControlToValidate="rbType" Font-Bold="True" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>            
            <tr>
                <td class="auto-style1">
                    Cholestrol level :
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtCholestrol" runat="server" Width="100px" ToolTip="Enter Cholestrol Level"></asp:TextBox> mg/dl
                </td>
                <td class="auto-style3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="* Enter Value" Font-Bold="True" ForeColor="#FF3300" ControlToValidate="txtCholestrol"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter +ve No's Only" ControlToValidate="txtCholestrol" Font-Bold="True" ForeColor="#FF3300" ValidationExpression="^(?=.+)(?:[1-9]\d*|0)?(?:\.\d+)?$"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style1">
                    LDL Cholestrol :
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtLdl" runat="server" Width="100px" ToolTip="Enter LDL Cholestrol"></asp:TextBox> mg/dl
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="* Enter Value" Font-Bold="True" ForeColor="#FF3300" ControlToValidate="txtLdl"></asp:RequiredFieldValidator>
                     <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter +ve No's Only" ControlToValidate="txtLdl" Font-Bold="True" ForeColor="#FF3300" ValidationExpression="^(?=.+)(?:[1-9]\d*|0)?(?:\.\d+)?$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            
            <tr>
                <td class="auto-style1">
                    SERUM HDL Cholestrol :
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtHdl" runat="server" Width="100px" ToolTip="Enter HDL Cholestrol"></asp:TextBox> mg/dl
                </td>
                <td class="auto-style3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="* Enter Value" Font-Bold="True" ForeColor="#FF3300" ControlToValidate="txtHdl"></asp:RequiredFieldValidator>
                     <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Enter +ve No's Only" ControlToValidate="txtHdl" Font-Bold="True" ForeColor="#FF3300" ValidationExpression="^(?=.+)(?:[1-9]\d*|0)?(?:\.\d+)?$"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style1">
                    VLDL Cholestrol :
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtVldl" runat="server" Width="100px" ToolTip="Enter VLDL Cholestrol"></asp:TextBox> mg/dl
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="* Enter Value" Font-Bold="True" ForeColor="#FF3300" ControlToValidate="txtVldl"></asp:RequiredFieldValidator>
                     <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Enter +ve No's Only" ControlToValidate="txtVldl" Font-Bold="True" ForeColor="#FF3300" ValidationExpression="^(?=.+)(?:[1-9]\d*|0)?(?:\.\d+)?$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            
            <tr>
                <td class="auto-style1">
                    Triglycerides :
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtTri" runat="server" Width="100px" ToolTip="Enter Triglycerides"></asp:TextBox> mg/dl
                </td>
                <td class="auto-style3">
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="* Enter Value" Font-Bold="True" ForeColor="#FF3300" ControlToValidate="txtTri"></asp:RequiredFieldValidator>
                     <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="Enter +ve No's Only" ControlToValidate="txtTri" Font-Bold="True" ForeColor="#FF3300" ValidationExpression="^(?=.+)(?:[1-9]\d*|0)?(?:\.\d+)?$"></asp:RegularExpressionValidator>
                </td>
                 <td class="auto-style1">
                    Others :
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtOthers" runat="server" Rows="5" TextMode="MultiLine" Width="100px" ToolTip="Enter Other Issues"></asp:TextBox>
                </td>
                <td>

                </td>
            </tr>     
            
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" Height="45px" Width="120px" OnClick="btnSubmit_Click" />
                </td>
                <td>
                    <b>
                    <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
                    </b>
                </td>
            </tr>           
        </table>
    </div>
    <br />
    <div>
        <asp:Label ID="lblhead" runat="server" Text="Your Reports" Font-Size="X-Large" Font-Bold="True"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="1" CellSpacing="3" DataKeyNames="ReportId" DataSourceID="SqlDataSource1" Font-Bold="True" ForeColor="#333333" GridLines="None" HorizontalAlign="Center">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="Report Date" SortExpression="ReportDate">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ReportDate") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("ReportDate", "{0:d}") %>'></asp:Label>
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DiabetesConnectionString %>" SelectCommand="SELECT * FROM [PatientReport] WHERE ([PatientId] = @PatientId)">
            <SelectParameters>
                <asp:SessionParameter Name="PatientId" SessionField="patientId" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>

</asp:Content>
