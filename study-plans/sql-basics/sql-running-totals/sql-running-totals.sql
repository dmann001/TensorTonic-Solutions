SELECT
    account,
    txn_date,
    amount,
    SUM(amount) OVER(PARTITION BY account order by txn_date) AS running_total
FROM 
    transactions
ORDER BY
    account ASC,
    txn_date ASC,
    id asc;