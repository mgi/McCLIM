;;; -*- Mode: Lisp; Package: CLIM-INTERNALS -*-

;;;  (c) copyright 1998,1999,2000 by Michael McDonald (mikemac@mikemac.com)

;;; This library is free software; you can redistribute it and/or
;;; modify it under the terms of the GNU Library General Public
;;; License as published by the Free Software Foundation; either
;;; version 2 of the License, or (at your option) any later version.
;;;
;;; This library is distributed in the hope that it will be useful,
;;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;;; Library General Public License for more details.
;;;
;;; You should have received a copy of the GNU Library General Public
;;; License along with this library; if not, write to the 
;;; Free Software Foundation, Inc., 59 Temple Place - Suite 330, 
;;; Boston, MA  02111-1307  USA.

(in-package :CLIM-INTERNALS)

(eval-when (eval load compile)
  (export '(
	    )))

(defpackage :CLIM
  (:use :clim-internals :common-lisp)
  (:export "ABORT-GESTURE"
	   "ABORT-GESTURE-EVENT"
	   "ACCELERATOR-GESTURE"
	   "ACCELERATOR-GESTURE-EVENT"
	   "ACCELERATOR-GESTURE-NUMERIC-ARGUMENT"
	   "*ACCELERATOR-GESTURES*"
	   "ACCEPT"
	   "ACCEPT-1"
	   "ACCEPT-FROM-STRING"
	   "ACCEPT-VALUES"
	   "ACCEPT-VALUES-COMMAND-BUTTON"
	   "ACCEPT-VALUES-RESYNCHRONIZE"
	   "ACTION-GADGET"
	   "ACTIVATE-CALLBACK"
	   "ACTIVATE-GADGET"
	   "ACTIVATION-GESTURE-P"
	   "*ACTIVATION-GESTURES*"
	   "ADD-CHARACTER-OUTPUT-TO-TEXT-RECORD"
	   "ADD-COMMAND-TO-COMMAND-TABLE"
	   "ADD-GESTURE-NAME"
	   "ADD-KEYSTROKE-TO-COMMAND-TABLE"
	   "ADD-MENU-ITEM-TO-COMMAND-TABLE"
	   "ADD-OUTPUT-RECORD"
	   "ADD-PRESENTATION-TRANSLATOR-TO-COMMAND-TABLE"
	   "ADD-STRING-OUTPUT-TO-TEXT-RECORD"
	   "ADD-WATCHER"
	   "ADJUST-ITEM-LIST-CELLS"
	   "ADJUST-MULTIPLE-COLUMNS"
	   "ADJUST-TABLE-CELLS"
	   "ADOPT-FRAME"
	   "ALLOCATE-PIXMAP"
	   "ALLOCATE-RESOURCE"
	   "ALLOCATE-SPACE"
	   "ALL-PROCESSES"
	   "AND"
	   "*APPLICATION-FRAME*"
	   "APPLICATION-FRAME-P"
	   "APPLICATION-PANE"
	   "AREA"
	   "AREAP"
	   "ARMED-CALLBACK"
	   "+BACKGROUND-INK+"
	   "BBOARD-PANE"
	   "BLANK-AREA"
	   "BOOLEAN"
	   "BORDERING"
	   "BORDER-PANE"
	   "BOUNDING-RECTANGLE*"
	   "BOUNDING-RECTANGLE"
	   "BOUNDING-RECTANGLE-HEIGHT"
	   "BOUNDING-RECTANGLE-MAX-X"
	   "BOUNDING-RECTANGLE-MAX-Y"
	   "BOUNDING-RECTANGLE-MIN-X"
	   "BOUNDING-RECTANGLE-MIN-Y"
	   "BOUNDING-RECTANGLE-P"
	   "BOUNDING-RECTANGLE-POSITION"
	   "BOUNDING-RECTANGLE-SIZE"
	   "BOUNDING-RECTANGLE-WIDTH"
	   "BURY-SHEET"
	   "CACHE-OUTPUT-RECORD"
	   "CALL-PRESENTATION-MENU"
	   "CALL-PRESENTATION-TRANSLATOR"
	   "CELL-ALIGN-X"
	   "CELL-ALIGN-Y"
	   "CELL-MIN-HEIGHT"
	   "CELL-MIN-WIDTH"
	   "CELL-OUTPUT-RECORD"
	   "CELL-OUTPUT-RECORD-P"
	   "CHANGE-SPACE-REQUIREMENTS"
	   "CHANGING-SPACE-REQUIREMENTS"
	   "CHILDREN-OVERLAPPING-RECTANGLE*"
	   "CHILDREN-OVERLAPPING-REGION"
	   "CLASS-PRESENTATION-TYPE-NAME"
	   "CLEAR-OUTPUT-RECORD"
	   "CLEAR-RESOURCE"
	   "CLIENT-SETTING"
	   "CLOSE"
	   "COLOR-IHS"
	   "COLORP"
	   "COLOR-RGB"
	   "COLUMN-OUTPUT-RECORD"
	   "COLUMN-OUTPUT-RECORD-P"
	   "COMMAND-ACCESSIBLE-IN-COMMAND-TABLE-P"
	   "COMMAND-ALREADY-PRESENT"
	   "*COMMAND-ARGUMENT-DELIMITERS*"
	   "COMMAND-ARGUMENTS"
	   "*COMMAND-DISPATCHERS*"
	   "COMMAND-ENABLED"
	   "COMMAND-ENABLED"
	   "COMMAND-LINE-COMMAND-PARSER"
	   "COMMAND-LINE-COMMAND-UNPARSER"
	   "COMMAND-LINE-NAME-FOR-COMMAND"
	   "COMMAND-LINE-READ-REMAINING-ARGUMENTS-FOR-PARTIAL-COMMAND"
	   "COMMAND-MENU-ITEM-OPTIONS"
	   "COMMAND-MENU-ITEM-TYPE"
	   "COMMAND-MENU-ITEM-VALUE"
	   "COMMAND-MENU-PANE"
	   "COMMAND-NAME"
	   "COMMAND-NAME"
	   "*COMMAND-NAME-DELIMITERS*"
	   "COMMAND-NOT-ACCESSIBLE"
	   "COMMAND-NOT-PRESENT"
	   "COMMAND-OR-FORM"
	   "*COMMAND-PARSER*"
	   "COMMAND-PRESENT-IN-COMMAND-TABLE-P"
	   "COMMAND-TABLE"
	   "COMMAND-TABLE-ALREADY-EXISTS"
	   "COMMAND-TABLE-COMPLETE-INPUT"
	   "COMMAND-TABLE-ERROR"
	   "COMMAND-TABLE-INHERIT-FROM"
	   "COMMAND-TABLE-NOT-FOUND"
	   "COMMAND-TABLE-P"
	   "*COMMAND-UNPARSER*"
	   "COMPLETE-FROM-GENERATOR"
	   "COMPLETE-FROM-POSSIBILITIES"
	   "COMPLETE-INPUT"
	   "COMPLETING-FROM-SUGGESTIONS"
	   "*COMPLETION-GESTURES*"
	   "COMPLEX"
	   "COMPOSE-IN"
	   "COMPOSE-OUT"
	   "COMPOSE-ROTATION-WITH-TRANSFORMATION"
	   "COMPOSE-SCALING-WITH-TRANSFORMATION"
	   "COMPOSE-SPACE"
	   "COMPOSE-TRANSFORMATIONS"
	   "COMPOSE-TRANSFORMATION-WITH-ROTATION"
	   "COMPOSE-TRANSFORMATION-WITH-SCALING"
	   "COMPOSE-TRANSFORMATION-WITH-TRANSLATION"
	   "COMPOSE-TRANSLATION-WITH-TRANSFORMATION"
	   "COMPUTE-DIFFERENCE-SET"
	   "COMPUTE-NEW-OUTPUT-RECORDS"
	   "CONTRASTING-DASH-PATTERN-LIMIT"
	   "CONTRASTING-INKS-LIMIT"
	   "+CONTROL-KEY+"
	   "COORDINATE"
	   "COPY-AREA"
	   "COPY-FROM-PIXMAP"
	   "COPY-TO-PIXMAP"
	   "CURRENT-PROCESS"
	   "CURSOR"
	   "CURSORP"
	   "CURSOR-POSITION"
	   "CURSOR-SHEET"
	   "CURSOR-VISIBILITY"
	   "CURSOR-VISIBILITY"
	   "DEACTIVATE-GADGET"
	   "DEALLOCATE-PIXMAP"
	   "DEALLOCATE-RESOURCE"
	   "DECACHE-CHILD-OUTPUT-RECORD"
	   "DEFAULT-DESCRIBE-PRESENTATION-TYPE"
	   "*DEFAULT-FRAME-MANAGER*"
	   "DEFAULT-FRAME-TOP-LEVEL"
	   "DEFGENERIC*"
	   "DEFINE-APPLICATION-FRAME"
	   "DEFINE-BORDER-TYPE"
	   "DEFINE-COMMAND"
	   "DEFINE-COMMAND-TABLE"
	   "DEFINE-DEFAULT-PRESENTATION-METHOD"
	   "DEFINE-DRAG-AND-DROP-TRANSLATOR"
	   "DEFINE-GESTURE-NAME"
	   "DEFINE-GRAPH-TYPE"
	   "DEFINE-PRESENTATION-ACTION"
	   "DEFINE-PRESENTATION-GENERIC-FUNCTION"
	   "DEFINE-PRESENTATION-METHOD"
	   "DEFINE-PRESENTATION-TO-COMMAND-TRANSLATOR"
	   "DEFINE-PRESENTATION-TYPE"
	   "DEFMETHOD*"
	   "DEFRESOURCE"
	   "DELEGATE-SHEET-DELEGATE"
	   "DELEGATE-SHEET-INPUT-MIXIN"
	   "DELETE-OUTPUT-RECORD"
	   "DELETE-WATCHER"
	   "DELIMITER-GESTURE-P"
	   "*DELIMITER-GESTURES*"
	   "DESIGNP"
	   "DESTROY-PORT"
	   "DESTROY-PROCESS"
	   "DEVICE-EVENT"
	   "DISABLE-FRAME"
	   "DISARMED-CALLBACK"
	   "DISOWN-FRAME"
	   "DISPLAY-COMMAND-MENU"
	   "DISPLAY-COMMAND-TABLE-MENU"
	   "DISPLAY-CURSOR"
	   "DISPLAYED-OUTPUT-RECORD"
	   "DISPLAYED-OUTPUT-RECORD-P"
	   "DISPLAY-EXIT-BOXES"
	   "DO-COMMAND-TABLE-INHERITANCE"
	   "DOCUMENT-PRESENTATION-TRANSLATOR"
	   "DRAG-CALLBACK"
	   "DRAG-CALLBACK"
	   "DRAGGING-OUTPUT"
	   "DRAG-OUTPUT-RECORD"
	   "DRAW-ARROW"
	   "DRAW-ARROW*"
	   "DRAW-CIRCLE"
	   "DRAW-CIRCLE*"
	   "DRAW-ELLIPSE"
	   "DRAW-ELLIPSE*"
	   "DRAW-LINE"
	   "DRAW-LINE*"
	   "DRAW-LINES"
	   "DRAW-LINES*"
	   "DRAW-OVAL"
	   "DRAW-OVAL*"
	   "DRAW-PATTERN*"
	   "DRAW-POINT*"
	   "DRAW-POINTS"
	   "DRAW-POINTS*"
	   "DRAW-POLYGON*"
	   "DRAW-RECTANGLE*"
	   "DRAW-STANDARD-MENU"
	   "DRAW-TEXT"
	   "DRAW-TEXT*"
	   "DRAW-TRIANGLE"
	   "DRAW-TRIANGLE*"
	   "ELLIPSE"
	   "ELLIPSE-CENTER-POINT"
	   "ELLIPSE-CENTER-POINT*"
	   "ELLIPSE-END-ANGLE"
	   "ELLIPSEP"
	   "ELLIPSE-RADII"
	   "ELLIPSE-START-ANGLE"
	   "ELLIPTICAL-ARC"
	   "ELLIPTICAL-ARC-P"
	   "ENABLE-FRAME"
	   "ENCAPSULATING-STREAM-P"
	   "ENCAPSULATING-STREAM-STREAM"
	   "ERASE-INPUT-BUFFER"
	   "EVEN-SCALING-TRANSFORMATION-P"
	   "EVENT"
	   "EVENT-LISTEN"
	   "EVENT-MATCHES-GESTURE-NAME-P"
	   "EVENT-MODIFIER-STATE"
	   "EVENTP"
	   "EVENT-PEEK"
	   "EVENT-READ"
	   "EVENT-READ-NO-HANG"
	   "EVENT-SHEET"
	   "EVENT-TIMESTAMP"
	   "EVENT-TYPE"
	   "EVENT-UNREAD"
	   "+EVERYWHERE+"
	   "EXECUTE-FRAME-COMMAND"
	   "EXPAND-PRESENTATION-TYPE-ABBREVIATION"
	   "EXPAND-PRESENTATION-TYPE-ABBREVIATION-1"
	   "EXTENDED-INPUT-STREAM"
	   "EXTENDED-INPUT-STREAM-P"
	   "EXTENDED-OUTPUT-STREAM"
	   "EXTENDED-OUTPUT-STREAM-P"
	   "+FILL+"
	   "FIND-APPLICABLE-TRANSLATORS"
	   "FIND-CACHED-OUTPUT-RECORD"
	   "FIND-CHILD-OUTPUT-RECORD"
	   "FIND-COMMAND-FROM-COMMAND-LINE-NAME"
	   "FIND-COMMAND-TABLE"
	   "FIND-FRAME-MANAGER"
	   "FIND-GRAFT"
	   "FIND-KEYSTROKE-ITEM"
	   "FIND-MENU-ITEM"
	   "FIND-PANE-FOR-FRAME"
	   "FIND-PANE-NAMED"
	   "FIND-PORT"
	   "FIND-PRESENTATION-TRANSLATOR"
	   "FIND-PRESENTATION-TYPE-CLASS"
	   "+FLIPPING-INK+"
	   "FLOAT"
	   "+FOREGROUND-INK+"
	   "FORM"
	   "FORMAT-ITEMS"
	   "FORMATTING-CELL"
	   "FORMATTING-COLUMN"
	   "FORMATTING-ITEM-LIST"
	   "FORMATTING-ROW"
	   "FRAME-CALLING-FRAME"
	   "FRAME-COMMAND-TABLE"
	   "FRAME-COMMAND-TABLE"
	   "FRAME-CURRENT-LAYOUT"
	   "FRAME-CURRENT-LAYOUT"
	   "FRAME-CURRENT-PANES"
	   "FRAME-DOCUMENT-HIGHLIGHTED-PRESENTATION"
	   "FRAME-DRAG-AND-DROP-HIGHLIGHTING"
	   "FRAME-ERROR-OUTPUT"
	   "FRAME-EXIT"
	   "FRAME-EXIT"
	   "FRAME-FIND-INNERMOST-APPLICABLE-PRESENTATION"
	   "FRAME-INPUT-CONTEXT-BUTTON-PRESS-HANDLER"
	   "FRAME-MAINTAIN-PRESENTATION-HISTORIES"
	   "FRAME-MANAGER"
	   "FRAME-MANAGER"
	   "FRAME-MANAGER-FRAMES"
	   "FRAME-MANANGER-P"
	   "FRAME-NAME"
	   "FRAME-PANE"
	   "FRAME-PANES"
	   "FRAME-PARENT"
	   "FRAME-POINTER-DOCUMENTATION-OUTPUT"
	   "FRAME-PRETTY-NAME"
	   "FRAME-PRETTY-NAME"
	   "FRAME-PROPERTIES"
	   "FRAME-PROPERTIES"
	   "FRAME-QUERY-IO"
	   "FRAME-REPLAY"
	   "FRAME-STANDARD-INPUT"
	   "FRAME-STANDARD-OUTPUT"
	   "FRAME-STATE"
	   "FRAME-TOP-LEVEL-SHEET"
	   "FUNCALL-PRESENTATION-GENERIC-FUNCTION"
	   "FUNDAMENTAL-BINARY-INPUT-STREAM"
	   "FUNDAMENTAL-BINARY-OUTPUT-STREAM"
	   "FUNDAMENTAL-BINARY-STREAM"
	   "FUNDAMENTAL-CHARACTER-INPUT-STREAM"
	   "FUNDAMENTAL-CHARACTER-OUTPUT-STREAM"
	   "FUNDAMENTAL-CHARACTER-STREAM"
	   "FUNDAMENTAL-INPUT-STREAM"
	   "FUNDAMENTAL-OUTPUT-STREAM"
	   "FUNDAMENTAL-STREAM"
	   "GADGET"
	   "GADGET-ACTIVATE-CALLBACK"
	   "GADGET-ARMED-CALLBACK"
	   "GADGET-CLIENT"
	   "GADGET-CLIENT"
	   "GADGET-DIALOG-VIEW"
	   "+GADGET-DIALOG-VIEW+"
	   "GADGET-DISARMED-CALLBACK"
	   "GADGET-ID"
	   "GADGET-ID"
	   "GADGET-LABEL"
	   "GADGET-LABEL"
	   "GADGET-LABEL-ALIGN-X"
	   "GADGET-LABEL-ALIGN-X"
	   "GADGET-LABEL-ALIGN-Y"
	   "GADGET-LABEL-ALIGN-Y"
	   "GADGET-LABEL-TEXT-STYLE"
	   "GADGET-LABEL-TEXT-STYLE"
	   "GADGET-MAX-VALUE"
	   "GADGET-MAX-VALUE"
	   "GADGET-MENU-VIEW"
	   "+GADGET-MENU-VIEW+"
	   "GADGET-MIN-VALUE"
	   "GADGET-MIN-VALUE"
	   "GADGET-ORIENTATION"
	   "GADGET-OUTPUT-RECORD"
	   "GADGETP"
	   "GADGET-SHOW-VALUE-P"
	   "GADGET-VALUE"
	   "GADGET-VALUE"
	   "GADGET-VALUE"
	   "GADGET-VALUE"
	   "GADGET-VALUE"
	   "GADGET-VALUE"
	   "GADGET-VALUE"
	   "GADGET-VALUE"
	   "GADGET-VIEW"
	   "+GADGET-VIEW+"
	   "GENERATE-GRAPH-NODES"
	   "GENERATE-PANES"
	   "GESTURE-PROCESSING-HANDLER"
	   "GET-FRAME-PANE"
	   "GLOBAL-COMMAND-TABLE"
	   "GRAFT-HEIGHT"
	   "GRAFT-ORIENTATION"
	   "GRAFT-PIXELS-PER-INCH"
	   "GRAFT-PIXELS-PER-MILLIMETER"
	   "GRAFT-UNITS"
	   "GRAFT-WIDTH"
	   "GRAPHICS-DISPLAYED-OUTPUT-RECORD"
	   "GRAPHICS-DISPLAYED-OUTPUT-RECORD-P"
	   "GRAPH-NODE-CHILDREN"
	   "GRAPH-NODE-CHILDREN"
	   "GRAPH-NODE-OBJECT"
	   "GRAPH-NODE-OUTPUT-RECORD"
	   "GRAPH-NODE-OUTPUT-RECORD-P"
	   "GRAPH-NODE-PARENTS"
	   "GRAPH-NODE-PARENTS"
	   "GRAPH-OUTPUT-RECORD"
	   "GRAPH-OUTPUT-RECORD-P"
	   "GRAPH-ROOT-NODES"
	   "GRAPH-ROOT-NODES"
	   "HANDLE-EVENT"
	   "HANDLE-REPAINT"
	   "*HELP-GESTURES*"
	   "HIGHLIGHT-APPLICABLE-PRESENTATION"
	   "HIGHLIGHT-OUTPUT-RECORD"
	   "HORIZONTALLY"
	   "HRACK-PANE"
	   "+HYPER-KEY+"
	   "+IDENTITY-TRANSFORMATION+"
	   "IDENTITY-TRANSFORMATION-P"
	   "IMMEDIATE-REPAINTING-MIXIN"
	   "IMMEDIATE-RESCAN"
	   "IMMEDIATE-SHEET-INPUT-MIXIN"
	   "INCREMENTAL-REDISPLAY"
	   "INPUT-EDITING-STREAM"
	   "INPUT-EDITING-STREAM-P"
	   "INPUT-NOT-OF-REQUIRED-TYPE"
	   "INPUT-NOT-OF-REQUIRED-TYPE"
	   "INPUT-STREAM-P"
	   "*INPUT-WAIT-HANDLER*"
	   "*INPUT-WAIT-TEST*"
	   "INTEGER"
	   "INTERACTIVE-STREAM-P"
	   "INTERACTOR-PANE"
	   "INVALIDATE-CACHED-REGIONS"
	   "INVALIDATE-CACHED-TRANSFORMATIONS"
	   "INVERTIBLE-TRANSFORMATION-P"
	   "INVERT-TRANSFORMATION"
	   "INVOKE-ACCEPT-VALUES-COMMAND-BUTTON"
	   "INVOKE-UPDATING-OUTPUT"
	   "INVOKE-WITH-DRAWING-OPTIONS"
	   "INVOKE-WITH-NEW-OUTPUT-RECORD"
	   "INVOKE-WITH-OUTPUT-RECORDING-OPTIONS"
	   "INVOKE-WITH-OUTPUT-TO-OUTPUT-RECORD"
	   "INVOKE-WITH-TEXT-STYLE"
	   "ITEM-LIST-OUTPUT-RECORD-P"
	   "KEYBOARD-EVENT"
	   "KEYBOARD-EVENT-CHARACTER"
	   "KEYBOARD-EVENT-KEY-NAME"
	   "KEY-MODIFIER-STATE-MATCH-P"
	   "KEY-PRESS-EVENT"
	   "KEY-RELEASE-EVENT"
	   "KEYWORD"
	   "LABELLED"
	   "LABELLED-GADGET"
	   "LABEL-PANE"
	   "LAYOUT-FRAME"
	   "LAYOUT-GRAPH-EDGES"
	   "LAYOUT-GRAPH-NODES"
	   "LINE"
	   "LINE-END-POINT"
	   "LINE-END-POINT*"
	   "LINEP"
	   "LINE-START-POINT*"
	   "LINE-START-POINT"
	   "LINE-STYLE"
	   "LINE-STYLE-CAP-SHAPE"
	   "LINE-STYLE-DASHES"
	   "LINE-STYLE-JOINT-SHAPE"
	   "LINE-STYLE-P"
	   "LINE-STYLE-THICKNESS"
	   "LINE-STYLE-UNIT"
	   "LOOKUP-KEYSTROKE-COMMAND-ITEM"
	   "LOOKUP-KEYSTROKE-ITEM"
	   "MAKE-3-POINT-TRANSFORMATION"
	   "MAKE-3-POINT-TRANSFORMATION*"
	   "MAKE-APPLICATION-FRAME"
	   "MAKE-BOUNDING-RECTANGLE"
	   "MAKE-CLIM-APPLICATION-PANE"
	   "MAKE-CLIM-INTERACTOR-PANE"
	   "MAKE-CLIM-STREAM-PANE"
	   "MAKE-COMMAND-TABLE"
	   "MAKE-DESIGN-FROM-OUTPUT-RECORD"
	   "MAKE-DEVICE-FONT-TEXT-STYLE"
	   "MAKE-ELLIPSE"
	   "MAKE-ELLIPSE*"
	   "MAKE-ELLIPTICAL-ARC"
	   "MAKE-ELLIPTICAL-ARC*"
	   "MAKE-GRAY-COLOR"
	   "MAKE-IHS-COLOR"
	   "MAKE-LINE*"
	   "MAKE-LINE-STYLE"
	   "MAKE-LOCK"
	   "MAKE-OPACITY"
	   "MAKE-PANE"
	   "MAKE-PANE-1"
	   "MAKE-PATTERN"
	   "MAKE-POINT"
	   "MAKE-POLYGON"
	   "MAKE-POLYGON*"
	   "MAKE-POLYLINE"
	   "MAKE-POLYLINE*"
	   "MAKE-PRESENTATION-TYPE-SPECIFIER"
	   "MAKE-PROCESS"
	   "MAKE-RECTANGLE"
	   "MAKE-RECTANGLE*"
	   "MAKE-RECTANGULAR-TILE"
	   "MAKE-RECURSIVE-LOCK"
	   "MAKE-REFLECTION-TRANSFORMATION"
	   "MAKE-REFLECTION-TRANSFORMATION*"
	   "MAKE-RGB-COLOR"
	   "MAKE-ROTATION-TRANSFORMATION"
	   "MAKE-ROTATION-TRANSFORMATION*"
	   "MAKE-SCALING-TRANSFORMATION"
	   "MAKE-SCALING-TRANSFORMATION*"
	   "MAKE-SPACE-REQUIREMENT"
	   "MAKE-STENCIL"
	   "MAKE-TEXT-STYLE"
	   "MAKE-TRANSFORMATION"
	   "MAKE-TRANSLATION-TRANSFORMATION"
	   "MAP-OVER-COMMAND-TABLE-COMMANDS"
	   "MAP-OVER-COMMAND-TABLE-KEYSTROKES"
	   "MAP-OVER-COMMAND-TABLE-MENU-ITEMS"
	   "MAP-OVER-COMMAND-TABLE-NAMES"
	   "MAP-OVER-COMMAND-TABLE-TRANSLATORS"
	   "MAP-OVER-GRAFTS"
	   "MAP-OVER-ITEM-LIST-CELLS"
	   "MAP-OVER-OUTPUT-RECORDS-CONTAINING-POSITION"
	   "MAP-OVER-OUTPUT-RECORDS-OVERLAPPING-REGION"
	   "MAP-OVER-POLYGON-COORDINATES"
	   "MAP-OVER-POLYGON-SEGMENTS"
	   "MAP-OVER-PORTS"
	   "MAP-OVER-PRESENTATION-TYPE-SUPERTYPES"
	   "MAP-OVER-REGION-SET-REGIONS"
	   "MAP-OVER-ROW-CELLS"
	   "MAP-OVER-ROW-CELLS"
	   "MAP-OVER-TABLE-ELEMENTS"
	   "MAP-RESOURCE"
	   "MAP-SHEET-POSITION-TO-CHILD"
	   "MAP-SHEET-RECTANGLE*-TO-CHILD"
	   "MAP-SHEET-RECTANGLE*-TO-PARENT"
	   "MATCH-OUTPUT-RECORDS"
	   "MEDIUM"
	   "MEDIUM-BACKGROUND"
	   "MEDIUM-BACKGROUND"
	   "MEDIUM-BACKGROUND"
	   "MEDIUM-BACKGROUND"
	   "MEDIUM-BUFFERING-OUTPUT-P"
	   "MEDIUM-BUFFERING-OUTPUT-P"
	   "MEDIUM-CLIPPING-REGION"
	   "MEDIUM-CLIPPING-REGION"
	   "MEDIUM-CLIPPING-REGION"
	   "MEDIUM-CLIPPING-REGION"
	   "MEDIUM-CURRENT-TEXT-STYLE"
	   "MEDIUM-DEFAULT-TEXT-STYLE"
	   "MEDIUM-DEFAULT-TEXT-STYLE"
	   "MEDIUM-DEFAULT-TEXT-STYLE"
	   "MEDIUM-DEFAULT-TEXT-STYLE"
	   "MEDIUM-DRAW-ELLIPSE*"
	   "MEDIUM-DRAW-LINE*"
	   "MEDIUM-DRAW-LINES*"
	   "MEDIUM-DRAW-POINT*"
	   "MEDIUM-DRAW-POINTS*"
	   "MEDIUM-DRAW-POLYGON*"
	   "MEDIUM-DRAW-RECTANGLE*"
	   "MEDIUM-DRAW-TEXT*"
	   "MEDIUM-FOREGROUND"
	   "MEDIUM-FOREGROUND"
	   "MEDIUM-FOREGROUND"
	   "MEDIUM-FOREGROUND"
	   "MEDIUM-INK"
	   "MEDIUM-INK"
	   "MEDIUM-INK"
	   "MEDIUM-INK"
	   "MEDIUM-LINE-STYLE"
	   "MEDIUM-LINE-STYLE"
	   "MEDIUM-LINE-STYLE"
	   "MEDIUM-MERGED-TEXT-STYLE"
	   "MEDIUMP"
	   "MEDIUM-TEXT-STYLE"
	   "MEDIUM-TEXT-STYLE"
	   "MEDIUM-TEXT-STYLE"
	   "MEDIUM-TEXT-STYLE"
	   "MEDIUM-TRANSFORMATION"
	   "MEDIUM-TRANSFORMATION"
	   "MEDIUM-TRANSFORMATION"
	   "MEDIUM-TRANSFORMATION"
	   "MEMBER"
	   "MEMBER-ALIST"
	   "MEMBER-SEQUENCE"
	   "MENU-BUTTON"
	   "MENU-BUTTON-PANE"
	   "MENU-CHOOSE-COMMAND-FROM-COMMAND-TABLE"
	   "MENU-CHOOSE-FROM-DRAWER"
	   "MENU-COMMAND-PARSER"
	   "MENU-ITEM-DISPLAY"
	   "MENU-ITEM-OPTIONS"
	   "MENU-ITEM-VALUE"
	   "MENU-READ-REMAINING-ARGUMENTS-FOR-PARTIAL-COMMAND"
	   "MERGE-TEXT-STYLES"
	   "+META-KEY+"
	   "MODIFIER-STATE-MATCHES-GESTURE-NAME-P"
	   "MUTE-REPAINTING-MIXIN"
	   "MUTE-SHEET-INPUT-MIXIN"
	   "MUTE-SHEET-OUTPUT-MIXIN"
	   "NIL"
	   "NOTE-COMMAND-DISABLED"
	   "NOTE-COMMAND-ENABLED"
	   "NOTE-FRAME-STATE-CHANGED"
	   "NOTE-GADGET-ACTIVATED"
	   "NOTE-GADGET-DEACTIVATED"
	   "NOTE-SHEET-ADOPTED"
	   "NOTE-SHEET-DEGRAFTED"
	   "NOTE-SHEET-DISABLED"
	   "NOTE-SHEET-DISOWNED"
	   "NOTE-SHEET-ENABLED"
	   "NOTE-SHEET-TRANSFORMATION-CHANGED"
	   "NOTE-SPACE-REQUIREMENTS-CHANGED"
	   "NOTIFY-USER"
	   "+NOWHERE+"
	   "NULL"
	   "NULL-OR-TYPE"
	   "*NULL-PRESENTATION*"
	   "*NUMERIC-ARGUMENT-MARKER*"
	   "OPACITYP"
	   "OPACITY-VALUE"
	   "OPEN-STREAM-P"
	   "ORIENTED-GADGET"
	   "*ORIGINAL-STREAM*"
	   "OUTPUT-RECORD-CACHE-VALUE"
	   "OUTPUT-RECORD-CHILDREN"
	   "OUTPUT-RECORD-CONTENTS-OK"
	   "OUTPUT-RECORD-COUNT"
	   "OUTPUT-RECORD-DISPLAYER"
	   "OUTPUT-RECORD-END-CURSOR-POSITION"
	   "OUTPUT-RECORD-END-CURSOR-POSITION"
	   "OUTPUT-RECORD-FIXED-POSITION"
	   "OUTPUT-RECORD-HIT-DETECTION-RECTANGLE*"
	   "OUTPUT-RECORDING-STREAM-P"
	   "OUTPUT-RECORD-P"
	   "OUTPUT-RECORD-PARENT"
	   "OUTPUT-RECORD-POSITION"
	   "OUTPUT-RECORD-POSITION"
	   "OUTPUT-RECORD-REFINED-SENSITIVITY-TEST"
	   "OUTPUT-RECORD-START-CURSOR-POSITION"
	   "OUTPUT-RECORD-START-CURSOR-POSITION"
	   "OUTPUT-RECORD-UNIQUE-ID"
	   "OUTPUT-STREAM-P"
	   "PANE"
	   "PANE-BACKGROUND"
	   "PANE-FOREGROUND"
	   "PANE-NAME"
	   "PANE-NEEDS-REDISPLAY"
	   "PANEP"
	   "PANE-SCROLLER"
	   "PANES-NEED-REDISPLAY"
	   "PANE-VIEWPORT-REGION"
	   "PARSE-TEXT-STYLE"
	   "PARTIAL-COMMAND-P"
	   "*PARTIAL-COMMAND-PARSER*"
	   "PATH"
	   "PATHP"
	   "PERMANENT-MEDIUM-SHEET-OUTPUT-MIXIN"
	   "PIXMAP-DEPTH"
	   "PIXMAP-HEIGHT"
	   "PIXMAP-WIDTH"
	   "POINT"
	   "POINTER-BUTTON-CLICK-AND-HOLD-EVENT"
	   "POINTER-BUTTON-CLICK-EVENT"
	   "POINTER-BUTTON-DOUBLE-CLICK-EVENT"
	   "POINTER-BUTTON-EVENT"
	   "POINTER-BUTTON-HOLD-EVENT"
	   "POINTER-BUTTON-PRESS-EVENT"
	   "*POINTER-BUTTON-PRESS-HANDLER*"
	   "POINTER-BUTTON-RELEASE-EVENT"
	   "POINTER-BUTTONS"
	   "POINTER-CURSOR"
	   "POINTER-CURSOR"
	   "*POINTER-DOCUMENTATION-OUTPUT*"
	   "POINTER-DOCUMENTATION-PANE"
	   "POINTER-DOCUMENTATION-VIEW"
	   "+POINTER-DOCUMENTATION-VIEW+"
	   "POINTER-ENTER-EVENT"
	   "POINTER-EVENT"
	   "POINTER-EVENT-BUTTON"
	   "POINTER-EVENT-NATIVE-X"
	   "POINTER-EVENT-NATIVE-Y"
	   "POINTER-EVENT-POINTER"
	   "POINTER-EVENT-X"
	   "POINTER-EVENT-Y"
	   "POINTER-EXIT-EVENT"
	   "+POINTER-LEFT-BUTTON+"
	   "+POINTER-MIDDLE-BUTTON+"
	   "POINTER-MOTION-EVENT"
	   "POINTERP"
	   "POINTER-PORT"
	   "POINTER-POSITION"
	   "POINTER-POSITION"
	   "+POINTER-RIGHT-BUTTON+"
	   "POINTER-SHEET"
	   "POINTER-SHEET"
	   "POINTP"
	   "POINT-POSITION"
	   "POINT-X"
	   "POINT-Y"
	   "POLYGON"
	   "POLYGONP"
	   "POLYGON-POINTS"
	   "POLYLINE"
	   "POLYLINE-CLOSED"
	   "POLYLINEP"
	   "PORT"
	   "PORT-DRAW-CHARACTER*"
	   "PORT-DRAW-ELLIPSE*"
	   "PORT-DRAW-LINE*"
	   "PORT-DRAW-LINES*"
	   "PORT-DRAW-POINT*"
	   "PORT-DRAW-POINTS*"
	   "PORT-DRAW-POLYGON*"
	   "PORT-DRAW-RECTANGLE*"
	   "PORT-DRAW-STRING*"
	   "PORT-KEYBOARD-INPUT-FOCUS"
	   "PORT-KEYBOARD-INPUT-FOCUS"
	   "PORT-PROPERTIES"
	   "PORT-PROPERTIES"
	   "PORT-SERVER-PATH"
	   "*POSSIBILITIES-GESTURES*"
	   "PRESENT"
	   "PRESENTATION-MODIFIER"
	   "PRESENTATION-OBJECT"
	   "PRESENTATION-OBJECT"
	   "PRESENTATIONP"
	   "PRESENTATION-REPLACE-INPUT"
	   "PRESENTATION-SINGLE-BOX"
	   "PRESENTATION-SINGLE-BOX"
	   "PRESENTATION-SUBTYPEP"
	   "PRESENTATION-TYPE"
	   "PRESENTATION-TYPE"
	   "PRESENTATION-TYPE-DIRECT-SUPERTYPES"
	   "PRESENTATION-TYPE-NAME"
	   "PRESENTATION-TYPE-OF"
	   "PRESENTATION-TYPE-OPTIONS"
	   "PRESENTATION-TYPEP"
	   "PRESENTATION-TYPE-PARAMETERS"
	   "PRESENTATION-TYPE-SPECIFIER-P"
	   "PRESENT-TO-STRING"
	   "PROCESS-INTERRUPT"
	   "PROCESS-WAIT"
	   "PROCESS-WAIT-WITH-TIMEOUT"
	   "PROCESS-YIELD"
	   "PROMPT-FOR-ACCEPT"
	   "PROMPT-FOR-ACCEPT-1"
	   "PROPAGATE-OUTPUT-RECORD-CHANGES"
	   "PROPAGATE-OUTPUT-RECORD-CHANGES-P"
	   "PUSH-BUTTON"
	   "PUSH-BUTTON-PANE"
	   "PUSH-BUTTON-SHOW-AS-DEFAULT-P"
	   "QUEUE-EVENT"
	   "QUEUE-REPAINT"
	   "QUEUE-RESCAN"
	   "RADIO-BOX"
	   "RADIO-BOX-CURRENT-SELECTION"
	   "RADIO-BOX-CURRENT-SELECTION"
	   "RADIO-BOX-PANE"
	   "RAISE-SHEET"
	   "RANGE-GADGET-MIXIN"
	   "RATIO"
	   "RATIONAL"
	   "READ-COMMAND"
	   "READ-COMMAND-USING-KEYSTROKES"
	   "READ-FRAME-COMMAND"
	   "READ-GESTURE"
	   "READ-TOKEN"
	   "REAL"
	   "RECOMPUTE-CONTENTS-OK"
	   "RECOMPUTE-EXTENT-FOR-CHANGED-CHILD"
	   "RECOMPUTE-EXTENT-FOR-NEW-CHILD"
	   "RECTANGLE"
	   "RECTANGLE-EDGES*"
	   "RECTANGLE-HEIGHT"
	   "RECTANGLE-MAX-POINT"
	   "RECTANGLE-MAX-X"
	   "RECTANGLE-MAX-Y"
	   "RECTANGLE-MIN-POINT"
	   "RECTANGLE-MIN-X"
	   "RECTANGLE-MIN-Y"
	   "RECTANGLEP"
	   "RECTANGLE-SIZE"
	   "RECTANGLE-WIDTH"
	   "RECTILINEAR-TRANSFORMATION-P"
	   "REDISPLAY"
	   "REDISPLAY-FRAME-PANE"
	   "REDISPLAY-FRAME-PANES"
	   "REDISPLAY-OUTPUT-RECORD"
	   "REDRAW-INPUT-BUFFER"
	   "REFLECTION-TRANSFORMATION-P"
	   "REFLECTION-UNDERSPECIFIED"
	   "REGION"
	   "REGION-CONTAINS-POSITION-P"
	   "REGION-CONTAINS-REGION-P"
	   "REGION-DIFFERENCE"
	   "REGION-EQUAL"
	   "REGION-INTERSECTION"
	   "REGION-INTERSECTS-REGION-P"
	   "REGIONP"
	   "REGION-SET"
	   "REGION-SET-P"
	   "REGION-SET-REGIONS"
	   "REGION-UNION"
	   "REMOVE-COMMAND-FROM-COMMAND-TABLE"
	   "REMOVE-KEYSTROKE-FROM-COMMAND-TABLE"
	   "REMOVE-MENU-ITEM-FROM-COMMAND-TABLE"
	   "REMOVE-PRESENTATION-TRANSLATOR-FROM-COMMAND-TABLE"
	   "REORDER-SHEETS"
	   "REPAINT-SHEET"
	   "REPLAY"
	   "REPLAY-OUTPUT-RECORD"
	   "RESCAN-IF-NECESSARY"
	   "RESET-FRAME"
	   "RESET-SCAN-POINTER"
	   "RESET-WATCHER"
	   "RESTART-PORT"
	   "RESTRAINING"
	   "RESTRAINING-PANE"
	   "RIGID-TRANSFORMATION-P"
	   "ROW-OUTPUT-RECORD"
	   "ROW-OUTPUT-RECORD-P"
	   "RUN-FRAME-TOP-LEVEL"
	   "RUN-FRAME-TOP-LEVEL"
	   "SCALING-TRANSFORMATION-P"
	   "SCROLL-BAR"
	   "SCROLL-BAR-DRAG-CALLBACK"
	   "SCROLL-BAR-DRAG-DOWN-LINE-CALLBACK"
	   "SCROLL-BAR-DRAG-DOWN-PAGE-CALLBACK"
	   "SCROLL-BAR-DRAG-UP-LINE-CALLBACK"
	   "SCROLL-BAR-DRAG-UP-PAGE-CALLBACK"
	   "SCROLL-BAR-PANE"
	   "SCROLL-BAR-SCROLL-TO-BOTTOM-CALLBACK"
	   "SCROLL-BAR-SCROLL-TO-TOP-CALLBACK"
	   "SCROLL-DOWN-LINE-CALLBACK"
	   "SCROLL-DOWN-PAGE-CALLBACK"
	   "SCROLLER-PANE"
	   "SCROLL-EXTENT"
	   "SCROLLING"
	   "SCROLL-TO-BOTTOM-CALLBACK"
	   "SCROLL-TO-TOP-CALLBACK"
	   "SCROLL-UP-LINE-CALLBACK"
	   "SCROLL-UP-PAGE-CALLBACK"
	   "SEQUENCE-ENUMERATED"
	   "SET-HIGHLIGHTED-PRESENTATION"
	   "SHEET"
	   "SHEET-ADOPT-CHILD"
	   "SHEET-ALLOCATED-REGION"
	   "SHEET-ANCESTOR-P"
	   "SHEET-CHILDREN"
	   "SHEET-DEVICE-REGION"
	   "SHEET-DEVICE-TRANSFORMATION"
	   "SHEET-DISOWN-CHILD"
	   "SHEET-ENABLED-CHILDREN"
	   "SHEET-ENABLED-P"
	   "SHEET-ENABLED-P"
	   "SHEET-GRAFTED-P"
	   "SHEET-IDENTITY-TRANSFORMATION-MIXIN"
	   "SHEET-LEAF-MIXIN"
	   "SHEET-MEDIUM"
	   "SHEET-MIRROR"
	   "SHEET-MIRRORED-ANCESTOR"
	   "SHEET-MULTIPLE-CHILD-MIXIN"
	   "SHEET-NATIVE-REGION"
	   "SHEET-OCCLUDING-SHEETS"
	   "SHEETP"
	   "SHEET-PARENT"
	   "SHEET-PARENT-MIXIN"
	   "SHEET-REGION"
	   "SHEET-REGION"
	   "SHEET-SIBLINGS"
	   "SHEET-SINGLE-CHILD-MIXIN"
	   "SHEET-TRANSFORMATION"
	   "SHEET-TRANSFORMATION-MIXIN"
	   "SHEET-TRANSLATION-MIXIN"
	   "SHEET-VIEWABLE-P"
	   "SHEET-Y-INVERTING-TRANSFORMATION-MIXIN"
	   "+SHIFT-KEY+"
	   "SHRINK-FRAME"
	   "SIMPLE-PARSE-ERROR"
	   "SINGULAR-TRANSFORMATION"
	   "SLIDER"
	   "SLIDER-PANE"
	   "SPACE-REQUIREMENT-HEIGHT"
	   "SPACE-REQUIREMENT-HEIGHT"
	   "SPACE-REQUIREMENT-MAX-HEIGHT"
	   "SPACE-REQUIREMENT-MAX-HEIGHT"
	   "SPACE-REQUIREMENT-MAX-WIDTH"
	   "SPACE-REQUIREMENT-MAX-WIDTH"
	   "SPACE-REQUIREMENT-MIN-HEIGHT"
	   "SPACE-REQUIREMENT-MIN-HEIGHT"
	   "SPACE-REQUIREMENT-MIN-WIDTH"
	   "SPACE-REQUIREMENT-MIN-WIDTH"
	   "SPACE-REQUIREMENT-WIDTH"
	   "SPACE-REQUIREMENT-WIDTH"
	   "SPACER-PANE"
	   "SPACING"
	   "*STANDARD-ACTIVATION-GESTURES*"
	   "STANDARD-APPLICATION-FRAME"
	   "STANDARD-BOUNDING-RECTANGLE"
	   "STANDARD-CELL-OUTPUT-RECORD"
	   "STANDARD-COLUMN-OUTPUT-RECORD"
	   "STANDARD-COMMAND-TABLE"
	   "STANDARD-ELLIPSE"
	   "STANDARD-ELLIPTICAL-ARC"
	   "STANDARD-ENCAPSULATING-STREAM"
	   "STANDARD-EXTENDED-INPUT-STREAM"
	   "STANDARD-EXTENDED-OUTPUT-STREAM"
	   "STANDARD-GADGET"
	   "STANDARD-GRAPH-NODE-OUTPUT-RECORD"
	   "STANDARD-GRAPH-OUTPUT-RECORD"
	   "STANDARD-INPUT-EDITING-STREAM"
	   "STANDARD-INPUT-STREAM"
	   "STANDARD-ITEM-LIST-OUTPUT-RECORD"
	   "STANDARD-LINE"
	   "STANDARD-LINE-STYLE"
	   "STANDARD-OUTPUT-RECORDING-STREAM"
	   "STANDARD-OUTPUT-STREAM"
	   "STANDARD-POINT"
	   "STANDARD-POINTER"
	   "STANDARD-POLYGON"
	   "STANDARD-POLYLINE"
	   "STANDARD-PRESENTATION"
	   "STANDARD-RECTANGLE"
	   "STANDARD-REGION-DIFFERENCE"
	   "STANDARD-REGION-INTERSECTION"
	   "STANDARD-REGION-UNION"
	   "STANDARD-ROW-OUTPUT-RECORD"
	   "STANDARD-SHEET-INPUT-MIXIN"
	   "STANDARD-SHEET-OUTPUT-MIXIN"
	   "STANDARD-TABLE-OUTPUT-RECORD"
	   "STANDARD-TEXT-CURSOR"
	   "STANDARD-TEXT-STYLE"
	   "STANDARD-TREE-OUTPUT-HISTORY"
	   "STANDARD-TREE-OUTPUT-RECORD"
	   "STANDARD-UPDATING-OUTPUT-RECORD"
	   "STREAM-ACCEPT"
	   "STREAM-ADD-CHARACTER-OUTPUT"
	   "STREAM-ADD-OUTPUT-RECORD"
	   "STREAM-ADD-STRING-OUTPUT"
	   "STREAM-ADVANCE-TO-COLUMN"
	   "STREAM-ADVANCE-TO-COLUMN"
	   "STREAM-BASELINE"
	   "STREAM-CHARACTER-WIDTH"
	   "STREAM-CLEAR-INPUT"
	   "STREAM-CLEAR-INPUT"
	   "STREAM-CLEAR-OUTPUT"
	   "STREAM-CLEAR-OUTPUT"
	   "STREAM-CLOSE-TEXT-OUTPUT-RECORD"
	   "STREAM-CURRENT-OUTPUT-RECORD"
	   "STREAM-CURRENT-OUTPUT-RECORD"
	   "STREAM-CURSOR-POSITION"
	   "STREAM-CURSOR-POSITION"
	   "STREAM-DEFAULT-VIEW"
	   "STREAM-DEFAULT-VIEW"
	   "STREAM-DRAWING-P"
	   "STREAM-DRAWING-P"
	   "STREAM-ELEMENT-TYPE"
	   "STREAM-END-OF-LINE-ACTION"
	   "STREAM-END-OF-PAGE-ACTION"
	   "STREAM-END-OF-PAGE-ACTION"
	   "STREAM-FINISH-OUTPUT"
	   "STREAM-FINISH-OUTPUT"
	   "STREAM-FORCE-OUTPUT"
	   "STREAM-FORCE-OUTPUT"
	   "STREAM-FRESH-LINE"
	   "STREAM-FRESH-LINE"
	   "STREAM-INCREMENT-CURSOR-POSITION"
	   "STREAM-INPUT-BUFFER"
	   "STREAM-INPUT-BUFFER"
	   "STREAM-INPUT-BUFFER"
	   "STREAM-INPUT-WAIT"
	   "STREAM-INSERTION-POINTER"
	   "STREAM-INSERTION-POINTER"
	   "STREAM-LINE-COLUMN"
	   "STREAM-LINE-COLUMN"
	   "STREAM-LINE-HEIGHT"
	   "STREAM-LISTEN"
	   "STREAM-OUTPUT-HISTORY"
	   "STREAM-OUTPUT-HISTORY-MIXIN"
	   "STREAMP"
	   "STREAM-PATHNAME"
	   "STREAM-PEEK-CHAR"
	   "STREAM-PEEK-CHAR"
	   "STREAM-POINTER-POSITION"
	   "STREAM-POINTER-POSITION"
	   "STREAM-POINTERS"
	   "STREAM-PRESENT"
	   "STREAM-PRIMARY-POINTER"
	   "STREAM-PRIMARY-POINTER"
	   "STREAM-PROCESS-GESTURE"
	   "STREAM-READ-BYTE"
	   "STREAM-READ-CHAR"
	   "STREAM-READ-CHAR"
	   "STREAM-READ-CHAR-NO-HANG"
	   "STREAM-READ-CHAR-NO-HANG"
	   "STREAM-READ-GESTURE"
	   "STREAM-READ-GESTURE"
	   "STREAM-READ-LINE"
	   "STREAM-READ-LINE"
	   "STREAM-RECORDING-P"
	   "STREAM-RECORDING-P"
	   "STREAM-REDISPLAYING-P"
	   "STREAM-REPLAY"
	   "STREAM-RESCANNING-P"
	   "STREAM-RESTORE-INPUT-FOCUS"
	   "STREAM-SCAN-POINTER"
	   "STREAM-SCAN-POINTER"
	   "STREAM-SET-INPUT-FOCUS"
	   "STREAM-START-LINE-P"
	   "STREAM-START-LINE-P"
	   "STREAM-STRING-WIDTH"
	   "STREAM-TERPRI"
	   "STREAM-TERPRI"
	   "STREAM-TEXT-CURSOR"
	   "STREAM-TEXT-CURSOR"
	   "STREAM-TEXT-MARGIN"
	   "STREAM-TEXT-MARGIN"
	   "STREAM-TRUENAME"
	   "STREAM-UNREAD-CHAR"
	   "STREAM-UNREAD-CHAR"
	   "STREAM-UNREAD-GESTURE"
	   "STREAM-UNREAD-GESTURE"
	   "STREAM-VERTICAL-SPACING"
	   "STREAM-WRITE-BYTE"
	   "STREAM-WRITE-CHAR"
	   "STREAM-WRITE-CHAR"
	   "STREAM-WRITE-STRING"
	   "STREAM-WRITE-STRING"
	   "STRING"
	   "SUBSET"
	   "SUBSET-ALIST"
	   "SUBSET-COMPLETION"
	   "SUBSET-SEQUENCE"
	   "SUGGEST"
	   "+SUPER-KEY+"
	   "SURROUNDING-OUTPUT-WITH-BORDER"
	   "SYMBOL"
	   "TABLE-OUTPUT-RECORD"
	   "TABLE-OUTPUT-RECORD-P"
	   "TABLE-PANE"
	   "TABLING"
	   "TEMPORARY-MEDIUM-SHEET-OUTPUT-MIXIN"
	   "TEST-PRESENTATION-TRANSLATOR"
	   "TEXT-DISPLAYED-OUTPUT-RECORD"
	   "TEXT-DISPLAYED-OUTPUT-RECORD-P"
	   "TEXT-DISPLAYED-OUTPUT-RECORD-STRING"
	   "TEXT-EDITOR"
	   "TEXT-EDITOR-PANE"
	   "TEXT-FIELD"
	   "TEXT-FIELD-PANE"
	   "TEXT-STYLE"
	   "TEXT-STYLE-COMPONENTS"
	   "TEXT-STYLE-DESCENT"
	   "TEXT-STYLE-FACE"
	   "TEXT-STYLE-FAMILY"
	   "TEXT-STYLE-FIXED-WIDTH-P"
	   "TEXT-STYLE-HEIGHT"
	   "TEXT-STYLE-MAPPING"
	   "TEXT-STYLE-MAPPING"
	   "TEXT-STYLE-P"
	   "TEXT-STYLE-SIZE"
	   "TEXT-STYLE-WIDTH"
	   "TEXTUAL-DIALOG-VIEW"
	   "+TEXTUAL-DIALOG-VIEW+"
	   "TEXTUAL-MENU-VIEW"
	   "+TEXTUAL-MENU-VIEW+"
	   "TEXTUAL-VIEW"
	   "+TEXTUAL-VIEW+"
	   "THROW-HIGHLIGHTED-PRESENTATION"
	   "TIMER-EVENT"
	   "TITLE-PANE"
	   "TOGGLE-BUTTON"
	   "TOGGLE-BUTTON-INDICATOR-TYPE"
	   "TOGGLE-BUTTON-PANE"
	   "TRANSFORMATION-EQUAL"
	   "TRANSFORMATIONP"
	   "TRANSFORMATION-UNDERSPECIFIED"
	   "TRANSFORM-DISTANCE"
	   "TRANSFORM-POSITION"
	   "TRANSFORM-RECTANGLE*"
	   "TRANSFORM-REGION"
	   "TRANSLATION-TRANSFORMATION-P"
	   "TREE-RECOMPUTE-EXTENT"
	   "TYPE-OR-STRING"
	   "*UNDEFINED-TEXT-STYLE*"
	   "UNHIGHLIGHT-HIGHLIGHTED-PRESENTATION"
	   "UNREAD-GESTURE"
	   "*UNSUPPLIED-ARGUMENT-MARKER*"
	   "UNTRANSFORM-DISTANCE"
	   "UNTRANSFORM-POSITION"
	   "UNTRANSFORM-RECTANGLE*"
	   "UNTRANSFORM-REGION"
	   "UPDATING-OUTPUT-RECORD-P"
	   "USER-COMMAND-TABLE"
	   "USING-RESOURCE"
	   "VALUE-CHANGED-CALLBACK"
	   "VALUE-GADGET"
	   "VBOX-PANE"
	   "VERTICALLY"
	   "VIEW"
	   "VIEWP"
	   "VRACK-PANE"
	   "WINDOW-CLEAR"
	   "WINDOW-CONFIGURATION-EVENT"
	   "WINDOW-ERASE-VIEWPORT"
	   "WINDOW-EVENT"
	   "WINDOW-EVENT-MIRRORED-SHEET"
	   "WINDOW-EVENT-NATIVE-REGION"
	   "WINDOW-EVENT-REGION"
	   "WINDOW-REFRESH"
	   "WINDOW-REPAINT-EVENT"
	   "WINDOW-VIEWPORT"
	   "WINDOW-VIEWPORT-POSITION"
	   "WINDOW-VIEWPORT-POSITION"
	   "WITH-ACCEPT-HELP"
	   "WITH-ACTIVATION-GESTURES"
	   "WITH-APPLICATION-FRAME"
	   "WITH-BOUNDING-RECTANGLE*"
	   "WITH-COMMAND-TABLE-KEYSTROKES"
	   "WITH-DELIMITER-GESTURES"
	   "WITH-END-OF-LINE-ACTION"
	   "WITH-END-OF-PAGE-ACTION"
	   "WITH-FIRST-QUADRANT-COORDINATES"
	   "WITH-FRAME-MANAGER"
	   "WITH-GRAFT-LOCKED"
	   "WITH-INPUT-CONTEXT"
	   "WITH-INPUT-EDITING"
	   "WITH-INPUT-EDITOR-TYPEOUT"
	   "WITH-INPUT-FOCUS"
	   "WITH-LOOK-AND-FEEL-REALIZATION"
	   "WITH-MENU"
	   "WITH-NEW-OUTPUT-RECORD"
	   "WITH-OUTPUT-AS-GADGET"
	   "WITH-OUTPUT-AS-PRESENTATION"
	   "WITH-OUTPUT-BUFFERED"
	   "WITH-OUTPUT-RECORDING-OPTIONS"
	   "WITH-OUTPUT-TO-OUTPUT-RECORD"
	   "WITH-OUTPUT-TO-PIXMAP"
	   "WITHOUT-SCHEDULING"
	   "WITH-PORT-LOCKED"
	   "WITH-PRESENTATION-TYPE-DECODED"
	   "WITH-PRESENTATION-TYPE-OPTIONS"
	   "WITH-RADIO-BOX"
	   "WITH-RECURSIVE-LOCK-HELD"
	   "WITH-ROOM-FOR-GRAPHICS"
	   "WITH-ROTATION"
	   "WITH-SCALING"
	   "WITH-SHEET-MEDIUM"
	   "WITH-SHEET-MEDIUM-BOUND"
	   "WITH-TEXT-FACE"
	   "WITH-TEXT-FAMILY"
	   "WITH-TEXT-SIZE"
	   "WITH-TRANSLATION"
	   "WRITE-TOKEN"
	   ) ; :export
  )

(defpackage :CLIM-DEMO
  (:use :clim :common-lisp)
  #+excl(:import-from :excl compile-system load-system)
  )

(pushnew :CLIM *features*)
(provide :CLIM)

