;;; evil-collection-gdb.el --- Evil bindings for gdb -*- lexical-binding: t -*-

;; Copyright (C) 2021 Sebastian Arlund Nørgaard

;; Author: Sebastian Arlund Nørgaard <sebastian@bsnrg.net>
;; URL: https://github.com/emacs-evil/evil-collection
;; Version: 0.0.1
;; Package-Requires: ((emacs "25.1"))
;; Keywords: evil, gdb, tools

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:
;; Evil bindings for `gdb'.

;;; Code:
(require 'gdb-mi)
(require 'evil-collection)

;;;###autoload
(defun evil-collection-gdb-setup ()
  "Set up `evil' bindings for `gdb'."
  (evil-set-initial-state 'gdb-frames-mode 'normal)
  (evil-set-initial-state 'gdb-breakpoints-mode 'normal)
  (evil-set-initial-state 'gdb-locals-mode 'normal)
  (evil-set-initial-state 'gdb-registers-mode 'normal)
  (evil-set-initial-state 'gdb-threads-mode 'normal)

  (evil-make-overriding-map gdb-frames-mode-map 'normal)
  (evil-make-overriding-map gdb-breakpoints-mode-map 'normal)
  (evil-make-overriding-map gdb-locals-mode-map 'normal)
  (evil-make-overriding-map gdb-registers-mode-map 'normal)
  (evil-make-overriding-map gdb-threads-mode-map 'normal)
  (evil-collection-define-key 'normal 'gdb-frames-mode-map
    "0" 'evil-digit-argument-or-evil-beginning-of-line)
  (evil-collection-define-key 'normal 'gdb-breakpoints-mode-map
    "0" 'evil-digit-argument-or-evil-beginning-of-line
    "t" 'gdb-toggle-breakpoint)
  (evil-collection-define-key 'normal 'gdb-locals-mode-map
    "0" 'evil-digit-argument-or-evil-beginning-of-line))

(provide 'evil-collection-gdb)
;;; evil-collection-gdb.el ends here
