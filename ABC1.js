function demo()
{
   x=document.getElementById('t1').value;
   var re=/\d/;
   if(re.test(x))
   {
       document.getElementById('s1').innerHTML="";
   }
   else
   {
       
       document.getElementById('s1').innerHTML="invalid data";
   }
}