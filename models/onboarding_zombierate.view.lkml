view: onboarding_zombierate {
  sql_table_name: "ONBOARDING"."ONBOARDING_ZOMBIERATE"
    ;;

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

  dimension: zombies {
    type: number
    sql: ${TABLE}."ZOMBIES" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
