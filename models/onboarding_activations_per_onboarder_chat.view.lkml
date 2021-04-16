view: onboarding_activations_per_onboarder_chat {
  sql_table_name: "ONBOARDING"."ONBOARDING_ACTIVATIONS_PER_ONBOARDER_CHAT"
    ;;

  dimension: accounts_to_obers {
    type: number
    sql: ${TABLE}."ACCOUNTS_TO_OBERS" ;;
  }

  dimension_group: activation_month {
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

  dimension: ob_employee_count {
    type: number
    sql: ${TABLE}."OB_EMPLOYEE_COUNT" ;;
  }

  dimension: sum_accounts {
    type: number
    sql: ${TABLE}."SUM_ACCOUNTS" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
