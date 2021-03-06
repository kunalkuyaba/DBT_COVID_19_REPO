{{ config(materialized='table') }}

WITH Source_data AS ( SELECT * FROM INTERVIEW_DB.PLAYGROUND_KUNAL_KUYABA.COVID_RAW_DATA),

FINAL AS (
SELECT COUNTRY,LOCATION_LEVEL,LOCATION_ISO_CODE,ISLAND,LOCATION,PROVINCE,LONGITUDE,LATITUDE 
FROM INTERVIEW_DB.PLAYGROUND_KUNAL_KUYABA.COVID_RAW_DATA
GROUP BY 1,2,3,4,5,6,7,8
ORDER BY 4,5,6
)

SELECT * FROM FINAL
