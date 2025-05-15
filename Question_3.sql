-- Question 3: Which type of rice has the longest DNA sequence? (hint: use the rfamseq and the taxonomy tables)

SELECT t.species, r.length
FROM (
    SELECT * FROM taxonomy WHERE species LIKE '%Oryza%' LIMIT 1000
) t
JOIN rfamseq r ON t.ncbi_id = r.ncbi_id
ORDER BY r.length DESC
LIMIT 1;
