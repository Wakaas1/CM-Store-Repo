<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="teachers.aspx.cs" Inherits="CM_Store.teachers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-table100">
            <div class="wrap-table100">
                <div class="table100 ver1 m-b-110">
                    <table data-vertable="ver1">
                        <thead>
                            <tr class="row100 head">
                                <th class="column100 column1" data-column1 ="column1">TEACHER</th>
                                <th class="column100 column2" data-column1 ="column2">DEPARTMENT</th>
                                <th class="column100 column3" data-column1 ="column3">DESIGNATION</th>
                                <th class="column100 column4" data-column1 ="column4">SUBJECT</th>                                
                            </tr>
                        </thead>
                        <tbody id="tablebody" runat="server">

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
