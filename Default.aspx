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
								    <img src="/images/main-banner1-1903x600.jpg" alt="First slide" />
								    <!-- Static Header -->
								    <div class="header-text hidden-xs">
									    <div class="col-md-12 text-center">
									    </div>
								    </div><!-- /header-text -->
							    </div>
							    <div class="item">
								    <img src="/images/main-banner2-1903x600.jpg" alt="Second slide">
								    <!-- Static Header -->
								    <div class="header-text hidden-xs">
									    <div class="col-md-12 text-center">
									    </div>
								    </div><!-- /header-text -->
							    </div>
							    <div class="item">
								    <img src="/images/main-banner3-1903x600.jpg" alt="Third slide">
								    <!-- Static Header -->
								    <div class="header-text hidden-xs">
									    <div class="col-md-12 text-center">
									    </div>
								    </div><!-- /header-text -->
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
						    <img src="/images/sub-banner1.png" />
					    </div>
					    <div class="col-sm-4">
						    <img src="/images/sub-banner2.png" />
					    </div>
					    <div class="col-sm-4">
						    <img src="/images/sub-banner3.png" />
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
                                            <br />
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
						    <img src="/images/sub-banner4.jpg" />
					    </div>
					    <div class="col-sm-6">
						    <img src="/images/sub-banner5.png" />
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
                                            <br />
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
						    <img src="/images/sub-banner4.jpg" />
					    </div>
					    <div class="col-sm-6">
						    <img src="/images/sub-banner5.png" />
					    </div>
				    </div>
			    </div>
			    <div class="row">
				    <div class="col-lg-12">
					    <div class="heading"><h2>SONY</h2></div>
					    <div class="products">
                                   
				        </div>
                        <asp:DataList ID="DataList3" runat="server" DataKeyField="IDSANPHAM" DataSourceID="SqlDataSource3" RepeatColumns="4" RepeatDirection="Horizontal">
                            <ItemTemplate>
                                IDSANPHAM:
                                            <asp:Image ID="URl" runat="server" ImageUrl='<%# "~/images/"+Eval("URL") %>' />
                                            <br />
                                            <br />
                                            <asp:Label ID="TENSANPHAMLabel" runat="server" Text='<%# Eval("TENSANPHAM") %>' />
                                            <br />
                                            Giá:
                                            <asp:Label ID="GIASANPHAMLabel" runat="server" Text='<%# Eval("GIASANPHAM") %>' />
                                            <br />
                                            <br />
                            </ItemTemplate>
                        </asp:DataList>
			            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\WebShopOnline.mdf;Integrated Security=True;Connect Timeout=30" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [IDSANPHAM], [IDDANHMUC], [MASANPHAM], [TENSANPHAM], [GIASANPHAM], [MOTASANPHAM], [URL] FROM [SANPHAM] WHERE ([IDDANHMUC] = @IDDANHMUC)">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="3" Name="IDDANHMUC" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
			        </div>
		        </div>
                <!--Oppo-->
                			    <div class="row">
				    <div class="banner">
					    <div class="col-sm-6">
						    <img src="/images/sub-banner4.jpg" />
					    </div>
					    <div class="col-sm-6">
						    <img src="/images/sub-banner5.png" />
					    </div>
				    </div>
			    </div>
			    <div class="row">
				    <div class="col-lg-12">
					    <div class="heading"><h2>OPPO</h2></div>
					    <div class="products">
                                   
				        </div>
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
                                            <br />
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
</asp:Content>

