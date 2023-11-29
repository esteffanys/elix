digraph tcpip {
  // Declaração de um sub-grafo para cada camada
  
  subgraph cluster_Aplicacao {
    label="Camada de Aplicação"
    dhcp[DHCP (67, 68)]
    dns[DNS (53)]
    http[HTTP (80)]
    imap[IMAP (143)]
    pop3[POP3 (110)]
    smb[SMB (445)]
    rdp[RDP (3389)]
    vnc[VNC (5900)]
    smtp[SMTP (25)]
    snmp[SNMP (161)]
    ssh[SSH (22)]
    ntp[NTP (123)]
  }

  subgraph cluster_Transporte {
    label="Camada de Transporte"
    tcp[TCP]
    udp[UDP]
  }

  subgraph cluster_Rede {
    label="Camada de Rede"
    ipv4[IPv4]
  }
  
  subgraph cluster_Enlace {
    label="Camada de Enlace"
    ethernet["Ethernet (802.3)"]
    wifi["Wifi (802.11)"]
  }
  
  subgraph cluster_Fisica {
    label="Camada Física"
    coaxial["Cabo coaxial"]
    fibra["Fibra ótica"]
    utp["Cabo de par trançado"]
    ar[Ar]
  }
  
  // Conexões
  coaxial -> ethernet
  utp -> ethernet
  ar -> wifi
  
  ethernet -> ipv4
  wifi -> ipv4
  ipv4 -> tcp
  ipv4 -> udp
  
  udp -> dhcp
  udp -> dns
  udp -> snmp
  udp -> ntp
  
  tcp -> http
  tcp -> imap
  tcp -> pop3
  tcp -> smb
  tcp -> smtp
  tcp -> ssh
  tcp -> rdp
  tcp -> vnc
}
