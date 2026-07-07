CLASS zcl_flight_controller DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_flight_controller IMPLEMENTATION.
    METHOD if_oo_adt_classrun~main.
        " 1. Instantiate the Model and get the data
        DATA(lo_model) = NEW zcl_flight_data( ).
        DATA(lt_data)  = lo_model->get_data( ).

        " 2. Instantiate the View and pass the data to it
        DATA(lo_view) = NEW zcl_flight_display( ).
        " Explicitly name the parameters here:
          lo_view->show_data(
            it_table = lt_data
            io_out   = out
          ).
  ENDMETHOD.
ENDCLASS.