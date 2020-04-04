[Unit]
Description=Thinkfan, the minimalist fan control program

[Service]
Type=forking
ExecStart=@CMAKE_INSTALL_PREFIX@/sbin/thinkfan $THINKFAN_ARGS
PIDFile=/run/thinkfan.pid
ExecReload=/bin/kill -HUP $MAINPID

[Install]
WantedBy=multi-user.target
After=sysinit.target
Also=thinkfan-wakeup.service
