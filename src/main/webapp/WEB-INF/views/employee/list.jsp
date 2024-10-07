<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<c:import url="../templates/header.jsp"></c:import>

<title>List</title>
</head>
<body>
	<div class="wrapper">
		<div class="main-panel">
			<div class="main-header">
				<c:import url="../templates/sidebar.jsp"></c:import>
				<c:import url="../templates/topbar.jsp"></c:import>
			</div>

			<div class="container">
				<div class="page-inner">
					<div class="card">
						<div class="card-header">
							<h1>List</h1>
						</div>
						<div class="card-body">
							<div class="col-md-6 ms-auto me-auto">
								<table class="table mt-4">
									<thead>
										<tr>
											<th scope="col">사번</th>
											<th scope="col">이름</th>
											<th scope="col">부서</th>
											<th scope="col">상태</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${list}" var="list">
											<button>
												<tr>
													<td>${list.empNum}</td>
													<td>${list.empName}</td>
													<td>${list.deptNum}</td>
													<td><c:choose>
															<c:when test="${list.enabled}">재직</c:when>
															<c:otherwise>퇴직</c:otherwise>
														</c:choose></td>
												</tr>
											</button>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>

			<c:import url="/WEB-INF/views/templates/footer.jsp"></c:import>
		</div>
	</div>

	<c:import url="../templates/bootfooter.jsp"></c:import>
</body>
</html>