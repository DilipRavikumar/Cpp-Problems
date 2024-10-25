# Write your MySQL query statement below
with accepted as (
select userId as id, Count(*) num from (
	select requester_id as userId
	from RequestAccepted
	union all
	select accepter_id
	from RequestAccepted
) cte
group by userId
)
select * from accepted where num = (select max(num) from accepted)