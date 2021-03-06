<%@ page import="java.util.*"%>
<%@ page import="ar.com.nicobrest.mobileinspections.service.DragonBallUserService"%>
<%@ page import="ar.com.nicobrest.mobileinspections.model.DragonBallUser"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit DragonBallUser Form</title>
<link rel="stylesheet" href="../../lib/css/bootstrap.min.css" />
<link rel="stylesheet" href="../../css/app.css" />
</head>
<body>
  <%-- TODO: I had to use the username as parameter because the id is of type Long, and
  since the method getDragonBallUser is overloaded for strings and longs, when I passed
  the id from the jsp, the method was invoked with a String parameter searching by the
  username instead of a Long parameter searching by id.
  See how I can do to pass the id so it is recognized as a Long when the method is overloaded --%>
  <c:set var="username" value="${param.username}"></c:set>
  <c:set var="dragonBallUser" value="${dragonBallUserService.getDragonBallUser(username)}"></c:set>

  <div class="panel panel-default">
    <div class="panel-heading">
      <span class="lead">DragonBallUser Edit Form </span>
    </div>
    <div class="formcontainer">
      <form action="users-edit-action.jsp" method="post" class="form-horizontal mi-form-horizontal">
        <input type="hidden" name="id" value="${dragonBallUser.getId()}" />
        <div class="row">
          <div class="form-group col-md-12">
            <label class="col-md-2 control-lable" for="username">Username</label>
            <div class="col-md-7">
              <input type="text" name="username" class="form-control input-sm"
                value="${dragonBallUser.getUsername()}" />
              </td>
            </div>
          </div>
        </div>

        <div class="row">
          <div class="form-group col-md-12">
            <label class="col-md-2 control-lable" for="email">Email</label>
            <div class="col-md-7">
              <input type="email" name="email" class="form-control input-sm"
                value="${dragonBallUser.getEmail()}" />
              </td>
            </div>
          </div>
        </div>

        <div class="row">
          <div class="form-group col-md-12">
            <label class="col-md-2 control-lable" for="age">Age</label>
            <div class="col-md-7">
              <input type="text" name="age" class="form-control input-sm"
                value="${dragonBallUser.getAge()}" />
              </td>
            </div>
          </div>
        </div>

        <div class="row">
          <div class="form-group col-md-12">
            <label class="col-md-2 control-lable" for="powerLevel">Power Level</label>
            <div class="col-md-7">
              <input type="text" name="powerLevel" class="form-control input-sm"
                value="${dragonBallUser.getPowerLevel()}" />
              </td>
            </div>
          </div>
        </div>

        <div class="row">
          <div class="form-group col-md-12">
            <label class="col-md-2 control-lable" for="stamina">Stamina</label>
            <div class="col-md-7">
              <input type="text" name="stamina" class="form-control input-sm"
                value="${dragonBallUser.getStamina()}" />
              </td>
            </div>
          </div>
        </div>

        <div class="row">
          <div class="form-actions floatRight">
            <input type="submit" value="Submit" class="btn btn-primary btn-sm" />
          </div>
        </div>
      </form>
    </div>
  </div>

  <input type="button" value="Home" class="btn btn-basic custom-width" style="margin-right:5px"
    onclick="window.location.href='../../'">
  <input type="button" value="List DragonBallUsers" class="btn btn-primary custom-width"
    onclick="window.location.href='users-list.jsp'">

</body>
</html>
