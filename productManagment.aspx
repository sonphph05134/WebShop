<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="productManagment.aspx.cs" Inherits="productManagment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CphMain" Runat="Server">
     <div class="container">
        <div class="row">
				<div class="bg-primary" style="height:77px; font-size:30px;margin:5px">
                    </br>
					<p class="text-center"> TRANG QUẢN TRỊ SẢN PHẨM</p>
				</div>
		</div>
        <div class="addsp">
            <a class="bg-primary" href="addSP.aspx">Thêm Sản Phẩm</a>
            <br />
        </div>
         
        <div class="quanlySP">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="IDSANPHAM" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="IDSANPHAM" HeaderText="ID Sản Phẩm" InsertVisible="False" ReadOnly="True" SortExpression="IDSANPHAM" >
                    <HeaderStyle ForeColor="#6600CC" />
                    <ItemStyle ForeColor="#6600CC" />
                    </asp:BoundField>
                    <asp:BoundField DataField="IDDANHMUC" HeaderText="ID Danh Mục" SortExpression="IDDANHMUC" >
                    <HeaderStyle ForeColor="#6600CC" />
                    <ItemStyle ForeColor="#6600CC" />
                    </asp:BoundField>
                    <asp:BoundField DataField="MASANPHAM" HeaderText="Mã Sản Phẩm" SortExpression="MASANPHAM" >
                    <HeaderStyle ForeColor="#6600CC" />
                    <ItemStyle ForeColor="#6600CC" />
                    </asp:BoundField>
                    <asp:BoundField DataField="TENSANPHAM" HeaderText="Tên Sản Phẩm" SortExpression="TENSANPHAM" >
                    <HeaderStyle ForeColor="#6600CC" />
                    <ItemStyle ForeColor="#6600CC" />
                    </asp:BoundField>
                    <asp:BoundField DataField="GIASANPHAM" HeaderText="Giá Sản Phẩm" SortExpression="GIASANPHAM" >
                    <HeaderStyle ForeColor="#6600CC" />
                    <ItemStyle ForeColor="#6600CC" />
                    </asp:BoundField>
                    <asp:BoundField DataField="MOTASANPHAM" HeaderText="Mô Tả Sản Phẩm" SortExpression="MOTASANPHAM" >
                    <HeaderStyle ForeColor="#6600CC" />
                    <ItemStyle ForeColor="#6600CC" />
                    </asp:BoundField>
                    <asp:BoundField DataField="URL" HeaderText="Tên File Ảnh" SortExpression="URL" >
                    <HeaderStyle ForeColor="#6600CC" />
                    <ItemStyle ForeColor="#6600CC" />
                    </asp:BoundField>
                    <asp:TemplateField HeaderText="Ảnh Sản Phẩm">
                        <ItemTemplate>
                            <asp:Image ID="URl" runat="server" ImageUrl='<%# "~/images/"+Eval("URL") %>' width="150px"/>
                        </ItemTemplate>
                        <HeaderStyle ForeColor="#6600CC" />
                    </asp:TemplateField>
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update" ForeColor="#6600CC"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" ForeColor="#6600CC"></asp:LinkButton>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" ForeColor="#6600CC"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Select" Text="Select" ForeColor="#6600CC"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" OnClientClick="return confirm('Bạn có chắc chắn xóa không ?')" ForeColor="#6600CC"></asp:LinkButton>
                        </ItemTemplate>
                        <FooterStyle ForeColor="#6600CC" />
                        <ItemStyle ForeColor="#6600CC" />
                    </asp:TemplateField>

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

