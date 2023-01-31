
SELECT 
  ROUND(100.0 * 
    COUNT(case_id)/
      (SELECT COUNT(*) FROM callers),1) AS uncategorised_call_pct
FROM callers
WHERE call_category IS NULL 
  OR call_category = 'n/a';
