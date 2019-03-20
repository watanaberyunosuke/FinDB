create database Financial_DB;
use Financial_DB;

CREATE SCHEMA Financial;

CREATE table Flow(
  Sequence_NO INT NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
  Date date,
  Item TEXT,
  Amount INT,
  Residual INT,
  Annotation TEXT,
  PRIMARY KEY (Date),
  );

CREATE table JE(
  Sequence_NO INT NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
  Date date,
  Dr Account TEXT,
  Dr Account_Num INT,
  Cr Account TEXT,
  Cr Account_Num INT,
  Amount INT,
  Annotation TEXT,
);

CREATE table Item_ID(
  Account_Num CHAR PRIMARY KEY,
  AccountName TEXT,
  PRIMARY KEY (Account_Num)
);