- view: facebook_campaigns__ads__data
  sql_table_name: facebook.facebook_campaigns_101441173373823__ads__data
  fields:

  - dimension: id
    primary_key: true
    type: string
    sql: ${TABLE}.id

  - dimension: _rjm_batched_at
    type: number
    sql: ${TABLE}._rjm_batched_at

  - dimension: _rjm_level_0_id
    type: number
    sql: ${TABLE}._rjm_level_0_id

  - dimension: _rjm_source_key_id
    type: string
    sql: ${TABLE}._rjm_source_key_id

  - measure: count
    type: count
    drill_fields: [id]

