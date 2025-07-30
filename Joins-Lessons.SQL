SELECT
    *
FROM
    PatientStay

SELECT
    *
FROM
    DimHospital

SELECT
    h.Hospital
    ,ps.Hospital
    ,h.HospitalType
    ,ps.PatientId
    ,ps.AdmittedDate
    ,ps.DischargeDate
FROM
    -- PatientStay ps
    -- RIGHT JOIN DimHospitalBad h ON ps.Hospital = h.Hospital
    DimHospitalBad h FULL OUTER JOIN PatientStay ps ON ps.Hospital = h.Hospital

SELECT
    *
FROM
    DimHospitalBad


--list patients in pruh
SELECT
    ps.PatientId
    ,ps.AdmittedDate
    ,ps.DischargeDate
FROM
    PatientStay ps

-- list patients in pruh
WHERE

SELECT
    ps.PatientId
    ,ps.AdmittedDate
    ,ps.DischargeDate
FROM
    PatientStay ps
WHERE
    EXTRACT(MONTH FROM ps.AdmittedDate) = 3;


--list patients in pruh where admitted in march 2023
SELECT
    ps.PatientId
    ,ps.AdmittedDate
    ,ps.DischargeDate
FROM
    PatientStay ps
WHERE
    EXTRACT(MONTH FROM ps.AdmittedDate) = 3
    AND ps.Hospital = 'PRUH';