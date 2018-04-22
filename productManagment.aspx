<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="productManagment.aspx.cs" Inherits="productManagment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CphMain" Runat="Server">
     <div class="container">
        <div class="row">
				<div class="col-lg-12">
					<ul class="breadcrumb">
						<li><a href="\">TRANG CHỦ</a></li>
                        <li><a href="#">ADMIN</a></li>
						<li><a href="productManagment.aspx">QUẢN LÝ SẢN PHẨM</a></li>
					</ul>
				</div>
		</div>
         <div class="addSP">
             <a href="addSP.aspx">Thêm sản phẩm</a>
         </div>
        <div class="quanlySP">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="IDSANPHAM" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="IDSANPHAM" HeaderText="IDSANPHAM" InsertVisible="False" ReadOnly="True" SortExpression="IDSANPHAM" />
                    <asp:BoundField DataField="IDDANHMUC" HeaderText="IDDANHMUC" SortExpression="IDDANHMUC" />
                    <asp:BoundField DataField="MASANPHAM" HeaderText="MASANPHAM" SortExpression="MASANPHAM" />
                    <asp:BoundField DataField="TENSANPHAM" HeaderText="TENSANPHAM" SortExpression="TENSANPHAM" />
                    <asp:BoundField DataField="GIASANPHAM" HeaderText="GIASANPHAM" SortExpression="GIASANPHAM" />
                    <asp:BoundField DataField="MOTASANPHAM" HeaderText="MOTASANPHAM" SortExpression="MOTASANPHAM" />
                    <asp:BoundField DataField="URL" HeaderText="URL" SortExpression="URL" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\WebShopOnline.mdf;Integrated Security=True;Connect Timeout=30" DeleteCommand="DELETE FROM [SANPHAM] WHERE [IDSANPHAM] = @IDSANPHAM" InsertCommand="INSERT INTO [SANPHAM] ([IDDANHMUC], [MASANPHAM], [TENSANPHAM], [GIASANPHAM], [MOTASANPHAM], [URL]) VALUES (@IDDANHMUC, @MASANPHAM, @TENSANPHAM, @GIASANPHAM, @MOTASANPHAM, @URL)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [IDSANPHAM], [IDDANHMUC], [MASANPHAM], [TENSANPHAM], [GIASANPHAM], [MOTASANPHAM], [URL] FROM [SANPHAM]" UpdateCommand="UPDATE [SANPHAM] SET [IDDANHMUC] = @IDDANHMUC, [MASANPHAM] = @MASANPHAM, [TENSANPHAM] = @TENSANPHAM, [GIASANPHAM] = @GIASANPHAM, [MOTASANPHAM] = @MOTASANPHAM, [URL] = @URL WHERE [IDSANPHAM] = @IDSANPHAM">
                <DeleteParameters>
                    <asp:Parameter Name="IDSANPHAM" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="IDDANHMUC" Type="Int32" />
                    <asp:Parameter Name="MASANPHAM" Type="String" />
                    <asp:Parameter Name="TENSANPHAM" Type="String" />
                    <asp:Parameter Name="GIASANPHAM" Type="Int32" />
                    <asp:Parameter Name="MOTASANPHAM" Type="String" />
                    <asp:Parameter Name="URL" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="IDDANHMUC" Type="Int32" />
                    <asp:Parameter Name="MASANPHAM" Type="String" />
                    <asp:Parameter Name="TENSANPHAM" Type="String" />
                    <asp:Parameter Name="GIASANPHAM" Type="Int32" />
                    <asp:Parameter Name="MOTASANPHAM" Type="String" />
                    <asp:Parameter Name="URL" Type="String" />
                    <asp:Parameter Name="IDSANPHAM" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>

