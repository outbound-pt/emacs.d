;;; cccfg.el --- C config                            -*- lexical-binding: t; -*-

;; Copyright (C) 2015

;; Author:  <coliveira@POS6419D>
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

;; cc-mode
(require 'cc-mode)

;; Adding newline after files
(add-hook 'c-c++-mode-hook
          (lambda () (setq require-final-newline t)))

;; sets extended mode curly braces as default
(setq c-default-style "linux"
      c-basic-offset 4)
;; C++11 as standard
(add-hook 'c++-mode-hook
          (lambda () (setq flycheck-gcc-language-standard "c++11")))
;; auto complete
;; (require 'auto-complete-clang)
(define-auto-insert "sol\.cpp$" "competitive-template.cpp")

;; ggtags
(require 'ggtags)

(setq ggtags-oversize-limit (* 1 1024 1024))


(add-hook 'dired-mode-hook (lambda () (ggtags-mode 1)))
(add-hook 'c-mode-hook (lambda () (ggtags-mode 1)))
(add-hook 'c++-mode-hook (lambda () (ggtags-mode 1)))
(add-hook 'java-mode-hook (lambda () (ggtags-mode 1)))


(define-key ggtags-mode-map (kbd "C-c g s") 'ggtags-find-other-symbol)
(define-key ggtags-mode-map (kbd "C-c g h") 'ggtags-view-tag-history)
(define-key ggtags-mode-map (kbd "C-c g r") 'ggtags-find-reference)
(define-key ggtags-mode-map (kbd "C-c g f") 'ggtags-find-file)
(define-key ggtags-mode-map (kbd "C-c g c") 'ggtags-create-tags)
(define-key ggtags-mode-map (kbd "C-c g u") 'ggtags-update-tags)

(define-key ggtags-mode-map (kbd "M-,") 'pop-tag-mark)

(require 'cc-mode)
(require 'semantic)

(global-semanticdb-minor-mode 1)
(global-semantic-idle-scheduler-mode 1)

(semantic-mode 1)

(require 'company)
(global-company-mode 1)

(provide 'cccfg)
;;; cccfg.el ends here
