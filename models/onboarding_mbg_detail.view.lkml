view: onboarding_mbg_detail {
  sql_table_name: "ONBOARDING"."ONBOARDING_MBG_DETAIL"
    ;;

  dimension: mbg_account_sum {
    type: number
    sql: ${TABLE}."MBG_ACCOUNT_SUM" ;;
  }

  dimension_group: month {
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
    sql: ${TABLE}."MONTH" ;;
  }

  dimension: ratio {
    type: number
    sql: ${TABLE}."RATIO" ;;
  }

  dimension: total_accounts {
    type: number
    sql: ${TABLE}."TOTAL_ACCOUNTS" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
