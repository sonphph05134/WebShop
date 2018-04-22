<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="userManagment.aspx.cs" Inherits="userManagment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CphMain" Runat="Server">
     <div class="container">
        <div class="row">
				<div class="col-lg-12">
					<ul class="breadcrumb">
						<li><a href="\">TRANG CHỦ</a></li>
                        <li><a href="#">ADMIN</a></li>
						<li><a href="userManagment.aspx">QUẢN LÝ NGƯỜI DÙNG</a></li>
					</ul>
				</div>
		</div>
         <div class="addSP">
             <a href="addUser.aspx">Thêm Người Dùng</a>
         </div>
         <div class="qlUser">
             <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="IDNGUOIDUNG" DataSourceID="SqlDataSource1">
                 <Columns>
                     <asp:BoundField DataField="IDNGUOIDUNG" HeaderText="IDNGUOIDUNG" InsertVisible="False" ReadOnly="True" SortExpression="IDNGUOIDUNG" />
                     <asp:BoundField DataField="IDKIEUNGUOIDUNG" HeaderText="IDKIEUNGUOIDUNG" SortExpression="IDKIEUNGUOIDUNG" />
                     <asp:BoundField DataField="HOTEN" HeaderText="HOTEN" SortExpression="HOTEN" />
                     <asp:BoundField DataField="USERNAME" HeaderText="USERNAME" SortExpression="USERNAME" />
                     <asp:BoundField DataField="PASSWORD" HeaderText="PASSWORD" SortExpression="PASSWORD" />
                     <asp:BoundField DataField="DIACHI" HeaderText="DIACHI" SortExpression="DIACHI" />
                     <asp:BoundField DataField="SODIENTHOAI" HeaderText="SODIENTHOAI" SortExpression="SODIENTHOAI" />
                     <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
                     <asp:BoundField DataField="IDTINHTRANG" HeaderText="IDTINHTRANG" SortExpression="IDTINHTRANG" />
                     <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
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

