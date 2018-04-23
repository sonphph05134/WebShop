<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="userManagment.aspx.cs" Inherits="userManagment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CphMain" Runat="Server">
          <div class="container">
        <div class="row">
				<div class="bg-primary" style="height:77px; font-size:30px;margin:5px">
                    </br>
					<p class="text-center"> TRANG QUẢN TRỊ NGƯỜI DÙNG</p>
				</div>
		</div>
        <div class="addnd">
            <a class="bg-primary" href="addUser.aspx">Thêm Người Dùng</a>
            </br>
        </div>
         <div class="qlUser">
             <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="IDNGUOIDUNG" DataSourceID="SqlDataSource1">
                 <Columns>
                     <asp:BoundField DataField="IDNGUOIDUNG" HeaderText="ID Người Dùng" InsertVisible="False" ReadOnly="True" SortExpression="IDNGUOIDUNG" />
                     <asp:BoundField DataField="IDKIEUNGUOIDUNG" HeaderText="ID Kiểu Người Dùng" SortExpression="IDKIEUNGUOIDUNG" />
                     <asp:BoundField DataField="HOTEN" HeaderText="Họ Và Tên" SortExpression="HOTEN" />
                     <asp:BoundField DataField="USERNAME" HeaderText="Username" SortExpression="USERNAME" />
                     <asp:BoundField DataField="PASSWORD" HeaderText="Password" SortExpression="PASSWORD" />
                     <asp:BoundField DataField="DIACHI" HeaderText="Địa Chỉ" SortExpression="DIACHI" />
                     <asp:BoundField DataField="SODIENTHOAI" HeaderText="Số Điện Thoại" SortExpression="SODIENTHOAI" />
                     <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
                     <asp:BoundField DataField="IDTINHTRANG" HeaderText="Tình Trạng" SortExpression="IDTINHTRANG" />
                     <asp:TemplateField ShowHeader="False">
                         <EditItemTemplate>
                             <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                             &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                         </EditItemTemplate>
                         <ItemTemplate>
                             <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                             &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Select" Text="Select"></asp:LinkButton>
                             &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" OnClientClick="return confirm('Bạn có chắc chắn xóa không ?')"></asp:LinkButton>
                         </ItemTemplate>
                     </asp:TemplateField>
                 </Columns>
             </asp:GridView>
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
    </div>
</asp:Content>

