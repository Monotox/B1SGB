CREATE DEFINER=`root`@`localhost` FUNCTION `fnChave`() RETURNS binary(16)
    DETERMINISTIC
RETURN UNHEX(REPLACE(UUID(),'-',''))

delimiter //

CREATE DEFINER=`root`@`localhost` PROCEDURE `prAtualizarDocente`(IN prontuario VARCHAR(7), nome VARCHAR(50), dtNascimento DATE, escolaridade ENUM('FUNDAMENTAL', 'MEDIO', 'TECNOLOGO', 'BACHARELADO', 'LICENCIATURA','MESTRADO', 'DOUTORADO','POSGRADUACAO','LIVREDOCENCIA'))
BEGIN
  START TRANSACTION;
    SELECT * FROM tblDocente where strProntuario = strProntuario LOCK IN SHARE MODE;
        UPDATE tblDocente set strNome = nome, strEscolaridade = escolaridade, dataNascimento = dtDataNascimento where strProntuario = prontuario;
  COMMIT;
END//


CREATE DEFINER=`root`@`localhost` PROCEDURE `prCriarDocente`(IN prontuario VARCHAR(7), nome VARCHAR(50), 
  strDataNascimento DATE, enumEscolaridade ENUM('FUNDAMENTAL', 'MEDIO', 'TECNOLOGO', 'BACHARELADO', 'LICENCIATURA','MESTRADO', 'DOUTORADO','POSGRADUACAO','LIVREDOCENCIA'))
BEGIN
  START TRANSACTION;
    INSERT INTO tblDocente (upkChave, strProntuario, strNome, strEscolaridade, dataNascimento) 
        VALUES (fnChave(), prontuario, nome, enumEscolaridade, strDataNascimento);
  COMMIT;
END//

CREATE DEFINER=`root`@`localhost` PROCEDURE prCriarEstudante(IN prontuario VARCHAR(7), nome VARCHAR(50), dtNascimento DATE)
BEGIN
  START TRANSACTION;
    INSERT INTO tblestudante (upkChave, strProntuario,strNome,dcDataNascimento) values (fnChave(), prontuario, nome, dtNascimento);
  COMMIT;
END//

CREATE DEFINER=`root`@`localhost` PROCEDURE `prDeletarDocente`(IN prontuario VARCHAR(7))
BEGIN
  START TRANSACTION;
    DELETE FROM tblDocente where strProntuario = prontuario;
  COMMIT;
END//

CREATE DEFINER=`root`@`localhost` PROCEDURE `prLerDocente`(IN prontuario VARCHAR(7))
BEGIN
  START TRANSACTION;
    SELECT dcCriado, dcModificado, strProntuario, strNome, strEscolaridade, dataNascimento FROM tblDocente where strProntuario = prontuario;
  COMMIT;
END//

CREATE DEFINER=`root`@`localhost` PROCEDURE `prListarDocentes`()
BEGIN
  START TRANSACTION;
    SELECT dcCriado, dcModificado, strProntuario, strNome, strEscolaridade, dataNascimento from tblDocente;
  COMMIT;
END//

CREATE DEFINER=`root`@`localhost` PROCEDURE `prLerDisciplina`(IN sigla VARCHAR(5))
BEGIN
  START TRANSACTION;
    SELECT dcCriado, dcModificado, strSigla, strNome FROM tbldisciplina where strSigla = sigla;
  COMMIT;
END//

CREATE DEFINER=`root`@`localhost` PROCEDURE `prDeletarDisciplina`(IN sigla VARCHAR(5))
BEGIN
  START TRANSACTION;
    DELETE FROM tbldisciplina where strSigla = sigla;
  COMMIT;
END//

CREATE DEFINER=`root`@`localhost` PROCEDURE `prAtualizarEstudante` (IN prontuario VARCHAR(7), nome VARCHAR(50), dtNascimento DATE)
BEGIN
  START TRANSACTION;
    SELECT * FROM tblEstudante WHERE strProntuario = strProntuario LOCK IN SHARE MODE;
    UPDATE tblestudante 
    SET strNome = nome,dataNascimento = dtNascimento 
    WHERE strProntuario = prontuario;
  COMMIT;
END//

CREATE DEFINER=`root`@`localhost` PROCEDURE `prLerEstudante`(IN prontuario VARCHAR(7))
BEGIN
  START TRANSACTION;
    SELECT dcCriado, dcModificado, strProntuario, strNome, strEscolaridade, dataNascimento FROM tblDocente where strProntuario = prontuario;
  COMMIT;
END//

CREATE DEFINER=`root`@`localhost` PROCEDURE `prDeletarEstudante`(IN prontuario VARCHAR(7))
BEGIN
  START TRANSACTION;
    DELETE FROM tblEstudante where strProntuario = prontuario;
  COMMIT;
END//

CREATE DEFINER=`root`@`localhost` PROCEDURE `prListarEstudante`()
BEGIN
  START TRANSACTION;
    SELECT dcCriado, dcModificado, strProntuario, strNome, dataNascimento from tblEstudante;
  COMMIT;
END//

CREATE DEFINER=`root`@`localhost` PROCEDURE prCriarDisciplina(IN sigla char(5), nome varchar(50))
BEGIN
  START TRANSACTION;
      INSERT INTO tblDisciplina (upkChave, strSigla, nome)
      VALUES (fnChave(), sigla, strNome);
  COMMIT;
END//

CREATE DEFINER=`root`@`localhost` PROCEDURE `prAtualizarDisciplina`(IN siglaAtual VARCHAR(5), siglaNova VARCHAR(5), nome VARCHAR(50))
BEGIN
  START TRANSACTION;
    SELECT * FROM tbldisciplina where strSigla = siglaAtual LOCK IN SHARE MODE;
        UPDATE tblDisciplina 
        SET strNome = nome, strSigla = siglaNova where strSigla = siglaAtual;
  COMMIT;
END//

CREATE DEFINER=`root`@`localhost` PROCEDURE `prListarDisciplina`()
BEGIN
  START TRANSACTION;
    SELECT dcCriado, dcModificado, strSigla, strNome from tblDisciplina;
  COMMIT;
END//

CREATE DEFINER=`root`@`localhost` PROCEDURE `prCriarTurma`(IN sigla VARCHAR(7), dia ENUM('SEGUNDA', 'TERCA', 'QUARTA', 'QUINTA', 'SEXTA','SABADO', 'DOMINGO'), periodo ENUM('MATUTINO', 'VESPERTINO', 'NOTURNO'))
BEGIN
  START TRANSACTION;
    INSERT INTO tblTurma (upkChave, strSigla, enumDia, enumPeriodo) 
        VALUES (fnChave(), sigla, dia, periodo);
  COMMIT;
END//

CREATE DEFINER=`root`@`localhost` PROCEDURE `prAtualizarTurma`(IN sigla VARCHAR(7), diaAtual DATE, periodoAtual enum('Matutino','Vespertino','Noturno'), diaNovo enum('Segunda','Terça','Quarta','Quinta','Sexta','Sábado','Domingo'), periodoNovo enum('Matutino','Vespertino','Noturno'))
BEGIN
  START TRANSACTION;
    SELECT * FROM tblturma where strSigla = sigla LOCK IN SHARE MODE;
        UPDATE tblturma set enumDia = diaNovo, enumPeriodo = periodoNovo where strSigla = sigla;
  COMMIT;
END//

CREATE DEFINER=`root`@`localhost` PROCEDURE `prLerTurma`(IN sigla VARCHAR(7), dia enum('Segunda','Terça','Quarta','Quinta','Sexta','Sábado','Domingo'), strPeriodo enum('Matutino','Vespertino','Noturno'))
BEGIN
  START TRANSACTION;
    SELECT dcCriado, dcModificado, strSigla, enumDia, enumPeriodo FROM tblTurma where strSigla = sigla;
  COMMIT;
END//

CREATE DEFINER=`root`@`localhost` PROCEDURE `prDeletarTurma`(IN sigla VARCHAR(7), dia enum('Segunda','Terça','Quarta','Quinta','Sexta','Sábado','Domingo'), strPeriodo enum('Matutino','Vespertino','Noturno'))
BEGIN
  START TRANSACTION;
    DELETE FROM tblTurma where strSigla = sigla;
  COMMIT;
END//

CREATE DEFINER=`root`@`localhost` PROCEDURE `prListarTurma`(IN sigla VARCHAR(7))
BEGIN
  START TRANSACTION;
    SELECT dcCriado, dcModificado, strSigla, enumDia, enumPeriodo FROM tblturma WHERE strSigla = sigla;
  COMMIT;
END//


CREATE DEFINER=`root`@`localhost` PROCEDURE `prMatricularEstudanteTurma`(IN prontuario VARCHAR(7), sigla VARCHAR(7), dia enum('Segunda','Terça','Quarta','Quinta','Sexta','Sábado','Domingo'), strPeriodo enum('Matutino','Vespertino','Noturno'))
BEGIN
  START TRANSACTION;
    SET @idEstudante = (SELECT upkChave FROM tblEstudante WHERE strProntuario = prontuario);
    SET @idTurma = (SELECT upkChave FROM tblturma WHERE strSigla = sigla);

    INSERT INTO tblrelacionamentoaluno(pkRelacao, fkEstudante, fkTurma) 
    VALUES (fnChave(), @idEstudante, @idTurma);
  COMMIT;
END//

CREATE DEFINER=`root`@`localhost` PROCEDURE `prVincularDocenteDisciplina`(IN prontuario VARCHAR(7), sigla VARCHAR(7))
BEGIN
  START TRANSACTION;
    SET @idDocente = (SELECT upkChave FROM tbldocente WHERE strProntuario = prontuario);
    SET @idTurma = (SELECT upkChave FROM tblturma WHERE strSigla = sigla);

    INSERT INTO tblrelacionamentodisciplina(pkMateria, fkDisciplina, fkDocente) 
    VALUES (fnChave(), @idDocente, @idTurma);
  COMMIT;
END//
