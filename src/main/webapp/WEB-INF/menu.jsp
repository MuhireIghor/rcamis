<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<div class="w-full bg-white p-8 border-2 border-sky-200">
	<c:choose>
		<c:when
			test="${authenticatedUser !=null && authenticatedUser.userRole eq 'ADMINISTRATOR'}">
			<%@ include file="adminmenu.jsp"%>
		</c:when>
		<c:when
				test="${authenticatedUser !=null && page eq 'Create Course'}">
			<%@ include file="coursemenu.jsp"%>
		</c:when>
		<c:when
			test="${authenticatedUser !=null && authenticatedUser.userRole eq 'EMPLOYEE'}">
			<%@ include file="adminmenuemployee.jsp"%>
		</c:when>
		<c:otherwise>

		</c:otherwise>
	</c:choose>
</div>