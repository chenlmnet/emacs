;;ido mode
(setq ido-everywhere t)
	(ido-mode 1)
	(setq ido-use-filename-at-point 'guess)
	(setq ido-file-extensions-order '(".txt" ".py" ".h" ".el" ".cpp" ".h" ".cc" ".html"))

(provide 'init-ido)
