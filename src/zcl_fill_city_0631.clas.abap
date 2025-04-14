CLASS zcl_fill_city_0631 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_fill_city_0631 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    MODIFY zcity_texts_0631 FROM ( SELECT airport_id AS airport_id  ,
                                          city       AS city  FROM /dmo/airport ).

    out->write( |row inserted { sy-dbcnt }| ).

  ENDMETHOD.

ENDCLASS.
