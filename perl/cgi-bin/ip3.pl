#!"C:/xampp/perl/bin/perl.exe"
use CGI;
$a=CGI->new();
$name=$a->param("name");
print "content-type:text/html","\n\n";
$webmaster = "root";
($seconds,$minutes,$hour)=localtime(time);
if(($hour>23) || ($hour<=6))
{
    $greeting="wow You are up late!!";
}
elsif(($hour>6) && ($hour<12))
{
     $greeting="Good morning!";    
}
elsif(($hour>12) && ($hour<18))
{
    $greeting="Good afternoon!";
}
else
{
    $greeting="Good evening!";
}
print $greeting,"\n";
print $name,"\n\n";
open(CHECK,"/usr/bin/w -h -s $webmaster |");
if(<CHECK>==/$webmaster/)
{
    $log="webmaster is currently logged in!";
}
else
{
   $log="webmaster just stepped out!";
}
print "$log","\n";
exit(0);