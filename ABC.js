function demo()
{
    document.getElementById("s1").innerHTML="";
    document.getElementById("s2").innerHTML="";
    
    if(Firstname()& Lastname()& fathername()& contactno())
    {
     form1.submit();   
    }
}
function Firstname()
{
    
   a= document.getElementById("t1").value;
   if(a.length>=3)
   {
       return true;
   }
   else
   {
    document.getElementById("s1").innerHTML="enter correct firstname";
    return false;   
   }
}
function Lastname()
{
    a=document.getElementById("t2").value;
     if(a.length>=3)
   {
       return true;
   }
   else
   {
    document.getElementById("s2").innerHTML="enter correct lastname";
    return false;
}
}


function fathername()
{
    a=document.getElementById("t3").value;
     if(a.length>=3)
   {
       return true;
   }
   else
   {
    document.getElementById("s3").innerHTML="enter correct fathername";
    return false;
}
}

function contactno()
{
    a=document.getElementById("t4").value;
     if(a.length>=3)
   {
       return true;
   }
   else
   {
    document.getElementById("s4").innerHTML="enter correct contactno";
    return false;
}
}