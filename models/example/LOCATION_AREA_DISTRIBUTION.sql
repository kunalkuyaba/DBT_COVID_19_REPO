{{ config(materialized='table') }}

WITH Source_data AS ( SELECT * FROM INTERVIEW_DB.PLAYGROUND_KUNAL_KUYABA.COVID_RAW_DATA),

FINAL  AS (
SELECT ISLAND,LOCATION_ISO_CODE,LOCATION,TOTAL_RURAL_VILLAGES,TOTAL_URBAN_VILLAGES
FROM INTERVIEW_DB.PLAYGROUND_KUNAL_KUYABA.COVID_RAW_DATA
GROUP BY 1,2,3,4,5
ORDER BY 1,2,3
)

SELECT * FROM FINAL
