<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="AddPurchase.aspx.cs" Inherits="AddPurchase" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CphMain" Runat="Server">
    <div>
        <p class="bg-primary">Thêm Hóa Đơn</p> 
        </br>
    </div>
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="IDHOADON" DataSourceID="SqlDataSource1" OnItemInserted="InsertedCmd" DefaultMode="Insert">
        <EditItemTemplate>
            IDHOADON:
            <asp:Label ID="IDHOADONLabel1" runat="server" Text='<%# Eval("IDHOADON") %>' />
            <br />
            IDNGUOIDUNG:
            <asp:TextBox ID="IDNGUOIDUNGTextBox" runat="server" Text='<%# Bind("IDNGUOIDUNG") %>' />
            <br />
            MAHOADON:
            <asp:TextBox ID="MAHOADONTextBox" runat="server" Text='<%# Bind("MAHOADON") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ID Người Dùng:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="IDNGUOIDUNGTextBox" runat="server" Text='<%# Bind("IDNGUOIDUNG") %>' />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mã Hóa Đơn:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="MAHOADONTextBox" runat="server" Text='<%# Bind("MAHOADON") %>' />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            IDHOADON:
            <asp:Label ID="IDHOADONLabel" runat="server" Text='<%# Eval("IDHOADON") %>' />
            <br />
            IDNGUOIDUNG:
            <asp:Label ID="IDNGUOIDUNGLabel" runat="server" Text='<%# Bind("IDNGUOIDUNG") %>' />
            <br />
            MAHOADON:
            <asp:Label ID="MAHOADONLabel" runat="server" Text='<%# Bind("MAHOADON") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
&nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />

        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\WebShopOnline.mdf;Integrated Security=True;Connect Timeout=30" DeleteCommand="DELETE FROM [HOADON] WHERE [IDHOADON] = @IDHOADON" InsertCommand="INSERT INTO [HOADON] ([IDNGUOIDUNG], [MAHOADON]) VALUES (@IDNGUOIDUNG, @MAHOADON)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [IDHOADON], [IDNGUOIDUNG], [MAHOADON] FROM [HOADON]" UpdateCommand="UPDATE [HOADON] SET [IDNGUOIDUNG] = @IDNGUOIDUNG, [MAHOADON] = @MAHOADON WHERE [IDHOADON] = @IDHOADON">
        <DeleteParameters>
            <asp:Parameter Name="IDHOADON" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="IDNGUOIDUNG" Type="Int32" />
            <asp:Parameter Name="MAHOADON" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="IDNGUOIDUNG" Type="Int32" />
            <asp:Parameter Name="MAHOADON" Type="String" />
            <asp:Parameter Name="IDHOADON" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <div>
        <br />
        <asp:Label ID="errmsg" runat="server" ForeColor="Red"/>  
    </div>
    <div>
        </br>
         <a class="bg-primary" href="purchaseManagment.aspx">Xem Danh Sách Hóa Đơn</a>
    </div>
</asp:Content>

