view: days_to_activate {
  sql_table_name: "ONBOARDING"."DAYS_TO_ACTIVATE"
    ;;

  dimension: avg_tto {
    type: number
    sql: ${TABLE}."AVG_TTO" ;;
  }

  dimension_group: onboarding_month {
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
    sql: ${TABLE}."ONBOARDING_MONTH" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
