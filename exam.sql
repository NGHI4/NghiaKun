create table customer(
customerid int primary key,
name nvarchar(50) not null,
city nvarchar(50) not null,
country nvarchar(50) not null,
phone nvarchar(15) not null,
email nvarchar(50) not null,
);

create table customeraccount(
accountnumber char(9),
customerid int primary key,
balance money,
minaccount money not null,
);

create table customertransaction(
transactionid int primary key,
accountnumber char(9) not null,
transactiondate smalldatetime not null,
amount money not null,
depositorwithdraw bit not null,
);
