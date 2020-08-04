<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="../resources/css/memberEdit.css">

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>


<script>
$(document).ready(function(){
	// Activate tooltip
	$('[data-toggle="tooltip"]').tooltip();
	
	// Select/Deselect checkboxes
	var checkbox = $('table tbody input[type="checkbox"]');
	$("#selectAll").click(function(){
		if(this.checked){
			checkbox.each(function(){
				this.checked = true;                        
			});
		} else{
			checkbox.each(function(){
				this.checked = false;                        
			});
		} 
	});
	checkbox.click(function(){
		if(!this.checked){
			$("#selectAll").prop("checked", false);
		}
	});
});
</script>
</head>
<body>
	<jsp:include page="adminHeader.jsp"></jsp:include>
	<br><br><br><br><br><br><br><br>
	<h1>직원관리</h1>
	<br><br>
	
<div class="container-fluid">
	<div class="table-responsive">
		<div class="table-wrapper">
			<div class="table-title">
				<div class="row">
					<div class="col-sm-6">
						<h2>직원 <b>관리</b></h2>
					</div>
					<div class="col-sm-6">
						<a href="#addEmployeeModal" class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>직원 추가</span></a>
						<a href="#deleteEmployeeModal" class="btn btn-danger" data-toggle="modal"><i class="material-icons">&#xE15C;</i> <span>직원 삭제</span></a>						
					</div>
				</div>
			</div>
			<table class="table table-striped table-hover">
				<thead class="text-right">
					<tr>
						<th>
							<span class="custom-checkbox">
								<input type="checkbox" id="selectAll">
								<label for="selectAll"></label>
							</span>
						</th>
						<th>이름</th>
						<th>ID</th>
						<th>이메일</th>
						<th>Phone</th>
						<th>주소</th>
						<th>부서</th>
						<th>직급</th>
						<th>연봉</th>
						<th>입사일</th>
					</tr>
				</thead>
				<tbody class="text-right">
				<%@ include file="../database/dbconn.jsp" %>
						<%
							PreparedStatement pstmt = null;
							ResultSet rs = null;
							
							String member = "select * from member";
							pstmt = conn.prepareStatement(member);
							rs = pstmt.executeQuery();
							while(rs.next()){
							
						%>
					<tr>
						<td>
							<span class="custom-checkbox">
								<input type="checkbox" id="checkbox1" name="options[]" value="1">
								<label for="checkbox1"></label>
							</span>
						</td>
						
						<td><%= rs.getString("name") %></td>
						<td><%= rs.getString("id") %></td>
						<td><%= rs.getString("email") %></td>
						<td><%= rs.getString("phone") %></td>
						<td><%= rs.getString("address") %></td>
						<td><%= rs.getString("department") %></td>
						<td><%= rs.getString("rank") %></td>
						<td><%= rs.getString("salary") %></td>
						<td><%= rs.getString("regdate") %></td>
						
						<td style="width:10%;">
							<a href="#editEmployeeModal" class="edit" data-toggle="modal" data-id="<%=rs.getString("id") %>" data-password="<%=rs.getString("password") %>" data-name="<%=rs.getString("name") %>" data-email="<%=rs.getString("email") %>" data-phone="<%=rs.getString("phone") %>" data-address="<%=rs.getString("address") %>" data-department="<%=rs.getString("department") %>" data-rank="<%=rs.getString("rank") %>" data-salary="<%=rs.getString("salary") %>"
							data-regdate="<%=rs.getString("regdate") %>"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
							<a href="#deleteEmployeeModal" class="delete" data-toggle="modal" data-id="<%=rs.getString("id") %>"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
						</td>
					</tr>
					<%
					}
					%>
				</tbody>
			</table>
			<div class="clearfix">

				<!--  <div class="hint-text">Showing <b>5</b> out of <b>25</b> entries</div> -->
				
				<ul class="pagination" id="pagination-demo">
					<!--  <li class="page-item disabled"><a href="#">이전</a></li> -->
					<li class="page-item active"><a href="#" class="page-link">1</a></li>
					<!-- <li class="page-item"><a href="#" class="page-link">2</a></li>
					<li class="page-item"><a href="#" class="page-link">3</a></li>
					<li class="page-item"><a href="#" class="page-link">4</a></li>
					<li class="page-item"><a href="#" class="page-link">5</a></li>
					<li class="page-item"><a href="#" class="page-link">다음</a></li>  -->
				</ul>
			</div> 
			
			
			
			
		</div>
	</div>        
</div>




<!-- 사원추가 모달창 -->
<div id="addEmployeeModal" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<form action="processAddMember.jsp" method="post">
				<div class="modal-header">						
					<h4 class="modal-title">사원 추가</h4>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				</div>
				<div class="modal-body">					
					<div class="form-group">
						<label>ID</label>
						<input type="text" class="form-control" name="id" required>
					</div>
					<div class="form-group">
						<label>비밀번호</label>
						<input type="text" class="form-control" name="password" required>
					</div>
					<div class="form-group">
						<label>이름</label>
						<input type="text" class="form-control" name="name" required>
					</div>
					<div class="form-group">
						<label>Email</label>
						<input type="email" class="form-control"  name="email"
						required>
					</div>
					<div class="form-group">
						<label>Phone</label>
						<input type="text" class="form-control"  name="phone" required>
					</div>
					<div class="form-group">
						<label>주소</label>
						<textarea class="form-control"  name="address" required></textarea>
					</div>
					<div class="form-group">
						<label>부서</label>
						<input type="text" class="form-control"  name="department" required>
					</div>
					<div class="form-group">
						<label>직급</label>
						<input type="text" class="form-control"  name="rank" required>
					</div>
					<div class="form-group">
						<label>연봉</label>
						<input type="text" class="form-control"  name="salary" required>
					</div>
					<div class="form-group">
						<label>입사일</label>
						<input type="date" class="form-control"  name="regdate" required>
					</div>					
				</div>
				<div class="modal-footer">
					<input type="button" class="btn btn-default" data-dismiss="modal" value="취소">
					<input type="submit" class="btn btn-success" value="추가">
				</div>
			</form>
		</div>
	</div>
</div>


<!-- 사원수정 모달창 -->
<div id="editEmployeeModal" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<form action="processUpdateMember.jsp" method="post">
				<div class="modal-header">						
					<h4 class="modal-title">사원정보 수정</h4>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				</div>

				 <div class="modal-body">
					 <div class="form-group">
						<label>ID</label>
						<input name="id"  type="text" class="form-control"  required readonly="readonly">
					</div>
					<div class="form-group">
						<label>비밀번호</label>
						<input name="password" type="text" class="form-control"  required>
					</div>
					<div class="form-group">
						<label>이름</label>
						<input name="name" type="text" class="form-control" required>
					</div>
					<div class="form-group">
						<label>Email</label>
						<input name="email" type="email" class="form-control" required>
					</div>
					<div class="form-group">
						<label>Phone</label>
						<input name="phone" type="text" class="form-control" required>
					</div>
					<div class="form-group">
						<label>주소</label>
						<input name="address" type="text" class="form-control" required>
					</div>
					<div class="form-group">
						<label>부서</label>
						<input name="department" type="text" class="form-control" required>
					</div>
					<div class="form-group">
						<label>직급</label>
						<input name="rank" type="text" class="form-control"  required>
					</div>
					<div class="form-group">
						<label>연봉</label>
						<input name="salary" type="text" class="form-control" required>
					</div>
					<div class="form-group">
						<label>입사일</label>
						<input name="regdate" type="date" class="form-control"  required>
					</div>						
				</div> 
	
				<div class="modal-footer">
					<input type="button" class="btn btn-default" data-dismiss="modal" value="취소">
					<input type="submit" class="btn btn-info" value="수정">
				</div>
			</form>
		</div>
	</div>
</div>


<!-- 사원삭제 모달창 -->
<div id="deleteEmployeeModal" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<form action="processDeleteMember.jsp" method="post">
				<div class="modal-header">						
					<h4 class="modal-title">사원 삭제</h4>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				</div>
				<div class="modal-body">		
					<input type="hidden" name="id"/>			
					<p>정말로 삭제하시겠습니까?</p>
					<p class="text-warning"><small>맞으면 삭제를 눌러주세요</small></p>
				</div>
				<div class="modal-footer">
					<input type="button" class="btn btn-default" data-dismiss="modal" value="취소">
					<input type="submit" class="btn btn-danger" value="삭제">
				</div>
			</form>
		</div>
	</div>
</div>
<%
	if(rs!= null) rs.close();
	if(pstmt!= null) pstmt.close();
	if(conn!= null) conn.close();
%>
</body>

<script>
	$('#editEmployeeModal').on('show.bs.modal',function(event){
		var button = $(event.relatedTarget);        var empName = button.data('name');
        var empId = button.data('id');
        var empPassword = button.data('password');
        var empEmail = button.data('email');
        var empPhone = button.data('phone');
        var empAddress = button.data('address');
        var empDepartment = button.data('department');
        var empRank = button.data('rank');
        var empSalary = button.data('salary');
        var empRegdate = button.data('regdate');
		var modal =$(this);	
		modal.find('#empId').text(empId);
		
		$("#editEmployeeModal").find('input[name="name"]').val(empName); 
		$("#editEmployeeModal").find('input[name="id"]').val(empId); 
		$("#editEmployeeModal").find('input[name="password"]').val(empPassword); 
		$("#editEmployeeModal").find('input[name="email"]').val(empEmail); 
		$("#editEmployeeModal").find('input[name="phone"]').val(empPhone); 
		$("#editEmployeeModal").find('input[name="address"]').val(empAddress); 
		$("#editEmployeeModal").find('input[name="department"]').val(empDepartment); 
		$("#editEmployeeModal").find('input[name="rank"]').val(empRank); 
		$("#editEmployeeModal").find('input[name="salary"]').val(empSalary); 
		$("#editEmployeeModal").find('input[name="regdate"]').val(empRegdate); 
		
		
		console.log(empId);
	}); 
	
	$('#deleteEmployeeModal').on('show.bs.modal',function(event){
		 var button = $(event.relatedTarget);
		 var empId = button.data('id');
		 var modal =$(this);	
		 modal.find('#empId').text(empId);
		 
		 $("#deleteEmployeeModal").find('input[name="id"]').val(empId); 
		 console.log(empId);
	}); 
	
	
	
	
</script>

</html>