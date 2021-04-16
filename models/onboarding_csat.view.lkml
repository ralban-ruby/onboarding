view: onboarding_csat {
  sql_table_name: "ONBOARDING"."ONBOARDING_CSAT"
    ;;

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."DATE" ;;
  }

  dimension: ratio {
    type: number
    sql: ${TABLE}."RATIO" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
