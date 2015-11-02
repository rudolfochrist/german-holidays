;;; german-holidays.el --- German holidays for Emacs calendar

;; Author: Sebastian Christ <rudolfo.christ@gmail.com>
;; URL: https://github.com/rudolfochrist/german-holidays
;; Version: 0.1.1

;; This file is not part of GNU Emacs

;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; For a full copy of the GNU General Public License
;; see <http://www.gnu.org/licenses/>.

;;; Commentary:
;;
;; Installation:
;;
;; To use `german-holidays' exclusively
;;
;;  (setq calendar-holidays holiday-german-holidays)
;;
;; To use 'german-holidays' additionally
;;
;;  (setq calendar-holidays (append calendar-holidays holiday-german-holidays))
;;

;;; Credits
;;
;; inspired by https://github.com/abo-abo/netherlands-holidays

;;; Code:
(eval-when-compile
  (require 'calendar)
  (require 'holidays))

(defvar holiday-german-national-holidays
  '((holiday-fixed 1 1 "Neujahr")
    (holiday-easter-etc -2 "Karfreitag")
    (holiday-easter-etc 1 "Ostermontag")
    (holiday-fixed 5 1 "Tag der Arbeit")
    (holiday-easter-etc 39 "Christi Himmelfahrt")
    (holiday-easter-etc 50 "Pfingstmontag")
    (holiday-fixed 10 3 "Tag der Deutschen Einheit")
    (holiday-fixed 12 25 "1. Weihnachtstag")
    (holiday-fixed 12 26 "2. Weihnachtstag"))
  "Holidays valid in all German states, called 'bundeseinheitlich'.")

(defvar holiday-german-holiday-alist
  '((epiphany (holiday-fixed 1 6 "Heilige Drei Könige"))
    (easter (holiday-easter-etc 0 "Ostersonntag"))
    (whit-sunday (holiday-easter-etc 49 "Pfingstsonntag"))
    (corpus-christi (holiday-easter-etc 60 "Fronleichnam"))
    (assumption-day (holiday-fixed 8 15 "Mariä Himmelfahrt"))
    (reformation-day (holiday-fixed 10 31 "Reformationstag"))
    (all-saints-day (holiday-fixed 11 1 "Allerheiligen"))
    (penance-day (holiday-float 11 3 -1 "Buß- und Bettag" 22)))
  "Alist of German holidays with state-specific validity.")

(provide 'german-holidays)

;;; german-holidays.el ends here
