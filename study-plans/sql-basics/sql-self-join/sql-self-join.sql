-- Returns: username, referrer_name.
select c1.username, coalesce(c2.username, 'organic') as referrer_name
from user_referrals c1 
left join user_referrals c2 on c1.referred_by= c2.id
order by c1.username asc
