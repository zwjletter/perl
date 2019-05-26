

#!perl -w
     $PATH = "F:\\file\\perl\\convert_file\\";
   
     open(CODEFILE,"$PATH\\rom_exe.bin") or die("can not open file: $!");
     open(OUTFILE,">step1_out.txt") or die("can not open file: $!");
            binmode(CODEFILE);
            while($line = <CODEFILE>){
            	  $decoded = unpack("H*",$line);
            	 print OUTFILE "$decoded";
            	
            	}
            	
        print "please run step2\.pl";
      close(OUTFILE) or die("can not close file: $!");
      close(CODEFILE) or die("can not close file: $!");