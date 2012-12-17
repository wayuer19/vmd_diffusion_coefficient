# diffusion_coefficient_gui_ui.tcl --
#
# UI generated by GUI Builder Build 146 on 2012-12-17 15:33:08 from:
#    /home/toni/compile/vmd-utils/vmd_diffusion_coefficient/diffusion_coefficient_gui.ui
# THIS IS AN AUTOGENERATED FILE AND SHOULD NOT BE EDITED.
# The associated callback file should be modified instead.
#

# Declare the namespace for this dialog
namespace eval diffusion_coefficient_gui {}

package require Tk
# diffusion_coefficient_gui::ui --
#
#   Create the UI for this dialog.
#
# ARGS:
#   root     the parent window for this form
#   args     a catch-all for other args, but none are expected
#
proc diffusion_coefficient_gui::ui {root args} {
    # this handles '.' as a special case
    set base [expr {($root == ".") ? "" : $root}]
    variable ROOT $root
    variable BASE $base
    variable SCRIPTDIR ; # defined in main script


    # Widget Initialization
    variable _frame_1 [frame $BASE._frame_1]
    variable _frame_2 [frame $BASE._frame_2]
    variable _frame_3 [frame $BASE._frame_3]
    variable _frame_4 [frame $BASE._frame_4]
    variable _frame_6 [frame $BASE._frame_6]
    variable _label_1 [label $BASE._label_1 \
	    -font {helvetica 10 bold} \
	    -pady 6 \
	    -text "VMD Diffusion Coefficient Tool"]
    variable _label_2 [label $BASE._label_2 \
	    -font {helvetica 10} \
	    -text "Compute one, two or three-dimensional mean squared displacements (MSD) of a molecular specie, and associated diffusion coefficients" \
	    -wraplength 450]
    variable _label_3 [label $BASE._label_3 \
	    -font {helvetica 10} \
	    -text "Selection (one atom per molecule)"]
    variable _entry_1 [entry $BASE._entry_1 \
	    -invalidcommand [namespace code [list _entry_1_invalidcommand]] \
	    -justify "center" \
	    -textvariable "diffusion_coefficient::arg(selection)" \
	    -validatecommand [namespace code [list _entry_1_validatecommand]] \
	    -width 30 \
	    -xscrollcommand [namespace code [list _entry_1_xscrollcommand]]]
    variable _label_4 [label $BASE._label_4 \
	    -font {helvetica 10} \
	    -text "Real time between frames (ns)"]
    variable _entry_2 [entry $BASE._entry_2 \
	    -invalidcommand [namespace code [list _entry_2_invalidcommand]] \
	    -justify "center" \
	    -textvariable "diffusion_coefficient::arg(dt)" \
	    -validatecommand [namespace code [list _entry_2_validatecommand]] \
	    -width 12 \
	    -xscrollcommand [namespace code [list _entry_2_xscrollcommand]]]
    variable _label_5 [label $BASE._label_5 \
	    -font {helvetica 10} \
	    -text "Diffusion along"]
    variable _checkbutton_1 [checkbutton $BASE._checkbutton_1 \
	    -command [namespace code [list _checkbutton_1_command]] \
	    -font {helvetica 10} \
	    -text "x" \
	    -variable "diffusion_coefficient::arg(alongx)"]
    variable _checkbutton_2 [checkbutton $BASE._checkbutton_2 \
	    -command [namespace code [list _checkbutton_2_command]] \
	    -font {helvetica 10} \
	    -text "y" \
	    -variable "diffusion_coefficient::arg(alongy)"]
    variable _checkbutton_3 [checkbutton $BASE._checkbutton_3 \
	    -command [namespace code [list _checkbutton_3_command]] \
	    -font {helvetica 10} \
	    -takefocus 1 \
	    -text "z" \
	    -variable "diffusion_coefficient::arg(alongz)"]
    variable plot_msd_button [button $BASE.plot_msd_button \
	    -command [namespace code [list plot_msd_button_command]] \
	    -font {helvetica 10 bold} \
	    -text "MSD displacement"]
    variable plot_d_button [button $BASE.plot_d_button \
	    -command [namespace code [list plot_d_button_command]] \
	    -font {helvetica 10 bold} \
	    -text "Diffusion coefficient"]
    variable _label_6 [label $BASE._label_6 \
	    -font {helvetica 10} \
	    -text "Compute MSD at lag times \u03C4 from"]
    variable _entry_3 [entry $BASE._entry_3 \
	    -invalidcommand [namespace code [list _entry_3_invalidcommand]] \
	    -justify "center" \
	    -textvariable "diffusion_coefficient::arg(from)" \
	    -validatecommand [namespace code [list _entry_3_validatecommand]] \
	    -width 6 \
	    -xscrollcommand [namespace code [list _entry_3_xscrollcommand]]]
    variable _label_8 [label $BASE._label_8 \
	    -font {helvetica 10} \
	    -text "to"]
    variable _entry_4 [entry $BASE._entry_4 \
	    -invalidcommand [namespace code [list _entry_4_invalidcommand]] \
	    -justify "center" \
	    -textvariable "diffusion_coefficient::arg(to)" \
	    -validatecommand [namespace code [list _entry_4_validatecommand]] \
	    -width 6 \
	    -xscrollcommand [namespace code [list _entry_4_xscrollcommand]]]
    variable _entry_5 [entry $BASE._entry_5 \
	    -invalidcommand [namespace code [list _entry_5_invalidcommand]] \
	    -justify "center" \
	    -textvariable "diffusion_coefficient::arg(step)" \
	    -validatecommand [namespace code [list _entry_5_validatecommand]] \
	    -width 6 \
	    -xscrollcommand [namespace code [list _entry_5_xscrollcommand]]]
    variable _label_9 [label $BASE._label_9 \
	    -font {helvetica 10} \
	    -text "step"]
    variable _label_10 [label $BASE._label_10 \
	    -font {helvetica 10} \
	    -text "frames   "]
    variable _label_11 [label $BASE._label_11 \
	    -font {helvetica 10} \
	    -text "Analysis interval from"]
    variable _label_12 [label $BASE._label_12 \
	    -font {helvetica 10} \
	    -text "frames   "]
    variable _entry_6 [entry $BASE._entry_6 \
	    -invalidcommand [namespace code [list _entry_6_invalidcommand]] \
	    -justify "center" \
	    -textvariable "diffusion_coefficient::arg(interval_from)" \
	    -validatecommand [namespace code [list _entry_6_validatecommand]] \
	    -width 6 \
	    -xscrollcommand [namespace code [list _entry_6_xscrollcommand]]]
    variable _label_13 [label $BASE._label_13 \
	    -font {helvetica 10} \
	    -text "Ready" \
	    -textvariable "diffusion_coefficient::status_text"]
    variable _label_14 [label $BASE._label_14 \
	    -font {helvetica 10} \
	    -text "to"]
    variable _entry_7 [entry $BASE._entry_7 \
	    -invalidcommand [namespace code [list _entry_7_invalidcommand]] \
	    -justify "center" \
	    -textvariable "diffusion_coefficient::arg(interval_to)" \
	    -validatecommand [namespace code [list _entry_7_validatecommand]] \
	    -width 6 \
	    -xscrollcommand [namespace code [list _entry_7_xscrollcommand]]]
    variable _label_15 [label $BASE._label_15 \
	    -font {helvetica 10} \
	    -text "step"]
    variable _entry_8 [entry $BASE._entry_8 \
	    -invalidcommand [namespace code [list _entry_8_invalidcommand]] \
	    -justify "center" \
	    -textvariable "diffusion_coefficient::arg(interval_stride)" \
	    -validatecommand [namespace code [list _entry_8_validatecommand]] \
	    -width 6 \
	    -xscrollcommand [namespace code [list _entry_8_xscrollcommand]]]
    variable _checkbutton_4 [checkbutton $BASE._checkbutton_4 \
	    -command [namespace code [list _checkbutton_4_command]] \
	    -font {helvetica 10} \
	    -text "Subtract center of mass drift" \
	    -variable "diffusion_coefficient::arg(remove_drift)"]
    variable reset_lags_button [button $BASE.reset_lags_button \
	    -command [namespace code [list reset_lags_button_command]] \
	    -font {helvetica 10} \
	    -text "Defaults"]
    variable reset_interval_button [button $BASE.reset_interval_button \
	    -command [namespace code [list reset_interval_button_command]] \
	    -font {helvetica 10} \
	    -text "Defaults"]
    variable _label_7 [label $BASE._label_7 \
	    -font {helvetica 10} \
	    -text "Generate plot for"]
    variable button_help [button $BASE.button_help \
	    -bitmap "questhead" \
	    -borderwidth 1 \
	    -command [namespace code [list button_help_command]] \
	    -font {helvetica 10 bold} \
	    -text "?"]
    variable menu [menu $BASE.menu]
    variable menuitem1 [menu $BASE.menuitem1 \
	    -tearoff 0]
    $BASE.menu add cascade \
	    -label "Help" \
	    -menu $BASE.menuitem1
    $BASE.menuitem1 add command \
	    -command "diffusion_coefficient_gui::help_docs" \
	    -compound "right" \
	    -label "Documentation..."
    $BASE.menuitem1 add command \
	    -command "diffusion_coefficient_gui::help_about" \
	    -label "About"


    # Geometry Management

    grid $BASE._frame_1 -in $root -row 4 -column 2 \
	    -columnspan 1 \
	    -ipadx 0 \
	    -ipady 0 \
	    -padx 0 \
	    -pady 0 \
	    -rowspan 1 \
	    -sticky "ew"
    grid $BASE._frame_2 -in $root -row 9 -column 2 \
	    -columnspan 1 \
	    -ipadx 0 \
	    -ipady 0 \
	    -padx 0 \
	    -pady 0 \
	    -rowspan 1 \
	    -sticky "ew"
    grid $BASE._frame_3 -in $root -row 5 -column 2 \
	    -columnspan 1 \
	    -ipadx 0 \
	    -ipady 0 \
	    -padx 0 \
	    -pady 0 \
	    -rowspan 1 \
	    -sticky "news"
    grid $BASE._frame_4 -in $root -row 6 -column 2 \
	    -columnspan 1 \
	    -ipadx 0 \
	    -ipady 0 \
	    -padx 0 \
	    -pady 0 \
	    -rowspan 1 \
	    -sticky "news"
    grid $BASE._frame_6 -in $root -row 9 -column 1 \
	    -columnspan 1 \
	    -ipadx 0 \
	    -ipady 0 \
	    -padx 0 \
	    -pady 0 \
	    -rowspan 1 \
	    -sticky "ew"
    grid $BASE._label_1 -in $root -row 1 -column 1 \
	    -columnspan 2 \
	    -ipadx 0 \
	    -ipady 0 \
	    -padx 0 \
	    -pady 0 \
	    -rowspan 1 \
	    -sticky ""
    grid $BASE._label_2 -in $root -row 2 -column 1 \
	    -columnspan 2 \
	    -ipadx 0 \
	    -ipady 0 \
	    -padx 0 \
	    -pady 0 \
	    -rowspan 1 \
	    -sticky ""
    grid $BASE._label_3 -in $root -row 3 -column 1 \
	    -columnspan 1 \
	    -ipadx 0 \
	    -ipady 0 \
	    -padx 0 \
	    -pady 0 \
	    -rowspan 1 \
	    -sticky "e"
    grid $BASE._entry_1 -in $root -row 3 -column 2 \
	    -columnspan 1 \
	    -ipadx 0 \
	    -ipady 0 \
	    -padx 0 \
	    -pady 0 \
	    -rowspan 1 \
	    -sticky "ew"
    grid $BASE._label_4 -in $root -row 7 -column 1 \
	    -columnspan 1 \
	    -ipadx 0 \
	    -ipady 0 \
	    -padx 0 \
	    -pady 0 \
	    -rowspan 1 \
	    -sticky "e"
    grid $BASE._entry_2 -in $root -row 7 -column 2 \
	    -columnspan 1 \
	    -ipadx 0 \
	    -ipady 0 \
	    -padx 0 \
	    -pady 0 \
	    -rowspan 1 \
	    -sticky "w"
    grid $BASE._label_5 -in $root -row 4 -column 1 \
	    -columnspan 1 \
	    -ipadx 0 \
	    -ipady 0 \
	    -padx 0 \
	    -pady 0 \
	    -rowspan 1 \
	    -sticky "e"
    grid $BASE._checkbutton_1 -in $base._frame_1 -row 1 -column 1 \
	    -columnspan 1 \
	    -ipadx 0 \
	    -ipady 0 \
	    -padx 0 \
	    -pady 0 \
	    -rowspan 1 \
	    -sticky ""
    grid $BASE._checkbutton_2 -in $base._frame_1 -row 1 -column 2 \
	    -columnspan 1 \
	    -ipadx 0 \
	    -ipady 0 \
	    -padx 0 \
	    -pady 0 \
	    -rowspan 1 \
	    -sticky ""
    grid $BASE._checkbutton_3 -in $base._frame_1 -row 1 -column 3 \
	    -columnspan 1 \
	    -ipadx 0 \
	    -ipady 0 \
	    -padx 0 \
	    -pady 0 \
	    -rowspan 1 \
	    -sticky ""
    grid $BASE.plot_msd_button -in $base._frame_2 -row 1 -column 1 \
	    -columnspan 1 \
	    -ipadx 0 \
	    -ipady 0 \
	    -padx 0 \
	    -pady 0 \
	    -rowspan 1 \
	    -sticky "nsew"
    grid $BASE.plot_d_button -in $base._frame_2 -row 1 -column 2 \
	    -columnspan 1 \
	    -ipadx 0 \
	    -ipady 0 \
	    -padx 0 \
	    -pady 0 \
	    -rowspan 1 \
	    -sticky "nsew"
    grid $BASE._label_6 -in $root -row 5 -column 1 \
	    -columnspan 1 \
	    -ipadx 0 \
	    -ipady 0 \
	    -padx 0 \
	    -pady 0 \
	    -rowspan 1 \
	    -sticky "e"
    grid $BASE._entry_3 -in $base._frame_3 -row 1 -column 1 \
	    -columnspan 1 \
	    -ipadx 0 \
	    -ipady 0 \
	    -padx 0 \
	    -pady 0 \
	    -rowspan 1 \
	    -sticky "ew"
    grid $BASE._label_8 -in $base._frame_3 -row 1 -column 2 \
	    -columnspan 1 \
	    -ipadx 0 \
	    -ipady 0 \
	    -padx 0 \
	    -pady 0 \
	    -rowspan 1 \
	    -sticky ""
    grid $BASE._entry_4 -in $base._frame_3 -row 1 -column 3 \
	    -columnspan 1 \
	    -ipadx 0 \
	    -ipady 0 \
	    -padx 0 \
	    -pady 0 \
	    -rowspan 1 \
	    -sticky "ew"
    grid $BASE._entry_5 -in $base._frame_3 -row 1 -column 5 \
	    -columnspan 1 \
	    -ipadx 0 \
	    -ipady 0 \
	    -padx 0 \
	    -pady 0 \
	    -rowspan 1 \
	    -sticky "ew"
    grid $BASE._label_9 -in $base._frame_3 -row 1 -column 4 \
	    -columnspan 1 \
	    -ipadx 0 \
	    -ipady 0 \
	    -padx 0 \
	    -pady 0 \
	    -rowspan 1 \
	    -sticky ""
    grid $BASE._label_10 -in $base._frame_3 -row 1 -column 6 \
	    -columnspan 1 \
	    -ipadx 0 \
	    -ipady 0 \
	    -padx 0 \
	    -pady 0 \
	    -rowspan 1 \
	    -sticky "w"
    grid $BASE._label_11 -in $root -row 6 -column 1 \
	    -columnspan 1 \
	    -ipadx 0 \
	    -ipady 0 \
	    -padx 0 \
	    -pady 0 \
	    -rowspan 1 \
	    -sticky "e"
    grid $BASE._label_12 -in $base._frame_4 -row 1 -column 6 \
	    -columnspan 1 \
	    -ipadx 0 \
	    -ipady 0 \
	    -padx 0 \
	    -pady 0 \
	    -rowspan 1 \
	    -sticky "w"
    grid $BASE._entry_6 -in $base._frame_4 -row 1 -column 1 \
	    -columnspan 1 \
	    -ipadx 0 \
	    -ipady 0 \
	    -padx 0 \
	    -pady 0 \
	    -rowspan 1 \
	    -sticky "ew"
    grid $BASE._label_13 -in $root -row 8 -column 1 \
	    -columnspan 2 \
	    -ipadx 0 \
	    -ipady 0 \
	    -padx 0 \
	    -pady 0 \
	    -rowspan 1 \
	    -sticky ""
    grid $BASE._label_14 -in $base._frame_4 -row 1 -column 2 \
	    -columnspan 1 \
	    -ipadx 0 \
	    -ipady 0 \
	    -padx 0 \
	    -pady 0 \
	    -rowspan 1 \
	    -sticky ""
    grid $BASE._entry_7 -in $base._frame_4 -row 1 -column 3 \
	    -columnspan 1 \
	    -ipadx 0 \
	    -ipady 0 \
	    -padx 0 \
	    -pady 0 \
	    -rowspan 1 \
	    -sticky "ew"
    grid $BASE._label_15 -in $base._frame_4 -row 1 -column 4 \
	    -columnspan 1 \
	    -ipadx 0 \
	    -ipady 0 \
	    -padx 0 \
	    -pady 0 \
	    -rowspan 1 \
	    -sticky ""
    grid $BASE._entry_8 -in $base._frame_4 -row 1 -column 5 \
	    -columnspan 1 \
	    -ipadx 0 \
	    -ipady 0 \
	    -padx 0 \
	    -pady 0 \
	    -rowspan 1 \
	    -sticky "ew"
    grid $BASE._checkbutton_4 -in $base._frame_1 -row 1 -column 4 \
	    -columnspan 1 \
	    -ipadx 0 \
	    -ipady 0 \
	    -padx 0 \
	    -pady 0 \
	    -rowspan 1 \
	    -sticky ""
    grid $BASE.reset_lags_button -in $base._frame_3 -row 1 -column 7 \
	    -columnspan 1 \
	    -ipadx 0 \
	    -ipady 0 \
	    -padx 0 \
	    -pady 0 \
	    -rowspan 1 \
	    -sticky ""
    grid $BASE.reset_interval_button -in $base._frame_4 -row 1 -column 7 \
	    -columnspan 1 \
	    -ipadx 0 \
	    -ipady 0 \
	    -padx 0 \
	    -pady 0 \
	    -rowspan 1 \
	    -sticky ""
    grid $BASE._label_7 -in $base._frame_6 -row 1 -column 2 \
	    -columnspan 1 \
	    -ipadx 0 \
	    -ipady 0 \
	    -padx 0 \
	    -pady 0 \
	    -rowspan 1 \
	    -sticky "e"
    grid $BASE.button_help -in $base._frame_6 -row 1 -column 1 \
	    -columnspan 1 \
	    -ipadx 0 \
	    -ipady 0 \
	    -padx 0 \
	    -pady 0 \
	    -rowspan 1 \
	    -sticky "nsew"

    # Resize Behavior
    grid rowconfigure $root 1 -weight 0 -minsize 16 -pad 0
    grid rowconfigure $root 2 -weight 1 -minsize 24 -pad 0
    grid rowconfigure $root 3 -weight 0 -minsize 42 -pad 0
    grid rowconfigure $root 4 -weight 0 -minsize 12 -pad 0
    grid rowconfigure $root 5 -weight 0 -minsize 4 -pad 0
    grid rowconfigure $root 6 -weight 0 -minsize 2 -pad 0
    grid rowconfigure $root 7 -weight 0 -minsize 21 -pad 0
    grid rowconfigure $root 8 -weight 1 -minsize 40 -pad 0
    grid rowconfigure $root 9 -weight 0 -minsize 40 -pad 0
    grid columnconfigure $root 1 -weight 0 -minsize 40 -pad 0
    grid columnconfigure $root 2 -weight 1 -minsize 40 -pad 0
    grid rowconfigure $base._frame_1 1 -weight 0 -minsize 4 -pad 0
    grid columnconfigure $base._frame_1 1 -weight 0 -minsize 40 -pad 0
    grid columnconfigure $base._frame_1 2 -weight 0 -minsize 40 -pad 0
    grid columnconfigure $base._frame_1 3 -weight 0 -minsize 40 -pad 0
    grid columnconfigure $base._frame_1 4 -weight 1 -minsize 40 -pad 0
    grid rowconfigure $base._frame_2 1 -weight 0 -minsize 2 -pad 0
    grid columnconfigure $base._frame_2 1 -weight 1 -minsize 2 -pad 0
    grid columnconfigure $base._frame_2 2 -weight 1 -minsize 40 -pad 0
    grid rowconfigure $base._frame_3 1 -weight 0 -minsize 3 -pad 0
    grid columnconfigure $base._frame_3 1 -weight 0 -minsize 40 -pad 0
    grid columnconfigure $base._frame_3 2 -weight 0 -minsize 40 -pad 0
    grid columnconfigure $base._frame_3 3 -weight 0 -minsize 40 -pad 0
    grid columnconfigure $base._frame_3 4 -weight 0 -minsize 40 -pad 0
    grid columnconfigure $base._frame_3 5 -weight 0 -minsize 40 -pad 0
    grid columnconfigure $base._frame_3 6 -weight 1 -minsize 40 -pad 0
    grid columnconfigure $base._frame_3 7 -weight 0 -minsize 40 -pad 0
    grid rowconfigure $base._frame_4 1 -weight 0 -minsize 2 -pad 0
    grid columnconfigure $base._frame_4 1 -weight 0 -minsize 40 -pad 0
    grid columnconfigure $base._frame_4 2 -weight 0 -minsize 40 -pad 0
    grid columnconfigure $base._frame_4 3 -weight 0 -minsize 40 -pad 0
    grid columnconfigure $base._frame_4 4 -weight 0 -minsize 40 -pad 0
    grid columnconfigure $base._frame_4 5 -weight 0 -minsize 40 -pad 0
    grid columnconfigure $base._frame_4 6 -weight 1 -minsize 40 -pad 0
    grid columnconfigure $base._frame_4 7 -weight 0 -minsize 40 -pad 0
    grid rowconfigure $base._frame_6 1 -weight 0 -minsize 7 -pad 0
    grid columnconfigure $base._frame_6 1 -weight 0 -minsize 40 -pad 0
    grid columnconfigure $base._frame_6 2 -weight 1 -minsize 40 -pad 0
    $ROOT configure -menu $BASE.menu
}
