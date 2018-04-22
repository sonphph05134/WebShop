<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="categoryManagment.aspx.cs" Inherits="categoryManagment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CphMain" Runat="Server">
    <div class="container">
        <div class="row">
				<div class="col-lg-12">
					<ul class="breadcrumb">
						<li><a href="\">TRANG CHỦ</a></li>
                        <li><a href="#">ADMIN</a></li>
						<li><a href="categoryManagment.aspx">QUẢN LÝ DANH MỤC SẢN PHẨM</a></li>
					</ul>
				</div>
		</div>
        <div class="addSP">
             <a href="addcategory.aspx">Thêm danh mục sản phẩm</a>
         </div>
        <div class="quanlySP">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="IDDANHMUC" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="IDDANHMUC" HeaderText="ID Danh mục sản phẩm" InsertVisible="False" ReadOnly="True" SortExpression="IDDANHMUC" />
            <asp:BoundField DataField="TENDM" HeaderText="Tên Danh mục sản phẩm" SortExpression="TENDM" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\WebShopOnline.mdf;Integrated Security=True;Connect Timeout=30" DeleteCommand="DELETE FROM [DANHMUC] WHERE [IDDANHMUC] = @IDDANHMUC" InsertCommand="INSERT INTO [DANHMUC] ([TENDM]) VALUES (@TENDM)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [IDDANHMUC], [TENDM] FROM [DANHMUC]" UpdateCommand="UPDATE [DANHMUC] SET [TENDM] = @TENDM WHERE [IDDANHMUC] = @IDDANHMUC">
        <DeleteParameters>
            <asp:Parameter Name="IDDANHMUC" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TENDM" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TENDM" Type="String" />
            <asp:Parameter Name="IDDANHMUC" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
   </div>
 </div>
</asp:Content>

