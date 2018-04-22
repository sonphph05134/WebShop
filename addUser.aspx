<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="addUser.aspx.cs" Inherits="addUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CphMain" Runat="Server">
    <div class="themsp">
        Thêm Người Dùng
        </br>
    </div>
     <div class="quanlyUser">
         <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="IDNGUOIDUNG" DataSourceID="SqlDataSource1" DefaultMode="Insert">
             <EditItemTemplate>
                 IDNGUOIDUNG:
                 <asp:Label ID="IDNGUOIDUNGLabel1" runat="server" Text='<%# Eval("IDNGUOIDUNG") %>' />
                 <br />
                 IDKIEUNGUOIDUNG:
                 <asp:TextBox ID="IDKIEUNGUOIDUNGTextBox" runat="server" Text='<%# Bind("IDKIEUNGUOIDUNG") %>' />
                 <br />
                 HOTEN:
                 <asp:TextBox ID="HOTENTextBox" runat="server" Text='<%# Bind("HOTEN") %>' />
                 <br />
                 USERNAME:
                 <asp:TextBox ID="USERNAMETextBox" runat="server" Text='<%# Bind("USERNAME") %>' />
                 <br />
                 PASSWORD:
                 <asp:TextBox ID="PASSWORDTextBox" runat="server" Text='<%# Bind("PASSWORD") %>' />
                 <br />
                 DIACHI:
                 <asp:TextBox ID="DIACHITextBox" runat="server" Text='<%# Bind("DIACHI") %>' />
                 <br />
                 SODIENTHOAI:
                 <asp:TextBox ID="SODIENTHOAITextBox" runat="server" Text='<%# Bind("SODIENTHOAI") %>' />
                 <br />
                 EMAIL:
                 <asp:TextBox ID="EMAILTextBox" runat="server" Text='<%# Bind("EMAIL") %>' />
                 <br />
                 IDTINHTRANG:
                 <asp:TextBox ID="IDTINHTRANGTextBox" runat="server" Text='<%# Bind("IDTINHTRANG") %>' />
                 <br />
                 <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                 &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
             </EditItemTemplate>
             <InsertItemTemplate>
                 IDKIEUNGUOIDUNG:
                 <asp:TextBox ID="IDKIEUNGUOIDUNGTextBox" runat="server" Text='<%# Bind("IDKIEUNGUOIDUNG") %>' />
                 <br />
                 HOTEN:
                 <asp:TextBox ID="HOTENTextBox" runat="server" Text='<%# Bind("HOTEN") %>' />
                 <br />
                 USERNAME:
                 <asp:TextBox ID="USERNAMETextBox" runat="server" Text='<%# Bind("USERNAME") %>' />
                 <br />
                 PASSWORD:
                 <asp:TextBox ID="PASSWORDTextBox" runat="server" Text='<%# Bind("PASSWORD") %>' />
                 <br />
                 DIACHI:
                 <asp:TextBox ID="DIACHITextBox" runat="server" Text='<%# Bind("DIACHI") %>' />
                 <br />
                 SODIENTHOAI:
                 <asp:TextBox ID="SODIENTHOAITextBox" runat="server" Text='<%# Bind("SODIENTHOAI") %>' />
                 <br />
                 EMAIL:
                 <asp:TextBox ID="EMAILTextBox" runat="server" Text='<%# Bind("EMAIL") %>' />
                 <br />
                 IDTINHTRANG:
                 <asp:TextBox ID="IDTINHTRANGTextBox" runat="server" Text='<%# Bind("IDTINHTRANG") %>' />
                 <br />
                 <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                 &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
             </InsertItemTemplate>
             <ItemTemplate>
                 IDNGUOIDUNG:
                 <asp:Label ID="IDNGUOIDUNGLabel" runat="server" Text='<%# Eval("IDNGUOIDUNG") %>' />
                 <br />
                 IDKIEUNGUOIDUNG:
                 <asp:Label ID="IDKIEUNGUOIDUNGLabel" runat="server" Text='<%# Bind("IDKIEUNGUOIDUNG") %>' />
                 <br />
                 HOTEN:
                 <asp:Label ID="HOTENLabel" runat="server" Text='<%# Bind("HOTEN") %>' />
                 <br />
                 USERNAME:
                 <asp:Label ID="USERNAMELabel" runat="server" Text='<%# Bind("USERNAME") %>' />
                 <br />
                 PASSWORD:
                 <asp:Label ID="PASSWORDLabel" runat="server" Text='<%# Bind("PASSWORD") %>' />
                 <br />
                 DIACHI:
                 <asp:Label ID="DIACHILabel" runat="server" Text='<%# Bind("DIACHI") %>' />
                 <br />
                 SODIENTHOAI:
                 <asp:Label ID="SODIENTHOAILabel" runat="server" Text='<%# Bind("SODIENTHOAI") %>' />
                 <br />
                 EMAIL:
                 <asp:Label ID="EMAILLabel" runat="server" Text='<%# Bind("EMAIL") %>' />
                 <br />
                 IDTINHTRANG:
                 <asp:Label ID="IDTINHTRANGLabel" runat="server" Text='<%# Bind("IDTINHTRANG") %>' />
                 <br />
                 <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                 &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                 &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
             </ItemTemplate>
         </asp:FormView>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\WebShopOnline.mdf;Integrated Security=True;Connect Timeout=30" DeleteCommand="DELETE FROM [NGUOIDUNG] WHERE [IDNGUOIDUNG] = @IDNGUOIDUNG" InsertCommand="INSERT INTO [NGUOIDUNG] ([IDKIEUNGUOIDUNG], [HOTEN], [USERNAME], [PASSWORD], [DIACHI], [SODIENTHOAI], [EMAIL], [IDTINHTRANG]) VALUES (@IDKIEUNGUOIDUNG, @HOTEN, @USERNAME, @PASSWORD, @DIACHI, @SODIENTHOAI, @EMAIL, @IDTINHTRANG)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [IDNGUOIDUNG], [IDKIEUNGUOIDUNG], [HOTEN], [USERNAME], [PASSWORD], [DIACHI], [SODIENTHOAI], [EMAIL], [IDTINHTRANG] FROM [NGUOIDUNG]" UpdateCommand="UPDATE [NGUOIDUNG] SET [IDKIEUNGUOIDUNG] = @IDKIEUNGUOIDUNG, [HOTEN] = @HOTEN, [USERNAME] = @USERNAME, [PASSWORD] = @PASSWORD, [DIACHI] = @DIACHI, [SODIENTHOAI] = @SODIENTHOAI, [EMAIL] = @EMAIL, [IDTINHTRANG] = @IDTINHTRANG WHERE [IDNGUOIDUNG] = @IDNGUOIDUNG">
             <DeleteParameters>
                 <asp:Parameter Name="IDNGUOIDUNG" Type="Int32" />
             </DeleteParameters>
             <InsertParameters>
                 <asp:Parameter Name="IDKIEUNGUOIDUNG" Type="Int32" />
                 <asp:Parameter Name="HOTEN" Type="String" />
                 <asp:Parameter Name="USERNAME" Type="String" />
                 <asp:Parameter Name="PASSWORD" Type="String" />
                 <asp:Parameter Name="DIACHI" Type="String" />
                 <asp:Parameter Name="SODIENTHOAI" Type="String" />
                 <asp:Parameter Name="EMAIL" Type="String" />
                 <asp:Parameter Name="IDTINHTRANG" Type="Int32" />
             </InsertParameters>
             <UpdateParameters>
                 <asp:Parameter Name="IDKIEUNGUOIDUNG" Type="Int32" />
                 <asp:Parameter Name="HOTEN" Type="String" />
                 <asp:Parameter Name="USERNAME" Type="String" />
                 <asp:Parameter Name="PASSWORD" Type="String" />
                 <asp:Parameter Name="DIACHI" Type="String" />
                 <asp:Parameter Name="SODIENTHOAI" Type="String" />
                 <asp:Parameter Name="EMAIL" Type="String" />
                 <asp:Parameter Name="IDTINHTRANG" Type="Int32" />
                 <asp:Parameter Name="IDNGUOIDUNG" Type="Int32" />
             </UpdateParameters>
         </asp:SqlDataSource>
     </div>
</asp:Content>

