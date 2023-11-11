<%-- 
    Document   : manage
    Created on : Jul 9, 2022, 2:16:53 AM
    Author     : SHD
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Manage Product</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
       
        <script>
            $(document).ready(function () {
                // Activate tooltip
                $('[data-toggle="tooltip"]').tooltip();

                // Select/Deselect checkboxes
                var checkbox = $('table tbody input[type="checkbox"]');
                $("#selectAll").click(function () {
                    if (this.checked) {
                        checkbox.each(function () {
                            this.checked = true;
                        });
                    } else {
                        checkbox.each(function () {
                            this.checked = false;
                        });
                    }
                });
                checkbox.click(function () {
                    if (!this.checked) {
                        $("#selectAll").prop("checked", false);
                    }
                });
            });
        </script>
    </head>
    <body>
        <div class="text-center">
            <a style="margin-left: 10px;margin-top: 20px;margin-bottom: 20px" href="home" class="btn btn-info"><span>Back To Home</span></a>
        </div>

        <div class="container-xl">
            <div class="table-responsive">
                <div class="table-wrapper">
                    <div class="table-title">
                        <div class="row">
                            <div class="col-sm-6">
                                <h2>Manage <b>Product</b></h2>
                            </div>
                            <div class="col-sm-6" >
                                <a href="#addEmployeeModal"  class="btn btn-success" data-toggle="modal"> <span>Add New Employee</span></a>
                            </div>
                        </div>
                    </div>
                    <table border="1" style="width: 100%">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Image</th>
                                <th>Price</th>
                                <th>Quantity</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>

                            <c:forEach items="${proList}" var="c">
                                <tr>
                                    <td>${c.id}</td>
                                    <td>${c.name}</td>
                                    <td><img style="height: 100px;width: 100px;" src="${c.image}"></img></td>
                                    <td>${c.sale_price}$</td>
                                    <td>${c.quantity}</td>
                                    <td>
                                        <a href="#editEmployeeModal${c.id}" class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">Edit</i></a>
                                        <a href="#deleteEmployeeModal${c.id}" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">Delete</i></a>
                                    </td>
                                </tr>
                                <!-- Edit Modal HTML -->
                            <div id="editEmployeeModal${c.id}" class="modal fade">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <form action="manage" method="post">
                                            <input type="hidden" name="action" value="edit">
                                            <input type="hidden" name="page" value="${page}">
                                            <input type="hidden" name="id" value="${c.id}">
                                            <div class="modal-header">						
                                                <h4 class="modal-title">Edit Product${c.id}</h4>
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                            </div>
                                            <div class="modal-body">					
                                                <div class="form-group">
                                                    <label>Name</label>
                                                    <input type="text" class="form-control" name="name" required value="${c.name}">
                                                </div>
                                                <div class="form-group">
                                                    <label>Image</label>
                                                    <input type="text" class="form-control" name="image" value="${c.image}" required>
                                                </div>
                                                <div class="form-group">
                                                    <label>Quantity</label>
                                                    <input type="text" class="form-control" name="quantity" value="${c.quantity}">
                                                </div>
                                                <div class="form-group">
                                                    <label>Price</label>
                                                    <input type="text" class="form-control" name="price"  value="${c.price}">
                                                </div>	
                                                <div class="form-group">
                                                    <label>Description</label>
                                                    <textarea type="text" class="form-control" name="description">${c.text}</textarea>
                                                </div>
                                            </div>
                                            <div class="modal-footer">
                                                <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                                                <input type="submit" class="btn btn-info" value="Save">
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <!-- Delete Modal HTML -->
                            <div id="deleteEmployeeModal${c.id}" class="modal fade">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <form action="manage" method="post">
                                            <input type="hidden" name="page" value="${page}">
                                            <input type="hidden" name="action" value="delete">
                                            <input type="hidden" name="id" value="${c.id}">
                                            <div class="modal-header">						
                                                <h4 class="modal-title">Delete Product</h4>
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                            </div>
                                            <div class="modal-body">					
                                                <p>Are you sure you want to delete this product?</p>
                                                <p class="text-warning"><small>This action cannot be undone.</small></p>
                                            </div>
                                            <div class="modal-footer">
                                                <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                                                <input type="submit" class="btn btn-danger" value="Delete">
                                            </div>
                                        </form>
                                    </div>
                                </div>

                            </div>
                        </c:forEach>


                        </tbody>
                    </table>
                    <div class="clearfix">
                        <div class="hint-text">Showing <b>12</b> out of <b>${totalProduct}</b> entries</div>
                        <ul class="pagination">
                            <li class="page-item disabled"><a href="#">Previous</a></li>
                                <c:forEach begin="1" end="${total}" var="c">
                                <li class="page-item ${c == page ? "active":""}"><a href="manage?page=${c}" class="page-link">${c}</a></li>
                                </c:forEach>


                            <li class="page-item"><a href="#" class="page-link">Next</a></li>
                        </ul>
                    </div>
                </div>
            </div>        
        </div>
        <!-- Edit Modal HTML -->
        <div id="addEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="manage" method="post">
                        <input type="hidden" name="page" value="${total}">
                        <input type="hidden" name="action" value="add">
                        <div class="modal-header">						
                            <h4 class="modal-title">Add Product</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">					
                            <div class="form-group">
                                <label>Name</label>
                                <input type="text" class="form-control" name="name" required value="${c.name}">
                            </div>
                            <div class="form-group">
                                <label>Image</label>
                                <input type="text" class="form-control" name="image" required>
                            </div>
                            <div class="form-group">
                                <label>Quantity</label>
                                <input type="text" class="form-control" name="quantity">
                            </div>
                            <div class="form-group">
                                <label>Price</label>
                                <input type="text" class="form-control" name="price">
                            </div>
                            <div class="form-group">
                                <label>Category</label>
                                <select class="form-control" name="category" style=" width: 170px;">
                      
                                    <c:forEach items="${catList}" var="u">
                                        <option value="${u.id}">${u.name}</option>
                                    </c:forEach>


                                </select>
                            </div>

                            <div class="form-group">
                                <label>Description</label>
                                <textarea type="text" class="form-control" name="description"></textarea>
                            </div>			
                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-success" value="Add">
                        </div>
                    </form>
                </div>
            </div>
        </div>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                </body>

</html>

