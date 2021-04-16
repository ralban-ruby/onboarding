view: onboarding_percent_closes_activated_in_month_chat {
  sql_table_name: "ONBOARDING"."ONBOARDING_PERCENT_CLOSES_ACTIVATED_IN_MONTH_CHAT"
    ;;

  dimension: activated_accounts {
    type: number
    sql: ${TABLE}."ACTIVATED_ACCOUNTS" ;;
  }

  dimension: ratio {
    type: number
    sql: ${TABLE}."RATIO" ;;
  }

  dimension: sold_accounts {
    type: number
    sql: ${TABLE}."SOLD_ACCOUNTS" ;;
  }

  dimension_group: sold_month {
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
    sql: ${TABLE}."SOLD_MONTH" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
