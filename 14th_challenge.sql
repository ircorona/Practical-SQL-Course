--Regularizing expressions


-- Retrieve rows from the 'emails' table where the email address matches the provided regular expression pattern
SELECT *
FROM emails
WHERE email_column ~* '[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}';
