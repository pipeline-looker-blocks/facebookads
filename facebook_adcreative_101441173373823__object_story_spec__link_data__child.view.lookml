- view: facebook_adcreative_101441173373823__object_story_spec__link_data__child
  sql_table_name: facebook.facebook_adcreative_101441173373823__object_story_spec__link_data__child
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

  - dimension: call_to_action__type
    type: string
    sql: ${TABLE}.call_to_action__type

  - dimension: description
    type: string
    sql: ${TABLE}.description

  - dimension: image_hash
    type: string
    sql: ${TABLE}.image_hash

  - dimension: link
    type: string
    sql: ${TABLE}.link

  - dimension: name
    type: string
    sql: ${TABLE}.name

  - dimension: picture
    type: string
    sql: ${TABLE}.picture

  - measure: count
    type: count
    drill_fields: [name]

