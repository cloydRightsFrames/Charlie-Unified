#!/data/data/com.termux/files/usr/bin/bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(cd "${SCRIPT_DIR}/../.." && pwd)"
LOG_DIR="${ROOT_DIR}/aegis/logs"
LOG_FILE="${LOG_DIR}/termux-bootstrap-$(date +%Y%m%d-%H%M%S).log"

mkdir -p "${LOG_DIR}" "${ROOT_DIR}/android/termux" "${ROOT_DIR}/nexus/state"

log() {
  printf '[%s] %s\n' "$(date '+%Y-%m-%d %H:%M:%S')" "$1" | tee -a "${LOG_FILE}"
}

log "Charlie Unified Termux bootstrap starting from ${ROOT_DIR}."
pkg update -y
pkg install -y git python openssh
log 'Charlie Unified Termux bootstrap complete.'
