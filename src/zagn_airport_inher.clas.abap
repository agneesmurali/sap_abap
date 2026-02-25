CLASS zagn_airport_inher DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZAGN_AIRPORT_INHER IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
  data(lo_passenger) = new lcl_passenger_plane(  ).
  lo_passenger->manu = 'BOEING'.
  lo_passenger->seats = 140.

  data:lo_plane type ref to lcl_airline.
  lo_plane = lo_passenger.

  out->write( 'Up-cast successful.' ).

  data:lo_result type ref to lcl_passenger_plane.
  try.
    lo_result = cast #( lo_plane ).
    out->write( |down-cast successfully seats: { lo_result->seats }| ).
    catch cx_sy_move_cast_error.
    out->write( 'down-cast failed' ).
    endTRY.
  ENDMETHOD.
ENDCLASS.
