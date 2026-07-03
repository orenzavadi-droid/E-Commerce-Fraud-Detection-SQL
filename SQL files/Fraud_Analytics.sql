--quary #1 (fraud count)
 
SELECT 
    class, 
    COUNT(*) AS total_transactions,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM Fraud_Data), 2) AS percentage
FROM Fraud_Data
GROUP BY class;

--quary #2 (fraud sums )

SELECT 
    class,
    COUNT(*) AS transaction_count,
    ROUND(AVG(purchase_value), 2) AS average_spend,
    MIN(purchase_value) AS min_spend,
    MAX(purchase_value) AS max_spend
FROM Fraud_Data
GROUP BY class;

--quary #3 (fraud purchase time  )

SELECT 
    [class],
    COUNT(*) AS transaction_count,
    ROUND(AVG(julianday(purchase_time) - julianday(signup_time)) * 86400, 2) AS avg_time_diff_seconds,
    MIN(julianday(purchase_time) - julianday(signup_time)) * 86400 AS min_time_diff_seconds
FROM Fraud_Data
GROUP BY [class];

--quary #4 (fraud's commiting locations )

CREATE INDEX IF NOT EXISTS idx_fraud_ip ON Fraud_Data (ip_address);
CREATE INDEX IF NOT EXISTS idx_ip_bounds ON IpAddress_to_Country (lower_bound_ip_address, upper_bound_ip_address);

SELECT 
    c.country,
    COUNT(CASE WHEN f.[class] = 1 THEN 1 END) AS fraud_count,
    COUNT(*) AS total_transactions,
    ROUND(COUNT(CASE WHEN f.[class] = 1 THEN 1 END) * 100.0 / COUNT(*), 2) AS fraud_rate_percentage
FROM Fraud_Data f
JOIN IpAddress_to_Country c 
    ON f.ip_address >= c.lower_bound_ip_address 
   AND f.ip_address <= c.upper_bound_ip_address
GROUP BY c.country
HAVING total_transactions > 100
ORDER BY fraud_count DESC
LIMIT 10;