Create table video (
idVideo int primary key,
titulo varchar (100),
repro int,
url varchar (100)
);

CREATE PROCEDURE sp_video_insertar
@idVideo int,
@titulo varchar (100),
@repro int,
@url varchar (100)
AS
BEGIN
  iNSERT INTO video VALUES (@idVideo, @titulo, @repro,@url)

END 

EXEC sp_video_insertar 1,'yo',123412,'HolaMundo.com'

select * from video