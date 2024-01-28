SELECT
  a.user_id,
  ROUND((SUM(IF(b.action = "confirmed", 1, 0)) / COUNT(*)), 2) AS confirmation_rate
FROM
  Signups a
LEFT JOIN
  Confirmations b ON a.user_id = b.user_id
GROUP BY
  a.user_id;
