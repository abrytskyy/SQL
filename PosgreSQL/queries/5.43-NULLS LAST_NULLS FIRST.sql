CREATE TABLE demo_sorting(
	num INT
);

INSERT INTO demo_sorting(num)
VALUES
(1),
(2),
(3),
(NULL);

SELECT * FROM demo_sorting
ORDER BY num DESC;

SELECT * FROM demo_sorting
ORDER BY num DESC NULLS LAST;

SELECT * FROM demo_sorting
ORDER BY num; 

SELECT * FROM demo_sorting
ORDER BY num NULLS FIRST;

DROP TABLE demo_sorting;
