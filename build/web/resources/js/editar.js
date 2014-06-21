 function  validacao(valor) {

           if (valor == 2 || valor==3 || valor==4 || valor==5 || valor==6) {
       
             
     if (document.editar.nome.value == "" || IsNum(editar.nome.value)) {
         document.getElementById("texto").innerHTML = "Preencha o nome correctamente";
         document.editar.nome.focus();
         return false;

    }
    if (document.editar.password.value == "" || editar.password.value.length < 4) {
        document.getElementById("texto").innerHTML = "Preencha a password correctamente";
        document.editar.password.focus();
        return false;

    }
     if (document.editar.morada.value == "") {
        document.getElementById("texto").innerHTML = "Preencha o morada correctamente";
        document.editar.morada.focus();
        return false;
    }
    if (document.editar.telefone.value == "" || editar.telefone.value.length < 9||editar.telefone.value.length > 10|| !IsNum(register.telefone.value)) {
        document.getElementById("texto").innerHTML = "Preencha o telefone correctamente";
        document.editar.telefone.focus();       
        return false;
    } 
   
   

                } 

                else {
                 
                          
        if (document.editar.nome.value == "" || IsNum(editar.nome.value)) {
            document.getElementById("texto").innerHTML = "Preencha o nome correctamente";
            document.editar.nome.focus();
            return false;
        }

        if (document.editar.password.value == "" || editar.password.value.length < 4) {
            document.getElementById("texto").innerHTML = "Preencha o password correctamente";
            document.editar.password.focus();
            return false;
        }
        if (document.editar.morada.value == "") {
            document.getElementById("texto").innerHTML = "Preencha o morada correctamente";
            document.editar.morada.focus();
            return false;
        }
        if (document.editar.telefone.value == "" || editar.telefone.value.length < 9 || editar.telefone.value.length > 10 || !IsNum(editar.telefone.value)) {
            document.getElementById("texto").innerHTML = "Preencha o telefone correctamente";
            document.editar.telefone.focus();
            return false;
        }
        if (document.editar.altura.value == "" || !IsNum(editar.altura.value)) {
            document.getElementById("texto").innerHTML = "Preencha a altura correctamente. Ex: 175";
            document.editar.altura.focus();
            return false;
        }
        if (document.editar.peso.value == "") {
            document.getElementById("texto").innerHTML = "Preencha o peso correctamente. Ex: 60";
            document.editar.peso.focus();
            return false;
        }
        if (document.editar.saltoVertical.value == "" || !IsNum(editar.saltoVertical.value)) {
            document.getElementById("texto").innerHTML = "Preencha o Salto Vertical correctamente. Ex: 90";
            document.editar.saltoVertical.focus();
            return false;
        }
        if (document.editar.velocidadeDeslocamento.value == "" || !IsNum(editar.velocidadeDeslocamento.value)) {
            document.getElementById("texto").innerHTML = "Preencha o Velocidade Deslocamento correctamente.";
            document.editar.velocidadeDeslocamento.focus();
            return false;
        }
        if (document.editar.alcanceAtaque.value == "" || !IsNum(editar.alcanceAtaque.value)) {
            document.getElementById("texto").innerHTML = "Preencha o Alcance Ataque correctamente.";
            document.editar.alcanceAtaque.focus();
            return false;
        }
        if (document.editar.alcanceBloco.value == "" || !IsNum(editar.alcanceBloco.value)) {
            document.getElementById("texto").innerHTML = "Preencha o Alcance Bloco correctamente.";
            document.editar.alcanceBloco.focus();
            return false;
        }
        if (document.editar.envergadura.value == "" || !IsNum(editar.envergadura.value)|| editar.envergadura.value == "0") {
            document.getElementById("texto").innerHTML = "Preencha o Envergadura correctamente.";
            document.editar.envergadura.focus();
            return false;
        }
     
    }

}



function IsNum(v) {
    var ValidChars = "0123456789";
    var IsNumber = true;
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
