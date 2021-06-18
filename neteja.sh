#!/bin/bash
sleep 2s
echo
echo
echo  Hola!!!
echo
sleep 1s
echo  Este es el Script de Voro MV, para limpiar el sistema.
echo
sleep 1s
echo  Se llama NETEJA
echo  y está en su 2ª versión    
echo                                
sleep 2s
echo  Con él, vamos a actualizar el sistema.
echo  También Flatpak y Snap, si los tienes instalados.
echo  Finalmente eliminaremos toda la basurilla. ¿Ok?
sleep 1s
echo  En el proceso, tendrás que poner tu contraseña de usuario.
echo
sleep 3s
while true; do
    echo
    echo  Pero antes de actualizar y limpiar el sistema, indica que gestor de paquetes usas:
    sleep 3s
    echo
    echo   1: APT    para Debian, Ubuntu y derivadas
    echo   2: DNF    para Fedora
    echo   3: PACMAN para Arch
    echo   4: ZYPPER para Suse
    echo   n: Salir
    echo ""
    sleep 1s
    read -p "Opcion: " sn
    echo
    case $sn in
            [1]* )  echo
                    echo  Actualizamos el sistema. También Flatpak/Snap, si los tienes instalados.
                    sleep 2s
                    echo
                    echo "";
                    sudo apt update -y  && sudo apt upgrade -y && sudo flatpak update && sudo snap refresh
                    sleep 2s
                    echo
                    echo  Ahora borramos versiones antiguas de programas, Kernel, cachés...
                    echo 
                    sleep 2s
                    sudo apt purge && sudo apt clean -y && sudo apt autoclean -y && sudo apt autoremove -y;
                    sleep 1s;
                    echo 
                    echo  Borramos directorios temporales.
                    sleep 2s
                    echo "";
                    sudo rm -rf /tmp/*;
                    rm -vfr /tmp/* >/dev/null 2>&1 && rm -vfr /var/tmp/* >/dev/null 2>&1;
                    sleep 2s;
                    echo  Por último, vamos a vaciar la Papelera.
                    sleep 1s
                    echo  Ten en cuenta que no podrás recuperar nada de lo que había en ella.
                    while true; do
                    echo
    read -p "Estas segur@ de querer borrar el contenido? (s/n)" sn
    case $sn in
        [Ss]* )  rm -rf ~/.local/share/Trash/*; break;;
        [Nn]* ) exit;;
        * ) echo "Por favor, pulsa s o n.";;
    esac
done
   sleep 3s
echo  
break;;             
            [2]* )  echo
                    echo Actualizamos el sistema. También Flatpak/Snap, si los tienes instalados.
                    sleep 2s
                    echo "";
                    sudo dnf update -y  && sudo dnf upgrade -y && sudo flatpak update && sudo snap refresh
                    sleep 2s
                    echo
                    echo Ahora borramos versiones antiguas de programas, Kernel, cachés...
                    echo 
                    sleep 2s
                    sudo dnf clean all && sudo dnf autoremove
                    sleep 1s;
                    echo 
                    echo Borramos directorios temporales.
                    sleep 2s
                    echo "";
                    sudo rm -rf /tmp/*;
                    rm -vfr /tmp/* >/dev/null 2>&1 && rm -vfr /var/tmp/* >/dev/null 2>&1;
                    sleep 2s;
                    echo Por último, vamos a vaciar la Papelera.
                    sleep 1s
                    echo Ten en cuenta que no podrás recuperar nada de lo que había en ella.
                    while true; do
                    echo
    read -p "Estas segur@ de querer borrar el contenido? (s/n)" sn
    case $sn in
        [Ss]* )  rm -rf ~/.local/share/Trash/*; break;;
        [Nn]* ) exit;;
        * ) echo "Por favor, pulsa s o n.";;
    esac
done
   sleep 3s
echo  
break;;  
   
            [3]* )  echo Actualizamos el sistema. También Flatpak/Snap, si los tienes instalados.
                    echo También borramos versiones antiguas de programas, Kernel, cachés...
                    echo
                    sleep 2s
                    sudo pacman -Syuy -y && flatpak upgrade -y && sudo pacman -Scc -y;
                    sleep 1s;
                    echo
                    echo Borramos directorios temporales.
                    echo 
                    sudo rm -rf /tmp/*;
                    rm -vfr /tmp/* >/dev/null 2>&1 && rm -vfr /var/tmp/* >/dev/null 2>&1;
                    sleep 1s;
                    echo Por último, vamos a vaciar la Papelera.
                    sleep 1s
                    echo Ten en cuenta que no podrás recuperar nada de lo que había en ella.
                    while true; do
                    echo
    read -p "Estas segur@ de querer borrar el contenido? (s/n)" sn
    case $sn in
        [Ss]* )  rm -rf ~/.local/share/Trash/*; break;;
        [Nn]* ) exit;;
        * ) echo "Por favor, pulsa s o n.";;
    esac
done
   sleep 3s
echo  
#break;;  
 #
 # 
                    echo "";
                    rm -rf ~/.local/share/Trash/*;
                    break;;
            [4]* )  echo Actualizamos el sistema y flatpak/snap, si los tenemos instalados
                    echo "";
                    sudo zypper update -y && flatpak upgrade -y 
                    echo
                    sleep 1s
                    echo Limpiamos cachés...
                    echo
                    sudo zypper clean ;
                    sleep 1s;
                    echo
                    echo Borramos directorios temporales
                    echo "";
                    sudo rm -rf /tmp/*;
                    rm -vfr /tmp/* >/dev/null 2>&1 && rm -vfr /var/tmp/* >/dev/null 2>&1;
                    sleep 1s;
                    echo Por último, vamos a vaciar la Papelera.
                    sleep 1s
                    echo Ten en cuenta que no podrás recuperar nada de lo que había en ella.
                    while true; do
                    echo
    read -p "Estas segur@ de querer borrar el contenido? (s/n)" sn
    case $sn in
        [Ss]* )  rm -rf ~/.local/share/Trash/*; break;;
        [Nn]* ) exit;;
        * ) echo "Por favor, pulsa s o n.";;
    esac
done
   sleep 3s
echo  
#break;;  
 #
 # 
                    echo "";
                    rm -rf ~/.local/share/Trash/*;
                    break;;
            [Nn]* ) exit;;
            * ) echo "Por favor, pulsa 1,2,3,4 o n para salir del programa.";;
    esac
done
sleep 3s
echo  
echo Ya hemos terminado.
sleep 2s
echo Ya tienes tu sistema limpio.
sleep 2s
echo
echo Este Script es público, está creado por la comunidad de Voro MV, y disfruta de las 4 libertades:
echo La libertad de ejecutar el software como te plazca y con cualquier objetivo.
echo La libertad de estudiar como funciona el programa y cambiarlo a tu gusto.
echo La libertad de poder redistribuir copias del programa a los demás.
