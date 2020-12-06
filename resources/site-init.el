;; init file for building geocities project
;; See https://orgmode.org/manual/Complex-example.html#Complex-example

;; (setq org-publish-project-alist
;;       '(("ryanac23.github.io"
;;          :base-directory "../_org"
;;          :base-extension "org"
;;          :publishing-directory "../"
;;          :publishing-function org-html-publish-to-html
;;          :exclude nil
;;          :headline-levels 3
;;          :section-numbers nil
;;          :with-toc nil
;;          ;;:html-head "<link rel=\"stylesheet\"
;;          ;;         href=\"../other/mystyle.css\" type=\"text/css\"/>"
;;          :html-preamble t)

;;         ("images"
;;          :base-directory "./images/"
;;          :base-extension "jpg\\|gif\\|png"
;;          :publishing-directory "../resources/images/"
;;          :publishing-function org-publish-attachment)

;;          ("website" :components ("orgfiles" "images"))))

(setq org-publish-project-alist
      '(("RyanAC23.github.io"
	 :base-directory "_org/"
	 :base-extension "org"
	 :publishing-directory "public/"
	 :recursive t
	 :publishing-function org-html-publish-to-html
	 :auto-sitemap t)
	("all" :components ("RyanAC23.github.io"))))
