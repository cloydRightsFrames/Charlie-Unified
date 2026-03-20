#!/data/data/com.termux/files/usr/bin/bash
set -euo pipefail

ROOT_DIR="${HOME}/Charlie-Unified"
LOG_DIR="${ROOT_DIR}/aegis/logs"
LOG_FILE="${LOG_DIR}/termux-bootstrap-$(date +%Y%m%d-%H%M%S).log"

mkdir -p "${LOG_DIR}" "${ROOT_DIR}/android/termux" "${ROOT_DIR}/nexus/state"

log() {
  printf '[%s] %s\n' "$(date '+%Y-%m-%d %H:%M:%S')" "$1" | tee -a "${LOG_FILE}"
}

log 'Charlie Unified Termux bootstrap starting.'
pkg update -y
pkg install -y git python openssh
log 'Charlie Unified Termux bootstrap complete.'
