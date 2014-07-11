;;根据mode来提示help
(require 'info-look)
(info-lookup-add-help
 :mode 'python-mode
 :regexp "[[:alnum:]_]+nn"
 :doc-spec
 '(("(python)Index" nil "")))

(provide 'init-info-look)
