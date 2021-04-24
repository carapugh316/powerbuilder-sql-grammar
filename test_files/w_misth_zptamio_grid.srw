HA$PBExportHeader$w_misth_zptamio_grid.srw
$PBExportComments$
forward
global type w_misth_zptamio_grid from w_pbgrid
end type
end forward

global type w_misth_zptamio_grid from w_pbgrid
integer width = 1861
integer height = 1572
string title = "title"
string icon = "res\pinakes.ico"
string is_tablename = "misth_zptamio"
end type
global w_misth_zptamio_grid w_misth_zptamio_grid

forward prototypes
public function long if_retrieve ()
public function boolean of_check4required (ref datawindow adw, long row)
public subroutine of_postinitrow (ref datawindow adw, long row)
public subroutine of_setrowcolors (ref long al_rowcolor, ref long al_rowrcolor)
end prototypes

public function long if_retrieve ();// Override if retrieval arguments required
// returns the number of rows
	
	long	ll_nrows
	
	ll_nrows = dw_main.retrieve(gs_kodxrisi)
	
	return ll_nrows
end function

public function boolean of_check4required (ref datawindow adw, long row);string	lstring	
long		ll_found

// kodtamio
	lstring = adw.object.kodtamio[row]
	if isnull(lstring) or lstring = "" then
		Messagebox(gs_app_name, trn(162))
		adw.setfocus()
		adw.setcolumn("kodtamio")
		return false
	end if
	
	// ¸ëåã÷ïò áí ï êùäéêüò õðÜñ÷åé
		ll_found = adw.find("kodtamio = '" + lstring + "'", 1, adw.rowcount())
		if ll_found = row then ll_found = adw.find("kodtamio = '" + lstring + "'", ll_found + 1, adw.rowcount())
		if ll_found > 0 and ll_found <> row then
			MessageBox(gs_app_name, trn(133))
			adw.setfocus()
			adw.Setcolumn("kodtamio")
			return false
		end if	

// desctamio
	lstring = adw.object.desctamio[row]
	if isnull(lstring) or lstring = "" then
		Messagebox(gs_app_name, trn(175))
		adw.setfocus()
		adw.setcolumn("desctamio")
		return false
	end if
	
	// ¸ëåã÷ïò áí ç ðåñéãñáöÞ õðÜñ÷åé
		ll_found = adw.find("desctamio = '" + lstring + "'", 1, adw.rowcount())
		if ll_found = row then ll_found = adw.find("desctamio = '" + lstring + "'", ll_found + 1, adw.rowcount())
		if ll_found > 0 and ll_found <> row then
			MessageBox(gs_app_name, trn(130))
			adw.setfocus()
			adw.Setcolumn("desctamio")
			return false
		end if	
	
	
// everything ok
	return true
end function

public subroutine of_postinitrow (ref datawindow adw, long row);adw.object.kodxrisi[row] = gs_kodxrisi
end subroutine

public subroutine of_setrowcolors (ref long al_rowcolor, ref long al_rowrcolor);al_rowrcolor = rgb(191,255,255)
end subroutine

on w_misth_zptamio_grid.create
call super::create
end on

on w_misth_zptamio_grid.destroy
call super::destroy
if IsValid(MenuID) then destroy(MenuID)
end on

event open;call super::open;// translation
	title = trn(118)
	
end event

type dw_main from w_pbgrid`dw_main within w_misth_zptamio_grid
integer width = 1819
integer height = 1300
string dataobject = "dw_misth_zptamio_list"
end type

