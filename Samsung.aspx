<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Samsung.aspx.cs" Inherits="Samsung" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CphMain" Runat="Server">
     <div class="container">
        <div class="row">
				<div class="col-lg-12">
					<ul class="breadcrumb">
						<li><a href="\">TRANG CHỦ</a></li>
                        <li><a href="#">SẢN PHẨM</a></li>
						<li><a href="samsung.aspx">SAMSUNG</a></li>
					</ul>
				</div>
		</div>
             <asp:DataList ID="DataList1" runat="server" DataKeyField="IDSANPHAM" DataSourceID="SqlDataSource1" RepeatColumns="4" RepeatDirection="Horizontal">
        <ItemTemplate>
                                            <asp:Image ID="URl" runat="server" ImageUrl='<%# "~/images/"+Eval("URL") %>' />
                                            <br />
                                            <br />
                                            <asp:Label ID="TENSANPHAMLabel" runat="server" Text='<%# Eval("TENSANPHAM") %>' />
                                            <br />
                                            Giá:
                                            <asp:Label ID="GIASANPHAMLabel" runat="server" Text='<%# Eval("GIASANPHAM") %>' />
                                            <br />
                                            <a class="btn cart" href="#"><span class="glyphicon glyphicon-shopping-cart"></span></a><asp:Button ID="Button1" runat="server" Text="ADD To Cart" />
                                            <br />
                                            <hr />
        </ItemTemplate>
    </asp:DataList>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\WebShopOnline.mdf;Integrated Security=True;Connect Timeout=30" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [IDSANPHAM], [IDDANHMUC], [MASANPHAM], [TENSANPHAM], [GIASANPHAM], [MOTASANPHAM], [URL] FROM [SANPHAM] WHERE ([IDDANHMUC] = @IDDANHMUC)">
             <SelectParameters>
                 <asp:Parameter DefaultValue="2" Name="IDDANHMUC" Type="Int32" />
             </SelectParameters>
         </asp:SqlDataSource>
    </div>
</asp:Content>


