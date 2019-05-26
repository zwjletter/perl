

 #!perl -w
     $PATH = "F:\\file\\perl\\convert_file\\";

  open (INPUTFILE,"$PATH\\step2_out.txt") or die("can not open file,$!");
  open (OUTPUTFILE,">step3_out.txt")or die("can not open file,$!");    
       while($ch = <INPUTFILE>){
       	
       	    my @old_array = split //,$ch;
      
     #  	      my @old_array = $ch;
     #  	     print OUTPUTFILE "@old_array";
            $count =0 ;
            while($count < @old_array){
   #     	     @new_array = (@old_array[2],@old_array[0],@old_array[6],@old_array[4],@old_array[10],@old_array[8],@old_array[14],@old_array[12],@old_array[18],@old_array[16],@old_array[22],@old_array[20],@old_array[26],@old_array[24],@old_array[30],@old_array[28]);
   #    	     @new_array = {$old_array[14],$old_array[15],$old_array[12],$old_array[13],$old_array[10],$old_array[11],$old_array[8],$old_array[9],$old_array[6],$old_array[7],$old_array[4],$old_array[5],$old_array[2],$old_array[3],$old_array[0],$old_array[1]};    	
   #     	    print OUTPUTFILE "@new_array";
              $tmp_array[$count] = $old_array[15-$count];
              $count ++;
       	  }
       	    $j =0;
       	    while($j < @old_array){
       	     	 $new_array[$j] = $tmp_array[$j+1];
       	     	 $new_array[$j+1] = $tmp_array[$j];

        	     	$j = $j + 2;
       	    	}
                 print OUTPUTFILE "@new_array";
       	  
#       	    my @final_array = grep { !/^\s+$/ } @new_array;  
#       	    my @final_array = ~/^\s//  @new_array;  
#       	      my @final_array = join  @new_array; 
#        	     	 print OUTPUTFILE "@final_array";
       
       	}
        print "please run step4\.pl";
  close (INPUTFILE) or die("can not close file,$!");
  close(OUTPUTFILE) or die("can not close file,$!");