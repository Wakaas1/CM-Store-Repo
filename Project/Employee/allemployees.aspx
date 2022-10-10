<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="allemployees.aspx.cs" Inherits="CM_Store.Employee.allemployees" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../stdfiles/dataTable.css" rel="stylesheet" />
    <style type="text/css">
       #example{
           width:100%;
           margin-top:40%
       }
        .employeesinfo tr td{
            border:1px solid #1cc88a;
        }
        #myTable tr{
            height:40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="datacontent" runat="server">
     <form id="form1" runat="server">
    <table id="employeesinfo" class="employesinfo" runat="server" style="width:96%;margin-left:2%;margin-right:3%">
        <tr>
            <td colspan="4" style="border=none">
                <div id="searchResult" runat="server"></div>
            </td>
        </tr>
        <tr>
            <td style="width:30%">
                <asp:DropDownList ID="deptlist" runat="server" CssClass="form-control" style="width:200px;height:34px; margin:0px" AutoPostBack="true" >
                    <asp:ListItem Selected="True">Computer Science</asp:ListItem>
                    <asp:ListItem>Management Science</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="width:30%">
                <asp:DropDownList ID="Desiglist" runat="server" CssClass="form-control" style="width:200px;height:34px;margin:0px" AutoPostBack="true" >
                    <asp:ListItem Selected="True">Lecturer</asp:ListItem>
                    <asp:ListItem>Assistent Professor</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="width:30%">
                <asp:Button ID="btnissueitems" Text="Issue Items" runat="server" style="background-color:#222d32;color:white;width:120px;height:34px;font-size:20px;font-weight:normal;border:1px solid white" />
            </td>
        </tr>
    </table>
          <table id='example' class='table table-hover' style='width:100%;text-align:center'>
                 <thead>
                <tr style='height:45px;font-weight:bold;font-size:16px;background-color:#222d32;color:white'>
                    <th style='width:5%;text-align:center'>#</th>
                    <th style='width:25%;text-align:center'>Name</th>
                    <th style='width:25%;text-align:center'>Department</th>
                    <th style='width:25%;text-align:center'>Designation</th>
                    <th style='text-align:center'></th>
                </tr>
                     </thead>
                <tbody id='myTable'>
                    <tr>
                        <td>1</td>
                        <td>Safia</td>
                        <td>Admin</td>
                        <td>Purchase Officer</td>
                        <td>
                            <a href="viewemployeeassets.aspx">
                                <i class="fa fa-eye" style="font-size:16px"></i>
                                &nbsp;&nbsp;&nbsp;&nbsp; View
                            </a>
                        </td>
                    </tr>
                       <tr>
                        <td>2</td>
                        <td>Sattya Nudella</td>
                        <td>Computer Science</td>
                        <td>Assistant Professor</td>
                        <td>
                            <a href="viewemployeeassets.aspx">
                                <i class="fa fa-eye" style="font-size:16px"></i>
                                &nbsp;&nbsp;&nbsp;&nbsp; View
                            </a>
                        </td>
                    </tr>
                       <tr>
                        <td>3</td>
                        <td>Arif Malik</td>
                        <td>Statistics</td>
                        <td>Lecturer</td>
                        <td>
                            <a href="viewemployeeassets.aspx">
                                <i class="fa fa-eye" style="font-size:16px"></i>
                                &nbsp;&nbsp;&nbsp;&nbsp; View
                            </a>
                        </td>
                    </tr>
                     <tr>
                        <td>4</td>
                        <td>Arifa</td>
                        <td>Economics</td>
                        <td>Lecturer</td>
                        <td>
                            <a href="viewemployeeassets.aspx">
                                <i class="fa fa-eye" style="font-size:16px"></i>
                                &nbsp;&nbsp;&nbsp;&nbsp; View
                            </a>
                        </td>
                    </tr>

                 </tbody>
              </table>
  </form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scriptcontent" runat="server">
    <script src="../stdfiles/jquery.dataTables.js"></script>
    <script type="text/javascript">
           $(document).ready(function () {
               $('#example').dataTable({
                   "columns": [
                       { "width": "5%" },
                       { "width": "25%" },
                       { "width": "25%" },
                       { "width": "25%" },                    
                       { "width": "20%" }                    
                   ],
                   searching: false
               });
           });
    </script>
</asp:Content>
