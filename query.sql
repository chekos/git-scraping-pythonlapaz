with trafico_de_ida as (
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
trafico_de_vuelta as (
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
  datetime(trafico_de_ida.t, '-7 hours') as t,
  trafico_de_ida.mins_in_traffic as de_ida,
  trafico_de_vuelta.mins_in_traffic as de_vuelta
from
  trafico_de_ida
  join trafico_de_vuelta on trafico_de_ida.t = trafico_de_vuelta.t