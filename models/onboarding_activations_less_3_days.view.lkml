view: onboarding_activations_less_3_days {
  sql_table_name: "ONBOARDING"."ONBOARDING_ACTIVATIONS_LESS_3DAYS"
    ;;

  dimension: accounts {
    type: number
    sql: ${TABLE}."ACCOUNTS" ;;
  }

  dimension_group: activation_month {
    label: "Month"
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
    sql: ${TABLE}."ACTIVATION_MONTH" ;;
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
