//--------------------------------------------------------------------Creacion de tabla
Create table video (
idVideo int primary key,
titulo varchar (100),
repro int,
url varchar (100)
);
//--------------------------------------------------------------------Creacion de SP para insertar videos
CREATE PROCEDURE sp_video_Create
@idVideo int,
@titulo varchar (100),
@repro int,
@url varchar (100)
AS
BEGIN
  iNSERT INTO video VALUES (@idVideo, @titulo, @repro,@url)
END 

//--------------------------------------------------------------------SP de editar en proceso
CREATE PROCEDURE sp_video_editar
@idVideo int,
@titulo varchar (100),
@repro int,
@url varchar (100)
AS 
BEGIN
UPDATE video
SET idVideo=@idVideo,
titulo=@titulo,
repro=@repro,
url=@url
WHERE idvideo=@idVideo
END
//--------------------------------------------------------------------Creacion del SP para elominar videos
CREATE PROCEDURE sp_video_Delete
@idVideo int
AS 
BEGIN
DELETE from video where idVideo=@idVideo
END

//--------------------------------------------------------------------Comandos
Drop table video;
DELETE from video where idVideo=1;
select * from video

CREATE PROCEDURE C
@titulo varchar (100)
AS 
BEGIN
select * from video
Where titulo Like '%@titulo%'
END
EXEC PROCEDURE sp_video_Buscar 'shrek'