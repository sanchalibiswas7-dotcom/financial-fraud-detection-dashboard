SELECT COUNT(*) AS total_transactions
FROM financial_fraud_detection_dataset;

SELECT is_fraud, COUNT(*) AS transaction_count
FROM financial_fraud_detection_dataset
GROUP BY is_fraud;

SELECT payment_channel, COUNT(*) AS fraud_count
FROM financial_fraud_detection_dataset
WHERE is_fraud LIKE '%True%'
GROUP BY payment_channel
ORDER BY fraud_count DESC;

SELECT merchant_category, COUNT(*) AS fraud_count
FROM financial_fraud_detection_dataset
WHERE is_fraud LIKE '%True%'
GROUP BY merchant_category
ORDER BY fraud_count DESC;

SELECT AVG(amount) AS avg_fraud_amount
FROM financial_fraud_detection_dataset
WHERE is_fraud LIKE '%True%';