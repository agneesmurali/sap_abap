*"* use this source file for the definition and implementation of
*"* local helper classes, interface definitions and type
*"* declarations
class lcl_airline definition.

  public section.
   data: manu type string,
        type type string.
  protected section.
  private section.

endclass.

class lcl_airline implementation.

endclass.
class lcl_passenger_plane definition iNHERITING FROM lcl_airline.

        public section.
        data seats type i.
   eNDCLASS.
