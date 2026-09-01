CLASS zcl_populate_abo_empl DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_populate_abo_empl IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA lt_empl TYPE TABLE OF zdb_abo_empl.

    " Clear existing table entries
    DELETE FROM zdb_abo_empl.

    " Sample datasets for dynamic generation
    DATA(lt_fnames)       = VALUE string_table( ( `James` ) ( `Sarah` ) ( `Thabo` ) ( `Sipho` ) ( `Elena` ) ( `David` ) ( `Michael` ) ( `Lisa` ) ( `Nomvula` ) ( `Alex` ) ).
    DATA(lt_lnames)       = VALUE string_table( ( `Smith` ) ( `Dlamini` ) ( `Williams` ) ( `Nkosi` ) ( `Johnson` ) ( `Mokoena` ) ( `Brown` ) ( `Patel` ) ( `Jones` ) ( `Taylor` ) ).
    DATA(lt_genders)      = VALUE string_table( ( `M` ) ( `F` ) ( `M` ) ( `M` ) ( `F` ) ( `M` ) ( `M` ) ( `F` ) ( `F` ) ( `M` ) ).
    DATA(lt_designations) = VALUE string_table( ( `Developer` ) ( `Architect` ) ( `Consultant` ) ( `Manager` ) ( `Data Analyst` ) ( `QA Engineer` ) ).

    " Populate 50 entries using 4-character IDs (E001 - E050)
    lt_empl = VALUE #( FOR i = 1 THEN i + 1 UNTIL i > 50 (
      emplid      = |E{ i WIDTH = 3 ALIGN = RIGHT PAD = '0' }|
      fname       = lt_fnames[ ( ( i - 1 ) MOD lines( lt_fnames ) ) + 1 ]
      lname       = lt_lnames[ ( ( i - 1 ) MOD lines( lt_lnames ) ) + 1 ]
      gender      = lt_genders[ ( ( i - 1 ) MOD lines( lt_fnames ) ) + 1 ]
      designation = lt_designations[ ( ( i - 1 ) MOD lines( lt_designations ) ) + 1 ]
    ) ).

    " Insert/update records into database table
    MODIFY zdb_abo_empl FROM TABLE @lt_empl.

    IF sy-subrc = 0.
      out->write( |Successfully inserted/updated { lines( lt_empl ) } records in ZDB_ABO_EMPL.| ).
    ELSE.
      out->write( 'Error writing records to ZDB_ABO_EMPL.' ).
    ENDIF.
  ENDMETHOD.
ENDCLASS.