<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="mekle.aspx.cs" Inherits="yazilim_admin13062022.mekle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	 <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
	 <script>
        function tamam() {
            Swal.fire({
                /*position: 'top-end',*/
                icon: 'success',
                title: 'Kayıt Başarılı',
                showConfirmButton: false,
                timer: 1500
            }).then(function () {
                window.location = "mekle.aspx";
            });
        }
        function hata() {
            Swal.fire({
                /*position: 'top-end',*/
                icon: 'error',
                title: 'Beklemeyen bir hata oluştu. Lütfen daha sonra tekrar deneyiniz.!!!',
                showConfirmButton: false,
                timer: 1500
            }).then(function () {
                window.location = "mekle.aspx";
            });
        }
     </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-header">
	<div class="row">
	<div class="col-md-6 col-sm-12">
							<div class="title">
								<h4>Okuyucu</h4>
							</div>
							<nav aria-label="breadcrumb" role="navigation">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="index.aspx">AnaSayfa</a></li>
									<li class="breadcrumb-item active" aria-current="page">Okuyucu</li>
								</ol>
							</nav>
						</div>
		</div>
		</div>
	<div class="alert alert-success alert-dismissible fade show" id="kbasarili" role="alert" runat="server" visible="false">
								<strong>Kayıt Ekle!</strong> Başarılı
								<button type="button" class="close" data-dismiss="alert" aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="alert alert-warning alert-dismissible fade show" id="kbasarisiz" role="alert" runat="server" visible="false">
								<strong>Kayıt Ekle</strong> Başarısız!!!
								<button type="button" class="close" data-dismiss="alert" aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
			
		<div class="pd-ltr-20">
			<div class="card-box pd-20 height-100-p mb-30">				
	<div class="form-group row">
							<label class="col-sm-12 col-md-2 col-form-label">T.C. Kimlik No</label>
							<div class="col-sm-12 col-md-10">
								<asp:TextBox ID="TextBox1" CssClass="form-control" placeholder="1234678900" runat="server"></asp:TextBox>
								<%--<input class="form-control" type="text" placeholder="1234678900">--%>
							</div>
	</div>
	<div class="form-group row">
							<label class="col-sm-12 col-md-2 col-form-label">Ünvan</label>
					<div class="col-sm-12 col-md-10">
					<asp:DropDownList ID="DropDownList1" runat="server" Cssclass="custom-select2 form-control">
                        <asp:ListItem>Öğrenci</asp:ListItem>
                        <asp:ListItem>Öğretmen</asp:ListItem>
                        <asp:ListItem>Diğer</asp:ListItem>
                                    </asp:DropDownList>
					</div>
</div>
		<div class="form-group row">
							<label class="col-sm-12 col-md-2 col-form-label">Cinsiyet</label>
					<div class="col-sm-12 col-md-10">
					<asp:DropDownList ID="DropDownList2" runat="server" Cssclass="custom-select2 form-control">
                        <asp:ListItem>Bayan</asp:ListItem>
                        <asp:ListItem>Bay</asp:ListItem>
                        
                                    </asp:DropDownList>
					</div>
</div>	
				<div class="form-group row">
							<label class="col-sm-12 col-md-2 col-form-label">Doğum Tarih</label>
							<div class="col-sm-12 col-md-10">
								<asp:TextBox ID="TextBox2" CssClass="form-control date-picker" placeholder="Doğum Tarih Seçiniz" runat="server"></asp:TextBox>
								<%--<input class="form-control date-picker" placeholder="Doğum Tarih Seçiniz" type="text" runat="server">--%>
							</div>
						</div>
					<div class="form-group row">
						<label class="col-sm-12 col-md-2 col-form-label"></label>
						<div class="col-sm-12 col-md-10">
							<asp:Button ID="Button1" runat="server" Text="Ekle" Cssclass="btn btn-outline-primary" OnClick="Button1_Click"/>
			
							<%--&nbsp;<asp:Label ID="Label1" runat="server" Text=""></asp:Label>--%>
							
							</div>
						</div>
		</div>
			</div>

	
</asp:Content>
