<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="account.aspx.cs" Inherits="account" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CphMain" Runat="Server">
    
    <div class="container">
			<div class="row">
				<div class="col-lg-12">
					<ul class="breadcrumb">
						<li><a href="Default.aspx">TRANG CHỦ</a></li>
						<li><a href="account.aspx">Tài Khoản</a></li>
					</ul>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6">
					<div class="heading"><h2>Đăng nhập</h2></div>
					<form name="form1" id="ff1" method="post" action="login.php">
						<div class="form-group">
							<asp:TextBox id="t1" runat="server"  CssClass="form-control" ></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" id="reqName" controltovalidate="t1" errormessage="Vui lòng nhập tên đăng nhập!" />
						</div>
						<div class="form-group">
							<asp:TextBox id="t2" runat="server" CssClass="form-control" ></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" id="reqName1" controltovalidate="t2" errormessage="Mật khẩu không được bỏ trống" />
						</div>
						<asp:Button CssClass="btn btn-1" runat="server" Text="Đăng Nhập" OnClick="login_Click" />
						<a href="#" id="quenmk">Quên mật khẩu? </a>
					</form>
				</div>
				<div class="col-md-6">
					<div class="heading"><h2>Chưa có tài khoản ? Tạo mới .</h2></div>
					<form name="form2" id="ff2" method="post" action="register.php">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="Tên đầu :" name="firstname" id="firstname" required>
						</div>
						<div class="form-group">
							<input type="text" class="form-control" placeholder="Tên cuối :" name="lastname" id="lastname" required>
						</div>
						<div class="form-group">
							<input type="email" class="form-control" placeholder="Địa chỉ Eemail :" name="email" id="Tel1" required>
						</div>
						<div class="form-group">
							<input type="number" class="form-control" placeholder="Số điện thoại :" name="phone" id="phone" required>
						</div>
						<div class="form-group">
							<input name="gender" id="gender" type="radio"> Nam <input name="gender" id="Radio1" type="radio"> Nữ 
						</div>
						<div class="form-group">
							<input type="password" class="form-control" placeholder="Mật khẩu :" name="password" id="password" required>
						</div>
						<div class="form-group">
							<input type="password" class="form-control" placeholder="Nhập lại mật khẩu :" name="repassword" id="repassword" required>
						</div>
						<div class="form-group">
							<input name="agree" id="agree" type="checkbox" > Tôi đồng ý với điều khoản của Website
						</div>
						<button type="submit"  onclick="this.form.action="somethingelse" class="btn btn-1">Tạo</button>
           
					</form>
				</div>
			</div>
		</div>
</asp:Content>

