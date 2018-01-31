view: customers {
  sql_table_name: looker_demo.signup_attribution ;;

  dimension: client_name {
    type: string
    sql: ${TABLE}.client_name ;;
    primary_key: yes
  }

  dimension: utm {
    type: string
    sql: ${TABLE}.utm;;
  }

  measure: count {
    type: count
    drill_fields: [client_name]
  }
}
