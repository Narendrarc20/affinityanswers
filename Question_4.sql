-- Question 4:  We want to paginate a list of the family names and their longest DNA sequence lengths (in descending order of length) where only families that have DNA sequence lengths greater than 1,000,000 are included. Give a query that will return the 9th page when there are 15 results per page. (hint: we need the family accession ID, family name and the maximum length in the results)

SELECT
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
