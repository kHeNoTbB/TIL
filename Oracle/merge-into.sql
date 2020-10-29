/**********************************************************************************
(1) A테이블과 B테이블을 활용한 조건(A.PK = B.PK ...)에 맞는게 있으면 C, 없으면 D 실행
MERGE INTO A
USING B
ON 조건
WHEN MATCHED THEN C
WHEN NOT MATCHED THEN D

(2) (1)과 유사하지만, 테이블 비교가 아닌 값 비교도 가능함
MERGE INTO A
USING DUAL
ON 조건(ex. A.NAME = 'git' AND A.AGE = '27')
WHEN MATCHED THEN C
WHEN NOT MATCHED THEN D

단, 주의 할 점은 ON 뒤 조건은 PK를 사용해야 
그렇지 않으면 입력 시, 중복이 발생하여 에러가 날 수 있음
***********************************************************************************/
CREATE OR REPLACE PROCEDURE DB스키마.프로시저이름 IS
  DATE_V    VARCHAR2(8);
BEGIN
  DATE_V  :=  TO_CAHR(SYSDATE -1, 'YYYYMMDD');
  
  MERGE INTO EMPLOY CP
  USING (SELECT * FROM  _____ ) TP
  ON    (CP.NAME = TP.NAME AND _______)
  WHEN  MATCHED THEN
        UPDATE SET _________
  WHEN NOT MATCHED THEN
        INSERT ______________;
      
  COMMIT;
  RETURN;
EXCEPTION WHEN OTHERS THEN ROLLBACK;
END 프로시저이름;
