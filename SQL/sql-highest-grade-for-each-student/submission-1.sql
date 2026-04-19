WITH CTE AS 
(
    SELECT student_id, 
       exam_id,
       score,
       ROW_NUMBER() OVER(PARTITION BY student_id ORDER BY score DESC, exam_id ASC) as rnk
FROM exam_results 
)
SELECT 
    student_id,
    exam_id,
    score
FROM CTE 
WHERE rnk = 1

