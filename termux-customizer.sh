#!/data/data/com.termux/files/usr/bin/bash

# ═══════════════════════════════════════════════════════════
# ███╗   ███╗███████╗ ██████╗  █████╗     ████████╗██╗   ██╗██╗
# ████╗ ████║██╔════╝██╔════╝ ██╔══██╗    ╚══██╔══╝██║   ██║╚██╗
# ██╔████╔██║█████╗  ██║  ███╗███████║       ██║   ██║   ██║ ██║
# ██║╚██╔╝██║██╔══╝  ██║   ██║██╔══██║       ██║   ██║   ██║ ██║
# ██║ ╚═╝ ██║███████╗╚██████╔╝██║  ██║       ██║   ╚██████╔╝██╔╝
# ╚═╝     ╚═╝╚══════╝ ╚═════╝ ╚═╝  ╚═╝       ╚═╝    ╚═════╝ ╚═╝
# 
#    TERMUX ULTIMATE CUSTOMIZER v3.0 - 59 OPÇÕES
#    Criado para personalização total do Termux
# ═══════════════════════════════════════════════════════════

# Cores
R='\033[1;31m'
G='\033[1;32m'
Y='\033[1;33m'
B='\033[1;34m'
M='\033[1;35m'
C='\033[1;36m'
W='\033[1;37m'
N='\033[0m'

# Função de banner
banner() {
    clear
    echo -e "${C}"
    cat << "EOF"
╔═══════════════════════════════════════════════════════════════╗
║  ████████╗███████╗██████╗ ███╗   ███╗██╗   ██╗██╗  ██╗       ║
║  ╚══██╔══╝██╔════╝██╔══██╗████╗ ████║██║   ██║╚██╗██╔╝       ║
║     ██║   █████╗  ██████╔╝██╔████╔██║██║   ██║ ╚███╔╝        ║
║     ██║   ██╔══╝  ██╔══██╗██║╚██╔╝██║██║   ██║ ██╔██╗        ║
║     ██║   ███████╗██║  ██║██║ ╚═╝ ██║╚██████╔╝██╔╝ ██╗       ║
║     ╚═╝   ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝ ╚═════╝ ╚═╝  ╚═╝       ║
║                                                               ║
║            ╦ ╦╦  ╔╦╗╦╔╦╗╔═╗╔╦╗╔═╗  ╔═╗╦ ╦╔═╗╔╦╗╔═╗╔╦╗╦╔═╗╔═╗╦═╗ ║
║            ║ ║║   ║ ║║║║╠═╣ ║ ║╣   ║  ║ ║╚═╗ ║ ║ ║║║║║╔═╝║╣ ╠╦╝ ║
║            ╚═╝╩═╝ ╩ ╩╩ ╩╩ ╩ ╩ ╚═╝  ╚═╝╚═╝╚═╝ ╩ ╚═╝╩ ╩╩╚═╝╚═╝╩╚═ ║
╚═══════════════════════════════════════════════════════════════╝
EOF
    echo -e "${Y}        [ 59 OPÇÕES DE PERSONALIZAÇÃO TOTAL ]${N}"
    echo -e "${M}              Versão 3.0 - By Customizer Team${N}"
    echo ""
}

# Menu principal
menu_principal() {
    banner
    echo -e "${G}╔════════════════════════════════════════════════════════════╗${N}"
    echo -e "${G}║                    MENU PRINCIPAL                          ║${N}"
    echo -e "${G}╠════════════════════════════════════════════════════════════╣${N}"
    echo -e "${W}║  ${Y}[1]${W}  Temas e Cores           ${Y}[6]${W}  Fontes                   ║${N}"
    echo -e "${W}║  ${Y}[2]${W}  Prompts Bash            ${Y}[7]${W}  Aliases Úteis            ║${N}"
    echo -e "${W}║  ${Y}[3]${W}  Banners ASCII           ${Y}[8]${W}  Scripts de Inicialização ║${N}"
    echo -e "${W}║  ${Y}[4]${W}  Papel de Parede         ${Y}[9]${W}  Ferramentas              ║${N}"
    echo -e "${W}║  ${Y}[5]${W}  Atalhos de Teclado      ${Y}[10]${W} Backup/Restaurar         ║${N}"
    echo -e "${G}╠════════════════════════════════════════════════════════════╣${N}"
    echo -e "${W}║  ${R}[0]${W}  Sair                                                ║${N}"
    echo -e "${G}╚════════════════════════════════════════════════════════════╝${N}"
    echo -ne "${C}Escolha uma opção: ${N}"
    read opcao
    case $opcao in
        1) menu_temas ;;
        2) menu_prompts ;;
        3) menu_banners ;;
        4) menu_wallpaper ;;
        5) menu_atalhos ;;
        6) menu_fontes ;;
        7) menu_aliases ;;
        8) menu_startup ;;
        9) menu_ferramentas ;;
        10) menu_backup ;;
        0) sair ;;
        *) erro; menu_principal ;;
    esac
}

# ═══════════════ MENU TEMAS ═══════════════
menu_temas() {
    banner
    echo -e "${G}╔════════════════════════════════════════════════════════════╗${N}"
    echo -e "${G}║                   TEMAS E CORES (10)                       ║${N}"
    echo -e "${G}╠════════════════════════════════════════════════════════════╣${N}"
    echo -e "${W}║  ${Y}[1]${W}  Dracula              ${Y}[6]${W}  Solarized Dark         ║${N}"
    echo -e "${W}║  ${Y}[2]${W}  Monokai              ${Y}[7]${W}  Gruvbox                ║${N}"
    echo -e "${W}║  ${Y}[3]${W}  Nord                 ${Y}[8]${W}  One Dark               ║${N}"
    echo -e "${W}║  ${Y}[4]${W}  Tokyo Night          ${Y}[9]${W}  Matrix Green           ║${N}"
    echo -e "${W}║  ${Y}[5]${W}  Cyberpunk            ${Y}[10]${W} Material Ocean         ║${N}"
    echo -e "${G}╠════════════════════════════════════════════════════════════╣${N}"
    echo -e "${W}║  ${R}[0]${W}  Voltar ao Menu Principal                           ║${N}"
    echo -e "${G}╚════════════════════════════════════════════════════════════╝${N}"
    echo -ne "${C}Escolha um tema: ${N}"
    read tema
    aplicar_tema $tema
}

aplicar_tema() {
    case $1 in
        1)
            echo -e "${G}[+] Instalando tema Dracula...${N}"
            cat > ~/.termux/colors.properties << 'EOF'
background=#282a36
foreground=#f8f8f2
cursor=#f8f8f2
color0=#000000
color1=#ff5555
color2=#50fa7b
color3=#f1fa8c
color4=#bd93f9
color5=#ff79c6
color6=#8be9fd
color7=#bbbbbb
color8=#555555
color9=#ff5555
color10=#50fa7b
color11=#f1fa8c
color12=#bd93f9
color13=#ff79c6
color14=#8be9fd
color15=#ffffff
EOF
            termux-reload-settings
            echo -e "${G}[✓] Tema Dracula aplicado!${N}"
            ;;
        2)
            echo -e "${G}[+] Instalando tema Monokai...${N}"
            cat > ~/.termux/colors.properties << 'EOF'
background=#272822
foreground=#f8f8f2
cursor=#f8f8f0
color0=#272822
color1=#f92672
color2=#a6e22e
color3=#f4bf75
color4=#66d9ef
color5=#ae81ff
color6=#a1efe4
color7=#f8f8f2
color8=#75715e
color9=#f92672
color10=#a6e22e
color11=#f4bf75
color12=#66d9ef
color13=#ae81ff
color14=#a1efe4
color15=#f9f8f5
EOF
            termux-reload-settings
            echo -e "${G}[✓] Tema Monokai aplicado!${N}"
            ;;
        3)
            echo -e "${G}[+] Instalando tema Nord...${N}"
            cat > ~/.termux/colors.properties << 'EOF'
background=#2e3440
foreground=#d8dee9
cursor=#d8dee9
color0=#3b4252
color1=#bf616a
color2=#a3be8c
color3=#ebcb8b
color4=#81a1c1
color5=#b48ead
color6=#88c0d0
color7=#e5e9f0
color8=#4c566a
color9=#bf616a
color10=#a3be8c
color11=#ebcb8b
color12=#81a1c1
color13=#b48ead
color14=#8fbcbb
color15=#eceff4
EOF
            termux-reload-settings
            echo -e "${G}[✓] Tema Nord aplicado!${N}"
            ;;
        4)
            echo -e "${G}[+] Instalando tema Tokyo Night...${N}"
            cat > ~/.termux/colors.properties << 'EOF'
background=#1a1b26
foreground=#c0caf5
cursor=#c0caf5
color0=#15161e
color1=#f7768e
color2=#9ece6a
color3=#e0af68
color4=#7aa2f7
color5=#bb9af7
color6=#7dcfff
color7=#a9b1d6
color8=#414868
color9=#f7768e
color10=#9ece6a
color11=#e0af68
color12=#7aa2f7
color13=#bb9af7
color14=#7dcfff
color15=#c0caf5
EOF
            termux-reload-settings
            echo -e "${G}[✓] Tema Tokyo Night aplicado!${N}"
            ;;
        5)
            echo -e "${G}[+] Instalando tema Cyberpunk...${N}"
            cat > ~/.termux/colors.properties << 'EOF'
background=#000b1e
foreground=#0abdc6
cursor=#0abdc6
color0=#123e7c
color1=#ff0000
color2=#d300c4
color3=#f57800
color4=#123e7c
color5=#711c91
color6=#0abdc6
color7=#d7d7d5
color8=#1c61c2
color9=#ff0000
color10=#d300c4
color11=#f57800
color12=#00ff00
color13=#711c91
color14=#0abdc6
color15=#d7d7d5
EOF
            termux-reload-settings
            echo -e "${G}[✓] Tema Cyberpunk aplicado!${N}"
            ;;
        6)
            echo -e "${G}[+] Instalando tema Solarized Dark...${N}"
            cat > ~/.termux/colors.properties << 'EOF'
background=#002b36
foreground=#839496
cursor=#93a1a1
color0=#073642
color1=#dc322f
color2=#859900
color3=#b58900
color4=#268bd2
color5=#d33682
color6=#2aa198
color7=#eee8d5
color8=#002b36
color9=#cb4b16
color10=#586e75
color11=#657b83
color12=#839496
color13=#6c71c4
color14=#93a1a1
color15=#fdf6e3
EOF
            termux-reload-settings
            echo -e "${G}[✓] Tema Solarized Dark aplicado!${N}"
            ;;
        7)
            echo -e "${G}[+] Instalando tema Gruvbox...${N}"
            cat > ~/.termux/colors.properties << 'EOF'
background=#282828
foreground=#ebdbb2
cursor=#ebdbb2
color0=#282828
color1=#cc241d
color2=#98971a
color3=#d79921
color4=#458588
color5=#b16286
color6=#689d6a
color7=#a89984
color8=#928374
color9=#fb4934
color10=#b8bb26
color11=#fabd2f
color12=#83a598
color13=#d3869b
color14=#8ec07c
color15=#ebdbb2
EOF
            termux-reload-settings
            echo -e "${G}[✓] Tema Gruvbox aplicado!${N}"
            ;;
        8)
            echo -e "${G}[+] Instalando tema One Dark...${N}"
            cat > ~/.termux/colors.properties << 'EOF'
background=#282c34
foreground=#abb2bf
cursor=#528bff
color0=#282c34
color1=#e06c75
color2=#98c379
color3=#e5c07b
color4=#61afef
color5=#c678dd
color6=#56b6c2
color7=#abb2bf
color8=#5c6370
color9=#e06c75
color10=#98c379
color11=#e5c07b
color12=#61afef
color13=#c678dd
color14=#56b6c2
color15=#ffffff
EOF
            termux-reload-settings
            echo -e "${G}[✓] Tema One Dark aplicado!${N}"
            ;;
        9)
            echo -e "${G}[+] Instalando tema Matrix Green...${N}"
            cat > ~/.termux/colors.properties << 'EOF'
background=#000000
foreground=#00ff00
cursor=#00ff00
color0=#000000
color1=#00ff00
color2=#00ff00
color3=#00ff00
color4=#00ff00
color5=#00ff00
color6=#00ff00
color7=#00ff00
color8=#005500
color9=#00ff00
color10=#00ff00
color11=#00ff00
color12=#00ff00
color13=#00ff00
color14=#00ff00
color15=#00ff00
EOF
            termux-reload-settings
            echo -e "${G}[✓] Tema Matrix Green aplicado!${N}"
            ;;
        10)
            echo -e "${G}[+] Instalando tema Material Ocean...${N}"
            cat > ~/.termux/colors.properties << 'EOF'
background=#0f111a
foreground=#8f93a2
cursor=#ffcc00
color0=#1b2b34
color1=#ec5f67
color2=#99c794
color3=#fac863
color4=#6699cc
color5=#c594c5
color6=#5fb3b3
color7=#c0c5ce
color8=#65737e
color9=#ec5f67
color10=#99c794
color11=#fac863
color12=#6699cc
color13=#c594c5
color14=#5fb3b3
color15=#d8dee9
EOF
            termux-reload-settings
            echo -e "${G}[✓] Tema Material Ocean aplicado!${N}"
            ;;
        0) menu_principal ;;
        *) erro; menu_temas ;;
    esac
    pressione
    menu_temas
}

# ═══════════════ MENU PROMPTS ═══════════════
menu_prompts() {
    banner
    echo -e "${G}╔════════════════════════════════════════════════════════════╗${N}"
    echo -e "${G}║                  PROMPTS BASH (10)                         ║${N}"
    echo -e "${G}╠════════════════════════════════════════════════════════════╣${N}"
    echo -e "${W}║  ${Y}[1]${W}  Prompt Minimalista   ${Y}[6]${W}  Prompt Cyberpunk       ║${N}"
    echo -e "${W}║  ${Y}[2]${W}  Prompt Hacker        ${Y}[7]${W}  Prompt Arco-íris       ║${N}"
    echo -e "${W}║  ${Y}[3]${W}  Prompt Git           ${Y}[8]${W}  Prompt Emoji           ║${N}"
    echo -e "${W}║  ${Y}[4]${W}  Prompt Powerline     ${Y}[9]${W}  Prompt Retrô           ║${N}"
    echo -e "${W}║  ${Y}[5]${W}  Prompt Neon          ${Y}[10]${W} Prompt Matrix          ║${N}"
    echo -e "${G}╠════════════════════════════════════════════════════════════╣${N}"
    echo -e "${W}║  ${R}[0]${W}  Voltar ao Menu Principal                           ║${N}"
    echo -e "${G}╚════════════════════════════════════════════════════════════╝${N}"
    echo -ne "${C}Escolha um prompt: ${N}"
    read prompt
    aplicar_prompt $prompt
}

aplicar_prompt() {
    case $1 in
        1)
            echo 'PS1="\[\e[1;36m\]➜ \[\e[1;32m\]\w\[\e[0m\] "' >> ~/.bashrc
            echo -e "${G}[✓] Prompt Minimalista aplicado!${N}"
            ;;
        2)
            echo 'PS1="\[\e[1;31m\]┌─[\[\e[1;33m\]\u\[\e[1;31m\]@\[\e[1;33m\]\h\[\e[1;31m\]]─[\[\e[1;32m\]\w\[\e[1;31m\]]\n└──╼ \[\e[1;36m\]\\$ \[\e[0m\]"' >> ~/.bashrc
            echo -e "${G}[✓] Prompt Hacker aplicado!${N}"
            ;;
        3)
            cat >> ~/.bashrc << 'EOF'
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
PS1="\[\e[1;35m\]\u\[\e[1;37m\]@\[\e[1;32m\]\h \[\e[1;34m\]\w\[\e[1;33m\]\$(parse_git_branch)\[\e[1;37m\] \\$ \[\e[0m\]"
EOF
            echo -e "${G}[✓] Prompt Git aplicado!${N}"
            ;;
        4)
            echo 'PS1="\[\e[1;37m\]\[\e[48;5;240m\] \u \[\e[38;5;240m\]\[\e[48;5;33m\]\[\e[38;5;15m\] \w \[\e[38;5;33m\]\[\e[0m\] "' >> ~/.bashrc
            echo -e "${G}[✓] Prompt Powerline aplicado!${N}"
            ;;
        5)
            echo 'PS1="\[\e[1;95m\]╭─[\[\e[1;96m\]\w\[\e[1;95m\]]\n╰─\[\e[1;93m\]❯\[\e[1;92m\]❯\[\e[1;96m\]❯ \[\e[0m\]"' >> ~/.bashrc
            echo -e "${G}[✓] Prompt Neon aplicado!${N}"
            ;;
        6)
            echo 'PS1="\[\e[1;36m\]╔═[\[\e[1;35m\]CYBER\[\e[1;36m\]]═[\[\e[1;33m\]\w\[\e[1;36m\]]\n╚══\[\e[1;31m\]>\[\e[1;32m\]>\[\e[1;33m\]> \[\e[0m\]"' >> ~/.bashrc
            echo -e "${G}[✓] Prompt Cyberpunk aplicado!${N}"
            ;;
        7)
            echo 'PS1="\[\e[38;5;196m\]█\[\e[38;5;202m\]█\[\e[38;5;226m\]█\[\e[38;5;46m\]█\[\e[38;5;21m\]█\[\e[38;5;93m\]█ \[\e[1;37m\]\w \\$ \[\e[0m\]"' >> ~/.bashrc
            echo -e "${G}[✓] Prompt Arco-íris aplicado!${N}"
            ;;
        8)
            echo 'PS1="🚀 \[\e[1;34m\]\w\[\e[0m\] 👉 "' >> ~/.bashrc
            echo -e "${G}[✓] Prompt Emoji aplicado!${N}"
            ;;
        9)
            echo 'PS1="\[\e[1;33m\][\[\e[1;32m\]\u\[\e[1;33m\]]-[\[\e[1;36m\]\w\[\e[1;33m\]]\\$ \[\e[0m\]"' >> ~/.bashrc
            echo -e "${G}[✓] Prompt Retrô aplicado!${N}"
            ;;
        10)
            echo 'PS1="\[\e[1;32m\][\[\e[1;92m\]\t\[\e[1;32m\]] \[\e[1;92m\]\w\[\e[1;32m\] ▶ \[\e[0m\]"' >> ~/.bashrc
            echo -e "${G}[✓] Prompt Matrix aplicado!${N}"
            ;;
        0) menu_principal ;;
        *) erro; menu_prompts ;;
    esac
    pressione
    menu_prompts
}

# ═══════════════ MENU BANNERS ═══════════════
menu_banners() {
    banner
    echo -e "${G}╔════════════════════════════════════════════════════════════╗${N}"
    echo -e "${G}║                  BANNERS ASCII (10)                        ║${N}"
    echo -e "${G}╠════════════════════════════════════════════════════════════╣${N}"
    echo -e "${W}║  ${Y}[1]${W}  Matrix Digital       ${Y}[6]${W}  Caveira Hacker         ║${N}"
    echo -e "${W}║  ${Y}[2]${W}  Cyber Skull          ${Y}[7]${W}  Anonymous              ║${N}"
    echo -e "${W}║  ${Y}[3]${W}  Neon Terminal        ${Y}[8]${W}  Dragon ASCII           ║${N}"
    echo -e "${W}║  ${Y}[4]${W}  Hacker Elite         ${Y}[9]${W}  Linux Penguin          ║${N}"
    echo -e "${W}║  ${Y}[5]${W}  Cyberpunk Logo       ${Y}[10]${W} System Info            ║${N}"
    echo -e "${G}╠════════════════════════════════════════════════════════════╣${N}"
    echo -e "${W}║  ${R}[0]${W}  Voltar ao Menu Principal                           ║${N}"
    echo -e "${G}╚════════════════════════════════════════════════════════════╝${N}"
    echo -ne "${C}Escolha um banner: ${N}"
    read banner_op
    aplicar_banner $banner_op
}

aplicar_banner() {
    case $1 in
        1)
            cat >> ~/.bashrc << 'EOF'
clear
echo -e "\e[1;32m"
echo "   ███╗   ███╗ █████╗ ████████╗██████╗ ██╗██╗  ██╗"
echo "   ████╗ ████║██╔══██╗╚══██╔══╝██╔══██╗██║╚██╗██╔╝"
echo "   ██╔████╔██║███████║   ██║   ██████╔╝██║ ╚███╔╝ "
echo "   ██║╚██╔╝██║██╔══██║   ██║   ██╔══██╗██║ ██╔██╗ "
echo "   ██║ ╚═╝ ██║██║  ██║   ██║   ██║  ██║██║██╔╝ ██╗"
echo "   ╚═╝     ╚═╝╚═╝  ╚═╝   ╚═╝   ╚═╝  ╚═╝╚═╝╚═╝  ╚═╝"
echo -e "\e[1;36m         [ DIGITAL REVOLUTION ACTIVATED ]\e[0m"
echo ""
EOF
            echo -e "${G}[✓] Banner Matrix Digital aplicado!${N}"
            ;;
        2)
            cat >> ~/.bashrc << 'EOF'
clear
echo -e "\e[1;31m"
echo "          _______________"
echo "         /               \\"
echo "        /                 \\"
echo "       /  /\\ /\\    /\\ /\\  \\"
echo "      |   O   O    O   O   |"
echo "      |                    |"
echo "      |    <  |  |  >      |"
echo "       \\    \\_______/     /"
echo "        \\                /"
echo "         \\______________/"
echo -e "\e[1;33m    [ CYBER SKULL TERMINAL ]\e[0m"
echo ""
EOF
            echo -e "${G}[✓] Banner Cyber Skull aplicado!${N}"
            ;;
        3)
            cat >> ~/.bashrc << 'EOF'
clear
echo -e "\e[1;95m"
echo "   ╔╗╔╔═╗╔═╗╔╗╔  ╔╦╗╔═╗╦═╗╔╦╗╦╔╗╔╔═╗╦  "
echo "   ║║║║╣ ║ ║║║║   ║ ║╣ ╠╦╝║║║║║║║╠═╣║  "
echo "   ╝╚╝╚═╝╚═╝╝╚╝   ╩ ╚═╝╩╚═╩ ╩╩╝╚╝╩ ╩╩═╝"
echo -e "\e[1;96m      ▬▬ι═══════ﺤ  NEON EDITION  ﺤ═══════ι▬▬\e[0m"
echo ""
EOF
            echo -e "${G}[✓] Banner Neon Terminal aplicado!${N}"
            ;;
        4)
            cat >> ~/.bashrc << 'EOF'
clear
echo -e "\e[1;32m"
echo "    ██╗  ██╗ █████╗  ██████╗██╗  ██╗███████╗██████╗ "
echo "    ██║  ██║██╔══██╗██╔════╝██║ ██╔╝██╔════╝██╔══██╗"
echo "    ███████║███████║██║     █████╔╝ █████╗  ██████╔╝"
echo "    ██╔══██║██╔══██║██║     ██╔═██╗ ██╔══╝  ██╔══██╗"
echo "    ██║  ██║██║  ██║╚██████╗██║  ██╗███████╗██║  ██║"
echo "    ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝"
echo -e "\e[1;33m           >>> ELITE TERMINAL ACTIVATED <<<\e[0m"
echo ""
EOF
            echo -e "${G}[✓] Banner Hacker Elite aplicado!${N}"
            ;;
        5)
            cat >> ~/.bashrc << 'EOF'
clear
echo -e "\e[1;36m"
echo "    ╔═╗╦ ╦╔╗ ╔═╗╦═╗╔═╗╦ ╦╔╗╔╦╔═"
echo "    ║  ╚╦╝╠╩╗║╣ ╠╦╝╠═╝║ ║║║║╠╩╗"
echo "    ╚═╝ ╩ ╚═╝╚═╝╩╚═╩  ╚═╝╝╚╝╩ ╩"
echo -e "\e[1;35m    ▂▃▅▇█▓▒░۩۞۩ 2077 EDITION ۩۞۩░▒▓█▇▅▃▂\e[0m"
echo ""
EOF
            echo -e "${G}[✓] Banner Cyberpunk aplicado!${N}"
            ;;
        6)
            cat >> ~/.bashrc << 'EOF'
clear
echo -e "\e[1;31m"
cat << "SKULL"
                    .                    
                  .-|-                   
                .-=|| |=-.               
              .-===||  |===-.            
            .-=====|| X ||====-.         
          .-=======||   ||======-.       
         (=========||   ||========)      
          '-=======||___||======-'       
            '-=====|_____|=====-'        
              '-===|     |===-'          
                '-=|     |=-'            
                  '|     |'              
                   |     |               
                   |     |               
                  /|     |\              
                 (_|     |_)             
SKULL
echo -e "\e[1;33m    [ CAVEIRA HACKER MODE ]\e[0m"
echo ""
EOF
            echo -e "${G}[✓] Banner Caveira Hacker aplicado!${N}"
            ;;
        7)
            cat >> ~/.bashrc << 'EOF'
clear
echo -e "\e[1;37m"
echo "         .andAHHAbnn."
echo "     .aAHHHAAUUAAHHHAn."
echo "    dHP^~\"        \"~^THb."
echo "  .AHF                YHA."
echo " .AHHb.              .dHHA."
echo " |HHHHHbn...nnnn...ndHHHHH|"
echo " |HHHHHHHHHHHHHHHHHHHHHHHHb"
echo " |HHHHHHHHHHHHHHHHHHHHHHHHHb"
echo " |HHHHHHHHHHHHHHHHHHHHHHHHHHb"
echo " YHHHHHHHHHHHHHHHHHHHHHHHHHHb"
echo "  \"HHHHHHHHHHHHHHHHHHHHHHHHY"
echo "   \"YHHHHHHHHHHHHHHHHHHHHY\""
echo -e "\e[1;31m     WE ARE ANONYMOUS\e[0m"
echo ""
EOF
            echo -e "${G}[✓] Banner Anonymous aplicado!${N}"
            ;;
        8)
            cat >> ~/.bashrc << 'EOF'
clear
echo -e "\e[1;32m"
echo "                 ___====-_  _-====___"
echo "           _--^^^#####//      \\\\#####^^^--_"
echo "        _-^##########// (    ) \\\\##########^-_"
echo "       -############//  |\\^^/|  \\\\############-"
echo "     _/############//   (@::@)   \\\\############\\_"
echo "    /#############((     \\\\//     ))#############\\"
echo "   -###############\\\\    (oo)    //###############-"
echo "  -#################\\\\  / VV \\  //#################-"
echo " -###################\\\\/      \\//###################-"
echo "      ASCII DRAGON - POWER TERMINAL"
echo ""
EOF
            echo -e "${G}[✓] Banner Dragon ASCII aplicado!${N}"
            ;;
        9)
            cat >> ~/.bashrc << 'EOF'
clear
echo -e "\e[1;33m"
echo "       .--."
echo "      |o_o |"
echo "      |:_/ |"
echo "     //   \\ \\"
echo "    (|     | )"
echo "   /'\\_   _/'\\"
echo "   \\___)=(___/"
echo -e "\e[1;37m    LINUX PENGUIN\e[0m"
echo ""
neofetch
EOF
            echo -e "${G}[✓] Banner Linux Penguin aplicado!${N}"
            ;;
        10)
            cat >> ~/.bashrc << 'EOF'
clear
echo -e "\e[1;36m╔═══════════════════════════════════════╗"
echo -e "║        SYSTEM INFORMATION             ║"
echo -e "╚═══════════════════════════════════════╝\e[0m"
neofetch --off
echo ""
EOF
            echo -e "${G}[✓] Banner System Info aplicado!${N}"
            ;;
        0) menu_principal ;;
        *) erro; menu_banners ;;
    esac
    pressione
    menu_banners
}

# ═══════════════ MENU WALLPAPER ═══════════════
menu_wallpaper() {
    banner
    echo -e "${G}╔════════════════════════════════════════════════════════════╗${N}"
    echo -e "${G}║              PAPÉIS DE PAREDE ASCII (5)                    ║${N}"
    echo -e "${G}╠════════════════════════════════════════════════════════════╣${N}"
    echo -e "${W}║  ${Y}[1]${W}  Matrix Rain                                           ║${N}"
    echo -e "${W}║  ${Y}[2]${W}  Starfield                                             ║${N}"
    echo -e "${W}║  ${Y}[3]${W}  Cyberpunk City                                        ║${N}"
    echo -e "${W}║  ${Y}[4]${W}  Hacker Code                                           ║${N}"
    echo -e "${W}║  ${Y}[5]${W}  Neon Waves                                            ║${N}"
    echo -e "${G}╠════════════════════════════════════════════════════════════╣${N}"
    echo -e "${W}║  ${R}[0]${W}  Voltar ao Menu Principal                              ║${N}"
    echo -e "${G}╚════════════════════════════════════════════════════════════╝${N}"
    echo -ne "${C}Escolha um wallpaper: ${N}"
    read wall
    aplicar_wallpaper $wall
}

aplicar_wallpaper() {
    case $1 in
        1)
            echo -e "${G}[+] Instalando cmatrix...${N}"
            pkg install cmatrix -y
            echo 'alias matrix="cmatrix -b -u 2"' >> ~/.bashrc
            echo -e "${G}[✓] Use: matrix${N}"
            ;;
        2)
            cat > ~/starfield.sh << 'EOF'
#!/bin/bash
clear
while true; do
    echo -ne "\e[1;37m.\e[0m"
    sleep 0.1
    echo -ne "\e[1;36m*\e[0m"
    sleep 0.1
done
EOF
            chmod +x ~/starfield.sh
            echo -e "${G}[✓] Use: ~/starfield.sh${N}"
            ;;
        3)
            cat >> ~/.bashrc << 'EOF'
alias cybercity='clear; echo -e "\e[1;35m";cat << "CITY"
    |     |     |     |     |
    |  |  |  |  |  |  |  |  |
  __|__|__|__|__|__|__|__|__|__
 |  |  |  |  |  |  |  |  |  |  |
_|__|__|__|__|__|__|__|__|__|__|_
CITY
'
EOF
            echo -e "${G}[✓] Use: cybercity${N}"
            ;;
        4)
            pkg install hollywood -y
            echo 'alias hackermode="hollywood"' >> ~/.bashrc
            echo -e "${G}[✓] Use: hackermode${N}"
            ;;
        5)
            pkg install asciiquarium -y
            echo 'alias waves="asciiquarium"' >> ~/.bashrc
            echo -e "${G}[✓] Use: waves${N}"
            ;;
        0) menu_principal ;;
        *) erro; menu_wallpaper ;;
    esac
    pressione
    menu_wallpaper
}

# ═══════════════ MENU ATALHOS ═══════════════
menu_atalhos() {
    banner
    echo -e "${G}╔════════════════════════════════════════════════════════════╗${N}"
    echo -e "${G}║              ATALHOS DE TECLADO (4)                        ║${N}"
    echo -e "${G}╠════════════════════════════════════════════════════════════╣${N}"
    echo -e "${W}║  ${Y}[1]${W}  Teclas de Função (F1-F12)                             ║${N}"
    echo -e "${W}║  ${Y}[2]${W}  Ctrl+A/E/U/K (Padrão Bash)                            ║${N}"
    echo -e "${W}║  ${Y}[3]${W}  Volume Control                                        ║${N}"
    echo -e "${W}║  ${Y}[4]${W}  Extra Keys Bar                                        ║${N}"
    echo -e "${G}╠════════════════════════════════════════════════════════════╣${N}"
    echo -e "${W}║  ${R}[0]${W}  Voltar ao Menu Principal                              ║${N}"
    echo -e "${G}╚════════════════════════════════════════════════════════════╝${N}"
    echo -ne "${C}Escolha uma opção: ${N}"
    read atalho
    aplicar_atalho $atalho
}

aplicar_atalho() {
    mkdir -p ~/.termux
    case $1 in
        1)
            cat > ~/.termux/termux.properties << 'EOF'
extra-keys = [['ESC','/','-','HOME','UP','END','PGUP'],['TAB','CTRL','ALT','LEFT','DOWN','RIGHT','PGDN']]
EOF
            termux-reload-settings
            echo -e "${G}[✓] Teclas extras configuradas!${N}"
            ;;
        2)
            echo -e "${C}Atalhos Bash padrão já ativos:${N}"
            echo -e "${Y}Ctrl+A${N} - Início da linha"
            echo -e "${Y}Ctrl+E${N} - Fim da linha"
            echo -e "${Y}Ctrl+U${N} - Limpar linha"
            echo -e "${Y}Ctrl+K${N} - Apagar até o fim"
            ;;
        3)
            cat >> ~/.termux/termux.properties << 'EOF'
volume-keys = volume
EOF
            termux-reload-settings
            echo -e "${G}[✓] Controle de volume ativado!${N}"
            ;;
        4)
            cat > ~/.termux/termux.properties << 'EOF'
extra-keys = [[{key: ESC, popup: {macro: "CTRL f d", display: ⌘}}, {key: CTRL, popup: {macro: "CTRL f BKSP", display: ⌘}}, {key: ALT, popup: {macro: "CTRL f c", display: ⌘}}, {key: TAB, popup: {macro: "ALT a", display: ⫔}}, {key: LEFT, popup: HOME}, {key: DOWN, popup: PGDN}, {key: UP, popup: PGUP}, {key: RIGHT, popup: END}, {macro: "ALT j", display: ⇤}, {macro: "CTRL l", display: ⇌}]]
EOF
            termux-reload-settings
            echo -e "${G}[✓] Barra de teclas extras avançada ativada!${N}"
            ;;
        0) menu_principal ;;
        *) erro; menu_atalhos ;;
    esac
    pressione
    menu_atalhos
}

# ═══════════════ MENU FONTES ═══════════════
menu_fontes() {
    banner
    echo -e "${G}╔════════════════════════════════════════════════════════════╗${N}"
    echo -e "${G}║                     FONTES (5)                             ║${N}"
    echo -e "${G}╠════════════════════════════════════════════════════════════╣${N}"
    echo -e "${W}║  ${Y}[1]${W}  Fira Code (Monospace)                                 ║${N}"
    echo -e "${W}║  ${Y}[2]${W}  JetBrains Mono                                        ║${N}"
    echo -e "${W}║  ${Y}[3]${W}  Hack Nerd Font                                        ║${N}"
    echo -e "${W}║  ${Y}[4]${W}  Source Code Pro                                       ║${N}"
    echo -e "${W}║  ${Y}[5]${W}  Cascadia Code                                         ║${N}"
    echo -e "${G}╠════════════════════════════════════════════════════════════╣${N}"
    echo -e "${W}║  ${R}[0]${W}  Voltar ao Menu Principal                              ║${N}"
    echo -e "${G}╚════════════════════════════════════════════════════════════╝${N}"
    echo -ne "${C}Escolha uma fonte: ${N}"
    read fonte
    aplicar_fonte $fonte
}

aplicar_fonte() {
    mkdir -p ~/.termux
    case $1 in
        1)
            echo "font = fira-code" > ~/.termux/font.ttf
            echo -e "${G}[✓] Fonte Fira Code configurada!${N}"
            echo -e "${Y}Reinicie o Termux${N}"
            ;;
        2)
            echo "font = jetbrains-mono" > ~/.termux/font.ttf
            echo -e "${G}[✓] Fonte JetBrains Mono configurada!${N}"
            echo -e "${Y}Reinicie o Termux${N}"
            ;;
        3)
            cd ~/.termux
            wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Hack.zip
            unzip Hack.zip
            mv Hack*.ttf font.ttf
            rm Hack.zip
            echo -e "${G}[✓] Hack Nerd Font instalada!${N}"
            echo -e "${Y}Reinicie o Termux${N}"
            ;;
        4)
            echo "font = source-code-pro" > ~/.termux/font.ttf
            echo -e "${G}[✓] Fonte Source Code Pro configurada!${N}"
            echo -e "${Y}Reinicie o Termux${N}"
            ;;
        5)
            echo "font = cascadia-code" > ~/.termux/font.ttf
            echo -e "${G}[✓] Fonte Cascadia Code configurada!${N}"
            echo -e "${Y}Reinicie o Termux${N}"
            ;;
        0) menu_principal ;;
        *) erro; menu_fontes ;;
    esac
    pressione
    menu_fontes
}

# ═══════════════ MENU ALIASES ═══════════════
menu_aliases() {
    banner
    echo -e "${G}╔════════════════════════════════════════════════════════════╗${N}"
    echo -e "${G}║                  ALIASES ÚTEIS (5)                         ║${N}"
    echo -e "${G}╠════════════════════════════════════════════════════════════╣${N}"
    echo -e "${W}║  ${Y}[1]${W}  Aliases Básicos                                       ║${N}"
    echo -e "${W}║  ${Y}[2]${W}  Aliases Git                                           ║${N}"
    echo -e "${W}║  ${Y}[3]${W}  Aliases Navegação                                     ║${N}"
    echo -e "${W}║  ${Y}[4]${W}  Aliases Sistema                                       ║${N}"
    echo -e "${W}║  ${Y}[5]${W}  Aliases Hacker                                        ║${N}"
    echo -e "${G}╠════════════════════════════════════════════════════════════╣${N}"
    echo -e "${W}║  ${R}[0]${W}  Voltar ao Menu Principal                              ║${N}"
    echo -e "${G}╚════════════════════════════════════════════════════════════╝${N}"
    echo -ne "${C}Escolha: ${N}"
    read alias_op
    aplicar_alias $alias_op
}

aplicar_alias() {
    case $1 in
        1)
            cat >> ~/.bashrc << 'EOF'
# Aliases Básicos
alias c='clear'
alias ll='ls -lah'
alias la='ls -A'
alias l='ls -CF'
alias ..='cd ..'
alias ...='cd ../..'
alias q='exit'
EOF
            echo -e "${G}[✓] Aliases básicos adicionados!${N}"
            ;;
        2)
            cat >> ~/.bashrc << 'EOF'
# Aliases Git
alias g='git'
alias gs='git status'
alias ga='git add'
alias gc='git commit -m'
alias gp='git push'
alias gl='git log --oneline'
alias gd='git diff'
EOF
            echo -e "${G}[✓] Aliases Git adicionados!${N}"
            ;;
        3)
            cat >> ~/.bashrc << 'EOF'
# Aliases Navegação
alias home='cd ~'
alias storage='cd /storage/emulated/0'
alias downloads='cd /storage/emulated/0/Download'
alias docs='cd /storage/emulated/0/Documents'
EOF
            echo -e "${G}[✓] Aliases de navegação adicionados!${N}"
            ;;
        4)
            cat >> ~/.bashrc << 'EOF'
# Aliases Sistema
alias update='pkg update && pkg upgrade'
alias install='pkg install'
alias remove='pkg uninstall'
alias search='pkg search'
alias mem='free -h'
alias cpu='top -n 1'
EOF
            echo -e "${G}[✓] Aliases de sistema adicionados!${N}"
            ;;
        5)
            cat >> ~/.bashrc << 'EOF'
# Aliases Hacker
alias nmap='nmap -sV'
alias scan='nmap -sn'
alias metasploit='msfconsole'
alias sqlmap='python ~/sqlmap/sqlmap.py'
alias hydra='hydra -L'
EOF
            echo -e "${G}[✓] Aliases hacker adicionados!${N}"
            ;;
        0) menu_principal ;;
        *) erro; menu_aliases ;;
    esac
    pressione
    menu_aliases
}

# ═══════════════ MENU STARTUP ═══════════════
menu_startup() {
    banner
    echo -e "${G}╔════════════════════════════════════════════════════════════╗${N}"
    echo -e "${G}║           SCRIPTS DE INICIALIZAÇÃO (5)                     ║${N}"
    echo -e "${G}╠════════════════════════════════════════════════════════════╣${N}"
    echo -e "${W}║  ${Y}[1]${W}  Cowsay + Fortune                                      ║${N}"
    echo -e "${W}║  ${Y}[2]${W}  Neofetch                                              ║${N}"
    echo -e "${W}║  ${Y}[3]${W}  Clock ASCII                                           ║${N}"
    echo -e "${W}║  ${Y}[4]${W}  Motivational Quote                                    ║${N}"
    echo -e "${W}║  ${Y}[5]${W}  System Status                                         ║${N}"
    echo -e "${G}╠════════════════════════════════════════════════════════════╣${N}"
    echo -e "${W}║  ${R}[0]${W}  Voltar ao Menu Principal                              ║${N}"
    echo -e "${G}╚════════════════════════════════════════════════════════════╝${N}"
    echo -ne "${C}Escolha: ${N}"
    read startup
    aplicar_startup $startup
}

aplicar_startup() {
    case $1 in
        1)
            pkg install cowsay fortune -y
            echo 'fortune | cowsay' >> ~/.bashrc
            echo -e "${G}[✓] Cowsay + Fortune ativado!${N}"
            ;;
        2)
            pkg install neofetch -y
            echo 'neofetch' >> ~/.bashrc
            echo -e "${G}[✓] Neofetch ativado!${N}"
            ;;
        3)
            pkg install tty-clock -y
            echo 'tty-clock -c -C 6 -t -s' >> ~/.bashrc
            echo -e "${G}[✓] Clock ASCII ativado!${N}"
            ;;
        4)
            cat >> ~/.bashrc << 'EOF'
quotes=("Hack the planet!" "Stay curious." "Code is poetry." "Think different." "Just do it!")
echo -e "\e[1;33m${quotes[$RANDOM % ${#quotes[@]}]}\e[0m"
EOF
            echo -e "${G}[✓] Motivational Quote ativado!${N}"
            ;;
        5)
            cat >> ~/.bashrc << 'EOF'
echo -e "\e[1;36m╔═══ SYSTEM STATUS ═══╗\e[0m"
echo -e "\e[1;32mDate:\e[0m $(date)"
echo -e "\e[1;32mUptime:\e[0m $(uptime -p)"
echo -e "\e[1;32mMemory:\e[0m $(free -h | awk '/^Mem:/ {print $3 "/" $2}')"
echo -e "\e[1;36m╚═══════════════════╝\e[0m"
EOF
            echo -e "${G}[✓] System Status ativado!${N}"
            ;;
        0) menu_principal ;;
        *) erro; menu_startup ;;
    esac
    pressione
    menu_startup
}

# ═══════════════ MENU FERRAMENTAS ═══════════════
menu_ferramentas() {
    banner
    echo -e "${G}╔════════════════════════════════════════════════════════════╗${N}"
    echo -e "${G}║                   FERRAMENTAS (5)                          ║${N}"
    echo -e "${G}╠════════════════════════════════════════════════════════════╣${N}"
    echo -e "${W}║  ${Y}[1]${W}  Instalar Vim Personalizado                            ║${N}"
    echo -e "${W}║  ${Y}[2]${W}  Instalar Nano Melhorado                               ║${N}"
    echo -e "${W}║  ${Y}[3]${W}  Instalar Zsh + Oh-My-Zsh                              ║${N}"
    echo -e "${W}║  ${Y}[4]${W}  Instalar Tmux Customizado                             ║${N}"
    echo -e "${W}║  ${Y}[5]${W}  Instalar Python + Pip                                 ║${N}"
    echo -e "${G}╠════════════════════════════════════════════════════════════╣${N}"
    echo -e "${W}║  ${R}[0]${W}  Voltar ao Menu Principal                              ║${N}"
    echo -e "${G}╚════════════════════════════════════════════════════════════╝${N}"
    echo -ne "${C}Escolha: ${N}"
    read ferramenta
    aplicar_ferramenta $ferramenta
}

aplicar_ferramenta() {
    case $1 in
        1)
            echo -e "${G}[+] Instalando Vim...${N}"
            pkg install vim -y
            cat > ~/.vimrc << 'EOF'
syntax on
set number
set relativenumber
set cursorline
set tabstop=4
set shiftwidth=4
set expandtab
colorscheme desert
EOF
            echo -e "${G}[✓] Vim personalizado instalado!${N}"
            ;;
        2)
            echo -e "${G}[+] Instalando Nano...${N}"
            pkg install nano -y
            cat > ~/.nanorc << 'EOF'
set linenumbers
set autoindent
set tabsize 4
set tabstospaces
include /data/data/com.termux/files/usr/share/nano/*.nanorc
EOF
            echo -e "${G}[✓] Nano melhorado instalado!${N}"
            ;;
        3)
            echo -e "${G}[+] Instalando Zsh + Oh-My-Zsh...${N}"
            pkg install zsh git curl -y
            sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
            echo -e "${G}[✓] Zsh + Oh-My-Zsh instalado!${N}"
            ;;
        4)
            echo -e "${G}[+] Instalando Tmux...${N}"
            pkg install tmux -y
            cat > ~/.tmux.conf << 'EOF'
set -g default-terminal "screen-256color"
set -g status-bg colour235
set -g status-fg colour136
set -g mouse on
EOF
            echo -e "${G}[✓] Tmux customizado instalado!${N}"
            ;;
        5)
            echo -e "${G}[+] Instalando Python + Pip...${N}"
            pkg install python python-pip -y
            pip install --upgrade pip
            echo -e "${G}[✓] Python + Pip instalado!${N}"
            ;;
        0) menu_principal ;;
        *) erro; menu_ferramentas ;;
    esac
    pressione
    menu_ferramentas
}

# ═══════════════ MENU BACKUP ═══════════════
menu_backup() {
    banner
    echo -e "${G}╔════════════════════════════════════════════════════════════╗${N}"
    echo -e "${G}║                BACKUP E RESTAURAÇÃO                        ║${N}"
    echo -e "${G}╠════════════════════════════════════════════════════════════╣${N}"
    echo -e "${W}║  ${Y}[1]${W}  Fazer Backup das Configurações                        ║${N}"
    echo -e "${W}║  ${Y}[2]${W}  Restaurar Configurações                               ║${N}"
    echo -e "${W}║  ${Y}[3]${W}  Reset Total (Padrão)                                  ║${N}"
    echo -e "${G}╠════════════════════════════════════════════════════════════╣${N}"
    echo -e "${W}║  ${R}[0]${W}  Voltar ao Menu Principal                              ║${N}"
    echo -e "${G}╚════════════════════════════════════════════════════════════╝${N}"
    echo -ne "${C}Escolha: ${N}"
    read backup_op
    aplicar_backup $backup_op
}

aplicar_backup() {
    case $1 in
        1)
            echo -e "${G}[+] Criando backup...${N}"
            mkdir -p ~/termux-backup
            cp ~/.bashrc ~/termux-backup/bashrc.bak 2>/dev/null
            cp ~/.termux/colors.properties ~/termux-backup/colors.bak 2>/dev/null
            cp ~/.termux/termux.properties ~/termux-backup/termux.bak 2>/dev/null
            tar -czf ~/termux-backup-$(date +%Y%m%d).tar.gz ~/termux-backup/
            echo -e "${G}[✓] Backup criado em ~/termux-backup-$(date +%Y%m%d).tar.gz${N}"
            ;;
        2)
            echo -e "${Y}[?] Arquivos de backup encontrados:${N}"
            ls -1 ~/termux-backup-*.tar.gz 2>/dev/null
            echo -ne "${C}Digite o nome do arquivo: ${N}"
            read backup_file
            tar -xzf ~/$backup_file -C ~/
            cp ~/termux-backup/* ~/.termux/ 2>/dev/null
            echo -e "${G}[✓] Configurações restauradas!${N}"
            ;;
        3)
            echo -ne "${R}[!] Tem certeza? (s/n): ${N}"
            read confirm
            if [ "$confirm" == "s" ]; then
                rm -rf ~/.bashrc ~/.termux/*
                echo -e "${G}[✓] Reset completo realizado!${N}"
            fi
            ;;
        0) menu_principal ;;
        *) erro; menu_backup ;;
    esac
    pressione
    menu_backup
}

# Funções auxiliares
erro() {
    echo -e "${R}[!] Opção inválida!${N}"
    sleep 1
}

pressione() {
    echo ""
    echo -ne "${Y}Pressione ENTER para continuar...${N}"
    read
}

sair() {
    clear
    echo -e "${C}"
    cat << "EOF"
    ╔═══════════════════════════════════════════╗
    ║                                           ║
    ║     OBRIGADO POR USAR O CUSTOMIZER!       ║
    ║                                           ║
    ║         Até a próxima! 👋                 ║
    ║                                           ║
    ╚═══════════════════════════════════════════╝
EOF
    echo -e "${N}"
    exit 0
}

# Verificar dependências
verificar_deps() {
    echo -e "${Y}[+] Verificando dependências...${N}"
    pkg update -y
    pkg install wget curl git -y
    mkdir -p ~/.termux
}

# Inicialização
verificar_deps
menu_principal
