with item1 as (
  select
    commits.commit_at as t,
    duration_in_traffic / 60 as mins_in_traffic
  from
    ggoak_version
    join commits on ggoak_version._commit = commits.id
  where t > '2022-10-22T09:12:00'
  order by
    commits.rowid
),
item2 as (
  select
    commits.commit_at as t,
    duration_in_traffic / 60 as mins_in_traffic
  from
    oakgg_version
    join commits on oakgg_version._commit = commits.id
  where t > '2022-10-22T09:12:00'
  order by
    commits.rowid
)
select
  datetime(item1.t, '-7 hours') as t,
  item1.mins_in_traffic as de_ida,
  item2.mins_in_traffic as de_vuelta
from
  item1
  join item2 on item1.t = item2.t