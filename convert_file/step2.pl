

#!perl -w
     $PATH = "F:\\file\\perl\\convert_file\\";

   open(RAW,"$PATH\\step1_out.txt") or die("can not open file,$!");
      open(WDATA,"> step2_out.txt") or die("can not open file,$!");
          while($hex = <RAW>){          	
          	my @array = split //, $hex;           	
          	   $cnt = 0;
          	   while($cnt <= @array){
          	   	
          	     if(($cnt != 0)&(($cnt%16) == 15)){
                   print WDATA "$array[$cnt]\n";}
          	     else{
                   print WDATA "$array[$cnt]";}
                 $cnt++;
          	   }	 
          	}            
            print "please run step3\.pl";      	
      close(WDATA) or die("can not close file,$!");   
   close(RAW) or die("can not close file,$!");