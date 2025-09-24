# Write your MySQL query statement below
SELECT L.book_id, L.title, L.author, L.genre, L.publication_year, L.total_copies AS current_borrowers
FROM library_books L
RIGHT JOIN borrowing_records B
ON L.book_id = B.book_id
WHERE B.return_date IS NULL
GROUP BY B.book_id
HAVING COUNT(borrower_name) = total_copies
ORDER by current_borrowers DESC, title