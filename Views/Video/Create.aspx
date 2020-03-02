<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Create</title>
    <meta name="description" content="ASP.NET MVC 2 CRUD Video">
    <meta name="Keywords" content="ASP.NET MVC 2 CRUD, Facpya">
    <meta name="author" content="Luis Arturo">
    <meta name="viewport" content="whith=device-widht, initial-scale=1.0">
    <link href="../../Content/Site.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <h1>quieres agregar un video¡?</h1>
    <form action="/Video/Create" method="post">
    <fieldset>
    <legend>Pon los datos aqui :D</legend>

        <label for="idVideo">identificador de video</label>
        <input type="text" name="idVideo" />

        <label for="titulo">Titulo</label>
        <input type="text" name="titulo" />

        <label for="repro">Reproducciones</label>
        <input type="text" name="repro" />

        <label for="url">Liga del video</label>
        <input type="text" name="url" />
        <hr />
        <input type="submit" value="Agregar Video " />


    </fieldset>
    </form>
</body>
</html>
