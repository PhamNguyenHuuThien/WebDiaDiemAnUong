<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebDiaDiemAnUong.LienHe.Default1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Tieude" runat="server">
    Liên hệ
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class='form'>
      <form name='formlienhe' action="" method="post">
		  <br>
		  <h1>Liên hệ</h1>
		  <br>
        <p>Họ tên:<span id="required">*</span></p>
        <input id='name' size='30' type='text' value=''/>
        <p>E-mail: <span id="required">*</span></p>
        <input id='email' size='30' type='text' value=''/>
		<br>
		  <br>
		 <p>Bạn cần: <span id="required">*</span></p><br>
		<input name='luachon' type='radio' value='Yêu cầu' />Yêu cầu 
		<input name='luachon' type='radio' value='Góp ý' />Góp ý
		<input checked='checked' name='luachon' type='radio' value='Cần hỗ trợ' />Cần hỗ trợ
		<br>
		  <br>
        <p>Nội dung: <span id="required">*</span></p>
        <textarea  cols='50' id='email-message' rows='10'></textarea>
		  <br>
        <input  type='button' id='button' onclick="kiemtra();" value='Gửi đi' />

      </form>
  </div>
</asp:Content>
