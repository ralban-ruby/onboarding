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

  dimension: Owner_ID {
    type: string
    sql: ${TABLE}."OWNER_ID" ;;
  }

  dimension: Owner_Name {
    type: string
    sql: ${TABLE}."Owner_Name" ;;
  }

  dimension: AskNicely_Tag_C {
    type: string
    sql: ${TABLE}."AskNicely_Tag_C" ;;
  }

  dimension: AskNicely_Account_C {
    type: string
    sql: ${TABLE}."AskNicely_Account_C" ;;
  }

  dimension: ASKNICELY_CONTACT_C {
    type: string
    sql: ${TABLE}."ASKNICELY_CONTACT_C" ;;
  }

  dimension: ASKNICELY_COMMENT_C  {
    type: string
    sql: ${TABLE}."ASKNICELY_COMMENT_C " ;;
  }

  dimension: ASKNICELY_QUESTIONID_C {
    type: number
    sql: ${TABLE}."ASKNICELY_QUESTIONID_C" ;;
  }

  dimension: ASKNICELY_SCORE_C  {
    type: number
    sql: ${TABLE}."ASKNICELY_SCORE_C " ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
