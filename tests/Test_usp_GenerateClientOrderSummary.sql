-- Test_usp_GenerateClientOrderSummary.sql

-- Assuming tSQLt is already installed in the DEMO_Integration database

-- Create a test class
EXEC tSQLt.NewTestClass 'TestClientOrderSummary';

-- Write a test for the stored procedure
CREATE PROCEDURE TestClientOrderSummary.[test GenerateClientOrderSummary]
AS
BEGIN
    -- Arrange
    EXEC tSQLt.FakeTable 'ClientOrderSummary';

    -- Act
    EXEC usp_GenerateClientOrderSummary;

    -- Assert
    EXEC tSQLt.AssertEmptyTable 'ClientOrderSummary';
END;