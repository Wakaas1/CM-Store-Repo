<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="emplist.aspx.cs" Inherits="CM_Store.Employee.emplist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../stdfiles/sweetalert.css" rel="stylesheet" />
    <link href="../stdfiles/dataTable.css" rel="stylesheet" />
    <style type="text/css">
          #example_wrapper{
            width:100%
        }
        input[type="search"]{
                border:1px solid #e3e6f0;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="datacontent" runat="server">
    <div id="elist" runat="server">
        <table id="example" class="table table-hover" style="width:100%;text-align:center">
                <thead>
                <tr style="height:50px;font-weight:bold;font-size:16px;background-color:#4e73df;color:white">
                    <th style="width:14%;text-align:center">Employee ID</th>
                    <th style="width:9%;text-align:center">Image</th>
                    <th style="width:17%;text-align:center">Name</th>
                    <th style="width:15%;text-align:center">Department</th>
                    <th style="width:17%;text-align:center">Designation</th>
                    <th style="width:11%;text-align:center">Phone</th>
                    <th style="width:9%;text-align:center"></th>
                    <th style="width:9%;text-align:center"></th>
                </tr>
                </thead>
                <tbody id="myTable" runat="server">
                    <tr>
                        <td>CIIT/VHR/VE-276</td>
                        <td><img src="../Images/User.png" style="width:70px;height:70px" /></td>
                        <td>Shivani Tiwari</td>
                        <td>Computer Science</td>
                        <td>Lecturer</td>
                        <td>03331111111</td>
                        <td><a href="#"></a><li class="fa fa-trash" style="font-size:20px"></li>Delete</a></td>
                        <td><a href="#>"<li class="fa fa-edit" style="font-size:20px"></li>Edit</a></td>
                    </tr>
                </tbody>
            </table>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scriptcontent" runat="server" >
    <script src="../stdfiles/sweetalert.js"></script>
    <script src="../stdfiles/alertFn.js"></script>
    <script src="../stdfiles/jquery.dataTables.js"></script>
       <script type="text/javascript">
           $(document).ready(function () {
               $('#example').dataTable({
                   "columns": [
                       { "width": "14%" },
                       { "width": "9%" },
                       { "width": "17%" },
                       { "width": "15%" },
                       { "width": "17%" },
                       { "width": "11%" },
                       { "width": "8%" },
                       { "width": "9%" },
                   ]
               });
           });
       </script>
</asp:Content>
