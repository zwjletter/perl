

#!perl -w
     $PATH = "F:\\file\\perl\\convert_file\\";
  
  open (INPUTFILE,"$PATH\\step3_out.txt") or die("can not open file,$!");
  open (OUTPUTFILE,">step4_out.coe")or die("can not open file,$!");    

        while($ch = <INPUTFILE>){         	
             $ch =~ s/\s//g;
             my @input_array = split //, $ch; 
        	$i =0;
        	while($i < @input_array){
        		    if(($i != 0)&(($i%16) == 15)){
                   print OUTPUTFILE "$input_array[$i]\n";}
          	     else{
                   print OUTPUTFILE "$input_array[$i]";}
                 $i++;
        		   }
        	}
           print "please run step5\.pl";     	
  close (INPUTFILE) or die("can not close file,$!");
  close(OUTPUTFILE) or die("can not close file,$!");    