﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="viewdesignations.aspx.cs" Inherits="CM_Store.Inventory.viewdesignations" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../stdfiles/dataTable.css" rel="stylesheet" />
   
        <style type="text/css">
            #example_wrapper{
             width:90%;
                padding-left:10%;
            }
            input[type="search"]{
                border:1px solid #e3e6f0;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="datacontent" runat="server">
      <div id="mainviewbox" runat="server">
        <div id="viewbox" runat="server">
             <table id='example' class='table table-hover' style='width:100%;text-align:center'>
                 <thead>
                <tr style='height:45px;font-weight:bold;font-size:16px;background-color:#4e73df;color:white'>
                    <th style='width:10%;text-align:center'>*</th>
                    <th style='width:60%;text-align:left;padding-left:20%'>Designation Name</th>
                    <th style='text-align:center'></th>
                </tr>
                 </thead>
             <tbody id='myTable'>
                 <tr>
                     <td>1</td>
                     <td>Lecturer</td>
                     <td><a href="#"><i class="fa fa-trash" style="font-size:20px"></i> Delete</a></td>
                 </tr>
                 <tr>
                     <td>2</td>
                     <td>Lecturer</td>
                     <td><a href="#"><i class="fa fa-trash" style="font-size:20px"></i> Delete</a></td>
                 </tr>
               </tbody>
            </table>
        </div>
     
     </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scriptcontent" runat="server">
      <script src="../stdfiles/jquery.dataTables.js"></script>
    
      <script type="text/javascript">
        $(document).ready(function () {
            $('#example').dataTable({
                "columns": [
                    { "width": "10%"},
                    { "width": "65%"},
                    { "width": "25%"}
                ]
            });
        });
      </script>
</asp:Content>