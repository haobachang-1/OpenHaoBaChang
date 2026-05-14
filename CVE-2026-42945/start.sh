#!/bin/bash

echo "[*] ============================================"
echo "[*] NGINX CVE-2026-42945 Exploitation Environment"
echo "[*] ============================================"

echo 0 > /proc/sys/kernel/randomize_va_space 2>/dev/null
echo "[*] ASLR status: $(cat /proc/sys/kernel/randomize_va_space)"

echo "[*] Starting nginx with debug symbols..."
echo "[*] PID: $$"

nginx -g "daemon off; worker_processes 1;"

echo "[!] If you see this, nginx has exited"