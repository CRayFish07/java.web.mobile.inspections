<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add DragonBallUser Form</title>
<link rel="stylesheet" href="../../lib/css/bootstrap.min.css" />
<link rel="stylesheet" href="../../css/app.css" />
</head>
<body>
 <div class="panel panel-default">
    <div class="panel-heading">
      <span class="lead">DragonBallUser Add Form </span>
    </div>
    <div class="formcontainer">
      <form action="users-edit-action.jsp" method="post" class="form-horizontal mi-form-horizontal">
        <div class="row">
          <div class="form-group col-md-12">
            <label class="col-md-2 control-lable" for="username">Username</label>
            <div class="col-md-7">
              <input type="text" name="username" class="form-control input-sm" />
              </td>
            </div>
          </div>
        </div>

        <div class="row">
          <div class="form-group col-md-12">
            <label class="col-md-2 control-lable" for="email">Email</label>
            <div class="col-md-7">
              <input type="email" name="email" class="form-control input-sm"
                value="@dbz.com" />
              </td>
            </div>
          </div>
        </div>

        <div class="row">
          <div class="form-group col-md-12">
            <label class="col-md-2 control-lable" for="age">Age</label>
            <div class="col-md-7">
              <input type="text" name="age" class="form-control input-sm"
                value="1" />
              </td>
            </div>
          </div>
        </div>

        <div class="row">
          <div class="form-group col-md-12">
            <label class="col-md-2 control-lable" for="powerLevel">Power Level</label>
            <div class="col-md-7">
              <input type="text" name="powerLevel" class="form-control input-sm"
                value="1" />
              </td>
            </div>
          </div>
        </div>

        <div class="row">
          <div class="form-group col-md-12">
            <label class="col-md-2 control-lable" for="stamina">Stamina</label>
            <div class="col-md-7">
              <input type="text" name="stamina" class="form-control input-sm"
                value="1" />
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
