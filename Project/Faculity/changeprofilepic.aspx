<%@ Page Title="" Language="C#" MasterPageFile="~/HOD.Master" AutoEventWireup="true" CodeBehind="changeprofilepic.aspx.cs" Inherits="CM_Store.Faculity.changeprofilepic" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../stdfiles/jquery.min.js"></script>
    <script src="../stdfiles/changepicture.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="datacontent" runat="server">
  <form id="form1" runat="server">
    <table>
        <tr style="height:500px">
            <td style="width:50%">
                  <div style="width:90%;background-color:white;padding:2%;border:1px solid rgb(221,221,221)">
                            <img src="../Images/User.png" id="img-upload" style="width:100%;height:460px" alt="preview Image" />
                        </div>
            </td>
             <td style="width:50%">
                 <div id="errormsg" runat="server">
                     <div>
                         <asp:FileUpload ID="imgInp" runat="server" CssClass="form-control" style="width=90%" readonly />
                         <br />
                         <asp:Button ID="btnupload" runat="server" Text="Upload Picture" style="width:200px;height:45px;font-weight:bold;font-size:20px" />
                     </div>
                 </div>
            </td>
        </tr>
    
    </table>
      </form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scriptcontent" runat="server">
</asp:Content>
