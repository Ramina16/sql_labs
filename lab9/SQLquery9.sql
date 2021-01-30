USE teacher_subject
go

DROP LOGIN Lena

CREATE LOGIN Lena
	WITH PASSWORD = '123456789'

DROP USER Lena

CREATE USER Lena FOR LOGIN Lena

EXECUTE sp_addrolemember 'db_backupoperator', 'Lena'

EXECUTE sp_droprolemember 'db_backupoperator', 'Lena'

GRANT EXECUTE ON dbo.add_department TO Lena

REVOKE EXECUTE ON dbo.add_department TO Lena

USE master;
GO
SELECT *
FROM sys.symmetric_keys
WHERE name = '##MS_ServiceMasterKey##';
GO

--drop MASTER KEY

CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'Password123';
go

--drop CERTIFICATE Certificate1

CREATE CERTIFICATE Certificate1
WITH SUBJECT = 'Protect Data';
go

--drop SYMMETRIC KEY SymmetricKey1

CREATE SYMMETRIC KEY SymmetricKey1
WITH ALGORITHM = AES_128
ENCRYPTION BY CERTIFICATE Certificate1;

go

--ALTER TABLE teacher DROP COLUMN teacher_encrypt

ALTER TABLE teacher
ADD teacher_encrypt varbinary(MAX) NULL

-- Opens the symmetric key for use
OPEN SYMMETRIC KEY SymmetricKey1
DECRYPTION BY CERTIFICATE Certificate1;
go

UPDATE teacher
SET teacher_encrypt = EncryptByKey
(Key_GUID('SymmetricKey1'), teacher_address)
FROM teacher;

-- Closes the symmetric key
CLOSE SYMMETRIC KEY SymmetricKey1;

ALTER TABLE teacher
DROP COLUMN teacher_address;

OPEN SYMMETRIC KEY SymmetricKey1
DECRYPTION BY CERTIFICATE Certificate1;

-- Read decrypted data
SELECT
teacher_id, teacher_encrypt AS 'Encrypted_teacher_address',
CONVERT(varchar, DecryptByKey(teacher_encrypt))
AS 'Decrypted_teacher_address'
FROM dbo.teacher;
CLOSE SYMMETRIC KEY SymmetricKey1;

GRANT VIEW DEFINITION ON SYMMETRIC KEY::SymmetricKey1 TO Lena;
GO
GRANT VIEW DEFINITION ON Certificate::Certificate1 TO Lena;
GO
