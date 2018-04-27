<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CphMain" Runat="Server">

    <div class="container">
        <script type="text/javascript" src="dinhdangchinhapso.js"></script>
			<div class="row">
				<div class="col-lg-12">
					<div class="heading"><h1><p class="text-info">LIÊN HỆ VỚI CHÚNG TÔI</p></h1></div>                
				</div>
				<div class="col-md-6" style="margin-bottom: 30px;">
					<form name="form1" id="ff" method="post" action="contact.php">
						<div class="form-group">
							<asp:TextBox ID="hoten" CssClass="form-control" runat="server" placeholder="Nhập tên*"></asp:TextBox>
                             <asp:RequiredFieldValidator runat="server" id="reqName4" controltovalidate="hoten" errormessage="Vui lòng nhập tên!" />
						</div>
						<div class="form-group">
							<input type="email" ID="eeeee" Class="form-control" placeholder="Nhập email*" required></input>
						</div>
						<div class="form-group">
							<input type="number" ID="number1" Class="form-control" placeholder="Nhập SĐT*" required></input>
						</div>
						<div class="form-group">
							<textarea class="form-control" placeholder="Nhập tin nhắn *" name="message" id="message" required data-validation-required-message="Vui lòng nhập tin nhắn."></textarea>
						</div>
						<button type="submit" class="btn btn-1">Gửi tin nhắn</button>
                        <button type="reset" class="btn btn-1" value="Reset">Reset</button>
					</form>
                        
				</div>
				<div class="col-md-6">
					<span class="glyphicon glyphicon-home" style="color:#00c6fc"></span><p>55 Phùng Hưng, P. Phúc La, Hà Đông, Hà Nội, Việt Nam </p>
					<span class="glyphicon glyphicon-earphone" style="color:#00c6fc"></span><p>084 +091 8866888111</p>
					<span class="glyphicon glyphicon-envelope" style="color:#00c6fc"></span><p>Tuan1998@gmail.com</p>
					<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3725.5390372896795!2d105.78163625065162!3d20.971018985961148!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135acd4e7d7f5a9%3A0x871e90be2f3115c5!2zNTUgUGjDuW5nIEjGsG5nLCBQaMO6YyBMYSwgSMOgIMSQw7RuZywgSMOgIE7hu5lpLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1524332151354" width="600" height="450" frameborder="0" style="border:#808080 solid 2px" allowfullscreen></iframe>
				</div>
			</div>
		</div>
</asp:Content>

