 function  edit(valor) {

           if (valor == 2 || valor==3 || valor==4 || valor==5 || valor==6) {
        
                    document.getElementById('1').style.display = 'block';
                    document.getElementById('2').style.display = 'block';
                    document.getElementById('3').style.display = 'block';
                    document.getElementById('4').style.display = 'block';
                    document.getElementById('5').style.display = 'block';
                    document.getElementById('6').style.display = 'none';
                    document.getElementById('7').style.display = 'none';
                    document.getElementById('8').style.display = 'none';
                    document.getElementById('9').style.display = 'none';
                    document.getElementById('10').style.display = 'none';
                    document.getElementById('11').style.display = 'none';
                    document.getElementById('12').style.display = 'none';
                    document.getElementById('13').style.display = 'none';
                    document.getElementById('14').style.display = 'none';
                    document.getElementById('15').style.display = 'none';


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
                }

  }
 
 

 function validacao(perfil) {
     
     if(perfil==1){
     if (document.editar.nome.value == "" || editar.nome.value.length < 9 || IsNum(editar.nome.value)) {
        document.getElementById("texto").innerHTML = "Preencha o nome correctamente";
        document.editar.nome.focus();
        return false;
    }  
    if (document.editar.password.value == "" || editar.password.value.length < 4) {
        document.getElementById("texto").innerHTML = "Preencha o nome correctamente";
        document.editar.password.focus();
        return false;
    } 
     if (document.editar.morada.value == "" ) {
        document.getElementById("texto").innerHTML = "Preencha o nome correctamente";
        document.editar.morada.focus();
        return false;
    } 
    if (document.editar.telefone.value == "" || editar.telefone.value.length < 9||editar.telefone.value.length > 10|| !IsNum(editar.telefone.value) ) {
        document.getElementById("texto").innerHTML = "Preencha o nome correctamente";
        document.editar.telefone.focus();
        return false;
    } 
     if (document.editar.altura.value == "" || !IsNum(editar.altura.value)) {
        document.getElementById("texto").innerHTML = "Preencha a altura correctamente. Ex: 175";
        document.register.editar.focus();
        return false;
    }  
    if (document.editar.peso.value == "") {
        document.getElementById("texto").innerHTML = "Preencha o peso correctamente. Ex: 60,00";
        document.editar.peso.focus();
        return false;
    }
    if (document.editar.saltoVertical.value == "" || !IsNum(editar.saltoVertical.value) ) {
        document.getElementById("texto").innerHTML = "Preencha o Salto Vertical correctamente. Ex: 0,90";
        document.editar.saltoVertical.focus();
        return false;
    }
     if (document.editar.velocidadeDeslocamento.value == "" || !IsNum(editar.velocidadeDeslocamento.value) ) {
        document.getElementById("texto").innerHTML = "Preencha o Velocidade Deslocamento correctamente.";
        document.editar.velocidadeDeslocamento.focus();
        return false;
    }
    if (document.editar.alcanceAtaque.value == "" || !IsNum(editar.alcanceAtaque.value) ) {
        document.getElementById("texto").innerHTML = "Preencha o Alcance Ataque correctamente.";
        document.editar.alcanceAtaque.focus();
        return false;
    }
        if (document.editar.alcanceBloco.value == "" || !IsNum(editar.alcanceBloco.value) ) {
        document.getElementById("texto").innerHTML = "Preencha o Alcance Bloco correctamente.";
        document.editar.alcanceBloco.focus();
        return false;
    }
 
 
 
     }else {if (document.editar.nome.value == "" || editar.nome.value.length < 9 || IsNum(editar.nome.value)) {
        document.getElementById("texto").innerHTML = "Preencha o nome correctamente";
        document.editar.nome.focus();
        return false;
    }
    if (document.editar.password.value == "" || editar.password.value.length < 4) {
        document.getElementById("texto").innerHTML = "Preencha a password correctamente";
        document.editar.password.focus();
        return false;
    } 
     if (document.editar.morada.value == "" ) {
        document.getElementById("texto").innerHTML = "Preencha a morada nome correctamente";
        document.editar.morada.focus();
        return false;
    } 
    if (document.editar.telefone.value == "" || editar.telefone.value.length < 9||editar.telefone.value.length > 10|| !IsNum(editar.telefone.value) ) {
        document.getElementById("texto").innerHTML = "Preencha o nome correctamente";
        document.editar.telefone.focus();
        return false;
    }  
         
   
     
   }
 }
 
