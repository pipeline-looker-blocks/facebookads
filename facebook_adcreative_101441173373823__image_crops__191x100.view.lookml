- view: facebook_adcreative_101441173373823__image_crops__191x100
  sql_table_name: facebook.facebook_adcreative_101441173373823__image_crops__191x100
  fields:

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
    drill_fields: []

