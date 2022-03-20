{{ config(materialized='table') }}

WITH Source_data AS ( SELECT * FROM INTERVIEW_DB.PLAYGROUND_KUNAL_KUYABA.COVID_RAW_DATA),

FINAL AS (
SELECT DATE,LOCATION,POPULATION,TOTAL_ACTIVE_CASES,TOTAL_RECOVERED,TOTAL_DEATHS  FROM INTERVIEW_DB.PLAYGROUND_KUNAL_KUYABA.COVID_RAW_DATA
WHERE DATE IN (SELECT MAX(DATE) FROM INTERVIEW_DB.PLAYGROUND_KUNAL_KUYABA.COVID_RAW_DATA)
GROUP BY 1,2,3,4,5,6
ORDER BY 2
)

SELECT * FROM FINAL