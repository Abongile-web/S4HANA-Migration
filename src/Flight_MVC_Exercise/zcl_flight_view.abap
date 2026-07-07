CLASS zcl_flight_view DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS show_data
        IMPORTING
            !it_table TYPE ZCL_flight_model=>it_flights
            !io_out   TYPE REF TO if_oo_adt_classrun_out.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_flight_view IMPLEMENTATION.

    METHOD show_data.
        io_out->write( '"-----FLIGHT REPORT-----"' ).
        io_out->write( it_table ).

    ENDMETHOD.
ENDCLASS.