<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Edit</title>
</head>
<body>
    <h1>Modificar Video</h1>
    <h4>Cometiste un error¿?, Para regresar al menu pulsa <a href="/Home/Index">aqui</a></h4>
    <form action="/Video/Edit" method="post">
    <fieldset>

    <legend>Inserte los datos del video a modificar</legend>
    <label for="idVideo">Nuevo numero de video</label>
    <input type="text" name="idVideo" />

    <label for="titulo">Titulo del video</label>
    <input type="text" name="titulo"/>

    <label for="repro">reproducciones</label>
    <input type="text" name="repro" />

    <label for="url">lnk del video</label>
    <input type="text" name="url"/>

    <label for="idVideo">Numero de video a modificar</label>
    <input type="text" name="idVideo" />

    <input type="submit" value="Modificar Video"/>


</fieldset>
 </form>
</body>
</html>
