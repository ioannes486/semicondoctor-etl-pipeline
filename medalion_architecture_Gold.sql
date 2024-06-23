-- Databricks notebook source
Loading - 데이터 로딩 및 시각화
-- MAGIC %md
-- MAGIC # loading data

-- COMMAND ----------

# 데이터 목록 확인
select distinct id
from training.default.gold

-- COMMAND ----------

-- #1 4PEE803
select 
  time, value, id,
  (select (AVG(value) - 3 * STDDEV(value)) from training.default.gold where id = '4PEE803') as LCL,
  (select (AVG(value) + 3 * STDDEV(value)) from training.default.gold where id = '4PEE803') as UCL
from
  training.default.gold 
where id = '4PEE803'

-- COMMAND ----------

-- #2 NaGXJE1
select 
  time, value, id,
  (select (AVG(value) - 3 * STDDEV(value)) from training.default.gold where id = 'NaGXJE1') as LCL,
  (select (AVG(value) + 3 * STDDEV(value)) from training.default.gold where id = 'NaGXJE1') as UCL
from
  training.default.gold 
where id = 'NaGXJE1'

-- COMMAND ----------

-- #3 MQ2FWMH
select 
  time, value, id,
  (select (AVG(value) - 3 * STDDEV(value)) from training.default.gold where id = 'MQ2FWMH') as LCL,
  (select (AVG(value) + 3 * STDDEV(value)) from training.default.gold where id = 'MQ2FWMH') as UCL
from
  training.default.gold 
where id = 'MQ2FWMH'

-- COMMAND ----------

-- #4 CW9J9VG
select 
  time, value, id,
  (select (AVG(value) - 3 * STDDEV(value)) from training.default.gold where id = 'CW9J9VG') as LCL,
  (select (AVG(value) + 3 * STDDEV(value)) from training.default.gold where id = 'CW9J9VG') as UCL
from
  training.default.gold 
where id = 'CW9J9VG'

-- COMMAND ----------

-- #5 XEVbYST
select 
  time, value, id,
  (select (AVG(value) - 3 * STDDEV(value)) from training.default.gold where id = 'XEVbYST') as LCL,
  (select (AVG(value) + 3 * STDDEV(value)) from training.default.gold where id = 'XEVbYST') as UCL
from
  training.default.gold 
where id = 'XEVbYST'

-- COMMAND ----------

-- #6 1G8TW3J
select 
  time, value, id,
  (select (AVG(value) - 3 * STDDEV(value)) from training.default.gold where id = '1G8TW3J') as LCL,
  (select (AVG(value) + 3 * STDDEV(value)) from training.default.gold where id = '1G8TW3J') as UCL
from
  training.default.gold 
where id = '1G8TW3J'

-- COMMAND ----------

-- #7 H6VMCFC
select 
  time, value, id,
  (select (AVG(value) - 3 * STDDEV(value)) from training.default.gold where id = 'H6VMCFC') as LCL,
  (select (AVG(value) + 3 * STDDEV(value)) from training.default.gold where id = 'H6VMCFC') as UCL
from
  training.default.gold 
where id = 'H6VMCFC'

-- COMMAND ----------

-- #8 KaNM5T0
select 
  time, value, id,
  (select (AVG(value) - 3 * STDDEV(value)) from training.default.gold where id = 'KaNM5T0') as LCL,
  (select (AVG(value) + 3 * STDDEV(value)) from training.default.gold where id = 'KaNM5T0') as UCL
from
  training.default.gold 
where id = 'KaNM5T0'

-- COMMAND ----------

-- #9 ES5EZb9
select 
  time, value, id,
  (select (AVG(value) - 3 * STDDEV(value)) from training.default.gold where id = 'ES5EZb9') as LCL,
  (select (AVG(value) + 3 * STDDEV(value)) from training.default.gold where id = 'ES5EZb9') as UCL
from
  training.default.gold 
where id = 'ES5EZb9'

-- COMMAND ----------

select *
from training.default.gold_with_full_feature


-- COMMAND ----------

select 
  avg(value) as subGroupMean,
  id
from 
  training.default.gold
group by id
order by id asc;



-- COMMAND ----------

select 
  avg(subGroupMean) as xDoubleBar,
  avg(sampleRange) as rbar
from
  (select 
    avg(value) as subGroupMean,
    max(value) - min(value) as sampleRange,
    id
  from 
    training.default.gold
  group by id
  order by id asc)

-- COMMAND ----------

select time, value from training.default.gold

/*End of file*/ 
