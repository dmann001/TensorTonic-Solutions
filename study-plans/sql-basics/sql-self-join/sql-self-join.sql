-- Returns: username, referrer_name.
select u.username, coalesce(r.username,'organic') as referrer_name
from user_referrals u
left join user_referrals r on u.referred_by=r.id
order by u.username asc