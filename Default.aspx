<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CphMain" Runat="Server">
        		<div class="container">
			    <div class="row">
				    <div class="col-lg-12">
					    <!-- Carousel -->
					    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
						    <!-- Indicators -->
						    <ol class="carousel-indicators hidden-xs">
							    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
							    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
							    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
						    </ol>
						    <!-- Wrapper for slides -->
						    <div class="carousel-inner">
							    <div class="item active">
                                    <asp:Image ID="FirstSlide" runat="server" ImageUrl="~/images/main-banner1-1903x600.jpg" alt="First slide"/>
							    </div>
							    <div class="item">
                                    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/main-banner2-1903x600.jpg" alt="Second slide"/>
							    </div>
							    <div class="item">
                                    <asp:Image ID="Image2" runat="server" ImageUrl="~/images/main-banner3-1903x600.jpg" alt="Third slide"/>
							    </div>
						    </div>
						    <!-- Controls -->
						    <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
							    <span class="glyphicon glyphicon-chevron-left"></span>
						    </a>
						    <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
							    <span class="glyphicon glyphicon-chevron-right"></span>
						    </a>
					    </div><!-- /carousel -->
				    </div>
			    </div>
			    <div class="row">
				    <div class="banner">
					    <div class="col-sm-4">
                            <asp:Image ID="Image3" runat="server" ImageUrl="~/images/sub-banner1.png" />
					    </div>
					    <div class="col-sm-4">
                            <asp:Image ID="Image4" runat="server" ImageUrl="~/images/sub-banner2.png" />
					    </div>
					    <div class="col-sm-4">
                            <asp:Image ID="Image5" runat="server" ImageUrl="~/images/sub-banner3.png" />
					    </div>
				    </div>
			    </div>
        <div class="containt">
                <!--Apple-->
			    <div class="row">
					    <div class="heading"><h2><a href="#">APPLE</a></h2></div>
					    <div class="products">
							    <div class="product">
                                    <asp:DataList ID="DataList1" runat="server" DataKeyField="IDSANPHAM" DataSourceID="SqlDataSource1" RepeatColumns="5" RepeatDirection="Horizontal">
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
                                            <asp:Parameter DefaultValue="1" Name="IDDANHMUC" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </div>
					    </div>
			    </div>
                <div class="row">
				    <div class="banner">
					    <div class="col-sm-6">
                            <asp:Image ID="Image10" runat="server" ImageUrl="~/images/sub-banner4.jpg" />
					    </div>
					    <div class="col-sm-6">
                            <asp:Image ID="Image11" runat="server" ImageUrl="~/images/sub-banner5.png" />
					    </div>
				    </div>
			    </div>
                <!--Samsung-->
			    <div class="row">
				    <div class="col-lg-12">
					    <div class="heading"><h2>SAMSUNG</h2></div>
					    <div class="products">
                            <asp:DataList ID="DataList2" runat="server" DataKeyField="IDSANPHAM" DataSourceID="SqlDataSource2" RepeatColumns="4" RepeatDirection="Horizontal">
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
				            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\WebShopOnline.mdf;Integrated Security=True;Connect Timeout=30" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [IDSANPHAM], [IDDANHMUC], [MASANPHAM], [TENSANPHAM], [GIASANPHAM], [MOTASANPHAM], [URL] FROM [SANPHAM] WHERE ([IDDANHMUC] = @IDDANHMUC)">
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="2" Name="IDDANHMUC" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
				        </div>
			        </div>
		        </div>
                <!--Sony-->
                <div class="row">
				    <div class="banner">
					    <div class="col-sm-6">
                            <asp:Image ID="Image8" runat="server" ImageUrl="~/images/sub-banner4.jpg" />
					    </div>
					    <div class="col-sm-6">
                            <asp:Image ID="Image9" runat="server" ImageUrl="~/images/sub-banner5.png" />
					    </div>
				    </div>
			    </div>
			    <div class="row">
				    <div class="col-lg-12">
					    <div class="heading"><h2>SONY</h2></div>
					    <div class="products">
                            <asp:DataList ID="DataList3" runat="server" DataKeyField="IDSANPHAM" DataSourceID="SqlDataSource3" RepeatColumns="4" RepeatDirection="Horizontal">
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
				            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\WebShopOnline.mdf;Integrated Security=True;Connect Timeout=30" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [IDSANPHAM], [IDDANHMUC], [MASANPHAM], [TENSANPHAM], [GIASANPHAM], [MOTASANPHAM], [URL] FROM [SANPHAM] WHERE ([IDDANHMUC] = @IDDANHMUC)">
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="3" Name="IDDANHMUC" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
				        </div>
			        </div>
		        </div>
                <!--Oppo-->
                <div class="row">
				    <div class="banner">
					    <div class="col-sm-6">
                            <asp:Image ID="Image7" runat="server" ImageUrl="~/images/sub-banner4.jpg" />
					    </div>
					    <div class="col-sm-6">
                            <asp:Image ID="Image6" runat="server" ImageUrl="~/images/sub-banner5.png" />
					    </div>
				    </div>
			    </div>
			    <div class="row">
				    <div class="col-lg-12">
					    <div class="heading"><h2>OPPO</h2></div>
					    <div class="products">
                           <asp:DataList ID="DataList4" runat="server" DataKeyField="IDSANPHAM" DataSourceID="SqlDataSource4" RepeatColumns="4" RepeatDirection="Horizontal">
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
				            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\WebShopOnline.mdf;Integrated Security=True;Connect Timeout=30" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [IDSANPHAM], [IDDANHMUC], [MASANPHAM], [TENSANPHAM], [GIASANPHAM], [MOTASANPHAM], [URL] FROM [SANPHAM] WHERE ([IDDANHMUC] = @IDDANHMUC)">
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="4" Name="IDDANHMUC" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
				        </div>
			        </div>
		        </div>
	        </div>
</asp:Content>

