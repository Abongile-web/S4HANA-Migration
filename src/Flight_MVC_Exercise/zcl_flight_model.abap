CLASS zcl_flight_model DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    TYPES: BEGIN of tt_FLIGHTS,
           tt_airports type /DMO/I_FLIGHT-AirlineID,
           tt_connection type /DMO/I_FLIGHT-CONNECTIONID,
           tt_FlightDate TYPE /DMO/I_FLIGHT-FlightDate,
    END of tt_flights.
    TYPES: it_flights TYPE STANDARD TABLE OF tt_flights WITH EMPTY KEY.

    METHODS get_flights_by_airline
            IMPORTING lv_airline_id TYPE tt_FLIGHTS-tt_airports
            RETURNING VALUE(rt_table) TYPE it_flights.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_flight_model IMPLEMENTATION.
    METHOD get_flights_by_airline.
        SELECT AIRLINEID, CONNECTIONID, FlightDate FROM /DMO/I_Flight
          WHERE AirlineID = @lv_airline_id
          INTO TABLE @rt_table UP TO 20 rows.

    ENDMETHOD.
ENDCLASS.