view: onboarding_activations_less_3_days {
  sql_table_name: "ONBOARDING"."ONBOARDING_ACTIVATIONS_LESS_3DAYS"
    ;;

  dimension: account_id {
    type: string
    sql: ${TABLE}."ACCOUNT_ID" ;;
  }

  dimension: account_name {
    type: string
    sql: ${TABLE}."ACCOUNT_NAME" ;;
  }

  dimension: accounts {
    type: number
    sql: ${TABLE}."ACCOUNTS" ;;
  }

  dimension_group: activation {
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
    sql: ${TABLE}."ACTIVATION_DATE" ;;
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

  dimension_group: onboarding {
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
    sql: ${TABLE}."ONBOARDING_DATE" ;;
  }

  dimension: product_c {
    type: string
    sql: ${TABLE}."PRODUCT_C" ;;
  }

  dimension: ratio {
    type: number
    sql: ${TABLE}."RATIO" ;;
  }

  dimension: time_to_onboard {
    type: number
    sql: ${TABLE}."TIME_TO_ONBOARD" ;;
  }

  measure: count {
    type: count
    drill_fields: [account_name]
  }
}
