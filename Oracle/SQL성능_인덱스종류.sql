/***********************************************************************
결합 인덱스를 구성하는 컬럼의 순서
  * 1순위 : 컬럼이 사용한 연산자에 의한 인덱스 컬럼 선정
  * 2순위 : 랜덤 액세스를 고려한 인덱스 컬럼 선정
  * 3순위 : 정렬 제거를 위한 인덱스 컬럼 선정
  * 4순위 : 단일 컬럼의 분포도를 고려한 인덱스 컬럼 선정
***********************************************************************/

-- (1)
