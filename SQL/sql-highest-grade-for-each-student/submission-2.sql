-- probably need to use windows function
-- probably do not need any joins 

WITH ranked_exam AS
(
    SELECT 
    student_id, 
    exam_id, 
    score, 
    ROW_NUMBER() OVER(PARTITION BY student_id ORDER BY score DESC, exam_id ASC) AS rnk
    FROM exam_results
)
SELECT 
student_id, 
exam_id, 
score
FROM ranked_exam
WHERE rnk = 1
ORDER BY student_id


