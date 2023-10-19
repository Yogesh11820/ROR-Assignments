def ipclass(ip_address)
    first_octet = ip_address.split('.')[0].to_i
    
    if (1..126) === first_octet
      return "IP address class - Class A"
    elsif (128..191) === first_octet
      return "IP address class - Class B"
    elsif (192..223) === first_octet
      return "IP address class - Class C"
    elsif (224..239) === first_octet
      return "IP address class - Class D"
    elsif (240..255) === first_octet
      return "IP address class - Class E"
    else
      return "Invalid IP Address"
    end
  end
  
  print "Enter an IP address: "
  ip_address = gets.chomp
  ipclass = ipclass(ip_address)
  puts ipclass
  