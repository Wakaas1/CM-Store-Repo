<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="viewdepts.aspx.cs" Inherits="CM_Store.Inventory.viewdepts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../stdfiles/dataTable.css" rel="stylesheet" />

      <style type="text/css">
        #example_wrapper{
            width:80%;
            padding-left:20%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="datacontent" runat="server">
      <div id="mainviewbox" runat="server">
        <div id="viewbox" runat="server">
            <table id='example' class='table table-hover' style='width:50%;text-align:center'>
                <thead>
                <tr style='height:45px;font-weight:bold;font-size:16px;background-color:#4e73df;color:white'>
                    <th style='width:10%;text-align:center'>*</th>
                    <th style='width:75%;text-align:left;padding-left:10%'>Department Name</th>
                    <th style='text-align:center'></th>
                </tr>
                    </thead>
             <tbody id='myTable'>
                 <tr>
                     <td>1</td>
                     <td>Computer Science</td>
                     <td><a href="#"><i class="fa fa-trash" style="font-size:20px"></i> Delete</a></td>
                 </tr>
               </tbody>
            </table>
        </div>
         <div class="col-md-12 text-right">
            <ul class="pagination pagination-lg pager" id="myPager" style="margin-top:10px"></ul>
                        
        </div>
     </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scriptcontent" runat="server">
      <script src="../stdfiles/jquery.dataTables.js"></script>
    <script src="../stdfiles/Pagination.js"></script>  
      <script type="text/javascript">
          $(document).ready(function () {
              $('#example').dataTable({
                  "columns": [
                      { "width": "10%" },
                      { "width": "65%" },
                  ],
                  searching: false
              });
          });
      </script>
</asp:Content>
