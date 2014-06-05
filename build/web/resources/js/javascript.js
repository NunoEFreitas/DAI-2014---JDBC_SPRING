  function  oculta(valor) {
      
//$('input[class*="input"]').each(function (){
//    $(this).val(""); });

           if (valor == 2 || valor==3 || valor==4 || valor==5 || valor==6) {
        
                    document.getElementById('1').style.display = 'block';
                    document.getElementById('2').style.display = 'block';
                    document.getElementById('3').style.display = 'block';
                    document.getElementById('4').style.display = 'block';
                    document.getElementById('5').style.display = 'block';
                    document.getElementById('6').style.display = 'block';
                    document.getElementById('7').style.display = 'block';
                    document.getElementById('8').style.display = 'none';
                    document.getElementById('9').style.display = 'none';
                    document.getElementById('10').style.display = 'none';
                    document.getElementById('11').style.display = 'none';
                    document.getElementById('12').style.display = 'none';
                    document.getElementById('13').style.display = 'none';
                    document.getElementById('14').style.display = 'none';                    
                    document.getElementById('15').style.display = 'none';
                    document.getElementById('16').style.display = 'none';
                    document.getElementById('17').style.display = 'none';
                    document.getElementById('18').style.display = 'none';
                    document.getElementById('19').style.display = 'block';

                }

                else {
                     
                
                    document.getElementById('1').style.display = 'block';
                    document.getElementById('2').style.display = 'block';
                    document.getElementById('3').style.display = 'block';
                    document.getElementById('4').style.display = 'block';
                    document.getElementById('5').style.display = 'block';
                    document.getElementById('6').style.display = 'block';
                    document.getElementById('7').style.display = 'block';
                    document.getElementById('8').style.display = 'block';
                    document.getElementById('9').style.display = 'block';
                    document.getElementById('10').style.display = 'block';
                    document.getElementById('11').style.display = 'block';
                    document.getElementById('12').style.display = 'block';
                    document.getElementById('13').style.display = 'block';
                    document.getElementById('14').style.display = 'block';                    
                    document.getElementById('15').style.display = 'block';
                    document.getElementById('16').style.display = 'block';
                    document.getElementById('17').style.display = 'block';
                    document.getElementById('18').style.display = 'block';
                    document.getElementById('19').style.display = 'block';

                }
                

  }
  
  function IsNum(v)

{
   var ValidChars = "0123456789";
   var IsNumber=true;
   var Char;

 
   for (i = 0; i < v.length && IsNumber == true; i++) 
      { 
      Char = v.charAt(i); 
      if (ValidChars.indexOf(Char) == -1) 
         {
         IsNumber = false;
         }
      }
   return IsNumber;
   
}
//para a pagina  register.

function validacao() {
    var perfil= document.getElementById("perfil").value;
//   validacao para o perfil atleta 
 if(perfil==1){
    
    if (document.register.nome.value == "" || register.nome.value.length < 9) {
        document.getElementById("texto").innerHTML = "Preencha o nome correctamente";
        document.register.nome.focus();
        return false;
    }
    if (document.register.password.value == "" || register.password.length < 4) {
        document.getElementById("texto").innerHTML = "Preencha a password correctamente";
        document.register.password.focus();
        return false;
    }
    if (document.register.telefone.lenght < 9 || register.telefone.length > 10 || !IsNum(regiter.telefone.value)) {
        document.getElementById("texto").innerHTML = "Preencha o telefone correctamente";
        document.register.telefone.focus();
        return false;
    }
    
    
    
//    validaçao para os restantes perfis
 }else{ 
      if (document.register.nome.value == "" || register.nome.value.length < 9) {
        document.getElementById("texto").innerHTML = "Preencha o nome correctamente";
        document.register.nome.focus();
        return false;

    }
    if (document.register.password.value == "" || register.password.length < 4) {
        document.getElementById("texto").innerHTML = "Preencha a password correctamente";
        document.register.password.focus();
        return false;

    }
    if ( alert("qqqqqqqqqq")||document.register.telefone.lenght == ""||register.telefone.lenght < 9 || register.telefone.length > 10 || !IsNum(regiter.telefone.value)) {
        document.getElementById("texto").innerHTML = "Preencha o telefone correctamente";
        document.register.telefone.focus();
       
        return false;
    } 
    if (document.register.morada.value == "" || register.morada.length < 10) {
        document.getElementById("texto").innerHTML = "Preencha o telefone correctamente";
        document.register.telefone.focus();
                alert("qqqqqqqqqq");
        return false;
    }
    
    return true;
}



}