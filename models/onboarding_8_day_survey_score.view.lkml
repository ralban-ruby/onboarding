view: onboarding_8_day_survey_score {
  sql_table_name: "ONBOARDING"."ONBOARDING_8DAY_SURVEY_SCORE"
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

  dimension: survey_ratio {
    type: number
    sql: ${TABLE}."SURVEY_RATIO" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
