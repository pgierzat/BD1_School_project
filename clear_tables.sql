
DECLARE
    CURSOR tables_cursor IS
        SELECT table_name FROM user_tables;
BEGIN
    FOR tbl IN tables_cursor LOOP
        EXECUTE IMMEDIATE 'DROP TABLE ' || tbl.table_name || ' CASCADE CONSTRAINTS';
    END LOOP;
END;