#!perl -w
     $PATH = "F:\\file\\perl\\convert_file\\";
  
    my $cut_off = 8192;
    my $num = 1 ;
    my $count = 1;
   
  open (INPUTFILE,"$PATH\\step5_out.coe") or die("can not open file,$!");
  open (OUT8192,">rom_8192.coe")or die("can not open file,$!");    
  open (OUT8064,">rom_8064.coe")or die("can not open file,$!");  
  
  
  while ($char = <INPUTFILE> ){
  	     if($count < $cut_off*$num) {                        
  	              close OUT8192;                             
  	              $num++;                                    
  	              open(OUT8192, ">rom_8192.coe") or die "";}   
                                                
          else{
          	       $num++; 
            	     open(OUT8064, ">rom_8064.coe") or die "";  }  	
            	     
            	     
       print OUT8192 "$char";    
       print OUT8064 "$char";      	
  	   $count++;   
          	
          	}                               
  	    
  	    
  	    
  	    
  	    
  	    

  	    
  	    
  	
#        if($count > $cut_off*$num) {
#                 close OUT8064;
#                 $num++;
#                 open(OUT8064, ">rom_8064.coe") or die "";
#        }
#         print OUT8064 "$char";
#         $count++;
#   }
  
  
  
  
       
#             while( $char = <INPUTFILE> ){
             
#             	print OUT8192 substr($char,0,64);
#             	 @long_array = $char;
#             	  for($i=0;$i <8192;$i++){
#                   print OUT8192 "@long_array[$i]";
               
#               }
 #            }         

#              for($i=0;$i <8192;$i++){
#              	  $ch = $long_array[$i];
#              	  print OUT8192 "@long_array";
#       	          print OUT8192 substr($ch,0,15);
#             	   }   

        	
  close (INPUTFILE) or die("can not close file,$!");
  close(OUT8192) or die("can not close file,$!");  
  close(OUT8064) or die("can not close file,$!");  