-- Creates a stored procedure to retrieve a single patient's record by their ID.
CREATE PROCEDURE sp_GetPatient
    @PatientID INT  -- Required: The ID of the patient to look up
AS
BEGIN
    -- Select all details for the matching patient
    SELECT 
        PatientID,   -- Patient's unique ID
        FName,       -- First name
        LName,       -- Last name
        DOB,         -- Date of birth
        Gender       -- Gender
    FROM Patient
    WHERE PatientID = @PatientID;  -- Filter to only return the matching patient
END;

-- Execute the procedure to look up patient with ID = 1
EXEC sp_GetPatient @PatientID = 1;