%include "../includes.asm"
%include "../helper_functions.asm"
section .data
static24_actual db "display",0h ; Autogen
static24_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static24_actual
    iend

        
static44_actual dd 1 ; Autogen
static44_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    2
        at data_ptr.mem, dd     static44_actual
    iend

        
static17_actual db "fibonnaci",0h ; Autogen
static17_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    4
        at data_ptr.mem, dd     static17_actual
    iend

        
static25_actual db "doesnt equal 5 :[",0h ; Autogen
static25_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    4
        at data_ptr.mem, dd     static25_actual
    iend

        
static29_actual dd 0 ; Autogen
static29_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    1
        at data_ptr.mem, dd     static29_actual
    iend

        
static45_actual db "times",0h ; Autogen
static45_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static45_actual
    iend

        
static16_actual db "y",0h ; Autogen
static16_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static16_actual
    iend

        
static10_actual db "display",0h ; Autogen
static10_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static10_actual
    iend

        
static58_actual db "display",0h ; Autogen
static58_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static58_actual
    iend

        
static67_actual db "display",0h ; Autogen
static67_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static67_actual
    iend

        
static81_actual db "n",0h ; Autogen
static81_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static81_actual
    iend

        
_5_ll_item_0_actual db "f",0h ; Autogen
_5_ll_item_0_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     _5_ll_item_0_actual
    iend

        
_5_ll_item_0:
    istruc linked_list_node
        at linked_list_node.next, dd _5_ll_item_1 ; none if last
        at linked_list_node.data, dd _5_ll_item_0_data_ptr_struc ; ptr to data
    iend
_5_ll_item_1_actual db "n",0h ; Autogen
_5_ll_item_1_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     _5_ll_item_1_actual
    iend

        
_5_ll_item_1:
    istruc linked_list_node
        at linked_list_node.next, dd 0 ; none if last
        at linked_list_node.data, dd _5_ll_item_1_data_ptr_struc ; ptr to data
    iend
_5_data_ptr_struc:
    istruc data_ptr
    at data_ptr.type, dd    5
    at data_ptr.mem, dd     _5_ll_item_0
    iend

static7_actual db "n1",0h ; Autogen
static7_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static7_actual
    iend

        
static22_actual db "equals 5 :]",0h ; Autogen
static22_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    4
        at data_ptr.mem, dd     static22_actual
    iend

        
static5_actual dd 1 ; Autogen
static5_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    1
        at data_ptr.mem, dd     static5_actual
    iend

        
static84_actual db "display",0h ; Autogen
static84_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static84_actual
    iend

        
static90_actual db "somefact",0h ; Autogen
static90_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    4
        at data_ptr.mem, dd     static90_actual
    iend

        
static34_actual db "times",0h ; Autogen
static34_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static34_actual
    iend

        
static38_actual dd 1 ; Autogen
static38_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    1
        at data_ptr.mem, dd     static38_actual
    iend

        
static60_actual dd 4 ; Autogen
static60_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    1
        at data_ptr.mem, dd     static60_actual
    iend

        
static48_actual db "minus",0h ; Autogen
static48_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static48_actual
    iend

        
static62_actual db "n",0h ; Autogen
static62_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static62_actual
    iend

        
static31_actual dd 1 ; Autogen
static31_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    2
        at data_ptr.mem, dd     static31_actual
    iend

        
static18_actual db "atom_eq?",0h ; Autogen
static18_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static18_actual
    iend

        
static74_actual dd 0 ; Autogen
static74_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    1
        at data_ptr.mem, dd     static74_actual
    iend

        
static69_actual db "n",0h ; Autogen
static69_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static69_actual
    iend

        
static75_actual dd 1 ; Autogen
static75_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    1
        at data_ptr.mem, dd     static75_actual
    iend

        
static26_actual db "cond_test",0h ; Autogen
static26_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    4
        at data_ptr.mem, dd     static26_actual
    iend

        
static14_actual db "plus",0h ; Autogen
static14_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static14_actual
    iend

        
static13_actual db "y",0h ; Autogen
static13_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static13_actual
    iend

        
static6_actual db "cons",0h ; Autogen
static6_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static6_actual
    iend

        
_6_ll_item_0_actual db "n",0h ; Autogen
_6_ll_item_0_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     _6_ll_item_0_actual
    iend

        
_6_ll_item_0:
    istruc linked_list_node
        at linked_list_node.next, dd 0 ; none if last
        at linked_list_node.data, dd _6_ll_item_0_data_ptr_struc ; ptr to data
    iend
_6_data_ptr_struc:
    istruc data_ptr
    at data_ptr.type, dd    5
    at data_ptr.mem, dd     _6_ll_item_0
    iend

static56_actual dd 2 ; Autogen
static56_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    1
        at data_ptr.mem, dd     static56_actual
    iend

        
static98_actual dd 7 ; Autogen
static98_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    1
        at data_ptr.mem, dd     static98_actual
    iend

        
static36_actual db "minus",0h ; Autogen
static36_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static36_actual
    iend

        
static47_actual db "factorial",0h ; Autogen
static47_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static47_actual
    iend

        
static59_actual db "factorial",0h ; Autogen
static59_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static59_actual
    iend

        
static32_actual db "plus",0h ; Autogen
static32_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static32_actual
    iend

        
static76_actual dd 1 ; Autogen
static76_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    2
        at data_ptr.mem, dd     static76_actual
    iend

        
static70_actual dd 6 ; Autogen
static70_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    1
        at data_ptr.mem, dd     static70_actual
    iend

        
static0_actual db "display",0h ; Autogen
static0_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static0_actual
    iend

        
static91_actual db "display",0h ; Autogen
static91_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static91_actual
    iend

        
static77_actual db "times",0h ; Autogen
static77_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static77_actual
    iend

        
static39_actual db "times",0h ; Autogen
static39_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    4
        at data_ptr.mem, dd     static39_actual
    iend

        
static88_actual db "almost-factorial",0h ; Autogen
static88_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static88_actual
    iend

        
static54_actual db "display",0h ; Autogen
static54_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static54_actual
    iend

        
static1_actual db "n1",0h ; Autogen
static1_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static1_actual
    iend

        
static23_actual dd 1 ; Autogen
static23_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    2
        at data_ptr.mem, dd     static23_actual
    iend

        
static63_actual db "n",0h ; Autogen
static63_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static63_actual
    iend

        
static80_actual db "minus",0h ; Autogen
static80_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static80_actual
    iend

        
static55_actual db "times",0h ; Autogen
static55_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static55_actual
    iend

        
static86_actual db "n",0h ; Autogen
static86_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static86_actual
    iend

        
static95_actual dd 4 ; Autogen
static95_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    1
        at data_ptr.mem, dd     static95_actual
    iend

        
static43_actual dd 1 ; Autogen
static43_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    1
        at data_ptr.mem, dd     static43_actual
    iend

        
static64_actual db "high-ord-test",0h ; Autogen
static64_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    4
        at data_ptr.mem, dd     static64_actual
    iend

        
static33_actual db "n",0h ; Autogen
static33_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static33_actual
    iend

        
static66_actual db "high-ord-test",0h ; Autogen
static66_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static66_actual
    iend

        
static30_actual dd 0 ; Autogen
static30_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    1
        at data_ptr.mem, dd     static30_actual
    iend

        
static27_actual db "atom_eq?",0h ; Autogen
static27_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static27_actual
    iend

        
static2_actual db "cust_func",0h ; Autogen
static2_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static2_actual
    iend

        
static42_actual dd 0 ; Autogen
static42_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    1
        at data_ptr.mem, dd     static42_actual
    iend

        
_0_ll_item_0_actual db "n1",0h ; Autogen
_0_ll_item_0_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     _0_ll_item_0_actual
    iend

        
_0_ll_item_0:
    istruc linked_list_node
        at linked_list_node.next, dd _0_ll_item_1 ; none if last
        at linked_list_node.data, dd _0_ll_item_0_data_ptr_struc ; ptr to data
    iend
_0_ll_item_1_actual db "n2",0h ; Autogen
_0_ll_item_1_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     _0_ll_item_1_actual
    iend

        
_0_ll_item_1:
    istruc linked_list_node
        at linked_list_node.next, dd 0 ; none if last
        at linked_list_node.data, dd _0_ll_item_1_data_ptr_struc ; ptr to data
    iend
_0_data_ptr_struc:
    istruc data_ptr
    at data_ptr.type, dd    5
    at data_ptr.mem, dd     _0_ll_item_0
    iend

static53_actual dd 5 ; Autogen
static53_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    1
        at data_ptr.mem, dd     static53_actual
    iend

        
static49_actual db "n",0h ; Autogen
static49_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static49_actual
    iend

        
_3_ll_item_0_actual db "n",0h ; Autogen
_3_ll_item_0_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     _3_ll_item_0_actual
    iend

        
_3_ll_item_0:
    istruc linked_list_node
        at linked_list_node.next, dd _3_ll_item_1 ; none if last
        at linked_list_node.data, dd _3_ll_item_0_data_ptr_struc ; ptr to data
    iend
_3_ll_item_1_actual db "m",0h ; Autogen
_3_ll_item_1_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     _3_ll_item_1_actual
    iend

        
_3_ll_item_1:
    istruc linked_list_node
        at linked_list_node.next, dd 0 ; none if last
        at linked_list_node.data, dd _3_ll_item_1_data_ptr_struc ; ptr to data
    iend
_3_data_ptr_struc:
    istruc data_ptr
    at data_ptr.type, dd    5
    at data_ptr.mem, dd     _3_ll_item_0
    iend

static68_actual db "times",0h ; Autogen
static68_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static68_actual
    iend

        
static57_actual dd 2 ; Autogen
static57_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    1
        at data_ptr.mem, dd     static57_actual
    iend

        
static72_actual db "atom_eq?",0h ; Autogen
static72_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static72_actual
    iend

        
static11_actual db "x",0h ; Autogen
static11_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static11_actual
    iend

        
static52_actual db "cond_test",0h ; Autogen
static52_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static52_actual
    iend

        
static92_actual db "somefact",0h ; Autogen
static92_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static92_actual
    iend

        
static83_actual db "almost-factorial",0h ; Autogen
static83_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    4
        at data_ptr.mem, dd     static83_actual
    iend

        
_7_ll_item_0_actual db "f",0h ; Autogen
_7_ll_item_0_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     _7_ll_item_0_actual
    iend

        
_7_ll_item_0:
    istruc linked_list_node
        at linked_list_node.next, dd 0 ; none if last
        at linked_list_node.data, dd _7_ll_item_0_data_ptr_struc ; ptr to data
    iend
_7_data_ptr_struc:
    istruc data_ptr
    at data_ptr.type, dd    5
    at data_ptr.mem, dd     _7_ll_item_0
    iend

_9_ll_item_0_actual db "n",0h ; Autogen
_9_ll_item_0_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     _9_ll_item_0_actual
    iend

        
_9_ll_item_0:
    istruc linked_list_node
        at linked_list_node.next, dd 0 ; none if last
        at linked_list_node.data, dd _9_ll_item_0_data_ptr_struc ; ptr to data
    iend
_9_data_ptr_struc:
    istruc data_ptr
    at data_ptr.type, dd    5
    at data_ptr.mem, dd     _9_ll_item_0
    iend

static9_actual db "cust_func",0h ; Autogen
static9_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    4
        at data_ptr.mem, dd     static9_actual
    iend

        
static37_actual db "m",0h ; Autogen
static37_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static37_actual
    iend

        
_2_ll_item_0_actual db "x",0h ; Autogen
_2_ll_item_0_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     _2_ll_item_0_actual
    iend

        
_2_ll_item_0:
    istruc linked_list_node
        at linked_list_node.next, dd 0 ; none if last
        at linked_list_node.data, dd _2_ll_item_0_data_ptr_struc ; ptr to data
    iend
_2_data_ptr_struc:
    istruc data_ptr
    at data_ptr.type, dd    5
    at data_ptr.mem, dd     _2_ll_item_0
    iend

static78_actual db "n",0h ; Autogen
static78_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static78_actual
    iend

        
static89_actual db "temp",0h ; Autogen
static89_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static89_actual
    iend

        
static19_actual db "x",0h ; Autogen
static19_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static19_actual
    iend

        
static8_actual db "n2",0h ; Autogen
static8_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static8_actual
    iend

        
static35_actual db "n",0h ; Autogen
static35_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static35_actual
    iend

        
_8_ll_item_0_actual db "n",0h ; Autogen
_8_ll_item_0_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     _8_ll_item_0_actual
    iend

        
_8_ll_item_0:
    istruc linked_list_node
        at linked_list_node.next, dd 0 ; none if last
        at linked_list_node.data, dd _8_ll_item_0_data_ptr_struc ; ptr to data
    iend
_8_data_ptr_struc:
    istruc data_ptr
    at data_ptr.type, dd    5
    at data_ptr.mem, dd     _8_ll_item_0
    iend

_4_ll_item_0_actual db "n",0h ; Autogen
_4_ll_item_0_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     _4_ll_item_0_actual
    iend

        
_4_ll_item_0:
    istruc linked_list_node
        at linked_list_node.next, dd 0 ; none if last
        at linked_list_node.data, dd _4_ll_item_0_data_ptr_struc ; ptr to data
    iend
_4_data_ptr_struc:
    istruc data_ptr
    at data_ptr.type, dd    5
    at data_ptr.mem, dd     _4_ll_item_0
    iend

static61_actual db "f",0h ; Autogen
static61_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static61_actual
    iend

        
static4_actual db "n1",0h ; Autogen
static4_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static4_actual
    iend

        
static28_actual db "m",0h ; Autogen
static28_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static28_actual
    iend

        
static85_actual db "n",0h ; Autogen
static85_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static85_actual
    iend

        
static94_actual db "somefact",0h ; Autogen
static94_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static94_actual
    iend

        
static96_actual dd 5 ; Autogen
static96_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    1
        at data_ptr.mem, dd     static96_actual
    iend

        
static15_actual db "x",0h ; Autogen
static15_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static15_actual
    iend

        
static40_actual db "atom_eq?",0h ; Autogen
static40_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static40_actual
    iend

        
static41_actual db "n",0h ; Autogen
static41_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static41_actual
    iend

        
static51_actual db "factorial",0h ; Autogen
static51_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    4
        at data_ptr.mem, dd     static51_actual
    iend

        
static87_actual db "temp",0h ; Autogen
static87_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    4
        at data_ptr.mem, dd     static87_actual
    iend

        
static12_actual db "fibonnaci",0h ; Autogen
static12_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static12_actual
    iend

        
static93_actual db "display",0h ; Autogen
static93_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static93_actual
    iend

        
static3_actual db "plus",0h ; Autogen
static3_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static3_actual
    iend

        
_1_ll_item_0_actual db "x",0h ; Autogen
_1_ll_item_0_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     _1_ll_item_0_actual
    iend

        
_1_ll_item_0:
    istruc linked_list_node
        at linked_list_node.next, dd _1_ll_item_1 ; none if last
        at linked_list_node.data, dd _1_ll_item_0_data_ptr_struc ; ptr to data
    iend
_1_ll_item_1_actual db "y",0h ; Autogen
_1_ll_item_1_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     _1_ll_item_1_actual
    iend

        
_1_ll_item_1:
    istruc linked_list_node
        at linked_list_node.next, dd 0 ; none if last
        at linked_list_node.data, dd _1_ll_item_1_data_ptr_struc ; ptr to data
    iend
_1_data_ptr_struc:
    istruc data_ptr
    at data_ptr.type, dd    5
    at data_ptr.mem, dd     _1_ll_item_0
    iend

static46_actual db "n",0h ; Autogen
static46_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static46_actual
    iend

        
static50_actual dd 1 ; Autogen
static50_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    1
        at data_ptr.mem, dd     static50_actual
    iend

        
static97_actual dd 6 ; Autogen
static97_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    1
        at data_ptr.mem, dd     static97_actual
    iend

        
static20_actual dd 5 ; Autogen
static20_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    1
        at data_ptr.mem, dd     static20_actual
    iend

        
static73_actual db "n",0h ; Autogen
static73_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static73_actual
    iend

        
static21_actual db "display",0h ; Autogen
static21_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static21_actual
    iend

        
static82_actual dd 1 ; Autogen
static82_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    1
        at data_ptr.mem, dd     static82_actual
    iend

        
static65_actual db "display",0h ; Autogen
static65_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static65_actual
    iend

        
static79_actual db "factorial",0h ; Autogen
static79_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static79_actual
    iend

        
static71_actual dd 7 ; Autogen
static71_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    1
        at data_ptr.mem, dd     static71_actual
    iend

        
global_scope:
    istruc scope_overlord
        at scope_overlord.parent, dd 0 ; global scope doesnt have parents!
        at scope_overlord.scope_data, dd global_scope_data_ll_0
    iend
current_scope dd global_scope

primitive_car_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd 6
        at data_ptr.mem, dd primitive_car_init_func_ptr_struc
    iend
primitive_car_init_func_ptr_struc:
    istruc init_func_pointer
        at init_func_pointer.actual_func_ptr, dd primitive_car_asm_actual ; actual pointer
        at init_func_pointer.scope, dd primitive_car_init_scope ; ptr to scope
    iend
primitive_car_init_scope:
    istruc scope_overlord
        at scope_overlord.parent, dd global_scope
        at scope_overlord.scope_data, dd 0 ; uninitialized
    iend
    
primitive_car_global_scope_string_ident:
        db "car", 0h
global_scope_data_ll_0:
    istruc scope_member
        at scope_member.next, dd global_scope_data_ll_1 ; none if last
        at scope_member.identifier, dd primitive_car_global_scope_string_ident ; ptr to string ident
        at scope_member.data, dd primitive_car_ptr_struc ; ptr to function
    iend

primitive_cdr_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd 6
        at data_ptr.mem, dd primitive_cdr_init_func_ptr_struc
    iend
primitive_cdr_init_func_ptr_struc:
    istruc init_func_pointer
        at init_func_pointer.actual_func_ptr, dd primitive_cdr_asm_actual ; actual pointer
        at init_func_pointer.scope, dd primitive_cdr_init_scope ; ptr to scope
    iend
primitive_cdr_init_scope:
    istruc scope_overlord
        at scope_overlord.parent, dd global_scope
        at scope_overlord.scope_data, dd 0 ; uninitialized
    iend
    
primitive_cdr_global_scope_string_ident:
        db "cdr", 0h
global_scope_data_ll_1:
    istruc scope_member
        at scope_member.next, dd global_scope_data_ll_2 ; none if last
        at scope_member.identifier, dd primitive_cdr_global_scope_string_ident ; ptr to string ident
        at scope_member.data, dd primitive_cdr_ptr_struc ; ptr to function
    iend

primitive_cons_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd 6
        at data_ptr.mem, dd primitive_cons_init_func_ptr_struc
    iend
primitive_cons_init_func_ptr_struc:
    istruc init_func_pointer
        at init_func_pointer.actual_func_ptr, dd primitive_cons_asm_actual ; actual pointer
        at init_func_pointer.scope, dd primitive_cons_init_scope ; ptr to scope
    iend
primitive_cons_init_scope:
    istruc scope_overlord
        at scope_overlord.parent, dd global_scope
        at scope_overlord.scope_data, dd 0 ; uninitialized
    iend
    
primitive_cons_global_scope_string_ident:
        db "cons", 0h
global_scope_data_ll_2:
    istruc scope_member
        at scope_member.next, dd global_scope_data_ll_3 ; none if last
        at scope_member.identifier, dd primitive_cons_global_scope_string_ident ; ptr to string ident
        at scope_member.data, dd primitive_cons_ptr_struc ; ptr to function
    iend

primitive_display_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd 6
        at data_ptr.mem, dd primitive_display_init_func_ptr_struc
    iend
primitive_display_init_func_ptr_struc:
    istruc init_func_pointer
        at init_func_pointer.actual_func_ptr, dd primitive_display_asm_actual ; actual pointer
        at init_func_pointer.scope, dd primitive_display_init_scope ; ptr to scope
    iend
primitive_display_init_scope:
    istruc scope_overlord
        at scope_overlord.parent, dd global_scope
        at scope_overlord.scope_data, dd 0 ; uninitialized
    iend
    
primitive_display_global_scope_string_ident:
        db "display", 0h
global_scope_data_ll_3:
    istruc scope_member
        at scope_member.next, dd global_scope_data_ll_4 ; none if last
        at scope_member.identifier, dd primitive_display_global_scope_string_ident ; ptr to string ident
        at scope_member.data, dd primitive_display_ptr_struc ; ptr to function
    iend

primitive_plus_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd 6
        at data_ptr.mem, dd primitive_plus_init_func_ptr_struc
    iend
primitive_plus_init_func_ptr_struc:
    istruc init_func_pointer
        at init_func_pointer.actual_func_ptr, dd primitive_plus_asm_actual ; actual pointer
        at init_func_pointer.scope, dd primitive_plus_init_scope ; ptr to scope
    iend
primitive_plus_init_scope:
    istruc scope_overlord
        at scope_overlord.parent, dd global_scope
        at scope_overlord.scope_data, dd 0 ; uninitialized
    iend
    
primitive_plus_global_scope_string_ident:
        db "plus", 0h
global_scope_data_ll_4:
    istruc scope_member
        at scope_member.next, dd global_scope_data_ll_5 ; none if last
        at scope_member.identifier, dd primitive_plus_global_scope_string_ident ; ptr to string ident
        at scope_member.data, dd primitive_plus_ptr_struc ; ptr to function
    iend

primitive_atom_eq?_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd 6
        at data_ptr.mem, dd primitive_atom_eq?_init_func_ptr_struc
    iend
primitive_atom_eq?_init_func_ptr_struc:
    istruc init_func_pointer
        at init_func_pointer.actual_func_ptr, dd primitive_atom_eq?_asm_actual ; actual pointer
        at init_func_pointer.scope, dd primitive_atom_eq?_init_scope ; ptr to scope
    iend
primitive_atom_eq?_init_scope:
    istruc scope_overlord
        at scope_overlord.parent, dd global_scope
        at scope_overlord.scope_data, dd 0 ; uninitialized
    iend
    
primitive_atom_eq?_global_scope_string_ident:
        db "atom_eq?", 0h
global_scope_data_ll_5:
    istruc scope_member
        at scope_member.next, dd global_scope_data_ll_6 ; none if last
        at scope_member.identifier, dd primitive_atom_eq?_global_scope_string_ident ; ptr to string ident
        at scope_member.data, dd primitive_atom_eq?_ptr_struc ; ptr to function
    iend

primitive_minus_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd 6
        at data_ptr.mem, dd primitive_minus_init_func_ptr_struc
    iend
primitive_minus_init_func_ptr_struc:
    istruc init_func_pointer
        at init_func_pointer.actual_func_ptr, dd primitive_minus_asm_actual ; actual pointer
        at init_func_pointer.scope, dd primitive_minus_init_scope ; ptr to scope
    iend
primitive_minus_init_scope:
    istruc scope_overlord
        at scope_overlord.parent, dd global_scope
        at scope_overlord.scope_data, dd 0 ; uninitialized
    iend
    
primitive_minus_global_scope_string_ident:
        db "minus", 0h
global_scope_data_ll_6:
    istruc scope_member
        at scope_member.next, dd 0 ; none if last
        at scope_member.identifier, dd primitive_minus_global_scope_string_ident ; ptr to string ident
        at scope_member.data, dd primitive_minus_ptr_struc ; ptr to function
    iend

section .bss
vreg0: resd 1
vreg1: resd 1
vreg2: resd 1
vreg3: resd 1
vreg4: resd 1
vreg5: resd 1
vreg6: resd 1
vreg7: resd 1
vreg8: resd 1
vreg9: resd 1
vreg10: resd 1
vreg11: resd 1
vreg12: resd 1
vreg13: resd 1
vreg14: resd 1
vreg15: resd 1
vreg16: resd 1
vreg17: resd 1
vreg18: resd 1
vreg19: resd 1
vreg20: resd 1
vreg21: resd 1
vreg22: resd 1
vreg23: resd 1
vreg24: resd 1
vreg25: resd 1
vreg26: resd 1
vreg27: resd 1
vreg28: resd 1
vreg29: resd 1
vreg30: resd 1
vreg31: resd 1
vreg32: resd 1
vreg33: resd 1
vreg34: resd 1
vreg35: resd 1
vreg36: resd 1
vreg37: resd 1
vreg38: resd 1
vreg39: resd 1
vreg40: resd 1
vreg41: resd 1
vreg42: resd 1
vreg43: resd 1
vreg44: resd 1
vreg45: resd 1
vreg46: resd 1
vreg47: resd 1
vreg48: resd 1
vreg49: resd 1
vreg50: resd 1
vreg51: resd 1
vreg52: resd 1
vreg53: resd 1
vreg54: resd 1
vreg55: resd 1
vreg56: resd 1
vreg57: resd 1
vreg58: resd 1
vreg59: resd 1
vreg60: resd 1
vreg61: resd 1
vreg62: resd 1
vreg63: resd 1
vreg64: resd 1
vreg65: resd 1
vreg66: resd 1
vreg67: resd 1
vreg68: resd 1
vreg69: resd 1
vreg70: resd 1
vreg71: resd 1
vreg72: resd 1
vreg73: resd 1
vreg74: resd 1
vreg75: resd 1
vreg76: resd 1
vreg77: resd 1
vreg78: resd 1
vreg79: resd 1
vreg80: resd 1
vreg81: resd 1
vreg82: resd 1
vreg83: resd 1
vreg84: resd 1
vreg85: resd 1
vreg86: resd 1
vreg87: resd 1
vreg88: resd 1
vreg89: resd 1
vreg90: resd 1
vreg91: resd 1
vreg92: resd 1
vreg93: resd 1
vreg94: resd 1
vreg95: resd 1
vreg96: resd 1
vreg97: resd 1
vreg98: resd 1
vreg99: resd 1
vreg100: resd 1
vreg101: resd 1
vreg102: resd 1
vreg103: resd 1
vreg104: resd 1
vreg105: resd 1
vreg106: resd 1
vreg107: resd 1
vreg108: resd 1
vreg109: resd 1
vreg110: resd 1
vreg111: resd 1
vreg112: resd 1
vreg113: resd 1
vreg114: resd 1
vreg115: resd 1
vreg116: resd 1
vreg117: resd 1
vreg118: resd 1
vreg119: resd 1
vreg120: resd 1
vreg121: resd 1
vreg122: resd 1
vreg123: resd 1
vreg124: resd 1
vreg125: resd 1
vreg126: resd 1
vreg127: resd 1
vreg128: resd 1
vreg129: resd 1
vreg130: resd 1
vreg131: resd 1
vreg132: resd 1
vreg133: resd 1
vreg134: resd 1
vreg135: resd 1
vreg136: resd 1
vreg137: resd 1
vreg138: resd 1
vreg139: resd 1
vreg140: resd 1
vreg141: resd 1
vreg142: resd 1
vreg143: resd 1
vreg144: resd 1
vreg145: resd 1
vreg146: resd 1
vreg147: resd 1
vreg148: resd 1
vreg149: resd 1
vreg150: resd 1
vreg151: resd 1
vreg152: resd 1
vreg153: resd 1
vreg154: resd 1
vreg155: resd 1
vreg156: resd 1
vreg157: resd 1
vreg158: resd 1
vreg159: resd 1
vreg160: resd 1
vreg161: resd 1
vreg162: resd 1
vreg163: resd 1
vreg164: resd 1
vreg165: resd 1
vreg166: resd 1
vreg167: resd 1
vreg168: resd 1
vreg169: resd 1
vreg170: resd 1
vreg171: resd 1
vreg172: resd 1
vreg173: resd 1
vreg174: resd 1
vreg175: resd 1
vreg176: resd 1
vreg177: resd 1
vreg178: resd 1
vreg179: resd 1
vreg180: resd 1
vreg181: resd 1
vreg182: resd 1
vreg183: resd 1
vreg184: resd 1
vreg185: resd 1
vreg186: resd 1
vreg187: resd 1
vreg188: resd 1
vreg189: resd 1
vreg190: resd 1
vreg191: resd 1
vreg192: resd 1
vreg193: resd 1
vreg194: resd 1
vreg195: resd 1
vreg196: resd 1
vreg197: resd 1
vreg198: resd 1
vreg199: resd 1
vreg200: resd 1
vreg201: resd 1
vreg202: resd 1
vreg203: resd 1
vreg204: resd 1
vreg205: resd 1
vreg206: resd 1
vreg207: resd 1
vreg208: resd 1
vreg209: resd 1
vreg210: resd 1
vreg211: resd 1
vreg212: resd 1
vreg213: resd 1
vreg214: resd 1
vreg215: resd 1
vreg216: resd 1
vreg217: resd 1
vreg218: resd 1
vreg219: resd 1
vreg220: resd 1
vreg221: resd 1
vreg222: resd 1
vreg223: resd 1
vreg224: resd 1
vreg225: resd 1
vreg226: resd 1
vreg227: resd 1
vreg228: resd 1
vreg229: resd 1
vreg230: resd 1
vreg231: resd 1
vreg232: resd 1
vreg233: resd 1
vreg234: resd 1
vreg235: resd 1
vreg236: resd 1
vreg237: resd 1
vreg238: resd 1
vreg239: resd 1
vreg240: resd 1
vreg241: resd 1
vreg242: resd 1
vreg243: resd 1
vreg244: resd 1
vreg245: resd 1
vreg246: resd 1
vreg247: resd 1
vreg248: resd 1
vreg249: resd 1
vreg250: resd 1
vreg251: resd 1
vreg252: resd 1
vreg253: resd 1
vreg254: resd 1
vreg255: resd 1
vreg256: resd 1
vreg257: resd 1
vreg258: resd 1
vreg259: resd 1
vreg260: resd 1
vreg261: resd 1
vreg262: resd 1
vreg263: resd 1
vreg264: resd 1
vreg265: resd 1
vreg266: resd 1
vreg267: resd 1
vreg268: resd 1
vreg269: resd 1
vreg270: resd 1
vreg271: resd 1
vreg272: resd 1
vreg273: resd 1
vreg274: resd 1
vreg275: resd 1
vreg276: resd 1
vreg277: resd 1
vreg278: resd 1
vreg279: resd 1
vreg280: resd 1
vreg281: resd 1
vreg282: resd 1
vreg283: resd 1
vreg284: resd 1
vreg285: resd 1
vreg286: resd 1
vreg287: resd 1
vreg288: resd 1
vreg289: resd 1
vreg290: resd 1
vreg291: resd 1
vreg292: resd 1
vreg293: resd 1
vreg294: resd 1
vreg295: resd 1
vreg296: resd 1
vreg297: resd 1
vreg298: resd 1
vreg299: resd 1
vreg300: resd 1
vreg301: resd 1
vreg302: resd 1
vreg303: resd 1
vreg304: resd 1
vreg305: resd 1
vreg306: resd 1
vreg307: resd 1
vreg308: resd 1
vreg309: resd 1
vreg310: resd 1
vreg311: resd 1
vreg312: resd 1
vreg313: resd 1
vreg314: resd 1
vreg315: resd 1
vreg316: resd 1
vreg317: resd 1
vreg318: resd 1
vreg319: resd 1
vreg320: resd 1
vreg321: resd 1
vreg322: resd 1
vreg323: resd 1
vreg324: resd 1
vreg325: resd 1
vreg326: resd 1
vreg327: resd 1
vreg328: resd 1
vreg329: resd 1
vreg330: resd 1
vreg331: resd 1
vreg332: resd 1
vreg333: resd 1
vreg334: resd 1
vreg335: resd 1
vreg336: resd 1
vreg337: resd 1
vreg338: resd 1
vreg339: resd 1
vreg340: resd 1
vreg341: resd 1
vreg342: resd 1
vreg343: resd 1
vreg344: resd 1
vreg345: resd 1
vreg346: resd 1
vreg347: resd 1
vreg348: resd 1
vreg349: resd 1
vreg350: resd 1
vreg351: resd 1
vreg352: resd 1
vreg353: resd 1
vreg354: resd 1
vreg355: resd 1
vreg356: resd 1
vreg357: resd 1
vreg358: resd 1
vreg359: resd 1
vreg360: resd 1
vreg361: resd 1
vreg362: resd 1
vreg363: resd 1
vreg364: resd 1
vreg365: resd 1
vreg366: resd 1
vreg367: resd 1
vreg368: resd 1
vreg369: resd 1
vreg370: resd 1
vreg371: resd 1
vreg372: resd 1
vreg373: resd 1
vreg374: resd 1
vreg375: resd 1
vreg376: resd 1
vreg377: resd 1
vreg378: resd 1
vreg379: resd 1
vreg380: resd 1
vreg381: resd 1
vreg382: resd 1
vreg383: resd 1
vreg384: resd 1
vreg385: resd 1
vreg386: resd 1
vreg387: resd 1
vreg388: resd 1
vreg389: resd 1
vreg390: resd 1
vreg391: resd 1
vreg392: resd 1
vreg393: resd 1

section .text
extern printf,malloc
global main

_1:
    push ebp ; hello there
    mov ebp,esp

    push dword[ebp+8] ; LinearInstruction::AcceptToFormals
    push _1_data_ptr_struc
    call accept_to_formals 
    add esp,8

    push dword 0 ; LinearInstruction::Lookup
    push static10_actual
    push dword[current_scope]
    call lookup_in_scope_and_parents
    add esp, 8
    pop esi
    mov dword[vreg42],esi

    push dword[vreg42] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::LinkedListInit
    call init_linked_list
    pop esi
    mov [vreg43],esi

    push dword[vreg43] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::Lookup
    push static11_actual
    push dword[current_scope]
    call lookup_in_scope_and_parents
    add esp, 8
    pop esi
    mov dword[vreg44],esi

    push dword[vreg44] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg45],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg46],esi

    mov esi, dword[vreg46] ; linked_list_reg ; LinearInstruction::LinkedListAdd
    mov edi, dword[vreg45] ; input_reg
    push esi 
    push dword edi
    call add_to_linked_list
    add esp,8

    push dword[vreg46] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg47],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg48],esi

    mov esi,[vreg48] ; LinearInstruction::Call
    mov edi,[vreg47]
    push __empty_to_output_to ; output here 
    push edi
    push esi
    call auxilary_call_function
    add esp,8
    pop esi
    mov [vreg49],esi

    push dword[vreg49] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::Lookup
    push static12_actual
    push dword[current_scope]
    call lookup_in_scope_and_parents
    add esp, 8
    pop esi
    mov dword[vreg50],esi

    push dword[vreg50] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::LinkedListInit
    call init_linked_list
    pop esi
    mov [vreg51],esi

    push dword[vreg51] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::Lookup
    push static13_actual
    push dword[current_scope]
    call lookup_in_scope_and_parents
    add esp, 8
    pop esi
    mov dword[vreg52],esi

    push dword[vreg52] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg53],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg54],esi

    mov esi, dword[vreg54] ; linked_list_reg ; LinearInstruction::LinkedListAdd
    mov edi, dword[vreg53] ; input_reg
    push esi 
    push dword edi
    call add_to_linked_list
    add esp,8

    push dword[vreg54] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::Lookup
    push static14_actual
    push dword[current_scope]
    call lookup_in_scope_and_parents
    add esp, 8
    pop esi
    mov dword[vreg55],esi

    push dword[vreg55] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::LinkedListInit
    call init_linked_list
    pop esi
    mov [vreg56],esi

    push dword[vreg56] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::Lookup
    push static15_actual
    push dword[current_scope]
    call lookup_in_scope_and_parents
    add esp, 8
    pop esi
    mov dword[vreg57],esi

    push dword[vreg57] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg58],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg59],esi

    mov esi, dword[vreg59] ; linked_list_reg ; LinearInstruction::LinkedListAdd
    mov edi, dword[vreg58] ; input_reg
    push esi 
    push dword edi
    call add_to_linked_list
    add esp,8

    push dword[vreg59] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::Lookup
    push static16_actual
    push dword[current_scope]
    call lookup_in_scope_and_parents
    add esp, 8
    pop esi
    mov dword[vreg60],esi

    push dword[vreg60] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg61],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg62],esi

    mov esi, dword[vreg62] ; linked_list_reg ; LinearInstruction::LinkedListAdd
    mov edi, dword[vreg61] ; input_reg
    push esi 
    push dword edi
    call add_to_linked_list
    add esp,8

    push dword[vreg62] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg63],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg64],esi

    mov esi,[vreg64] ; LinearInstruction::Call
    mov edi,[vreg63]
    push __empty_to_output_to ; output here 
    push edi
    push esi
    call auxilary_call_function
    add esp,8
    pop esi
    mov [vreg65],esi

    push dword[vreg65] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg66],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg67],esi

    mov esi, dword[vreg67] ; linked_list_reg ; LinearInstruction::LinkedListAdd
    mov edi, dword[vreg66] ; input_reg
    push esi 
    push dword edi
    call add_to_linked_list
    add esp,8

    push dword[vreg67] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg68],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg69],esi

    mov esi,[vreg69] ; LinearInstruction::Call
    mov edi,[vreg68]
    push __empty_to_output_to ; output here 
    push edi
    push esi
    call auxilary_call_function
    add esp,8
    pop esi
    mov [vreg70],esi

    push dword[vreg70] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg71],esi

    mov esi, dword[vreg71] ; LinearInstruction::Return
    mov [ebp+12], esi

    leave ; bye
    ret

main:
    push ebp ; hello there
    mov ebp,esp

    push __empty_to_output_to ; output here ; LinearInstruction::InitializeFunctionPointer
    push _0
    push dword[current_scope]
    call initialize_function_pointer
    add esp,8
    pop esi
    mov [vreg40],esi

    push dword[vreg40] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg41],esi

    push static9_actual ; LinearInstruction::Assign
    push dword[vreg41]
    push dword[current_scope]
    call assign_in_scope
    add esp, 12

    push dword[vreg41] ; LinearInstruction::PushToStack

    push __empty_to_output_to ; output here ; LinearInstruction::InitializeFunctionPointer
    push _1
    push dword[current_scope]
    call initialize_function_pointer
    add esp,8
    pop esi
    mov [vreg72],esi

    push dword[vreg72] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg73],esi

    push static17_actual ; LinearInstruction::Assign
    push dword[vreg73]
    push dword[current_scope]
    call assign_in_scope
    add esp, 12

    push dword[vreg73] ; LinearInstruction::PushToStack

    push __empty_to_output_to ; output here ; LinearInstruction::InitializeFunctionPointer
    push _2
    push dword[current_scope]
    call initialize_function_pointer
    add esp,8
    pop esi
    mov [vreg105],esi

    push dword[vreg105] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg106],esi

    push static26_actual ; LinearInstruction::Assign
    push dword[vreg106]
    push dword[current_scope]
    call assign_in_scope
    add esp, 12

    push dword[vreg106] ; LinearInstruction::PushToStack

    push __empty_to_output_to ; output here ; LinearInstruction::InitializeFunctionPointer
    push _3
    push dword[current_scope]
    call initialize_function_pointer
    add esp,8
    pop esi
    mov [vreg154],esi

    push dword[vreg154] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg155],esi

    push static39_actual ; LinearInstruction::Assign
    push dword[vreg155]
    push dword[current_scope]
    call assign_in_scope
    add esp, 12

    push dword[vreg155] ; LinearInstruction::PushToStack

    push __empty_to_output_to ; output here ; LinearInstruction::InitializeFunctionPointer
    push _4
    push dword[current_scope]
    call initialize_function_pointer
    add esp,8
    pop esi
    mov [vreg200],esi

    push dword[vreg200] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg201],esi

    push static51_actual ; LinearInstruction::Assign
    push dword[vreg201]
    push dword[current_scope]
    call assign_in_scope
    add esp, 12

    push dword[vreg201] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::Lookup
    push static52_actual
    push dword[current_scope]
    call lookup_in_scope_and_parents
    add esp, 8
    pop esi
    mov dword[vreg202],esi

    push dword[vreg202] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::LinkedListInit
    call init_linked_list
    pop esi
    mov [vreg203],esi

    push dword[vreg203] ; LinearInstruction::PushToStack

    mov dword[vreg204],static53_data_ptr_struc ; LinearInstruction::StaticRefToRegister

    push dword[vreg204] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg205],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg206],esi

    mov esi, dword[vreg206] ; linked_list_reg ; LinearInstruction::LinkedListAdd
    mov edi, dword[vreg205] ; input_reg
    push esi 
    push dword edi
    call add_to_linked_list
    add esp,8

    push dword[vreg206] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg207],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg208],esi

    mov esi,[vreg208] ; LinearInstruction::Call
    mov edi,[vreg207]
    push __empty_to_output_to ; output here 
    push edi
    push esi
    call auxilary_call_function
    add esp,8
    pop esi
    mov [vreg209],esi

    push dword[vreg209] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::Lookup
    push static54_actual
    push dword[current_scope]
    call lookup_in_scope_and_parents
    add esp, 8
    pop esi
    mov dword[vreg210],esi

    push dword[vreg210] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::LinkedListInit
    call init_linked_list
    pop esi
    mov [vreg211],esi

    push dword[vreg211] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::Lookup
    push static55_actual
    push dword[current_scope]
    call lookup_in_scope_and_parents
    add esp, 8
    pop esi
    mov dword[vreg212],esi

    push dword[vreg212] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::LinkedListInit
    call init_linked_list
    pop esi
    mov [vreg213],esi

    push dword[vreg213] ; LinearInstruction::PushToStack

    mov dword[vreg214],static56_data_ptr_struc ; LinearInstruction::StaticRefToRegister

    push dword[vreg214] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg215],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg216],esi

    mov esi, dword[vreg216] ; linked_list_reg ; LinearInstruction::LinkedListAdd
    mov edi, dword[vreg215] ; input_reg
    push esi 
    push dword edi
    call add_to_linked_list
    add esp,8

    push dword[vreg216] ; LinearInstruction::PushToStack

    mov dword[vreg217],static57_data_ptr_struc ; LinearInstruction::StaticRefToRegister

    push dword[vreg217] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg218],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg219],esi

    mov esi, dword[vreg219] ; linked_list_reg ; LinearInstruction::LinkedListAdd
    mov edi, dword[vreg218] ; input_reg
    push esi 
    push dword edi
    call add_to_linked_list
    add esp,8

    push dword[vreg219] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg220],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg221],esi

    mov esi,[vreg221] ; LinearInstruction::Call
    mov edi,[vreg220]
    push __empty_to_output_to ; output here 
    push edi
    push esi
    call auxilary_call_function
    add esp,8
    pop esi
    mov [vreg222],esi

    push dword[vreg222] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg223],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg224],esi

    mov esi, dword[vreg224] ; linked_list_reg ; LinearInstruction::LinkedListAdd
    mov edi, dword[vreg223] ; input_reg
    push esi 
    push dword edi
    call add_to_linked_list
    add esp,8

    push dword[vreg224] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg225],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg226],esi

    mov esi,[vreg226] ; LinearInstruction::Call
    mov edi,[vreg225]
    push __empty_to_output_to ; output here 
    push edi
    push esi
    call auxilary_call_function
    add esp,8
    pop esi
    mov [vreg227],esi

    push dword[vreg227] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::Lookup
    push static58_actual
    push dword[current_scope]
    call lookup_in_scope_and_parents
    add esp, 8
    pop esi
    mov dword[vreg228],esi

    push dword[vreg228] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::LinkedListInit
    call init_linked_list
    pop esi
    mov [vreg229],esi

    push dword[vreg229] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::Lookup
    push static59_actual
    push dword[current_scope]
    call lookup_in_scope_and_parents
    add esp, 8
    pop esi
    mov dword[vreg230],esi

    push dword[vreg230] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::LinkedListInit
    call init_linked_list
    pop esi
    mov [vreg231],esi

    push dword[vreg231] ; LinearInstruction::PushToStack

    mov dword[vreg232],static60_data_ptr_struc ; LinearInstruction::StaticRefToRegister

    push dword[vreg232] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg233],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg234],esi

    mov esi, dword[vreg234] ; linked_list_reg ; LinearInstruction::LinkedListAdd
    mov edi, dword[vreg233] ; input_reg
    push esi 
    push dword edi
    call add_to_linked_list
    add esp,8

    push dword[vreg234] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg235],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg236],esi

    mov esi,[vreg236] ; LinearInstruction::Call
    mov edi,[vreg235]
    push __empty_to_output_to ; output here 
    push edi
    push esi
    call auxilary_call_function
    add esp,8
    pop esi
    mov [vreg237],esi

    push dword[vreg237] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg238],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg239],esi

    mov esi, dword[vreg239] ; linked_list_reg ; LinearInstruction::LinkedListAdd
    mov edi, dword[vreg238] ; input_reg
    push esi 
    push dword edi
    call add_to_linked_list
    add esp,8

    push dword[vreg239] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg240],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg241],esi

    mov esi,[vreg241] ; LinearInstruction::Call
    mov edi,[vreg240]
    push __empty_to_output_to ; output here 
    push edi
    push esi
    call auxilary_call_function
    add esp,8
    pop esi
    mov [vreg242],esi

    push dword[vreg242] ; LinearInstruction::PushToStack

    push __empty_to_output_to ; output here ; LinearInstruction::InitializeFunctionPointer
    push _5
    push dword[current_scope]
    call initialize_function_pointer
    add esp,8
    pop esi
    mov [vreg253],esi

    push dword[vreg253] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg254],esi

    push static64_actual ; LinearInstruction::Assign
    push dword[vreg254]
    push dword[current_scope]
    call assign_in_scope
    add esp, 12

    push dword[vreg254] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::Lookup
    push static65_actual
    push dword[current_scope]
    call lookup_in_scope_and_parents
    add esp, 8
    pop esi
    mov dword[vreg255],esi

    push dword[vreg255] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::LinkedListInit
    call init_linked_list
    pop esi
    mov [vreg256],esi

    push dword[vreg256] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::Lookup
    push static66_actual
    push dword[current_scope]
    call lookup_in_scope_and_parents
    add esp, 8
    pop esi
    mov dword[vreg257],esi

    push dword[vreg257] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::LinkedListInit
    call init_linked_list
    pop esi
    mov [vreg258],esi

    push dword[vreg258] ; LinearInstruction::PushToStack

    push __empty_to_output_to ; output here ; LinearInstruction::InitializeFunctionPointer
    push _6
    push dword[current_scope]
    call initialize_function_pointer
    add esp,8
    pop esi
    mov [vreg278],esi

    push dword[vreg278] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg279],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg280],esi

    mov esi, dword[vreg280] ; linked_list_reg ; LinearInstruction::LinkedListAdd
    mov edi, dword[vreg279] ; input_reg
    push esi 
    push dword edi
    call add_to_linked_list
    add esp,8

    push dword[vreg280] ; LinearInstruction::PushToStack

    mov dword[vreg281],static71_data_ptr_struc ; LinearInstruction::StaticRefToRegister

    push dword[vreg281] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg282],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg283],esi

    mov esi, dword[vreg283] ; linked_list_reg ; LinearInstruction::LinkedListAdd
    mov edi, dword[vreg282] ; input_reg
    push esi 
    push dword edi
    call add_to_linked_list
    add esp,8

    push dword[vreg283] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg284],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg285],esi

    mov esi,[vreg285] ; LinearInstruction::Call
    mov edi,[vreg284]
    push __empty_to_output_to ; output here 
    push edi
    push esi
    call auxilary_call_function
    add esp,8
    pop esi
    mov [vreg286],esi

    push dword[vreg286] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg287],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg288],esi

    mov esi, dword[vreg288] ; linked_list_reg ; LinearInstruction::LinkedListAdd
    mov edi, dword[vreg287] ; input_reg
    push esi 
    push dword edi
    call add_to_linked_list
    add esp,8

    push dword[vreg288] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg289],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg290],esi

    mov esi,[vreg290] ; LinearInstruction::Call
    mov edi,[vreg289]
    push __empty_to_output_to ; output here 
    push edi
    push esi
    call auxilary_call_function
    add esp,8
    pop esi
    mov [vreg291],esi

    push dword[vreg291] ; LinearInstruction::PushToStack

    push __empty_to_output_to ; output here ; LinearInstruction::InitializeFunctionPointer
    push _7
    push dword[current_scope]
    call initialize_function_pointer
    add esp,8
    pop esi
    mov [vreg338],esi

    push dword[vreg338] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg339],esi

    push static83_actual ; LinearInstruction::Assign
    push dword[vreg339]
    push dword[current_scope]
    call assign_in_scope
    add esp, 12

    push dword[vreg339] ; LinearInstruction::PushToStack

    push __empty_to_output_to ; output here ; LinearInstruction::InitializeFunctionPointer
    push _9
    push dword[current_scope]
    call initialize_function_pointer
    add esp,8
    pop esi
    mov [vreg350],esi

    push dword[vreg350] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg351],esi

    push static87_actual ; LinearInstruction::Assign
    push dword[vreg351]
    push dword[current_scope]
    call assign_in_scope
    add esp, 12

    push dword[vreg351] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::Lookup
    push static88_actual
    push dword[current_scope]
    call lookup_in_scope_and_parents
    add esp, 8
    pop esi
    mov dword[vreg352],esi

    push dword[vreg352] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::LinkedListInit
    call init_linked_list
    pop esi
    mov [vreg353],esi

    push dword[vreg353] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::Lookup
    push static89_actual
    push dword[current_scope]
    call lookup_in_scope_and_parents
    add esp, 8
    pop esi
    mov dword[vreg354],esi

    push dword[vreg354] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg355],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg356],esi

    mov esi, dword[vreg356] ; linked_list_reg ; LinearInstruction::LinkedListAdd
    mov edi, dword[vreg355] ; input_reg
    push esi 
    push dword edi
    call add_to_linked_list
    add esp,8

    push dword[vreg356] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg357],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg358],esi

    mov esi,[vreg358] ; LinearInstruction::Call
    mov edi,[vreg357]
    push __empty_to_output_to ; output here 
    push edi
    push esi
    call auxilary_call_function
    add esp,8
    pop esi
    mov [vreg359],esi

    push dword[vreg359] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg360],esi

    push static90_actual ; LinearInstruction::Assign
    push dword[vreg360]
    push dword[current_scope]
    call assign_in_scope
    add esp, 12

    push dword[vreg360] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::Lookup
    push static91_actual
    push dword[current_scope]
    call lookup_in_scope_and_parents
    add esp, 8
    pop esi
    mov dword[vreg361],esi

    push dword[vreg361] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::LinkedListInit
    call init_linked_list
    pop esi
    mov [vreg362],esi

    push dword[vreg362] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::Lookup
    push static92_actual
    push dword[current_scope]
    call lookup_in_scope_and_parents
    add esp, 8
    pop esi
    mov dword[vreg363],esi

    push dword[vreg363] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg364],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg365],esi

    mov esi, dword[vreg365] ; linked_list_reg ; LinearInstruction::LinkedListAdd
    mov edi, dword[vreg364] ; input_reg
    push esi 
    push dword edi
    call add_to_linked_list
    add esp,8

    push dword[vreg365] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg366],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg367],esi

    mov esi,[vreg367] ; LinearInstruction::Call
    mov edi,[vreg366]
    push __empty_to_output_to ; output here 
    push edi
    push esi
    call auxilary_call_function
    add esp,8
    pop esi
    mov [vreg368],esi

    push dword[vreg368] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::Lookup
    push static93_actual
    push dword[current_scope]
    call lookup_in_scope_and_parents
    add esp, 8
    pop esi
    mov dword[vreg369],esi

    push dword[vreg369] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::LinkedListInit
    call init_linked_list
    pop esi
    mov [vreg370],esi

    push dword[vreg370] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::Lookup
    push static94_actual
    push dword[current_scope]
    call lookup_in_scope_and_parents
    add esp, 8
    pop esi
    mov dword[vreg371],esi

    push dword[vreg371] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::LinkedListInit
    call init_linked_list
    pop esi
    mov [vreg372],esi

    push dword[vreg372] ; LinearInstruction::PushToStack

    mov dword[vreg373],static95_data_ptr_struc ; LinearInstruction::StaticRefToRegister

    push dword[vreg373] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg374],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg375],esi

    mov esi, dword[vreg375] ; linked_list_reg ; LinearInstruction::LinkedListAdd
    mov edi, dword[vreg374] ; input_reg
    push esi 
    push dword edi
    call add_to_linked_list
    add esp,8

    push dword[vreg375] ; LinearInstruction::PushToStack

    mov dword[vreg376],static96_data_ptr_struc ; LinearInstruction::StaticRefToRegister

    push dword[vreg376] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg377],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg378],esi

    mov esi, dword[vreg378] ; linked_list_reg ; LinearInstruction::LinkedListAdd
    mov edi, dword[vreg377] ; input_reg
    push esi 
    push dword edi
    call add_to_linked_list
    add esp,8

    push dword[vreg378] ; LinearInstruction::PushToStack

    mov dword[vreg379],static97_data_ptr_struc ; LinearInstruction::StaticRefToRegister

    push dword[vreg379] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg380],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg381],esi

    mov esi, dword[vreg381] ; linked_list_reg ; LinearInstruction::LinkedListAdd
    mov edi, dword[vreg380] ; input_reg
    push esi 
    push dword edi
    call add_to_linked_list
    add esp,8

    push dword[vreg381] ; LinearInstruction::PushToStack

    mov dword[vreg382],static98_data_ptr_struc ; LinearInstruction::StaticRefToRegister

    push dword[vreg382] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg383],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg384],esi

    mov esi, dword[vreg384] ; linked_list_reg ; LinearInstruction::LinkedListAdd
    mov edi, dword[vreg383] ; input_reg
    push esi 
    push dword edi
    call add_to_linked_list
    add esp,8

    push dword[vreg384] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg385],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg386],esi

    mov esi,[vreg386] ; LinearInstruction::Call
    mov edi,[vreg385]
    push __empty_to_output_to ; output here 
    push edi
    push esi
    call auxilary_call_function
    add esp,8
    pop esi
    mov [vreg387],esi

    push dword[vreg387] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg388],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg389],esi

    mov esi, dword[vreg389] ; linked_list_reg ; LinearInstruction::LinkedListAdd
    mov edi, dword[vreg388] ; input_reg
    push esi 
    push dword edi
    call add_to_linked_list
    add esp,8

    push dword[vreg389] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg390],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg391],esi

    mov esi,[vreg391] ; LinearInstruction::Call
    mov edi,[vreg390]
    push __empty_to_output_to ; output here 
    push edi
    push esi
    call auxilary_call_function
    add esp,8
    pop esi
    mov [vreg392],esi

    push dword[vreg392] ; LinearInstruction::PushToStack

    leave ; bye
    ret

_9:
    push ebp ; hello there
    mov ebp,esp

    push dword[ebp+8] ; LinearInstruction::AcceptToFormals
    push _9_data_ptr_struc
    call accept_to_formals 
    add esp,8

    push dword 0 ; LinearInstruction::Lookup
    push static84_actual
    push dword[current_scope]
    call lookup_in_scope_and_parents
    add esp, 8
    pop esi
    mov dword[vreg340],esi

    push dword[vreg340] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::LinkedListInit
    call init_linked_list
    pop esi
    mov [vreg341],esi

    push dword[vreg341] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::Lookup
    push static85_actual
    push dword[current_scope]
    call lookup_in_scope_and_parents
    add esp, 8
    pop esi
    mov dword[vreg342],esi

    push dword[vreg342] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg343],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg344],esi

    mov esi, dword[vreg344] ; linked_list_reg ; LinearInstruction::LinkedListAdd
    mov edi, dword[vreg343] ; input_reg
    push esi 
    push dword edi
    call add_to_linked_list
    add esp,8

    push dword[vreg344] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg345],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg346],esi

    mov esi,[vreg346] ; LinearInstruction::Call
    mov edi,[vreg345]
    push __empty_to_output_to ; output here 
    push edi
    push esi
    call auxilary_call_function
    add esp,8
    pop esi
    mov [vreg347],esi

    push dword[vreg347] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::Lookup
    push static86_actual
    push dword[current_scope]
    call lookup_in_scope_and_parents
    add esp, 8
    pop esi
    mov dword[vreg348],esi

    push dword[vreg348] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg349],esi

    mov esi, dword[vreg349] ; LinearInstruction::Return
    mov [ebp+12], esi

    leave ; bye
    ret

_4:
    push ebp ; hello there
    mov ebp,esp

    push dword[ebp+8] ; LinearInstruction::AcceptToFormals
    push _4_data_ptr_struc
    call accept_to_formals 
    add esp,8

    push dword 0 ; LinearInstruction::Lookup
    push static40_actual
    push dword[current_scope]
    call lookup_in_scope_and_parents
    add esp, 8
    pop esi
    mov dword[vreg156],esi

    push dword[vreg156] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::LinkedListInit
    call init_linked_list
    pop esi
    mov [vreg157],esi

    push dword[vreg157] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::Lookup
    push static41_actual
    push dword[current_scope]
    call lookup_in_scope_and_parents
    add esp, 8
    pop esi
    mov dword[vreg158],esi

    push dword[vreg158] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg159],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg160],esi

    mov esi, dword[vreg160] ; linked_list_reg ; LinearInstruction::LinkedListAdd
    mov edi, dword[vreg159] ; input_reg
    push esi 
    push dword edi
    call add_to_linked_list
    add esp,8

    push dword[vreg160] ; LinearInstruction::PushToStack

    mov dword[vreg161],static42_data_ptr_struc ; LinearInstruction::StaticRefToRegister

    push dword[vreg161] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg162],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg163],esi

    mov esi, dword[vreg163] ; linked_list_reg ; LinearInstruction::LinkedListAdd
    mov edi, dword[vreg162] ; input_reg
    push esi 
    push dword edi
    call add_to_linked_list
    add esp,8

    push dword[vreg163] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg164],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg165],esi

    mov esi,[vreg165] ; LinearInstruction::Call
    mov edi,[vreg164]
    push __empty_to_output_to ; output here 
    push edi
    push esi
    call auxilary_call_function
    add esp,8
    pop esi
    mov [vreg166],esi

    push dword[vreg166] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg167],esi

    push dword 0 ; LinearInstruction::Cond
    push dword[vreg167]
    call auxilary_is_true_in_cond
    add esp, 4
    pop ecx

    cmp ecx, 0
    je .cond_branch_point_based_on_vreg167


    mov dword[vreg168],static43_data_ptr_struc ; LinearInstruction::StaticRefToRegister

    push dword[vreg168] ; LinearInstruction::PushToStack

    jmp .cond40 ; branch of cond was used finishing this cond
.cond_branch_point_based_on_vreg167:
    mov dword[vreg169],static44_data_ptr_struc ; LinearInstruction::StaticRefToRegister

    push dword[vreg169] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg170],esi

    push dword 0 ; LinearInstruction::Cond
    push dword[vreg170]
    call auxilary_is_true_in_cond
    add esp, 4
    pop ecx

    cmp ecx, 0
    je .cond_branch_point_based_on_vreg170


    push dword 0 ; LinearInstruction::Lookup
    push static45_actual
    push dword[current_scope]
    call lookup_in_scope_and_parents
    add esp, 8
    pop esi
    mov dword[vreg171],esi

    push dword[vreg171] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::LinkedListInit
    call init_linked_list
    pop esi
    mov [vreg172],esi

    push dword[vreg172] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::Lookup
    push static46_actual
    push dword[current_scope]
    call lookup_in_scope_and_parents
    add esp, 8
    pop esi
    mov dword[vreg173],esi

    push dword[vreg173] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg174],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg175],esi

    mov esi, dword[vreg175] ; linked_list_reg ; LinearInstruction::LinkedListAdd
    mov edi, dword[vreg174] ; input_reg
    push esi 
    push dword edi
    call add_to_linked_list
    add esp,8

    push dword[vreg175] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::Lookup
    push static47_actual
    push dword[current_scope]
    call lookup_in_scope_and_parents
    add esp, 8
    pop esi
    mov dword[vreg176],esi

    push dword[vreg176] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::LinkedListInit
    call init_linked_list
    pop esi
    mov [vreg177],esi

    push dword[vreg177] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::Lookup
    push static48_actual
    push dword[current_scope]
    call lookup_in_scope_and_parents
    add esp, 8
    pop esi
    mov dword[vreg178],esi

    push dword[vreg178] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::LinkedListInit
    call init_linked_list
    pop esi
    mov [vreg179],esi

    push dword[vreg179] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::Lookup
    push static49_actual
    push dword[current_scope]
    call lookup_in_scope_and_parents
    add esp, 8
    pop esi
    mov dword[vreg180],esi

    push dword[vreg180] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg181],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg182],esi

    mov esi, dword[vreg182] ; linked_list_reg ; LinearInstruction::LinkedListAdd
    mov edi, dword[vreg181] ; input_reg
    push esi 
    push dword edi
    call add_to_linked_list
    add esp,8

    push dword[vreg182] ; LinearInstruction::PushToStack

    mov dword[vreg183],static50_data_ptr_struc ; LinearInstruction::StaticRefToRegister

    push dword[vreg183] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg184],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg185],esi

    mov esi, dword[vreg185] ; linked_list_reg ; LinearInstruction::LinkedListAdd
    mov edi, dword[vreg184] ; input_reg
    push esi 
    push dword edi
    call add_to_linked_list
    add esp,8

    push dword[vreg185] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg186],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg187],esi

    mov esi,[vreg187] ; LinearInstruction::Call
    mov edi,[vreg186]
    push __empty_to_output_to ; output here 
    push edi
    push esi
    call auxilary_call_function
    add esp,8
    pop esi
    mov [vreg188],esi

    push dword[vreg188] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg189],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg190],esi

    mov esi, dword[vreg190] ; linked_list_reg ; LinearInstruction::LinkedListAdd
    mov edi, dword[vreg189] ; input_reg
    push esi 
    push dword edi
    call add_to_linked_list
    add esp,8

    push dword[vreg190] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg191],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg192],esi

    mov esi,[vreg192] ; LinearInstruction::Call
    mov edi,[vreg191]
    push __empty_to_output_to ; output here 
    push edi
    push esi
    call auxilary_call_function
    add esp,8
    pop esi
    mov [vreg193],esi

    push dword[vreg193] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg194],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg195],esi

    mov esi, dword[vreg195] ; linked_list_reg ; LinearInstruction::LinkedListAdd
    mov edi, dword[vreg194] ; input_reg
    push esi 
    push dword edi
    call add_to_linked_list
    add esp,8

    push dword[vreg195] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg196],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg197],esi

    mov esi,[vreg197] ; LinearInstruction::Call
    mov edi,[vreg196]
    push __empty_to_output_to ; output here 
    push edi
    push esi
    call auxilary_call_function
    add esp,8
    pop esi
    mov [vreg198],esi

    push dword[vreg198] ; LinearInstruction::PushToStack

    jmp .cond40 ; branch of cond was used finishing this cond
.cond_branch_point_based_on_vreg170:
.cond40: ; LinearInstruction::EndOfCond
    pop esi ; LinearInstruction::PopFromStack
    mov [vreg199],esi

    mov esi, dword[vreg199] ; LinearInstruction::Return
    mov [ebp+12], esi

    leave ; bye
    ret

_5:
    push ebp ; hello there
    mov ebp,esp

    push dword[ebp+8] ; LinearInstruction::AcceptToFormals
    push _5_data_ptr_struc
    call accept_to_formals 
    add esp,8

    push dword 0 ; LinearInstruction::Lookup
    push static61_actual
    push dword[current_scope]
    call lookup_in_scope_and_parents
    add esp, 8
    pop esi
    mov dword[vreg243],esi

    push dword[vreg243] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::LinkedListInit
    call init_linked_list
    pop esi
    mov [vreg244],esi

    push dword[vreg244] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::Lookup
    push static62_actual
    push dword[current_scope]
    call lookup_in_scope_and_parents
    add esp, 8
    pop esi
    mov dword[vreg245],esi

    push dword[vreg245] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg246],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg247],esi

    mov esi, dword[vreg247] ; linked_list_reg ; LinearInstruction::LinkedListAdd
    mov edi, dword[vreg246] ; input_reg
    push esi 
    push dword edi
    call add_to_linked_list
    add esp,8

    push dword[vreg247] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg248],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg249],esi

    mov esi,[vreg249] ; LinearInstruction::Call
    mov edi,[vreg248]
    push __empty_to_output_to ; output here 
    push edi
    push esi
    call auxilary_call_function
    add esp,8
    pop esi
    mov [vreg250],esi

    push dword[vreg250] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::Lookup
    push static63_actual
    push dword[current_scope]
    call lookup_in_scope_and_parents
    add esp, 8
    pop esi
    mov dword[vreg251],esi

    push dword[vreg251] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg252],esi

    mov esi, dword[vreg252] ; LinearInstruction::Return
    mov [ebp+12], esi

    leave ; bye
    ret

_8:
    push ebp ; hello there
    mov ebp,esp

    push dword[ebp+8] ; LinearInstruction::AcceptToFormals
    push _8_data_ptr_struc
    call accept_to_formals 
    add esp,8

    push dword 0 ; LinearInstruction::Lookup
    push static72_actual
    push dword[current_scope]
    call lookup_in_scope_and_parents
    add esp, 8
    pop esi
    mov dword[vreg292],esi

    push dword[vreg292] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::LinkedListInit
    call init_linked_list
    pop esi
    mov [vreg293],esi

    push dword[vreg293] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::Lookup
    push static73_actual
    push dword[current_scope]
    call lookup_in_scope_and_parents
    add esp, 8
    pop esi
    mov dword[vreg294],esi

    push dword[vreg294] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg295],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg296],esi

    mov esi, dword[vreg296] ; linked_list_reg ; LinearInstruction::LinkedListAdd
    mov edi, dword[vreg295] ; input_reg
    push esi 
    push dword edi
    call add_to_linked_list
    add esp,8

    push dword[vreg296] ; LinearInstruction::PushToStack

    mov dword[vreg297],static74_data_ptr_struc ; LinearInstruction::StaticRefToRegister

    push dword[vreg297] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg298],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg299],esi

    mov esi, dword[vreg299] ; linked_list_reg ; LinearInstruction::LinkedListAdd
    mov edi, dword[vreg298] ; input_reg
    push esi 
    push dword edi
    call add_to_linked_list
    add esp,8

    push dword[vreg299] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg300],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg301],esi

    mov esi,[vreg301] ; LinearInstruction::Call
    mov edi,[vreg300]
    push __empty_to_output_to ; output here 
    push edi
    push esi
    call auxilary_call_function
    add esp,8
    pop esi
    mov [vreg302],esi

    push dword[vreg302] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg303],esi

    push dword 0 ; LinearInstruction::Cond
    push dword[vreg303]
    call auxilary_is_true_in_cond
    add esp, 4
    pop ecx

    cmp ecx, 0
    je .cond_branch_point_based_on_vreg303


    mov dword[vreg304],static75_data_ptr_struc ; LinearInstruction::StaticRefToRegister

    push dword[vreg304] ; LinearInstruction::PushToStack

    jmp .cond72 ; branch of cond was used finishing this cond
.cond_branch_point_based_on_vreg303:
    mov dword[vreg305],static76_data_ptr_struc ; LinearInstruction::StaticRefToRegister

    push dword[vreg305] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg306],esi

    push dword 0 ; LinearInstruction::Cond
    push dword[vreg306]
    call auxilary_is_true_in_cond
    add esp, 4
    pop ecx

    cmp ecx, 0
    je .cond_branch_point_based_on_vreg306


    push dword 0 ; LinearInstruction::Lookup
    push static77_actual
    push dword[current_scope]
    call lookup_in_scope_and_parents
    add esp, 8
    pop esi
    mov dword[vreg307],esi

    push dword[vreg307] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::LinkedListInit
    call init_linked_list
    pop esi
    mov [vreg308],esi

    push dword[vreg308] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::Lookup
    push static78_actual
    push dword[current_scope]
    call lookup_in_scope_and_parents
    add esp, 8
    pop esi
    mov dword[vreg309],esi

    push dword[vreg309] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg310],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg311],esi

    mov esi, dword[vreg311] ; linked_list_reg ; LinearInstruction::LinkedListAdd
    mov edi, dword[vreg310] ; input_reg
    push esi 
    push dword edi
    call add_to_linked_list
    add esp,8

    push dword[vreg311] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::Lookup
    push static79_actual
    push dword[current_scope]
    call lookup_in_scope_and_parents
    add esp, 8
    pop esi
    mov dword[vreg312],esi

    push dword[vreg312] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::LinkedListInit
    call init_linked_list
    pop esi
    mov [vreg313],esi

    push dword[vreg313] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::Lookup
    push static80_actual
    push dword[current_scope]
    call lookup_in_scope_and_parents
    add esp, 8
    pop esi
    mov dword[vreg314],esi

    push dword[vreg314] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::LinkedListInit
    call init_linked_list
    pop esi
    mov [vreg315],esi

    push dword[vreg315] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::Lookup
    push static81_actual
    push dword[current_scope]
    call lookup_in_scope_and_parents
    add esp, 8
    pop esi
    mov dword[vreg316],esi

    push dword[vreg316] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg317],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg318],esi

    mov esi, dword[vreg318] ; linked_list_reg ; LinearInstruction::LinkedListAdd
    mov edi, dword[vreg317] ; input_reg
    push esi 
    push dword edi
    call add_to_linked_list
    add esp,8

    push dword[vreg318] ; LinearInstruction::PushToStack

    mov dword[vreg319],static82_data_ptr_struc ; LinearInstruction::StaticRefToRegister

    push dword[vreg319] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg320],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg321],esi

    mov esi, dword[vreg321] ; linked_list_reg ; LinearInstruction::LinkedListAdd
    mov edi, dword[vreg320] ; input_reg
    push esi 
    push dword edi
    call add_to_linked_list
    add esp,8

    push dword[vreg321] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg322],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg323],esi

    mov esi,[vreg323] ; LinearInstruction::Call
    mov edi,[vreg322]
    push __empty_to_output_to ; output here 
    push edi
    push esi
    call auxilary_call_function
    add esp,8
    pop esi
    mov [vreg324],esi

    push dword[vreg324] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg325],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg326],esi

    mov esi, dword[vreg326] ; linked_list_reg ; LinearInstruction::LinkedListAdd
    mov edi, dword[vreg325] ; input_reg
    push esi 
    push dword edi
    call add_to_linked_list
    add esp,8

    push dword[vreg326] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg327],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg328],esi

    mov esi,[vreg328] ; LinearInstruction::Call
    mov edi,[vreg327]
    push __empty_to_output_to ; output here 
    push edi
    push esi
    call auxilary_call_function
    add esp,8
    pop esi
    mov [vreg329],esi

    push dword[vreg329] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg330],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg331],esi

    mov esi, dword[vreg331] ; linked_list_reg ; LinearInstruction::LinkedListAdd
    mov edi, dword[vreg330] ; input_reg
    push esi 
    push dword edi
    call add_to_linked_list
    add esp,8

    push dword[vreg331] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg332],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg333],esi

    mov esi,[vreg333] ; LinearInstruction::Call
    mov edi,[vreg332]
    push __empty_to_output_to ; output here 
    push edi
    push esi
    call auxilary_call_function
    add esp,8
    pop esi
    mov [vreg334],esi

    push dword[vreg334] ; LinearInstruction::PushToStack

    jmp .cond72 ; branch of cond was used finishing this cond
.cond_branch_point_based_on_vreg306:
.cond72: ; LinearInstruction::EndOfCond
    pop esi ; LinearInstruction::PopFromStack
    mov [vreg335],esi

    mov esi, dword[vreg335] ; LinearInstruction::Return
    mov [ebp+12], esi

    leave ; bye
    ret

_0:
    push ebp ; hello there
    mov ebp,esp

    push dword[ebp+8] ; LinearInstruction::AcceptToFormals
    push _0_data_ptr_struc
    call accept_to_formals 
    add esp,8

    push dword 0 ; LinearInstruction::Lookup
    push static0_actual
    push dword[current_scope]
    call lookup_in_scope_and_parents
    add esp, 8
    pop esi
    mov dword[vreg0],esi

    push dword[vreg0] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::LinkedListInit
    call init_linked_list
    pop esi
    mov [vreg1],esi

    push dword[vreg1] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::Lookup
    push static1_actual
    push dword[current_scope]
    call lookup_in_scope_and_parents
    add esp, 8
    pop esi
    mov dword[vreg2],esi

    push dword[vreg2] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg3],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg4],esi

    mov esi, dword[vreg4] ; linked_list_reg ; LinearInstruction::LinkedListAdd
    mov edi, dword[vreg3] ; input_reg
    push esi 
    push dword edi
    call add_to_linked_list
    add esp,8

    push dword[vreg4] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg5],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg6],esi

    mov esi,[vreg6] ; LinearInstruction::Call
    mov edi,[vreg5]
    push __empty_to_output_to ; output here 
    push edi
    push esi
    call auxilary_call_function
    add esp,8
    pop esi
    mov [vreg7],esi

    push dword[vreg7] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::Lookup
    push static2_actual
    push dword[current_scope]
    call lookup_in_scope_and_parents
    add esp, 8
    pop esi
    mov dword[vreg8],esi

    push dword[vreg8] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::LinkedListInit
    call init_linked_list
    pop esi
    mov [vreg9],esi

    push dword[vreg9] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::Lookup
    push static3_actual
    push dword[current_scope]
    call lookup_in_scope_and_parents
    add esp, 8
    pop esi
    mov dword[vreg10],esi

    push dword[vreg10] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::LinkedListInit
    call init_linked_list
    pop esi
    mov [vreg11],esi

    push dword[vreg11] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::Lookup
    push static4_actual
    push dword[current_scope]
    call lookup_in_scope_and_parents
    add esp, 8
    pop esi
    mov dword[vreg12],esi

    push dword[vreg12] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg13],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg14],esi

    mov esi, dword[vreg14] ; linked_list_reg ; LinearInstruction::LinkedListAdd
    mov edi, dword[vreg13] ; input_reg
    push esi 
    push dword edi
    call add_to_linked_list
    add esp,8

    push dword[vreg14] ; LinearInstruction::PushToStack

    mov dword[vreg15],static5_data_ptr_struc ; LinearInstruction::StaticRefToRegister

    push dword[vreg15] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg16],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg17],esi

    mov esi, dword[vreg17] ; linked_list_reg ; LinearInstruction::LinkedListAdd
    mov edi, dword[vreg16] ; input_reg
    push esi 
    push dword edi
    call add_to_linked_list
    add esp,8

    push dword[vreg17] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg18],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg19],esi

    mov esi,[vreg19] ; LinearInstruction::Call
    mov edi,[vreg18]
    push __empty_to_output_to ; output here 
    push edi
    push esi
    call auxilary_call_function
    add esp,8
    pop esi
    mov [vreg20],esi

    push dword[vreg20] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg21],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg22],esi

    mov esi, dword[vreg22] ; linked_list_reg ; LinearInstruction::LinkedListAdd
    mov edi, dword[vreg21] ; input_reg
    push esi 
    push dword edi
    call add_to_linked_list
    add esp,8

    push dword[vreg22] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::Lookup
    push static6_actual
    push dword[current_scope]
    call lookup_in_scope_and_parents
    add esp, 8
    pop esi
    mov dword[vreg23],esi

    push dword[vreg23] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::LinkedListInit
    call init_linked_list
    pop esi
    mov [vreg24],esi

    push dword[vreg24] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::Lookup
    push static7_actual
    push dword[current_scope]
    call lookup_in_scope_and_parents
    add esp, 8
    pop esi
    mov dword[vreg25],esi

    push dword[vreg25] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg26],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg27],esi

    mov esi, dword[vreg27] ; linked_list_reg ; LinearInstruction::LinkedListAdd
    mov edi, dword[vreg26] ; input_reg
    push esi 
    push dword edi
    call add_to_linked_list
    add esp,8

    push dword[vreg27] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::Lookup
    push static8_actual
    push dword[current_scope]
    call lookup_in_scope_and_parents
    add esp, 8
    pop esi
    mov dword[vreg28],esi

    push dword[vreg28] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg29],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg30],esi

    mov esi, dword[vreg30] ; linked_list_reg ; LinearInstruction::LinkedListAdd
    mov edi, dword[vreg29] ; input_reg
    push esi 
    push dword edi
    call add_to_linked_list
    add esp,8

    push dword[vreg30] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg31],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg32],esi

    mov esi,[vreg32] ; LinearInstruction::Call
    mov edi,[vreg31]
    push __empty_to_output_to ; output here 
    push edi
    push esi
    call auxilary_call_function
    add esp,8
    pop esi
    mov [vreg33],esi

    push dword[vreg33] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg34],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg35],esi

    mov esi, dword[vreg35] ; linked_list_reg ; LinearInstruction::LinkedListAdd
    mov edi, dword[vreg34] ; input_reg
    push esi 
    push dword edi
    call add_to_linked_list
    add esp,8

    push dword[vreg35] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg36],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg37],esi

    mov esi,[vreg37] ; LinearInstruction::Call
    mov edi,[vreg36]
    push __empty_to_output_to ; output here 
    push edi
    push esi
    call auxilary_call_function
    add esp,8
    pop esi
    mov [vreg38],esi

    push dword[vreg38] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg39],esi

    mov esi, dword[vreg39] ; LinearInstruction::Return
    mov [ebp+12], esi

    leave ; bye
    ret

_2:
    push ebp ; hello there
    mov ebp,esp

    push dword[ebp+8] ; LinearInstruction::AcceptToFormals
    push _2_data_ptr_struc
    call accept_to_formals 
    add esp,8

    push dword 0 ; LinearInstruction::Lookup
    push static18_actual
    push dword[current_scope]
    call lookup_in_scope_and_parents
    add esp, 8
    pop esi
    mov dword[vreg74],esi

    push dword[vreg74] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::LinkedListInit
    call init_linked_list
    pop esi
    mov [vreg75],esi

    push dword[vreg75] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::Lookup
    push static19_actual
    push dword[current_scope]
    call lookup_in_scope_and_parents
    add esp, 8
    pop esi
    mov dword[vreg76],esi

    push dword[vreg76] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg77],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg78],esi

    mov esi, dword[vreg78] ; linked_list_reg ; LinearInstruction::LinkedListAdd
    mov edi, dword[vreg77] ; input_reg
    push esi 
    push dword edi
    call add_to_linked_list
    add esp,8

    push dword[vreg78] ; LinearInstruction::PushToStack

    mov dword[vreg79],static20_data_ptr_struc ; LinearInstruction::StaticRefToRegister

    push dword[vreg79] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg80],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg81],esi

    mov esi, dword[vreg81] ; linked_list_reg ; LinearInstruction::LinkedListAdd
    mov edi, dword[vreg80] ; input_reg
    push esi 
    push dword edi
    call add_to_linked_list
    add esp,8

    push dword[vreg81] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg82],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg83],esi

    mov esi,[vreg83] ; LinearInstruction::Call
    mov edi,[vreg82]
    push __empty_to_output_to ; output here 
    push edi
    push esi
    call auxilary_call_function
    add esp,8
    pop esi
    mov [vreg84],esi

    push dword[vreg84] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg85],esi

    push dword 0 ; LinearInstruction::Cond
    push dword[vreg85]
    call auxilary_is_true_in_cond
    add esp, 4
    pop ecx

    cmp ecx, 0
    je .cond_branch_point_based_on_vreg85


    push dword 0 ; LinearInstruction::Lookup
    push static21_actual
    push dword[current_scope]
    call lookup_in_scope_and_parents
    add esp, 8
    pop esi
    mov dword[vreg86],esi

    push dword[vreg86] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::LinkedListInit
    call init_linked_list
    pop esi
    mov [vreg87],esi

    push dword[vreg87] ; LinearInstruction::PushToStack

    mov dword[vreg88],static22_data_ptr_struc ; LinearInstruction::StaticRefToRegister

    push dword[vreg88] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg89],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg90],esi

    mov esi, dword[vreg90] ; linked_list_reg ; LinearInstruction::LinkedListAdd
    mov edi, dword[vreg89] ; input_reg
    push esi 
    push dword edi
    call add_to_linked_list
    add esp,8

    push dword[vreg90] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg91],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg92],esi

    mov esi,[vreg92] ; LinearInstruction::Call
    mov edi,[vreg91]
    push __empty_to_output_to ; output here 
    push edi
    push esi
    call auxilary_call_function
    add esp,8
    pop esi
    mov [vreg93],esi

    push dword[vreg93] ; LinearInstruction::PushToStack

    jmp .cond18 ; branch of cond was used finishing this cond
.cond_branch_point_based_on_vreg85:
    mov dword[vreg94],static23_data_ptr_struc ; LinearInstruction::StaticRefToRegister

    push dword[vreg94] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg95],esi

    push dword 0 ; LinearInstruction::Cond
    push dword[vreg95]
    call auxilary_is_true_in_cond
    add esp, 4
    pop ecx

    cmp ecx, 0
    je .cond_branch_point_based_on_vreg95


    push dword 0 ; LinearInstruction::Lookup
    push static24_actual
    push dword[current_scope]
    call lookup_in_scope_and_parents
    add esp, 8
    pop esi
    mov dword[vreg96],esi

    push dword[vreg96] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::LinkedListInit
    call init_linked_list
    pop esi
    mov [vreg97],esi

    push dword[vreg97] ; LinearInstruction::PushToStack

    mov dword[vreg98],static25_data_ptr_struc ; LinearInstruction::StaticRefToRegister

    push dword[vreg98] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg99],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg100],esi

    mov esi, dword[vreg100] ; linked_list_reg ; LinearInstruction::LinkedListAdd
    mov edi, dword[vreg99] ; input_reg
    push esi 
    push dword edi
    call add_to_linked_list
    add esp,8

    push dword[vreg100] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg101],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg102],esi

    mov esi,[vreg102] ; LinearInstruction::Call
    mov edi,[vreg101]
    push __empty_to_output_to ; output here 
    push edi
    push esi
    call auxilary_call_function
    add esp,8
    pop esi
    mov [vreg103],esi

    push dword[vreg103] ; LinearInstruction::PushToStack

    jmp .cond18 ; branch of cond was used finishing this cond
.cond_branch_point_based_on_vreg95:
.cond18: ; LinearInstruction::EndOfCond
    pop esi ; LinearInstruction::PopFromStack
    mov [vreg104],esi

    mov esi, dword[vreg104] ; LinearInstruction::Return
    mov [ebp+12], esi

    leave ; bye
    ret

_6:
    push ebp ; hello there
    mov ebp,esp

    push dword[ebp+8] ; LinearInstruction::AcceptToFormals
    push _6_data_ptr_struc
    call accept_to_formals 
    add esp,8

    push dword 0 ; LinearInstruction::Lookup
    push static67_actual
    push dword[current_scope]
    call lookup_in_scope_and_parents
    add esp, 8
    pop esi
    mov dword[vreg259],esi

    push dword[vreg259] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::LinkedListInit
    call init_linked_list
    pop esi
    mov [vreg260],esi

    push dword[vreg260] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::Lookup
    push static68_actual
    push dword[current_scope]
    call lookup_in_scope_and_parents
    add esp, 8
    pop esi
    mov dword[vreg261],esi

    push dword[vreg261] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::LinkedListInit
    call init_linked_list
    pop esi
    mov [vreg262],esi

    push dword[vreg262] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::Lookup
    push static69_actual
    push dword[current_scope]
    call lookup_in_scope_and_parents
    add esp, 8
    pop esi
    mov dword[vreg263],esi

    push dword[vreg263] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg264],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg265],esi

    mov esi, dword[vreg265] ; linked_list_reg ; LinearInstruction::LinkedListAdd
    mov edi, dword[vreg264] ; input_reg
    push esi 
    push dword edi
    call add_to_linked_list
    add esp,8

    push dword[vreg265] ; LinearInstruction::PushToStack

    mov dword[vreg266],static70_data_ptr_struc ; LinearInstruction::StaticRefToRegister

    push dword[vreg266] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg267],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg268],esi

    mov esi, dword[vreg268] ; linked_list_reg ; LinearInstruction::LinkedListAdd
    mov edi, dword[vreg267] ; input_reg
    push esi 
    push dword edi
    call add_to_linked_list
    add esp,8

    push dword[vreg268] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg269],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg270],esi

    mov esi,[vreg270] ; LinearInstruction::Call
    mov edi,[vreg269]
    push __empty_to_output_to ; output here 
    push edi
    push esi
    call auxilary_call_function
    add esp,8
    pop esi
    mov [vreg271],esi

    push dword[vreg271] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg272],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg273],esi

    mov esi, dword[vreg273] ; linked_list_reg ; LinearInstruction::LinkedListAdd
    mov edi, dword[vreg272] ; input_reg
    push esi 
    push dword edi
    call add_to_linked_list
    add esp,8

    push dword[vreg273] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg274],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg275],esi

    mov esi,[vreg275] ; LinearInstruction::Call
    mov edi,[vreg274]
    push __empty_to_output_to ; output here 
    push edi
    push esi
    call auxilary_call_function
    add esp,8
    pop esi
    mov [vreg276],esi

    push dword[vreg276] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg277],esi

    mov esi, dword[vreg277] ; LinearInstruction::Return
    mov [ebp+12], esi

    leave ; bye
    ret

_7:
    push ebp ; hello there
    mov ebp,esp

    push dword[ebp+8] ; LinearInstruction::AcceptToFormals
    push _7_data_ptr_struc
    call accept_to_formals 
    add esp,8

    push __empty_to_output_to ; output here ; LinearInstruction::InitializeFunctionPointer
    push _8
    push dword[current_scope]
    call initialize_function_pointer
    add esp,8
    pop esi
    mov [vreg336],esi

    push dword[vreg336] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg337],esi

    mov esi, dword[vreg337] ; LinearInstruction::Return
    mov [ebp+12], esi

    leave ; bye
    ret

_3:
    push ebp ; hello there
    mov ebp,esp

    push dword[ebp+8] ; LinearInstruction::AcceptToFormals
    push _3_data_ptr_struc
    call accept_to_formals 
    add esp,8

    push dword 0 ; LinearInstruction::Lookup
    push static27_actual
    push dword[current_scope]
    call lookup_in_scope_and_parents
    add esp, 8
    pop esi
    mov dword[vreg107],esi

    push dword[vreg107] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::LinkedListInit
    call init_linked_list
    pop esi
    mov [vreg108],esi

    push dword[vreg108] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::Lookup
    push static28_actual
    push dword[current_scope]
    call lookup_in_scope_and_parents
    add esp, 8
    pop esi
    mov dword[vreg109],esi

    push dword[vreg109] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg110],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg111],esi

    mov esi, dword[vreg111] ; linked_list_reg ; LinearInstruction::LinkedListAdd
    mov edi, dword[vreg110] ; input_reg
    push esi 
    push dword edi
    call add_to_linked_list
    add esp,8

    push dword[vreg111] ; LinearInstruction::PushToStack

    mov dword[vreg112],static29_data_ptr_struc ; LinearInstruction::StaticRefToRegister

    push dword[vreg112] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg113],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg114],esi

    mov esi, dword[vreg114] ; linked_list_reg ; LinearInstruction::LinkedListAdd
    mov edi, dword[vreg113] ; input_reg
    push esi 
    push dword edi
    call add_to_linked_list
    add esp,8

    push dword[vreg114] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg115],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg116],esi

    mov esi,[vreg116] ; LinearInstruction::Call
    mov edi,[vreg115]
    push __empty_to_output_to ; output here 
    push edi
    push esi
    call auxilary_call_function
    add esp,8
    pop esi
    mov [vreg117],esi

    push dword[vreg117] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg118],esi

    push dword 0 ; LinearInstruction::Cond
    push dword[vreg118]
    call auxilary_is_true_in_cond
    add esp, 4
    pop ecx

    cmp ecx, 0
    je .cond_branch_point_based_on_vreg118


    mov dword[vreg119],static30_data_ptr_struc ; LinearInstruction::StaticRefToRegister

    push dword[vreg119] ; LinearInstruction::PushToStack

    jmp .cond27 ; branch of cond was used finishing this cond
.cond_branch_point_based_on_vreg118:
    mov dword[vreg120],static31_data_ptr_struc ; LinearInstruction::StaticRefToRegister

    push dword[vreg120] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg121],esi

    push dword 0 ; LinearInstruction::Cond
    push dword[vreg121]
    call auxilary_is_true_in_cond
    add esp, 4
    pop ecx

    cmp ecx, 0
    je .cond_branch_point_based_on_vreg121


    push dword 0 ; LinearInstruction::Lookup
    push static32_actual
    push dword[current_scope]
    call lookup_in_scope_and_parents
    add esp, 8
    pop esi
    mov dword[vreg122],esi

    push dword[vreg122] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::LinkedListInit
    call init_linked_list
    pop esi
    mov [vreg123],esi

    push dword[vreg123] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::Lookup
    push static33_actual
    push dword[current_scope]
    call lookup_in_scope_and_parents
    add esp, 8
    pop esi
    mov dword[vreg124],esi

    push dword[vreg124] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg125],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg126],esi

    mov esi, dword[vreg126] ; linked_list_reg ; LinearInstruction::LinkedListAdd
    mov edi, dword[vreg125] ; input_reg
    push esi 
    push dword edi
    call add_to_linked_list
    add esp,8

    push dword[vreg126] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::Lookup
    push static34_actual
    push dword[current_scope]
    call lookup_in_scope_and_parents
    add esp, 8
    pop esi
    mov dword[vreg127],esi

    push dword[vreg127] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::LinkedListInit
    call init_linked_list
    pop esi
    mov [vreg128],esi

    push dword[vreg128] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::Lookup
    push static35_actual
    push dword[current_scope]
    call lookup_in_scope_and_parents
    add esp, 8
    pop esi
    mov dword[vreg129],esi

    push dword[vreg129] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg130],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg131],esi

    mov esi, dword[vreg131] ; linked_list_reg ; LinearInstruction::LinkedListAdd
    mov edi, dword[vreg130] ; input_reg
    push esi 
    push dword edi
    call add_to_linked_list
    add esp,8

    push dword[vreg131] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::Lookup
    push static36_actual
    push dword[current_scope]
    call lookup_in_scope_and_parents
    add esp, 8
    pop esi
    mov dword[vreg132],esi

    push dword[vreg132] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::LinkedListInit
    call init_linked_list
    pop esi
    mov [vreg133],esi

    push dword[vreg133] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::Lookup
    push static37_actual
    push dword[current_scope]
    call lookup_in_scope_and_parents
    add esp, 8
    pop esi
    mov dword[vreg134],esi

    push dword[vreg134] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg135],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg136],esi

    mov esi, dword[vreg136] ; linked_list_reg ; LinearInstruction::LinkedListAdd
    mov edi, dword[vreg135] ; input_reg
    push esi 
    push dword edi
    call add_to_linked_list
    add esp,8

    push dword[vreg136] ; LinearInstruction::PushToStack

    mov dword[vreg137],static38_data_ptr_struc ; LinearInstruction::StaticRefToRegister

    push dword[vreg137] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg138],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg139],esi

    mov esi, dword[vreg139] ; linked_list_reg ; LinearInstruction::LinkedListAdd
    mov edi, dword[vreg138] ; input_reg
    push esi 
    push dword edi
    call add_to_linked_list
    add esp,8

    push dword[vreg139] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg140],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg141],esi

    mov esi,[vreg141] ; LinearInstruction::Call
    mov edi,[vreg140]
    push __empty_to_output_to ; output here 
    push edi
    push esi
    call auxilary_call_function
    add esp,8
    pop esi
    mov [vreg142],esi

    push dword[vreg142] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg143],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg144],esi

    mov esi, dword[vreg144] ; linked_list_reg ; LinearInstruction::LinkedListAdd
    mov edi, dword[vreg143] ; input_reg
    push esi 
    push dword edi
    call add_to_linked_list
    add esp,8

    push dword[vreg144] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg145],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg146],esi

    mov esi,[vreg146] ; LinearInstruction::Call
    mov edi,[vreg145]
    push __empty_to_output_to ; output here 
    push edi
    push esi
    call auxilary_call_function
    add esp,8
    pop esi
    mov [vreg147],esi

    push dword[vreg147] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg148],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg149],esi

    mov esi, dword[vreg149] ; linked_list_reg ; LinearInstruction::LinkedListAdd
    mov edi, dword[vreg148] ; input_reg
    push esi 
    push dword edi
    call add_to_linked_list
    add esp,8

    push dword[vreg149] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg150],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg151],esi

    mov esi,[vreg151] ; LinearInstruction::Call
    mov edi,[vreg150]
    push __empty_to_output_to ; output here 
    push edi
    push esi
    call auxilary_call_function
    add esp,8
    pop esi
    mov [vreg152],esi

    push dword[vreg152] ; LinearInstruction::PushToStack

    jmp .cond27 ; branch of cond was used finishing this cond
.cond_branch_point_based_on_vreg121:
.cond27: ; LinearInstruction::EndOfCond
    pop esi ; LinearInstruction::PopFromStack
    mov [vreg153],esi

    mov esi, dword[vreg153] ; LinearInstruction::Return
    mov [ebp+12], esi

    leave ; bye
    ret
