view: flights_cicd {
  sql_table_name: `cloud-training-demos.looker_flights.flights` ;;

  dimension: id {
    primary_key: yes
    hidden: yes
    type: number
    sql: ${TABLE}.id2 ;;
  }
###################### TRAINING FIELDS ###########################


  ## DUMMY TEXT

  dimension: distance {
    type: number
    sql: ${TABLE}.distance ;;
  }

  measure: total_distance {
    type: sum
    sql: ${distance} ;;
  }

  measure: average_distance {
    type: average
    sql: ${distance} ;;
  }
}
