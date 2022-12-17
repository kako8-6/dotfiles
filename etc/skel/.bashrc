# .bashrc

# Si no se ejecuta de forma interactiva, no haga nada
[[ $- != *i* ]] && return

# Prompt
git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
PS1="\[\033[1;32m\]\w\[\033[33m\]\$(git_branch)\[\033[00m\] > "

# Alias general
alias ls='ls --color=auto'
alias ll='ls -lah --color=auto'
alias grep='grep --color=auto'

# Alias Runit
alias svs='sudo sv status /var/service/*'    # Para consultar el estado de todos los servicios de runit

# Alias ejemplares de xbps
alias xrf='sudo xbps-reconfigure -f'    # Para configurar (o forzar la configuración de) un paquete
alias xisu='sudo xbps-install -Su'      # Para actualizar todos los paquetes (también conocido como dist-upgrade en Debian/Ubuntu)
alias xis='sudo xbps-install -S'        # Para instalar un paquete
alias xrr='sudo xbps-remove -R'         # Para eliminar recursivamente las dependencias innecesarias que instaló el paquete de destino
alias xro='sudo xbps-remove -o'         # Para eliminar paquetes huérfanos
alias xrx='sudo xbps-remove'            # Para eliminar un paquete
alias xqrs='xbps-query -Rs'             # Para buscar paquetes en repositorios que coincidan con el xbps patrón en su pkgvery short_desc objetos
alias xqs='xbps-query -s'               # Para consultar paquetes instalados que coincidan con nombre de paquete/versión/descripción
alias xqr='xbps-query -R'               # Para mostrar información de un paquete disponible en repositorios
