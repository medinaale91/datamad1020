-- CHALLENGE 1
select au.au_id as 'AUTHOR ID', au.au_lname as 'LAST NAME', au.au_fname as 'FIRST NAME', ti.title as 'TITLE', pu.pub_name as 'PUBLISHER'
from authors as au
	join titleauthor as ta
		on ta.au_id = au.au_id
	join titles as ti
		on ti.title_id = ta.title_id
	join publishers as pu
		on pu.pub_id = ti.pub_id;

-- CHALLENGE 2
SELECT au.au_id AS 'AUTHOR ID', au.au_lname AS 'LAST NAME', au.au_fname as 'FIRST NAME', pu.pub_name as 'PUBLISHER', COUNT(ti.title) AS 'TITLE COUNT'

FROM authors as au

	JOIN titleauthor as ta
		on ta.au_id = au.au_id
        
	JOIN titles as ti
		on ti.title_id = ta.title_id
        
	join publishers as pu
		on pu.pub_id = ti.pub_id
        
group by au.au_id, pu.pub_name;

-- CHALLENGE 3

SELECT au.au_id as 'AUTHOR ID', au.au_lname as 'LAST NAME', au.au_fname as 'FIRST NAME', sum(sa.qty) as `TOTAL`

FROM authors as au

	JOIN titleauthor as ta
		on au.au_id = ta.au_id
        
	JOIN titles as ti
		on ti.title_id = ta.title_id
        
	join sales as sa
		on sa.title_id = ti.title_id

GROUP BY au.au_id
order by TOTAL desc
LIMIT 3;

-- CHALLENGE 4

SELECT au.au_id as 'AUTHOR ID', au.au_lname as 'LAST NAME', au.au_fname as 'FIRST NAME', IFNULL(SUM(sa.qty), 0) as `TOTAL`

FROM authors as au

	LEFT JOIN titleauthor as ta
		on au.au_id = ta.au_id
        
	LEFT JOIN titles as ti
		on ti.title_id = ta.title_id
        
	LEFT join sales as sa
		on sa.title_id = ti.title_id

GROUP BY au.au_id
order by IFNULL(SUM(sa.qty), 0) desc;

-- ANOTHER SOLUTION FOR CHALLENGE 4

select au.au_id as AUTHOR_ID, au.au_lname as 'LAST NAME', au.au_fname as 'FIRST NAME', coalesce(SUM(sa.qty), 0) AS 'TOTAL'
from authors as au
	left join titleauthor as ta
		on ta.au_id = au.au_id
	left join titles as ti
		on ti.title_id = ta.title_id
	left join sales as sa
		on sa.title_id = ti.title_id
group by AUTHOR_ID 
Order by TOTAL desc;

-- BONUS CHALLENGE

select au.au_id as AUTHOR_ID, au.au_lname as 'LAST NAME', au.au_fname as 'FIRST NAME', sum((ti.advance + (ti.price * sa.qty * ti.royalty/100))*ta.royaltyper/100) as 'PROFIT'
from authors as au
	join titleauthor as ta
		on ta.au_id = au.au_id
	join titles as ti
		on ti.title_id = ta.title_id
	join sales as sa
		on sa.title_id = ti.title_id
group by AUTHOR_ID 
Order by PROFIT desc
limit 3;

