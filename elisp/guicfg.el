;;; guicfg.el --- GUI config                         -*- lexical-binding: t; -*-

;; Copyright (C) 2015  

;; Author:  <caio@caio-ntb>
;; Keywords: 

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

;; 

;;; Code:


;; theme
(load-theme 'wombat t)



;; Remove toolbar
(tool-bar-mode -1)



;; Auto linum-mode
(global-linum-mode 1)



;; No initial screen
(setq-default inhibit-startup-screen t)



;; Clear scratch buffer
(setq-default initial-scratch-message nil)



;; 80 character indicator
(require 'fill-column-indicator)
(define-globalized-minor-mode
 global-fci-mode fci-mode (lambda () (fci-mode 1)))
(global-fci-mode t)


(provide 'guicfg)
;;; guicfg.el ends here