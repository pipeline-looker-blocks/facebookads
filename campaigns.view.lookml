- view: campaigns
  sql_table_name: looker_facebook.campaigns_x
  fields:

  - dimension: id
    primary_key: true
    type: string
    sql: ${TABLE}.id
    
  - dimension: account_id
    type: string
    sql: ${TABLE}.account_id

#   - dimension: buying_type
#     type: string
#     sql: ${TABLE}.buying_type

  - dimension: effective_status
    type: string
    sql: ${TABLE}.effective_status

  - dimension: name
    type: string
    sql: ${TABLE}.name

  - dimension: objective
    type: string
    sql: ${TABLE}.objective

  - measure: count
    type: count
    drill_fields: [id, name]