 function  edit(valor) {
     
     
     alert("ssss"+valor)
     
     
 }
 
 function validacao(perfil) {

//   validacao para o perfil atleta 
 if(perfil==1){
    
    if (document.editar.nome.value == "" || editar.nome.value.length < 9 || IsNum(editar.nome.value)) {
        document.getElementById("texto").innerHTML = "Preencha o nome correctamente";
        document.register.nome.focus();
        return false;
    }
    if (document.register.password.value == "" || register.password.value.length < 4) {
        document.getElementById("texto").innerHTML = "Preencha a password correctamente";
        document.register.password.focus();
        return false;
    }
    if (document.register.telefone.value == "" || register.telefone.value.length < 9||register.telefone.value.length > 10|| !IsNum(register.telefone.value) ) {
        document.getElementById("texto").innerHTML = "Preencha o telefone correctamente";
        document.register.telefone.focus();       
        return false;
    } 
    if (document.register.morada.value == "") {
        document.getElementById("texto").innerHTML = "Preencha a morada correctamente";
        document.register.morada.focus();
        return false;
    }
    if (document.register.altura.value == "" || !IsNum(register.altura.value)) {
        document.getElementById("texto").innerHTML = "Preencha a altura correctamente. Ex: 175";
        document.register.altura.focus();
        return false;
    }  
    if (document.register.peso.value == "") {
        document.getElementById("texto").innerHTML = "Preencha o peso correctamente. Ex: 60,00";
        document.register.peso.focus();
        return false;
    }
    if (document.register.saltoVertical.value == "" || !IsNum(register.saltoVertical.value) ) {
        document.getElementById("texto").innerHTML = "Preencha o Salto Vertical correctamente. Ex: 0,90";
        document.register.saltoVertical.focus();
        return false;
    }
     if (document.register.velocidadeDeslocamento.value == "" || !IsNum(register.velocidadeDeslocamento.value) ) {
        document.getElementById("texto").innerHTML = "Preencha o Velocidade Deslocamento correctamente.";
        document.register.velocidadeDeslocamento.focus();
        return false;
    }
    if (document.register.alcanceAtaque.value == "" || !IsNum(register.alcanceAtaque.value) ) {
        document.getElementById("texto").innerHTML = "Preencha o Alcance Ataque correctamente.";
        document.register.alcanceAtaque.focus();
        return false;
    }
        if (document.register.alcanceBloco.value == "" || !IsNum(register.alcanceBloco.value) ) {
        document.getElementById("texto").innerHTML = "Preencha o Alcance Bloco correctamente.";
        document.register.alcanceBloco.focus();
        return false;
    }
       if (document.register.envergadura.value == "" || !IsNum(register.envergadura.value) ) {
        document.getElementById("texto").innerHTML = "Preencha o Envergadura correctamente.";
        document.register.envergadura.focus();
        return false;
    }
    
    
    
    
    
//    validaçao para os restantes perfis
 }else{ 
      if (document.editar.nome.value == "" || editar.nome.value.length < 9 || IsNum(editar.nome.value)) {
        document.getElementById("texto").innerHTML = "Preencha o nome correctamente";
        document.editar.nome.focus();
        return false;

    }
    if (document.editar.password.value == "" || editar.password.value.length < 4) {
        document.getElementById("texto").innerHTML = "Preencha a password correctamente";
        document.editar.password.focus();
        return false;

    }
    if (document.editar.telefone.value == "" || editar.telefone.value.length < 9||editar.telefone.value.length > 10|| !IsNum(register.telefone.value) ) {
        document.getElementById("texto").innerHTML = "Preencha o telefone correctamente";
        document.editar.telefone.focus();       
        return false;
    } 
    if (document.editar.morada.value == "") {
        document.getElementById("texto").innerHTML = "Preencha o morada correctamente";
        document.editar.morada.focus();
        return false;
    }
    
       
}}

