(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3") ; 不加这一句可能有问题，建议读者尝试一下
(setq url-proxy-services '(("no_proxy" . "^\\(192\\.168\\..*\\)")
                           ("http" . "127.0.0.1:20172")
			   ("https" . "127.0.0.1:20172")))
(provide 'init-proxy)
