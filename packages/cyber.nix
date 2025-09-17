{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # Reseau
    nmap             
    tcpdump          
    wireshark       
    netcat         
    socat           

    # Pentest & exploit
    hydra           
    john            
    aircrack-ng    
    metasploit       

    # Forensics & reverse
    binwalk         
    radare2         
    ghidra         

    # Divers
    hashcat        
    nikto            
    sqlmap         
  ];
}
