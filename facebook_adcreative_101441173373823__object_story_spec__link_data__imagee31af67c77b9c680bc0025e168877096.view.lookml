- view: facebook_adcreative_101441173373823__object_story_spec__link_data__imagee31af67c77b9c680bc0025e168877096
  sql_table_name: facebook.facebook_adcreative_101441173373823__object_story_spec__link_data__image#e31af67c77b9c680bc0025e168877096
  fields:

  - dimension: _rjm_batched_at
    type: number
    sql: ${TABLE}._rjm_batched_at

  - dimension: _rjm_level_0_id
    type: number
    sql: ${TABLE}._rjm_level_0_id

  - dimension: _rjm_level_1_id
    type: number
    sql: ${TABLE}._rjm_level_1_id

  - dimension: _rjm_source_key_id
    type: string
    sql: ${TABLE}._rjm_source_key_id

  - dimension: value
    type: number
    sql: ${TABLE}.value

  - measure: count
    type: count
    drill_fields: []

