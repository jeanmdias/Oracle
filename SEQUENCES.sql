
-- How to identify sequence without cache
SELECT  *
FROM    dba_sequences
WHERE   sequence_owner = 'JEANMDIAS'
AND    (cache_size = 0 or order_flag = 'Y')
ORDER BY cache_size

-- Create cache
ALTER SEQUENCE [JEANMDIAS.MY_SEQ_NAME] cache 3000 noorder
