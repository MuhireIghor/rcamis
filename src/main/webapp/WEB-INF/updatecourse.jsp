<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<jsp:include page="headeradmin.jsp"><jsp:param
        name="title" value="Update Course" />
</jsp:include>
<div id="bg-white w-full">
  <div class="flex items-center justify-center w-full">
    <form action="updatecourse.php?page=updatecourse&&id=${course.id}" method="post" class="w-1/2 mx-auto h-2/3 bg-white shadow-md shadow-indigo-200 border border-blue-500 rounded" >
      <div class="w-full flex justify-center">

        <div class="w-20 h-20 flex items-center justify-center rounded-full bg-white shadow-md">
          <img src="images/rcalogo.png" alt="rcalog" class="object-fit" width="50" height="60"/>
        </div>

      </div>
      <div class="flex flex-col space-y-4 p-4 w-2/3 mx-auto">
        <p  class="text-center text-xl text-blue-500">
          <b>Enter Course Details</b>
        </p>
        <c:if test="${message != null}">

          <p class="text-center text-red-500">
           ${message}
          </p>

        </c:if>

            <input type="text" value="${course.name}" size="25" maxlength="50"
                                    name="name" id="name"  class="block border rounded w-full outline-none p-2" />


          <input type="text" size="25"
                                    maxlength="50" value="${course.code}" name="code" id="code"  class="block border rounded w-full outline-none p-2" />
        <input type="number" size="50" maxlength="50"
                                    value="${course.minStudent}" name="minStudent" id="minStudent"  class="block border rounded w-full outline-none p-2" />
<input type="number" size="50" maxlength="50"
                                    value="${course.maxStudent}"   name="maxStudent" id="maxStudents"  class="block border rounded w-full outline-none p-2" />
  <input type="date" size="50" maxlength="50"
                                    value="${start}"   name="dateIn" id="dateIn"  class="block border rounded w-full outline-none p-2" />
   <input type="date" size="50" maxlength="50"
                                    value="${end}"   name="dateEnd" id="dateEnd"  class="block border rounded w-full outline-none p-2" />

    <p>Is Canceled</p>
            <c:choose>
              <c:when test="${course.isCancelled()}">

                <p>Yes <input type="radio" value="YES" name="isCanceled" id="isYes" checked ></p>
                <p>Yes <input type="radio" value="NO" name="isCanceled" id="isNo"></p>
              </c:when>
              <c:otherwise>
                <p>No <input type="radio" value="NO" name="isCanceled" id="isNo" checked></p>
                <p>Yes <input type="radio" value="YES" name="isCanceled" id="isYes" ></p>
              </c:otherwise>
            </c:choose>


<input type="submit" name="updateCourse"
                                    value="Update Course"   class="block bg-blue-500 w-full p-4 rounded text-white text-center " />

      </div>

    </form>

  </div>

</div>
<%@ include file="footer.jsp"%>