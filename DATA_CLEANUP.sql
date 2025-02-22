/* DATA CLEANING STEPS
1. CHECK FOR DUPLICATES: VERIFY THAT THERE ARE NO DUPLICATES BASED ON LOAN ID COLUMN.
2. CHECK FOR MISSING VALUES : I RAN A QUERY TO IDENTIFY AND FIX MISSING VALES IN EACH COLUMN
3. TRIM COLUMN: REMOVE TRAILING SPACES FROM ALL COLUMN
4. CHECK FOR NULLS: CHECK FOR NULL VALES IN THE DATASET.
*/
SELECT *
FROM LOAN_DEFAULT;

-- CHECK FOR DUPLICATES.

SELECT 
  LOAN_ID,
     COUNT(*) as count
 FROM loan_default
 group by loan_id
 having count > 1;
 

-- CHECK FOR NULLS 
SELECT 
     SUM(CASE WHEN Loan_ID IS NULL THEN 1 ELSE 0 END) AS LoanID_nulls,
     SUM(CASE WHEN Age IS NULL THEN 1 ELSE 0 END) AS Age_nulls,
     SUM(CASE WHEN Income IS NULL THEN 1 ELSE 0 END) AS Income_nulls,
     SUM(CASE WHEN Loan_Amount IS NULL THEN 1 ELSE 0 END) AS LoanAmount_nulls,
     SUM(CASE WHEN Credit_Score IS NULL THEN 1 ELSE 0 END) AS CreditScore_nulls,
     SUM(CASE WHEN Months_Employed IS NULL THEN 1 ELSE 0 END) AS MonthsEmployed_nulls,
     SUM(CASE WHEN Num_Credit_Line IS NULL THEN 1 ELSE 0 END) AS NumCreditLines_nulls,
     SUM(CASE WHEN Interest_Rate IS NULL THEN 1 ELSE 0 END) AS InterestRate_nulls,
     SUM(CASE WHEN Loan_Term IS NULL THEN 1 ELSE 0 END) AS LoanTerm_nulls,
     SUM(CASE WHEN DTI_Ratio IS NULL THEN 1 ELSE 0 END) AS DTIRatio_nulls,
     SUM(CASE WHEN Education IS NULL THEN 1 ELSE 0 END) AS Education_nulls,
     SUM(CASE WHEN Employment_Type IS NULL THEN 1 ELSE 0 END) AS EmploymentType_nulls,
     SUM(CASE WHEN Marital_Status IS NULL THEN 1 ELSE 0 END) AS MaritalStatus_nulls,
     SUM(CASE WHEN Has_Mortgage IS NULL THEN 1 ELSE 0 END) AS HasMortgage_nulls,
     SUM(CASE WHEN Has_Dependent IS NULL THEN 1 ELSE 0 END) AS HasDependents_nulls,
     SUM(CASE WHEN Loan_Purpose IS NULL THEN 1 ELSE 0 END) AS LoanPurpose_nulls,
     SUM(CASE WHEN Has_Co_Signer IS NULL THEN 1 ELSE 0 END) AS HasCoSigner_nulls,
     SUM(CASE WHEN `Default` IS NULL THEN 1 ELSE 0 END) AS Default_nulls
 FROM loan_default;
 
 -- TRIM COLUMN
 
 update loan_default
 set 
	 LOAN_ID = TRIM(loan_id),
     AGE = TRIM(AGE),
     INCOME = TRIM(INCOME),
     LOAN_AMOUNT = TRIM(LOAN_AMOUNT),
     CREDIT_SCORE = TRIM(CREDIT_SCORE),
     MONTHS_EMPLOYED = TRIM(MONTHS_EMPLOYED),
     NUM_CREDIT_LINE = TRIM(NUM_CREDIT_LINE),
     INTEREST_RATE = TRIM(INTEREST_RATE),
     LOAN_TERM = TRIM(LOAN_TERM),
     DTI_RATIO = TRIM(DTI_RATIO),
     EDUCATION = TRIM(EDUCATION),
     EMPLOYMENT_TYPE =TRIM(EMPLOYMENT_TYPE),
     MARITAL_STATUS = TRIM(MARITAL_STATUS),
     HAS_MORTGAGE = TRIM(HAS_MORTGAGE),
     HAS_DEPENDENT = TRIM(HAS_DEPENDENT),
     LOAN_PURPOSE = TRIM(LOAN_PURPOSE),
     HAS_CO_SIGNER = TRIM(HAS_CO_SIGNER),
     `DEFAULT` = TRIM(`DEFAULT`);
 
 
 
 