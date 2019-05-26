#!perl -w  
  
     $PATH = "F:\\file\\perl\\convert_file\\";   
  open (INPUTFILE,"$PATH\\step5_out.coe") or die("can not open file,$!");
    open (OUT8192,">rom_8192.coe")or die("can not open file,$!");    
  open (OUT8064,">rom_8064.coe")or die("can not open file,$!");  
#       @Lines=<INPUTFILE>;
#       $Lines = @Lines;  
#       print $Lines;                   
      
      while ($char = <INPUTFILE>) {
        $LineNo +=1;
        if ($LineNo < 8193 ) {
                print OUT8192 $char;
        }
 #       elsif ((($LineNo>=(8193))&&($LineNo<(16257))) {
         elsif ($LineNo< 16257) {
#         else{
                print OUT8064 $char;
                }
      }
      print"finished!!!!!";
                                 
  close (INPUTFILE) or die("can not close file,$!");
   close(OUT8192) or die("can not close file,$!");  
  close(OUT8064) or die("can not close file,$!");  