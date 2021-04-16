view: onboarding_chat_conversations {
  sql_table_name: "ONBOARDING"."ONBOARDING_CHAT_CONVERSATIONS"
    ;;

  dimension: count_chats {
    type: number
    sql: ${TABLE}."COUNT_CHATS" ;;
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

  measure: count {
    type: count
    drill_fields: []
  }
}
