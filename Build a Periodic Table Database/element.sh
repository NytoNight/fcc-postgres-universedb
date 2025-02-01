#!/bin/bash
PSQL="psql -X --username=freecodecamp --dbname=periodic_table --tuples-only -c"
SYMBOL=$1
fetch_element_data() {
  local query=$1
  DATA=$($PSQL "$query")

  if [[ -z $DATA ]]; then
    echo "I could not find that element in the database."
  else
    echo "$DATA" | while read BAR BAR NUMBER BAR SYMBOL BAR NAME BAR WEIGHT BAR MELTING BAR BOILING BAR TYPE
    do
      echo "The element with atomic number $NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $WEIGHT amu. $NAME has a melting point of $MELTING celsius and a boiling point of $BOILING celsius."
    done
  fi
}
if [[ -z $SYMBOL ]]; then
  echo "Please provide an element as an argument."
  exit 1
fi
if [[ ! $SYMBOL =~ ^[0-9]+$ ]]; then
  LENGTH=$(echo -n "$SYMBOL" | wc -m)
  if [[ $LENGTH -gt 2 ]]; then
    fetch_element_data "SELECT * FROM elements INNER JOIN properties USING(atomic_number) INNER JOIN types USING (type_id) WHERE name='$SYMBOL'"
  else
    fetch_element_data "SELECT * FROM elements INNER JOIN properties USING(atomic_number) INNER JOIN types USING (type_id) WHERE symbol='$SYMBOL'"
  fi
else
  fetch_element_data "SELECT * FROM elements INNER JOIN properties USING(atomic_number) INNER JOIN types USING (type_id) WHERE atomic_number=$SYMBOL"
fi
