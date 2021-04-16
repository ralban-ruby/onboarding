view: onboarding_8_day_survey_reponserate {
  sql_table_name: "ONBOARDING"."ONBOARDING_8DAY_SURVEY_REPONSERATE"
    ;;

  dimension_group: response_month {
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
    sql: ${TABLE}."RESPONSE_MONTH" ;;
  }

  dimension: response_ratio {
    type: number
    sql: ${TABLE}."RESPONSE_RATIO" ;;
  }

  dimension: total_accounts {
    type: number
    sql: ${TABLE}."TOTAL_ACCOUNTS" ;;
  }

  dimension: total_responses {
    type: number
    sql: ${TABLE}."TOTAL_RESPONSES" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
