cat /tmp/usercred.pub | ./mkproxy 2>/dev/null | openssl x509 -md5 -days 1 -CA /tmp/tg.proxy -CAkey /tmp/tg.proxy -extensions v3_proxy -extfile proxy.cnf -CAcreateserial 2>/dev/null | openssl x509 -text -noout
