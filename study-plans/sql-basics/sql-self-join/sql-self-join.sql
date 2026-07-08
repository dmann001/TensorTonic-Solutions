-- Write your SQL query here
SELECT 
    c1.username, 
    COALESCE(c2.username, 'organic') as referrer_name
FROM
    user_referrals AS c1
LEFT JOIN
    user_referrals AS c2 ON
    c1.referred_by=c2.id
ORDER BY c1.username ASC
