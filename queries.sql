-- First task
SELECT
    status,
    COUNT(*) AS student_count,
    ROUND(100.0 * COUNT(*) / SUM(COUNT(*)) OVER (), 2) AS percent
FROM etl_catalog.silver.students_cleaned
GROUP BY status;

-- Second task
SELECT 
    Oliy_talim_muassasasi AS university,
    ROUND(AVG(Ball), 2) AS avg_grant_score
FROM etl_catalog.silver.students_cleaned
WHERE status = 'Grant'
GROUP BY Oliy_talim_muassasasi
ORDER BY avg_grant_score DESC
LIMIT 1;

-- Third task
SELECT *
FROM etl_catalog.silver.students_cleaned
WHERE Yonalish = 'Iqtisodiyot'
  AND status = 'Yiqilgan'
ORDER BY Ball DESC
LIMIT 1;

-- Fourth task
SELECT 
    Talim_tili AS language,
    COUNT(*) AS grant_count,
    ROUND(100.0 * COUNT(*) / SUM(COUNT(*)) OVER (), 2) AS grant_percent
FROM etl_catalog.silver.students_cleaned
WHERE status = 'Grant'
GROUP BY Talim_tili;