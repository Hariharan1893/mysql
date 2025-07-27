USE COMPANY;

-- INDEX
-- An index is a performance optimization structure used to speed up data retrieval from a table  similar to an index in a book.

SHOW INDEX FROM EMPLOYEES;

CREATE INDEX cus_id_idx ON EMPLOYEES(EMP_ID);

SELECT * FROM EMPLOYEES WHERE EMP_ID = 3;

ALTER TABLE EMPLOYEES 
DROP INDEX cus_id_idx;