INSERT INTO board(title, content, id, postdate, visitcount)
VALUES("지금은 봄입니다", "봄의 왈츠", "musthave", NOW(), 0),
('지금은 여름입니다', '여름향기', 'musthave', NOW(), 0),
('지금은 가을입니다', '가을동화', 'musthave', NOW(), 0),
('지금은 겨울입니다', '겨울연가', 'musthave', NOW(), 0);

INSERT INTO board(title, content, id, postdate, visitcount)
VALUES("페이징 처리", "봄의 왈츠", "musthave", NOW(), 0),
('페이징 처리', '여름향기', 'musthave', NOW(), 0),
('페이징 처리', '가을동화', 'musthave', NOW(), 0),
('페이징 처리', '겨울연가', 'musthave', NOW(), 0);


# rownum 사용법 _ 찾아서 공부해본 것
SET @ROWNUM:=0;

SELECT
	id
	,pass
    ,@ROWNUM:=@ROWNUM+1 AS ROWNUM
FROM member, (SELECT @ROWNUM:=0) R;
    
    
SELECT
	@ROWNUM:=@ROWNUM+1 AS ROWNUM
	, id
    , pass
FROM member
WHERE (SELECT @ROWNUM:=0)=0;
    
    
    
# 페이징 처리용 쿼리문 작성
SELECT * FROM board 
WHERE title LIKE "%페이징%" ORDER BY num DESC
LIMIT 10, 20;


















