<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="viewemployeeassets.aspx.cs" Inherits="CM_Store.Employee.viewemployeeassets" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../chartfiles/Loader.js"></script>
    <script src="../chartfiles/faculty.js"></script>
    <style  type="text/css">
        h2{
            font:bold 25px/1 'pT Sans narrow', sans-serif;
            color:#666;
            text-align:center
        }
        #wrapper #content-wrapper{
            background-color:white;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="datacontent" runat="server">
    <div id="alertmsg" runat="server"></div>
    <div style="width:100%">
        <h2>Assets To Shivani Tiwari</h2>
        <div style="background-color:#1cc881;height:1px;border-radius:5px;margin-bottom:30px"></div>
        <div id="faculty_div" style="width:100%;height:450px;font-weight:bold;padding:15px"></div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scriptcontent" runat="server">
    <script type="text/javascript">
        function closefunction() {
            $("alertmsg").slideUp();
        }
    </script>
</asp:Content>
