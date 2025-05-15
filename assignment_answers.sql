-- Question 1: How many types of tigers can be found in the taxonomy table of the dataset? What is the "ncbi_id" of the Sumatran Tiger? (hint: use the biological name of the tiger)

    Query:    -- Count tiger types
          SELECT COUNT(*) AS tiger_types
          FROM taxonomy
          WHERE species LIKE '%Panthera tigris%';
          
          -- NCBI ID of Sumatran Tiger
          SELECT ncbi_id
          FROM taxonomy
          WHERE species = 'Panthera tigris sumatrae';
-- Question 2: Find all the columns that can be used to connect the tables in the given database.

   Query:     SELECT 
              TABLE_NAME, 
              COLUMN_NAME, 
              REFERENCED_TABLE_NAME, 
              REFERENCED_COLUMN_NAME
          FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE
          WHERE REFERENCED_TABLE_NAME IS NOT NULL;
-- Question 3: Which type of rice has the longest DNA sequence? (hint: use the rfamseq and the taxonomy tables)

   Query:    SELECT t.species, r.length
          FROM (
              SELECT * FROM taxonomy WHERE species LIKE '%Oryza%' LIMIT 1000
          ) t
          JOIN rfamseq r ON t.ncbi_id = r.ncbi_id
          ORDER BY r.length DESC
          LIMIT 1;

-- Question 4:  We want to paginate a list of the family names and their longest DNA sequence lengths (in descending order of length) where only families that have DNA sequence lengths greater than 1,000,000 are included. Give a query that will return the 9th page when there are 15 results per page. (hint: we need the family accession ID, family name and the maximum length in the results)

     Query:   SELECT
              f.rfam_acc,
              f.rfam_id AS family_name,
              MAX(ABS(CAST(r.seq_end AS SIGNED) - CAST(r.seq_start AS SIGNED)) + 1) AS max_length
          FROM
              full_region r
          JOIN
              family f ON r.rfam_acc = f.rfam_acc
          GROUP BY
              f.rfam_acc, f.rfam_id
          HAVING
              max_length > 1000000
          ORDER BY
              max_length DESC
          LIMIT 15 OFFSET 120;


