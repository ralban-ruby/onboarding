view: onboarding_csat {
  sql_table_name: "ONBOARDING"."ONBOARDING_CSAT"
    ;;

  dimension_group: date {
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
    sql: ${TABLE}."DATE" ;;
  }

  dimension: ratio {
    type: number
    sql: ${TABLE}."RATIO" ;;
  }

  dimension: Rating_ID {
    type: number
    sql: ${TABLE}."RatingID" ;;
  }

  dimension_group: created_date {
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
    sql: ${TABLE}."Created_Date" ;;
  }

  dimension: Member {
    type: string
    sql: ${TABLE}."Member" ;;
  }

  dimension: Team {
    type: string
    sql: ${TABLE}."Team" ;;
  }

  dimension: Rating {
    type: string
    sql: ${TABLE}."Rating" ;;
  }
  dimension: Points {
    type: number
    sql: ${TABLE}."Points" ;;
  }

  dimension: Happy {
    type: number
    sql: ${TABLE}."Happy" ;;
  }

  dimension: Total {
    type: number
    sql: ${TABLE}."Total" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
