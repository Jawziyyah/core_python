CREATE DATABASE mysql_challenge;

USE mysql_challenge;
CREATE Table Group4 (
MemberID INT AUTO_INCREMENT PRIMARY KEY,
MemberName VARCHAR(20),
Sex VARCHAR(5),
Email VARCHAR(50),
PhoneNo CHAR(15)
);

INSERT INTO Group4 ( MemberName, Sex, Email, PhoneNo) VALUES
('salamat', 'F', 'salamat@gmail.com', 08123456709),
('adeola', 'F', 'ade@gmail.com', 09087654365),
('zainab', 'F', 'zainab@gmail.com', 08123456789),
('arafah', 'F', 'arafah@gmail.com',09087654321);

SELECT * FROM Group4;

SELECT MemberName, UPPER(MemberName) AS upper_name FROM Group4;
SELECT MemberName, LOWER(MemberName) AS lower_name FROM Group4;


SELECT MemberName, LENGTH(MemberName) AS byte_length FROM Group4;

SELECT MemberName, SUBSTRING(MemberName, 1, 4) AS short_name FROM Group4;

SELECT MemberName + ' is participating in Webfala first SQL Challenge' AS Description FROM Group4;


SELECT * FROM Group4 WHERE SUBSTRING(MemberName, 1, 2) = 'sa';

SELECT * FROM Group4 WHERE SUBSTRING(MemberName, 5, 6) = 'ah';

SELECT INSERT(PhoneNo, 7, 4, '****') AS masked_phone FROM Group4;

SELECT * FROM Group4 ORDER BY MemberName ASC;