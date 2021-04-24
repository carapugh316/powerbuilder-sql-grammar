HA$PBExportHeader$uo_misth_zpkrat_sel.sru
$PBExportComments$
forward
global type uo_misth_zpkrat_sel from ucv_selection
end type
end forward

global type uo_misth_zpkrat_sel from ucv_selection
integer width = 2537
integer height = 944
end type
global uo_misth_zpkrat_sel uo_misth_zpkrat_sel

type variables
w_misth_fylo_form		iw_parent
end variables

forward prototypes
public function boolean of_match (ref datawindow source_dw, long source_row, ref datawindow target_dw, long target_row)
public subroutine of_retrieve_source (ref datawindow adw)
public subroutine of_source2target (ref datawindow source_dw, long source_row, ref datawindow target_dw, long target_row)
public subroutine of_target2source (ref datawindow source_dw, long source_row, ref datawindow target_dw, long target_row)
public subroutine of_retrieve_target (ref datawindow adw)
public subroutine of_update_target (ref datawindow adw)
public subroutine of_setrowcolors (ref long al_rowcolor, ref long al_rowrcolor)
end prototypes

public function boolean of_match (ref datawindow source_dw, long source_row, ref datawindow target_dw, long target_row);// ÅðéóôñÝöåé true áí ïé äýï åããñáöÝò (arguments)
// åßíáé ßäéåò.
// ÐåñéÝ÷åé ôïí Ýëåã÷ï ãéá íá åßíáé ßäéåò ïé åããñáöÝò
// (åëÝã÷åé ôéò ôéìÝò ôùí êëåéäéþí)

long			ll_source_kodkrat, 	ll_target_kodkrat
string		ls_source_kodxrisi, 	ls_target_kodxrisi

ll_source_kodkrat = source_dw.object.kodkrat[source_row]
ls_source_kodxrisi = source_dw.object.kodxrisi[source_row]

ll_target_kodkrat = target_dw.object.kodkrat[target_row]
ls_target_kodxrisi = target_dw.object.kodxrisi[target_row]

if ll_source_kodkrat = ll_target_kodkrat and &
	ls_source_kodxrisi = ls_target_kodxrisi then
		return true
else
	return false
end if
end function

public subroutine of_retrieve_source (ref datawindow adw);adw.retrieve(gs_kodxrisi)
end subroutine

public subroutine of_source2target (ref datawindow source_dw, long source_row, ref datawindow target_dw, long target_row);target_dw.object.kodkrat[target_row] = source_dw.object.kodkrat[source_row]
target_dw.object.kodxrisi[target_row] = source_dw.object.kodxrisi[source_row]
target_dw.object.desckrat[target_row] = source_dw.object.desckrat[source_row]


end subroutine

public subroutine of_target2source (ref datawindow source_dw, long source_row, ref datawindow target_dw, long target_row);source_dw.object.kodkrat[source_row] = target_dw.object.kodkrat[target_row]
source_dw.object.kodxrisi[source_row] = target_dw.object.kodxrisi[target_row]
source_dw.object.desckrat[source_row] = target_dw.object.desckrat[target_row]


end subroutine

public subroutine of_retrieve_target (ref datawindow adw);// nop
end subroutine

public subroutine of_update_target (ref datawindow adw);// nop
end subroutine

public subroutine of_setrowcolors (ref long al_rowcolor, ref long al_rowrcolor);al_rowrcolor = rgb(191,255,191)
end subroutine

on uo_misth_zpkrat_sel.create
call super::create
end on

on uo_misth_zpkrat_sel.destroy
call super::destroy
end on

event constructor;call super::constructor;// translation
	st_target.text = trn(308)
	st_source.text = trn(411)
	
end event

type st_target from ucv_selection`st_target within uo_misth_zpkrat_sel
integer x = 1454
string text = ""
end type

type st_source from ucv_selection`st_source within uo_misth_zpkrat_sel
string text = ""
end type

type cb_remove_all from ucv_selection`cb_remove_all within uo_misth_zpkrat_sel
integer x = 1147
end type

type cb_remove_one from ucv_selection`cb_remove_one within uo_misth_zpkrat_sel
integer x = 1147
end type

type cb_add_all from ucv_selection`cb_add_all within uo_misth_zpkrat_sel
integer x = 1147
end type

type cb_add_one from ucv_selection`cb_add_one within uo_misth_zpkrat_sel
integer x = 1147
end type

type dw_target from ucv_selection`dw_target within uo_misth_zpkrat_sel
integer x = 1445
integer width = 1074
integer height = 816
string dataobject = "pick_misth_zpkrat_xrisi"
end type

type dw_source from ucv_selection`dw_source within uo_misth_zpkrat_sel
integer width = 1074
integer height = 816
string dataobject = "pick_misth_zpkrat_xrisi"
end type

event dw_source::retrieveend;call super::retrieveend;if_setbuttons()
end event

