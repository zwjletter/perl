
#!perl -w
     $PATH = "F:\\file\\perl\\convert_file\\";
  
  open (INPUTFILE,"$PATH\\step4_out.coe") or die("can not open file,$!");
  open (INPUTFILE2,"$PATH\\add.txt") or die("can not open file,$!");
  open (OUTFILE,"+>step5_out.coe")or die("can not open file,$!");    
       
#             while( $char = <INPUTFILE> ){

#             	 @long_array = $char;
#                   print OUT8192 "@long_array[$i]";
               
#               }
            while( $char = <INPUTFILE> ){   
                   print OUTFILE $char;}
            while($char2 = <INPUTFILE2>){
                   print OUTFILE $char2;}
                   
                   
   print "please run step6\.pl";      
        	
  close (INPUTFILE) or die("can not close file,$!");
  close (INPUTFILE2) or die("can not close file,$!");
  close(OUTFILE) or die("can not close file,$!");  
