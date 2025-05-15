-- Question 1: How many types of tigers can be found in the taxonomy table of the dataset? What is the "ncbi_id" of the Sumatran Tiger? (hint: use the biological name of the tiger)

-- Count tiger types
SELECT COUNT(*) AS tiger_types
FROM taxonomy
WHERE species LIKE '%Panthera tigris%';

-- NCBI ID of Sumatran Tiger
SELECT ncbi_id
FROM taxonomy
WHERE species = 'Panthera tigris sumatrae';
