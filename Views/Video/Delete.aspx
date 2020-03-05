<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Delete</title>
</head>
<body>
    <h1>Quieres Eliminar un video¿?</h1>
    <h4>para regresar al menu pulsa aqui <a href="/Home/Index">aqui</a></h4>
    <form action="/Video/Delete" method="post">
    <fieldset>
    <legend>Para Eliminar el video pon su identificador aqui</legend>
    
    <label for="idVideo">Numero de video que deseas eliminar</label>
    <input type="text" name="idVideo"/>

        <input type="submit"  value="Eliminar video " />
    
    </fieldset>
    </form>
</body>
</html>
