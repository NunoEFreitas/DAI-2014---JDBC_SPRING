 function  edit(valor) {
         alert(valor);

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

                }

  }
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 function validacao() {

    
     if (document.editar.nome.value == "" || editar.nome.value.length < 9 || IsNum(editar.nome.value)) {
        document.getElementById("texto").innerHTML = "Preencha o nome correctamente";
        document.editar.nome.focus();
        return false;

    }
    
 
       return false;
}

 
