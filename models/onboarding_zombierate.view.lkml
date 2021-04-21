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

  dimension_group: zombie_month {
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
    sql: ${TABLE}."ZOMBIE_MONTH" ;;
  }

  dimension: OB_History_ID {
    type: string
    sql: ${TABLE}."OB_HISTORY_ID" ;;
  }

  dimension: Account_ID {
    type: string
    sql: ${TABLE}."ACCOUNT_ID" ;;
  }

  dimension: Account_Name {
    type: string
    sql: ${TABLE}."ACCOUNT_NAME" ;;
  }

  dimension:Created_by_ID {
    type: string
    sql: ${TABLE}."CREATED_BY_ID" ;;
  }

  dimension:Created_User {
    type: string
    sql: ${TABLE}."CREATED_USER" ;;
  }

  dimension:Zombie_Count {
    type: string
    sql: ${TABLE}."ZOMBIE_COUNT" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
