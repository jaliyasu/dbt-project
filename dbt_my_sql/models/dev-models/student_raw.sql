{{
    config(
        materialized='table'
    )
}}

SELECT * FROM {{source('student_source','students')}}