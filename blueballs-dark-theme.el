;;; blueballs-dark-theme.el --- Yet another blue-ish theme for Emacs
;;
;; Copyright 2020-2020 Mikołaj Lercher
;;
;; Author: Mikołaj Lercher <bandithedoge@protonmail.com>
;; Homepage: https://github.com/blueballs-theme/blueballs-emacs
;;
;; This file is not part of GNU Emacs.
;;
;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.
;;
;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.
;;
;;; Commentary:
;;
;; Yet another blue-ish theme for Emacs
;;
;;; Code:

(deftheme blueballs-dark
  "Yet another blue-ish color scheme")

(let
    ((blueballs-dark-base  "#20222c")
     (blueballs-dark-base0 "#181a23")
     (blueballs-dark-base1 "#262935")
     (blueballs-dark-base2 "#2c2f3d")

     (blueballs-light-base  "#d9dceb")
     (blueballs-light-base0 "#e7ebff")
     (blueballs-light-base1 "#cccfdf")
     (blueballs-light-base2 "#c7cadc")

     (blueballs-selection "#7b7e8c")
     (blueballs-comment "#747dab")

     (blueballs-accent0 "#40587a")
     (blueballs-accent  "#4b74ad")
     (blueballs-accent1 "#8eb9f5")

     (blueballs-red0 "#8b2f33")
     (blueballs-red  "#eb585f")
     (blueballs-red1 "#f28b90")

     (blueballs-purple0 "#8f41b7")
     (blueballs-purple  "#b96be1")
     (blueballs-purple1 "#d49af2")

     (blueballs-pink0 "#9b4996")
     (blueballs-pink  "#e871e1")
     (blueballs-pink1 "#edabe9")

     (blueballs-blue0 "#283275")
     (blueballs-blue  "#4e5fc9")
     (blueballs-blue1 "#96a3f2")

     (blueballs-cyan0 "#378680")
     (blueballs-cyan  "#52e6da")
     (blueballs-cyan1 "#8ffff4")

     (blueballs-green0 "#357a38")
     (blueballs-green  "#69d26e")
     (blueballs-green1 "#96f29b")

     (blueballs-yellow0 "#9f8c39")
     (blueballs-yellow  "#e1c85c")
     (blueballs-yellow1 "#f7e7a1")

     (blueballs-orange0 "#9c6e31")
     (blueballs-orange  "#d7953f")
     (blueballs-orange1 "#edc186"))

  (custom-theme-set-faces
   `blueballs-dark
     ;; basics
   `(default                  ((t (:foreground ,blueballs-light-base
				   :background ,blueballs-dark-base))))
   `(cursor                   ((t (:foreground ,blueballs-dark-base
	             		   :background ,blueballs-accent))))
   `(fringe                   ((t (:foreground ,blueballs-accent))))
   `(error                    ((t (:foreground ,blueballs-red
    		            	   :weight     bold))))
   `(success                  ((t (:foreground ,blueballs-green
				   :weight     bold))))
   `(warning                  ((t (:foreground ,blueballs-orange
				   :weight     bold))))
   `(shadow                   ((t (:foreground ,blueballs-comment))))
   `(highlight                ((t (:foreground ,blueballs-light-base
    				   :background ,blueballs-accent))))
   `(region                   ((t (:foreground ,blueballs-dark-base
				   :background ,blueballs-selection))))
   `(link                     ((t (:foreground ,blueballs-accent
				   :weight     bold
    				   :underline  t))))
   `(link-visited             ((t (:foreground ,blueballs-accent1
				   :weight     bold
				   :underline  t))))
   `(line-number              ((t (:foreground ,blueballs-comment
    				   :background ,blueballs-dark-base0))))
   `(line-number-current-line ((t (:foreground ,blueballs-accent1
    				   :background ,blueballs-accent0))))
   `(hl-line                  ((t (:background ,blueballs-dark-base0))))
   `(secondary-selection      ((t (:background ,blueballs-comment
   				   :foreground ,blueballs-dark-base))))
   `(which-func               ((t (:foreground ,blueballs-accent))))

   ;; outlines
   `(outline-1 ((t (:foreground ,blueballs-purple1
		    :weight bold))))
   `(outline-2 ((t (:foreground ,blueballs-cyan1
		    :weight bold))))
   `(outline-3 ((t (:foreground ,blueballs-yellow1
		    :weight bold))))
   `(outline-4 ((t (:foreground ,blueballs-pink1
		    :weight bold))))
   `(outline-5 ((t (:foreground ,blueballs-blue1
	            :weight bold))))
   `(outline-6 ((t (:foreground ,blueballs-green1
		    :weight bold))))
   `(outline-7 ((t (:foreground ,blueballs-orange1
		    :weight bold))))
   `(outline-8 ((t (:foreground ,blueballs-red1
		    :weight bold))))
   
   ;; font-lock
   `(font-lock-comment-face ((t (:inherit    shadow))))
   `(font-lock-doc-facen    ((t (:foreground ,blueballs-accent1))))

   `(font-lock-builtin-face       ((t (:foreground ,blueballs-purple))))
   `(font-lock-function-name-face ((t (:foreground ,blueballs-green))))
   `(font-lock-constant-face      ((t (:foreground ,blueballs-yellow))))
   `(font-lock-keyword-face       ((t (:foreground ,blueballs-cyan))))
   `(font-lock-string-face        ((t (:foreground ,blueballs-orange))))
   `(font-lock-preprocessor-face  ((t (:foreground ,blueballs-pink))))
   `(font-lock-type-face          ((t (:foreground ,blueballs-green1))))
   `(font-lock-variable-name-face ((t (:foreground ,blueballs-purple1))))

   ;; ui
   `(vertical-border   ((t (:foreground ,blueballs-dark-base0))))
   `(minibuffer-prompt ((t (:foreground ,blueballs-accent
			    :background ,blueballs-dark-base0))))
   
   ;; modeline
   `(mode-line           ((t (:foreground ,blueballs-light-base
		  	      :background ,blueballs-dark-base2))))
   `(mode-line-inactive  ((t (:foreground ,blueballs-comment
			      :background ,blueballs-dark-base0))))
   `(mode-line-highlight ((t (:foreground ,blueballs-accent))))

   ;; doom-modeline
   `(doom-modeline-bar-inactive ((t (:foreground ,blueballs-comment))))
   `(doom-modeline-project-dir  ((t (:foreground ,blueballs-accent
				     :weight     bold))))

   `(doom-modeline-evil-normal-state   ((t (:foreground ,blueballs-accent))))
   `(doom-modeline-evil-insert-state   ((t (:foreground ,blueballs-green))))
   `(doom-modeline-evil-visual-state   ((t (:foreground ,blueballs-yellow))))
   `(doom-modeline-evil-replace-state  ((t (:foreground ,blueballs-red))))
   `(doom-modeline-evil-emacs-state    ((t (:foreground ,blueballs-cyan))))
   `(doom-modeline-evil-motion-state   ((t (:foreground ,blueballs-purple))))
   `(doom-modeline-evil-operator-state ((t (:foreground ,blueballs-light-base))))

   ;; rainbow-delimiters
   `(rainbow-delimiters-depth-1-face    ((t (:foreground ,blueballs-cyan))))
   `(rainbow-delimiters-depth-2-face    ((t (:foreground ,blueballs-green))))
   `(rainbow-delimiters-depth-3-face    ((t (:foreground ,blueballs-purple))))
   `(rainbow-delimiters-depth-4-face    ((t (:foreground ,blueballs-yellow))))
   `(rainbow-delimiters-depth-5-face    ((t (:foreground ,blueballs-orange))))
   `(rainbow-delimiters-depth-6-face    ((t (:foreground ,blueballs-pink))))
   `(rainbow-delimiters-depth-7-face    ((t (:foreground ,blueballs-cyan1))))
   `(rainbow-delimiters-depth-8-face    ((t (:foreground ,blueballs-green1))))
   `(rainbow-delimiters-depth-9-face    ((t (:foreground ,blueballs-purple1))))
   `(rainbow-delimiters-base-error-face ((t (:inherit    error))))
   
   ;; treemacs
   `(treemacs-root-face                     ((t (:foreground ,blueballs-accent
						 :weight     bold
						 :height     1.2))))
   `(treemacs-directory-face                ((t (:foreground ,blueballs-light-base
						 :weight     bold))))
   `(treemacs-root-remote-face              ((t (:foreground ,blueballs-green))))
   `(treemacs-root-remote-disconnected-face ((t (:foreground ,blueballs-red))))

   `(treemacs-help-column-face      ((t (:foreground ,blueballs-accent
				         :weight     bold))))
   `(treemacs-help-title-face       ((t (:foreground ,blueballs-accent
					 :weight     bold
				 	 :height     1.2
					 :underline  t))))
   `(treemacs-fringe-indicator-face ((t (:foreground ,blueballs-accent))))
   
   `(treemacs-git-untracked-face ((t (:foreground ,blueballs-comment))))
   `(treemacs-git-ignored-face   ((t (:foreground ,blueballs-selection))))
   `(treemacs-git-added-face     ((t (:foreground ,blueballs-green))))
   `(treemacs-git-conflict-face  ((t (:foreground ,blueballs-red))))
   `(treemacs-git-modified-face  ((t (:foreground ,blueballs-orange))))
   `(treemacs-git-renamed-face   ((t (:foreground ,blueballs-yellow))))

   ;; ivy
   `(ivy-cursor                     ((t (:inherit    cursor))))
   `(ivy-match-required-face        ((t (:inherit    error))))
   `(ivy-current-match              ((t (:background ,blueballs-dark-base2))))
   `(ivy-minibuffer-match-highlight ((t (:background ,blueballs-accent))))
   `(ivy-minibuffer-match-face-1    ((t (:background ,blueballs-dark-base0))))
   `(ivy-minibuffer-match-face-2    ((t (:foreground ,blueballs-cyan))))
   `(ivy-minibuffer-match-face-3    ((t (:foreground ,blueballs-orange))))
   `(ivy-minibuffer-match-face-4    ((t (:foreground ,blueballs-purple))))

   ;; swiper
   `(swiper-match-face-1       ((t (:inherit ivy-minibuffer-match-face-1))))
   `(swiper-match-face-2       ((t (:inherit ivy-minibuffer-match-face-2))))
   `(swiper-match-face-3       ((t (:inherit ivy-minibuffer-match-face-3))))
   `(swiper-match-face-4       ((t (:inherit ivy-minibuffer-match-face-4))))

   ;; which-key
   `(which-key-key-face                 ((t (:foreground ,blueballs-accent))))
   `(which-key-command-description-face ((t (:foreground ,blueballs-light-base))))
   `(which-key-group-description-face   ((t (:foreground ,blueballs-accent
					     :weight     bold))))

   ;; company
   `(company-tooltip            ((t (:foreground ,blueballs-light-base
			 	     :background ,blueballs-dark-base0))))
   `(company-tooltip-common     ((t (:foreground ,blueballs-accent))))
   `(company-tooltip-selection  ((t (:background ,blueballs-dark-base2))))
   `(company-scrollbar-bg       ((t (:background ,blueballs-dark-base0))))
   `(company-scrollbar-fg       ((t (:background ,blueballs-accent))))
   `(company-tooltip-annotation ((t (:foreground ,blueballs-accent))))

   ;; dashboard
   `(dashboard-footer        ((t (:foreground ,blueballs-comment))))
   `(dashboard-heading       ((t (:foreground ,blueballs-accent
				  :weight     bold))))
   `(dashboard-text-banner   ((t (:foreground ,blueballs-accent))))
   `(dashboard-navigator     ((t (:foreground ,blueballs-accent))))

   ;; flycheck
   `(flycheck-info    ((t (:underline (:style wave
				       :color ,blueballs-green)))))
   `(flycheck-warning ((t (:underline (:style wave
				       :color ,blueballs-orange)))))
   `(flycheck-error   ((t (:underline (:style wave
				       :color ,blueballs-red)))))

   ;; flycheck-inline
   `(flycheck-inline-info    ((t (:foreground ,blueballs-green
				  :background ,blueballs-dark-base0))))
   `(flycheck-inline-warning ((t (:foreground ,blueballs-orange
				  :background ,blueballs-dark-base0))))
   `(flycheck-inline-error   ((t (:foreground ,blueballs-red
				  :background ,blueballs-dark-base0))))

   ;; org-mode
   `(org-block                   ((t (:foreground ,blueballs-light-base
				      :background ,blueballs-dark-base2))))
   `(org-todo                    ((t (:foreground ,blueballs-red1
				      :background ,blueballs-red0
				      :weight     bold))))
   `(org-done                    ((t (:foreground ,blueballs-green1
				      :background ,blueballs-green0
		   		      :weight     bold))))
   `(org-headline-todo           ((t (:inherit    org-todo))))
   `(org-headline-done           ((t (:inherit    org-done))))
   `(org-agenda-dimmed-todo-face ((t (:inherit    font-lock-comment-face))))
   `(org-code                    ((t (:foreground ,blueballs-purple1))))
   `(org-verbatim                ((t (:foreground ,blueballs-pink1))))
   `(org-table                   ((t (:foreground ,blueballs-light-base2))))
   `(org-document-title          ((t (:foreground ,blueballs-accent
				      :weight     bold))))
   `(org-document-info           ((t (:foreground ,blueballs-accent))))
   `(org-document-info-keyword   ((t (:inherit    font-lock-comment-face))))

   ;; magit
   `(magit-dimmed ((t (:foreground ,blueballs-comment))))
   `(magit-hash   ((t (:inherit    magit-dimmed))))

   `(magit-branch-local  ((t (:foreground ,blueballs-accent))))
   `(magit-branch-remote ((t (:foreground ,blueballs-green))))

   `(magit-reflog-commit      ((t (:foreground ,blueballs-green))))
   `(magit-reflog-cherry-pick ((t (:inherit    magit-reflog-commit))))
   `(magit-reflog-merge       ((t (:inherit    magit-reflog-commit))))
   `(magit-reflog-amend       ((t (:foreground ,blueballs-purple))))
   `(magit-reflog-rebase      ((t (:inherit    magit-reflog-amend))))
   `(magit-reflog-remote      ((t (:foreground ,blueballs-cyan))))
   `(magit-reflog-other       ((t (:inherit    magit-reflog-remote))))
   `(magit-reflog-reset       ((t (:foreground ,blueballs-red))))
   `(magit-reflog-checkout    ((t (:foreground ,blueballs-orange))))

   `(magit-signature-good      ((t (:inherit    success))))
   `(magit-signature-bad       ((t (:inherit    error))))
   `(magit-signature-expired   ((t (:inherit    warning))))
   `(magit-signature-untrusted ((t (:foreground ,blueballs-cyan
				    :weight     bold))))
   `(magit-signature-revoked   ((t (:foreground ,blueballs-purple
				    :weight     bold))))
   `(magit-signature-error     ((t (:foreground ,blueballs-red1
				    :background ,blueballs-red0))))

   `(magit-diff-context           ((t (:foreground ,blueballs-comment))))
   `(magit-diff-context-highlight ((t (:inherit    hl-line
				       :foreground ,blueballs-comment))))

   `(magit-section-heading-selection ((t (:inherit    magit-diff-hunk-heading-selection))))
   `(magit-section-highlight         ((t (:background ,blueballs-dark-base0))))

   `(magit-diff-hunk-heading           ((t (:foreground ,blueballs-light-base
				            :background ,blueballs-dark-base2
					    :weight     bold))))
   `(magit-diff-hunk-heading-highlight ((t (:background ,blueballs-dark-base1))))
   `(magit-diff-hunk-heading-selection ((t (:foreground ,blueballs-accent))))

   `(magit-diff-file-heading           ((t (:foreground ,blueballs-accent
				            :weight     bold))))
   `(magit-diff-file-heading-selection ((t (:foreground ,blueballs-accent))))

   `(magit-diff-added             ((t (:foreground ,blueballs-green1
				       :background ,blueballs-green0))))
   `(magit-diff-added-highlight   ((t (:inherit    magit-diff-added))))
   `(magit-diff-removed           ((t (:foreground ,blueballs-red1
				       :background ,blueballs-red0))))
   `(magit-diff-removed-highlight ((t (:inherit    magit-diff-removed))))
   `(magit-diff-base              ((t (:foreground ,blueballs-orange1
				       :background ,blueballs-orange0))))

   `(magit-diff-lines-heading ((t (:foreground ,blueballs-accent0
				   :background ,blueballs-accent1))))

   `(magit-diffstat-added         ((t (:foreground ,blueballs-green))))
   `(magit-diffstat-removed       ((t (:foreground ,blueballs-red))))

   ;; web-mode
   `(web-mode-error-face   ((t (:inherit error))))
   `(web-mode-warning-face ((t (:inherit warning))))
   `(web-mode-doctype-face ((t (:inherit font-lock-comment-face
				:weight  bold))))

   `(web-mode-html-tag-face         ((t (:inherit    font-lock-keyword-face))))
   `(web-mode-html-tag-bracket-face ((t (:inherit    default))))
   `(web-mode-html-attr-name-face   ((t (:foreground ,blueballs-purple))))

   ;;; monkeytype
   `(monkeytype-dimmed     ((t (:inherit    font-lock-comment-face))))
   `(monkeytype-error      ((t (:inherit    error))))
   `(monkeytype-notice     ((t (:inherit    warning))))
   `(monkeytype-legend-1   ((t (:foreground ,blueballs-accent
				:weight     bold))))
   `(monkeytype-legend-2   ((t (:inherit    default))))

   `(monkeytype-results-error   ((t (:inherit error))))
   `(monkeytype-results-success ((t (:inherit success))))

   `(monkeytype-correction-correct ((t (:inherit success))))
   `(monkeytype-correction-error   ((t (:inherit error))))

   `(monkeytype-mode-line-error   ((t (:inherit error))))
   `(monkeytype-mode-line-success ((t (:inherit success))))
   ))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
    (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'blueballs-dark)

;;; blueballs-dark-theme.el ends here
