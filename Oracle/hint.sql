/****************************************************************************
힌트(Oracle Hint)
  * SQL 튜닝의 핵심 부분으로 일종의 지시구문
  * 직접 최적의 실행 경로를 작성해주는 것
  * 엑세스 경로, 조인 순서, 병렬 및 직렬 처리, Optimizer의 목표(Goal) 변경 가능
  * 잘못 작성된 힌트로 인해 성능을 떨어뜨리는 경우는 피해야 함
*****************************************************************************/



----------------------------------------------------------------------------------------------------------------
-- index_asc : 인덱스 영역에서 순방향으로 스캔하라는 뜻
-----INDEX_ASC(table_name index_name)
SELECT /*+ index_asc(e idx_myemp1_ename) */
       EMPNO, ENAME, SAL
FROM MYEMP1 e
WHERE ENAME >= '가'
;
----------------------------------------------------------------------------------------------------------------



----------------------------------------------------------------------------------------------------------------
--index_ss : (index skip scan) 컬럼 순서에 관계 없이 결합인덱스 사용
----INDEX_SS(table_name index_name)
-------TABLE 내 A,B 결합 인덱스가 있는 상태에서, 'B'컬럼만 조건으로 추가될 때 강제적으로 해당 인덱스를 사용하도록 함
-------A값의 종류가 적을 경우 퍼포먼스를 기대할 수 있으나, 상황에 따라 좋지 않으니 잘 판단 후 적용할 것
SELECT /*+ INDEX_SS(TABLE INDEX_NAME) */
FROM TABLE
WHERE B = '100'
;
----------------------------------------------------------------------------------------------------------------
