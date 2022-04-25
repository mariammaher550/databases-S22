
-- creating account table
CREATE TABLE IF NOT EXISTS account (
account_id int PRIMARY KEY NOT NULL,
user_name String,
credit int,
currency char[3]
);

-- inserting 3 accounts 
insert into account(account_id, user_name, credit, currency)
values (1, 'One', 1000, 'RUB');

insert into account(account_id, user_name, credit, currency)
values (2, 'Account 2', 1000, 'RUB');

insert into account(account_id, user_name, credit, currency)
values (3, 'Account 3', 1000, 'RUB');

BEGIN;
--T1
UPDATE account set credit = credit - 500
	where account_id = 1;
	
UPDATE account set credit = credit + 500
	where account_id = 3;
savepoint T1;

--T2
UPDATE account set credit = credit - 700
	where account_id = 2;
	
UPDATE account set credit = credit + 700
	where account_id = 1;
savepoint T2;

--T3
UPDATE account set credit = credit - 100
	where account_id = 2;
	
UPDATE account set credit = credit + 100
	where account_id = 3;
savepoint T3;

commit;

--adding BankName column
ALTER TABLE account
ADD COLUMN BankName VARCHAR;

UPDATE account
SET BankName = 'SberBank'
WHERE account_id = 1 OR account_id = 3;

UPDATE account
SET BankName = 'Tinkoff'
WHERE account_id = 2;

-- Creating account 4 to add fees into
insert into account(account_id, user_name, credit, currency, BankName)
values (4, '{}', 0, '{}', 'N/N');
