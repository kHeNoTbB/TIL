DECLARE
  CURSOR ACPTCUR IS
    SELECT * FROM ACCEPT WHERE CUST_NO = '_______';
  QUERY VARCHAR2(2000);
BEGIN
  FOR TARGET IN ACPTCUR
  LOOP
    IF TARGET.STORE_CD = '_____' THEN
      QUERY := QUERY || '_______';
    END IF;
  END LOOP;
  DBMS_OUTPUT.PUT_LINE(QUERY);
END;
