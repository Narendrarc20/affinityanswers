# AffinityAnswers - SQL Assignment (Round 2)

This repository contains the solutions to the SQL assignment provided by AffinityAnswers for the Full Stack AI Engineer role.

## Dataset Reference
The assignment is based on the public Rfam SQL database:
[https://docs.rfam.org/en/latest/database.html](https://docs.rfam.org/en/latest/database.html)

## Files

- `assignment_answers.sql` — Contains SQL queries with inline answers as comments.
  'Answers_1,2,3,4' as Query result
  'Question_1,2,3,4' as sql Queries

##  Questions & Approach

### 1.  How many types of tigers can be found in the taxonomy table of the dataset? What is the "ncbi_id" of the Sumatran Tiger?
- **reffer Answer_1 and Answer_1.1**
- See `assignment_answers.sql` for query.

### 2. Find all the columns that can be used to connect the tables in the given database.
- **reffer Answer_2**
- These typically include: `rfam_acc`, `tax_id`, etc.

### 3. Which type of rice has the longest DNA sequence?
- **reffer Answer_3**
- Based on `rfamseq` and `taxonomy` tables.

### 4.  Paginate family names and DNA sequence lengths (where length > 1,000,000). Return the 9th page (15 results per page).
- **reffer Answer_4:**
- Includes: `family accession ID`, `family name`, and `maximum length`

## How to Run

If you're using MySQL:
1. Import the CSV files into MySQL as tables: `full_region`, `family`, etc.
2. Run the queries in `assignment_answers.sql`.
3. Ensure `seq_start` and `seq_end` are numeric.

##
- **Name:** Narendra
- **Date:** May 2025
- **Role:** Full Stack AI Engineer (Assignment)

