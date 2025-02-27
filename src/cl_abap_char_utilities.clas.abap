CLASS cl_abap_char_utilities DEFINITION PUBLIC.
  PUBLIC SECTION.
    CONSTANTS:
* https://en.wikipedia.org/wiki/Byte_order_mark, 0xEF,0xBB,0xBF
      byte_order_mark_utf8 TYPE x LENGTH 3 VALUE 'EFBBBF',
      byte_order_mark_big TYPE x LENGTH 2 VALUE 'FEFF',
      byte_order_mark_little TYPE x LENGTH 2 VALUE 'FFFE',
      cr_lf TYPE c LENGTH 2 VALUE '__',
      horizontal_tab TYPE c LENGTH 1 VALUE '_',
      newline TYPE c LENGTH 1 VALUE '_'.

    CLASS-METHODS class_constructor.
ENDCLASS.

CLASS cl_abap_char_utilities IMPLEMENTATION.

  METHOD class_constructor.
    WRITE '@KERNEL cl_abap_char_utilities.cr_lf.set("\r\n");'.
    WRITE '@KERNEL cl_abap_char_utilities.horizontal_tab.set("\t");'.
    WRITE '@KERNEL cl_abap_char_utilities.newline.set("\n");'.
  ENDMETHOD.

ENDCLASS.