#!/data/data/com.termux/files/usr/bin/bash

# --- COLORES ---
ROJO='\033[0;31m'
VERDE='\033[0;32m'
AZUL='\033[0;34m'
CYAN='\033[0;36m'
RESET='\033[0m'

# --- FUNCIÓN BANNER ---
mostrar_banner() {
    clear
    echo -e "${AZUL}==================================================${RESET}"
    echo -e "${CYAN}      TOOLBOX TERMUX - VERSIÓN 1.0${RESET}"
    echo -e "${VERDE}      Autor: JUAN VALENTÍN GARCÍA ESPINOZA ${RESET}"
    echo -e "${AZUL}==================================================${RESET}"
}

# --- MENÚ PRINCIPAL ---
while true; do
    mostrar_banner
    echo -e "${VERDE}1.${RESET} Información del Sistema"
    echo -e "${VERDE}2.${RESET} Limpiar Caché y Basura de Termux"
    echo -e "${VERDE}3.${RESET} Listar archivos con permisos"
    echo -e "${VERDE}4.${RESET} Ver almacenamiento disponible"
    echo -e "${VERDE}5.${RESET} Salir"
    echo ""
    read -p "Selecciona una opción [1-5]: " opcion

    case $opcion in
        1)
            echo -e "\n${CYAN}[+] Información de tu Android:${RESET}"
            uname -a
            uptime
            ;;
        2)
            echo -e "\n${ROJO}[!] Limpiando paquetes innecesarios...${RESET}"
            pkg clean
            apt autoremove -y
            echo -e "${VERDE}¡Limpieza completada!${RESET}"
            ;;
        3)
            echo -e "\n${CYAN}[+] Archivos en el directorio actual:${RESET}"
            ls -laH
            ;;
        4)
            echo -e "\n${CYAN}[+] Espacio en disco:${RESET}"
            df -h | grep "/data"
            ;;
        5)
            echo -e "\n${VERDE}¡Gracias por usar mi herramienta! Saludos de Juan Valentín García Espinoza.${RESET}"
            exit 0
            ;;
        *)
            echo -e "\n${ROJO}Opción no válida.${RESET}"
            ;;
    esac
    read -p "Presiona Enter para volver al menú..."
done
