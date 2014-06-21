<!DOCTYPE html>
<!-- Website template by freewebsitetemplates.com -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
    <link rel="stylesheet" href="style.css" type="text/css" media="screen, projection" />
    <head>
        <meta charset="UTF-8">
        <Meta  http-equiv = "X-UA-Compatible"  content = "IE = borda" >
        <title>Sistema de Informação - SCB</title>
        <script src="<c:url value="/resources/js/jquery-1.11.1.js" />"></script>
        <script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
        <script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
        
        <!--
        <link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.2/jquery.mobile-1.4.2.min.css">
        <script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
        <script src="http://code.jquery.com/mobile/1.4.2/jquery.mobile-1.4.2.min.js"></script>
        !-->
        <link href="<c:url value ="/resources/css/styleCampo.css"/>" rel="stylesheet" type="text/css">
        
          <style type="text/css">
    #popUpDivAtaques{
    z-index: 100;
    position: absolute;
    background-color: rgba(123, 123,123, 0.8);
    display: none;
    top: 40%;
    left: 40%;
    width: 20%;
    height: 30%;
}
#popupSelectAtaques{
    z-index: 1000;
    position: absolute;
    top: 130px;
    left: 50px;
}

#popUpDivDefesas{
    z-index: 100;
    position: absolute;
    background-color: rgba(123, 123,123, 0.8);
    display: none;
    top: 40%;
    left: 40%;
    width: 20%;
    height: 30%;
}
#popupSelectDefesas{
    z-index: 1000;
    position: absolute;
    top: 130px;
    left: 50px;
}

#popUpDivServicos{
    z-index: 100;
    position: absolute;
    background-color: rgba(123, 123,123, 0.8);
    display: none;
    top: 40%;
    left: 40%;
    width: 20%;
    height: 30%;
}
#popupSelectServicos{
    z-index: 1000;
    position: absolute;
    top: 130px;
    left: 50px;
}



  </style>
  


<script type="text/javascript">
 
$(window).load(function(){
$("#baseDiv").click(function(e) {
    $("#popUpDiv").show();
});
$("#popUpDiv input[name='class']").click(function(e) {
	$("#baseDiv").html($('input:radio[name=class]:checked').val() + ' clicked. Click again to change.');
    $("#popUpDiv").hide();
});
});

$(window).load(function(){
$("#popUpDivServicos input[name='class']").click(function(e) {
    $("#popUpDivServicos").hide();
    //$("#classificacao").html($('input:radio[name=class]:checked').val());
    classificacao = ($('input:radio[name=class]:checked').val());
    alert(classificacao);
    insereServico(rotacaoP,jogadorP,origem,rotacaoEA,jogadorEA,destino,classificacao);
});
});

</script>
    </head>
    <!--
      <link rel="stylesheet" href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
    <script src="//code.jquery.com/jquery-1.10.2.js"></script>
    <script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
    <link rel="stylesheet" href="/resources/demos/style.css"> !-->

    <body>
        <div id="top">
            <div id="rotacaoCampo1">
                <h3> Rotação Campo1: <label id="r">1<label> </h3>            
                            </div>

                            <div id="scoreboard">

                                <span id="casa">
                                    <span id="pontoCasa">
                                        <label>Casa</label>
                                        <input type="button" class="button" id="btncasa" value="0" />
                                    </span>
                                    <span id ="setCasa">
                                        <label>Set</label>           
                                        <input type="button" class="button" id="btnsetcasa" value="0" />
                                    </span>
                                </span>
                                <span id="fora">
                                    <span id="pontoFora">
                                        <label>Fora</label>
                                        <input type="button" class="button" id="btnfora" value="0"/>
                                    </span>
                                    <span id ="setFora">
                                        <label>Set</label>
                                        <input type="button" class="button" id="btnsetfora" value="0" />
                                    </span>
                                </span>
                            </div>

                            <div id="rotacaoCampo2" >         
                                <h3> Rotação Campo2: <label id="r2">1<label> </h3>
                                            </div>

                                            

                                            
                                            <div id="mid">

                                                <div id="campo">
                                                    <div class="elementServiceLeft" id="pos19" name="pos19" > 19 </div>
                                                    <div class="elementOutLeft" id="pos13" name="pos13" > 13 </div>    
                                                    <div class="elementTopLeft" id="pos14" name="pos14" > 14 </div>    
                                                    <div class="elementBotLeft" id="pos15" name="pos15" > 15 </div>   
                                                    <div class="element1" id="pos1" name="pos1" ><label id="p1"> 1 </label> <br> <label id="l1"> Jogador </label> <br> <label id="i1"> ID </label> </div>
                                                    <div class="element2" id="pos2" name="pos2" ><label id="p2"> 2 </label> <br> <label id="l2"> Jogador </label> <br> <label id="i2"> ID </label> </div>
                                                    <div class="element3" id="pos3" name="pos3" ><label id="p3"> 3 </label> <br> <label id="l3"> Jogador </label> <br> <label id="i3"> ID </label> </div>
                                                    <div class="element6" id="pos6" name="pos6" ><label id="p6"> 6 </label> <br> <label id="l6"> Jogador </label> <br> <label id="i6"> ID </label> </div>
                                                    <div class="element4" id="pos4" name="pos4" ><label id="p4"> 4 </label> <br> <label id="l4"> Jogador </label> <br> <label id="i4"> ID </label> </div>
                                                    <div class="element5" id="pos5" name="pos5" ><label id="p5"> 5 </label> <br> <label id="l5"> Jogador </label> <br> <label id="i5"> ID </label></div>
                                                    <div class="elementLinha" id="posLinha" name="linha" > L </div>
                                                    <div class="element7" id="pos7" name="pos7" ><label id="p7">7</label> <br> <label id="l7"> ADV 7 </label> <br> <label id="i7"> ID </label> </div>
                                                    <div class="element12" id="pos12" name="pos12" ><label id="p12">12</label> <br> <label id="l12"> ADV 12 </label> <br> <label id="i12"> ID </label></div>
                                                    <div class="element11" id="pos11" name="pos11" ><label id="p11">11</label> <br> <label id="l11"> ADV 11</label> <br> <label id="i11"> ID </label></div>
                                                    <div class="element10" id="pos10" name="pos10" ><label id="p10">10</label> <br> <label id="l10"> ADV 10</label> <br> <label id="i10"> ID </label></div>
                                                    <div class="element9" id="pos9" name="pos9" ><label id="p9">9</label> <br> <label id="l9"> ADV 9</label> <br> <label id="i9"> ID </label></div>
                                                    <div class="element8" id="pos8" name="pos8" ><label id="p8">8</label> <br> <label id="l8"> ADV 8</label> <br> <label id="i8"> ID </label></div>
                                                    <div class="elementTopRight" id="pos16" name="pos16" > 16 </div>
                                                    <div class="elementBotRight" id="pos17" name="pos17" > 17 </div>
                                                    <div class="elementOutRight" id="pos18" name="pos18" > 18 </div>  
                                                    <div class="elementServiceRight" id="pos20" name="pos20" > 20 </div> 

                                                </div>
                                                    
                                                
                                                
                                                <input type="submit" onClick ="calc()" value="Calc" />
                                                
                                                
                                                <div id="atribui">
                                                    </label> Campo1 </label>
                                                    <br>
                                                    <label> Zona 1 </label>
                                                    <select id="zona1" onchange="atribui1()"></select>
                                                    <br>
                                                    <label> Zona 2 </label>
                                                    <select id="zona2" onchange="atribui2()"></select>
                                                    <br>
                                                    <label> Zona 3 </label>
                                                    <select id="zona3" onchange="atribui3()"></select>
                                                    <br>
                                                    <label> Zona 4 </label>
                                                    <select id="zona4" onchange="atribui4()"></select>
                                                    <br>
                                                    <label> Zona 5 </label>
                                                    <select id="zona5" onchange="atribui5()"></select>
                                                    <br>
                                                    <label> Zona 6 </label>
                                                    <select id="zona6"onchange="atribui6()"></select>
                                                    <br>
                                                </div>

                                                <div id="atribui2">
                                                    </label> Campo2 </label>
                                                    <br>
                                                    <label> Zona 7 </label>
                                                    <select id="zona7" onchange="atribui7()"></select>
                                                    <br>
                                                    <label> Zona 8 </label>
                                                    <select id="zona8" onchange="atribui8()"></select>
                                                    <br>
                                                    <label> Zona 9 </label>
                                                    <select id="zona9" onchange="atribui9()"></select>
                                                    <br>
                                                    <label> Zona 10 </label>
                                                    <select id="zona10" onchange="atribui10()"></select>
                                                    <br>
                                                    <label> Zona 11 </label>
                                                    <select id="zona11" onchange="atribui11()"></select>
                                                    <br>
                                                    <label> Zona 12 </label>
                                                    <select id="zona12" onchange="atribui12()"></select>
                                                    <br>
                                                </div>

                                                <div id="textboxes">
                                                    <textarea readonly class="relato"id="jogadasTxt"rows = "5" cols ="30"></textarea>
                                                </div>

                                            </div>

                                            <div id="btnestat">
                                                <button onclick="getOpcao()">Try it</button>
                                                <a href="estatisticas"><h2>Visualizar estatísticas</h2></a>
                                                </a></div>

 

    


<div id="popUpDivDefesas" name="defesas">
    <h3> Defesas</h3>
        <input type="radio" name="class" id="radio-mini-1" value=0  />
    	<label for="class">Erro</label>
        <br>
	<input type="radio" name="class" id="radio-mini-2" value=1  />
    	<label for="class">1</label>
    	<br>
    	<input type="radio" name="class" id="radio-mini-3" value=2  />
    	<label for="class">2</label>
		<br>
    	<input type="radio" name="class" id="radio-mini-3" value=3  />
    	<label for="class">3</label>
		<br>
    	<input type="radio" name="class" id="radio-mini-3" value=4  />
    	<label for="class">4</label>
</div>
            
<div id="popUpDivServicos" name="servico">
    <h3> Servico</h3>
        <input type="radio" name="class" id="radio-mini-1" value=0  />
    	<label for="class">Erro</label>
        <br>
	<input type="radio" name="class" id="radio-mini-2" value=1  />
    	<label for="class">1</label>
    	<br>
    	<input type="radio" name="class" id="radio-mini-3" value=2  />
    	<label for="class">2</label>
		<br>
    	<input type="radio" name="class" id="radio-mini-3" value=3  />
    	<label for="class">3</label>
		<br>
    	<input type="radio" name="class" id="radio-mini-3" value=4  />
    	<label for="class">4</label>
</div>
            
<div id="popUpDivAtaques" name="ataques">
    <h3> Ataques</h3>
        <input type="radio" name="class" id="radio-mini-1" value=0  />
    	<label for="class">Erro</label>
        <br>
	<input type="radio" name="class" id="radio-mini-2" value=1  />
    	<label for="class">1</label>
    	<br>
    	<input type="radio" name="class" id="radio-mini-3" value=2  />
    	<label for="class">2</label>
		<br>
    	<input type="radio" name="class" id="radio-mini-3" value=3  />
    	<label for="class">3</label>
		<br>
    	<input type="radio" name="class" id="radio-mini-3" value=4  />
    	<label for="class">4</label>
</div>
             
            <label id="classificacao" >Classificacao</label>            
                                            
<script>





                                                        var campo1 = [1, 2, 3, 4, 5, 6];
                                                        var campo2 = [7, 8, 9, 10, 11, 12];
                                                        var fora1 = [13, 14, 15];
                                                        var fora2 = [16, 17, 18];
                                                        var servico1 = [19];
                                                        var servico2 = [20];
                                                        var ar = new Array();
                                                        var jogada = new Array();
                                                        var classificacao;
                                                        var rotacaoP;
                                                        var rotacaoEA;
                                                        var jogadorP;
                                                        var jogadorEA;
                                                        var origem;
                                                        var destino;
                                                        
                                                        function controlo(){
                                                           
                                                            var nJogadas = ar.length;
                                                            var posicaoUjogada = parseInt(ar[nJogadas - 1][2]);
                                                            
                                                            if(nJogadas>1){
                                                            var posicaoPjogada = parseInt(ar[nJogadas - 2][2]);
                                                            }
                                                            
                                                        
                                                            if (nJogadas == 1) {
                                                                if (($.inArray(posicaoUjogada, servico1) >= 0) || ($.inArray(posicaoUjogada, servico2) >= 0)) {
                                                                    $('#jogadasTxt').html('servico');
                                                                } else {
                                                                    $('#jogadasTxt').html('Atenção todas as jogadas tem de comecar com um servico');
                                                                    ar.length = 0;
                                                                }
                                                            }
                                                            if (nJogadas == 2) {
                                                                if (($.inArray(posicaoUjogada, campo1) >= 0) || ($.inArray(posicaoUjogada, campo2) >= 0)) {
                                                                    $('#jogadasTxt').html('servico para a zona' + posicaoUjogada);
                                                                    if(posicaoPjogada==19){
                                                                        rotacaoP = ar[nJogadas - 2] [0];
                                                                        rotacaoEA = ar[nJogadas - 1] [0];
                                                                        jogadorP = ar[nJogadas -2] [1];
                                                                        jogadorEA = ar[nJogadas -1] [1];
                                                                        origem = ar[nJogadas -2] [2];
                                                                        destino = ar[nJogadas -1] [2];
                                                                        $("#popUpDivServicos").show();
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        
                                                                    } else {
                                                                        rotacaoP = ar[nJogadas - 1] [0];
                                                                        rotacaoEA = ar[nJogadas - 2] [0];
                                                                        jogadorP = ar[nJogadas - 1] [1];
                                                                        jogadorEA = ar[nJogadas - 2] [1];
                                                                        origem = ar[nJogadas - 1] [2];
                                                                        destino = ar[nJogadas - 2] [2];
                                                                        classificacao = 0;
                                                                        insereServico(rotacaoP,jogadorP,origem,rotacaoEA,jogadorEA,destino,classificacao);
                                                                        insereDefesa(rotacaoP,jogadorP,destino,rotacaoEA,jogadorEA,origem,classificacao);
                                                                      
                                                                    }
                                                                } else {
                                                                    $('#jogadasTxt').html('servico para a fora');

                                                                }
                                                            }
                                                            if(nJogadas > 2){
                                                  
                                                                if (($.inArray(posicaoUjogada, campo2) >= 0) && ($.inArray(posicaoPjogada, campo1) >= 0)) {
                                                                    rotacaoP = ar[nJogadas - 2] [0];
                                                                        rotacaoEA = ar[nJogadas - 1] [0];
                                                                        jogadorP = ar[nJogadas -2] [1];
                                                                        jogadorEA = ar[nJogadas -1] [1];
                                                                        origem = ar[nJogadas -2] [2];
                                                                        destino = ar[nJogadas -1] [2];
                                                                        insereAtaque(rotacaoP,jogadorP,origem,rotacaoEA,jogadorEA,destino);
                                                            } else {
                                                                if(($.inArray(posicaoUjogada, campo1) >= 0) && ($.inArray(posicaoPjogada, campo2) >= 0)){
                                                                    rotacaoP = ar[nJogadas - 1] [0];
                                                                    rotacaoEA = ar[nJogadas - 2] [0];
                                                                    jogadorP = ar[nJogadas - 1] [1];
                                                                    jogadorEA = ar[nJogadas - 2] [1];
                                                                    origem = ar[nJogadas - 1] [2];
                                                                    destino = ar[nJogadas - 2] [2];
                                                                    insereDefesa(rotacaoP,jogadorP,destino,rotacaoEA,jogadorEA,origem);
                                                                }
                                                            }
                                                            
                                                            
                                                        }
                                                    }

                                                        function insereServico(rotacaoP, jogadorP, origem, rotacaoEA,jogadorEA,destino,classificacao) {
                                                           alert(classificacao);
                                                            
                                                            $.ajax({
                                                                url: '${pageContext.request.contextPath}/servico',
                                                                data: {"rotacaoP": rotacaoP,  "jogadorP": jogadorP, "origem": origem, "rotacaoEA": rotacaoEA, "jogadorEA": jogadorEA, "destino": destino, "classificacao": classificacao },
                                                                success: function(result) {
                                                                    alert(result);
                                                                }
                                                            });
                                                        }
                                                        
                                                        function insereDefesa(rotacaoP, jogadorP, origem, rotacaoEA,jogadorEA,destino) {
                                                           
                                                            
                                                            $.ajax({
                                                                url: '${pageContext.request.contextPath}/defesa',
                                                                data: {"rotacaoP": rotacaoP,  "jogadorP": jogadorP, "origem": origem, "rotacaoEA": rotacaoEA, "jogadorEA": jogadorEA, "destino": destino },
                                                                success: function(result) {
                                                                    alert(result);
                                                                }
                                                            });
                                                        }
                                                        
                                                        function insereAtaque(rotacaoP, jogadorP, origem, rotacaoEA,jogadorEA,destino) {
                                                           
                                                            
                                                            $.ajax({
                                                                url: '${pageContext.request.contextPath}/ataque',
                                                                data: {"rotacaoP": rotacaoP,  "jogadorP": jogadorP, "origem": origem, "rotacaoEA": rotacaoEA, "jogadorEA": jogadorEA, "destino": destino },
                                                                success: function(result) {
                                                                    alert(result);
                                                                }
                                                            });
                                                        }
                                                        
                                                        
                                                        
                                                 


                                                        function rotacaoCampo1() {
                                                            var fluxo = new Array();
                                                            fluxo.push(document.getElementById('l1').innerHTML);
                                                            fluxo.push(document.getElementById('l6').innerHTML);
                                                            fluxo.push(document.getElementById('l5').innerHTML);
                                                            fluxo.push(document.getElementById('l4').innerHTML);
                                                            fluxo.push(document.getElementById('l3').innerHTML);
                                                            fluxo.push(document.getElementById('l2').innerHTML);
                                                            var r = fluxo.pop();
                                                            fluxo.unshift(r);
                                                            document.getElementById('l1').innerHTML = fluxo[0];
                                                            document.getElementById('l6').innerHTML = fluxo[1];
                                                            document.getElementById('l5').innerHTML = fluxo[2];
                                                            document.getElementById('l4').innerHTML = fluxo[3];
                                                            document.getElementById('l3').innerHTML = fluxo[4];
                                                            document.getElementById('l2').innerHTML = fluxo[5];
                                                            
                                                            
                                                            var fluxoID = new Array();
                                                            fluxoID.push(document.getElementById('i1').innerHTML);
                                                            fluxoID.push(document.getElementById('i6').innerHTML);
                                                            fluxoID.push(document.getElementById('i5').innerHTML);
                                                            fluxoID.push(document.getElementById('i4').innerHTML);
                                                            fluxoID.push(document.getElementById('i3').innerHTML);
                                                            fluxoID.push(document.getElementById('i2').innerHTML);
                                                            var a = fluxoID.pop();
                                                            fluxoID.unshift(a);
                                                            document.getElementById('i1').innerHTML = fluxoID[0];
                                                            document.getElementById('i6').innerHTML = fluxoID[1];
                                                            document.getElementById('i5').innerHTML = fluxoID[2];
                                                            document.getElementById('i4').innerHTML = fluxoID[3];
                                                            document.getElementById('i3').innerHTML = fluxoID[4];
                                                            document.getElementById('i2').innerHTML = fluxoID[5];
                                                            
                                                            var rotacao = parseInt($("#r").text());
                                                            alert(rotacao);
                                                            if (rotacao < 6) {
                                                                document.getElementById('r').innerHTML = rotacao + 1;
                                                            } else {
                                                                document.getElementById('r').innerHTML = 1;
                                                            }

                                                        }

                                                        function rotacaoCampo2() {
                                                            var fluxo = new Array();
                                                            fluxo.push(document.getElementById('l7').innerHTML);
                                                            fluxo.push(document.getElementById('l12').innerHTML);
                                                            fluxo.push(document.getElementById('l11').innerHTML);
                                                            fluxo.push(document.getElementById('l10').innerHTML);
                                                            fluxo.push(document.getElementById('l9').innerHTML);
                                                            fluxo.push(document.getElementById('l8').innerHTML);
                                                            var r = fluxo.pop();
                                                            fluxo.unshift(r);
                                                            document.getElementById('l7').innerHTML = fluxo[0];
                                                            document.getElementById('l12').innerHTML = fluxo[1];
                                                            document.getElementById('l11').innerHTML = fluxo[2];
                                                            document.getElementById('l10').innerHTML = fluxo[3];
                                                            document.getElementById('l9').innerHTML = fluxo[4];
                                                            document.getElementById('l8').innerHTML = fluxo[5];
                                                            
                                                            
                                                            var fluxoID = new Array();
                                                            fluxoID.push(document.getElementById('i7').innerHTML);
                                                            fluxoID.push(document.getElementById('i12').innerHTML);
                                                            fluxoID.push(document.getElementById('i11').innerHTML);
                                                            fluxoID.push(document.getElementById('i10').innerHTML);
                                                            fluxoID.push(document.getElementById('i9').innerHTML);
                                                            fluxoID.push(document.getElementById('i8').innerHTML);
                                                            var a = fluxoID.pop();
                                                            fluxoID.unshift(a);
                                                            document.getElementById('i7').innerHTML = fluxoID[0];
                                                            document.getElementById('i12').innerHTML = fluxoID[1];
                                                            document.getElementById('i11').innerHTML = fluxoID[2];
                                                            document.getElementById('i10').innerHTML = fluxoID[3];
                                                            document.getElementById('i9').innerHTML = fluxoID[4];
                                                            document.getElementById('i8').innerHTML = fluxoID[5];

                                                            var rotacao = parseInt($("#r2").text());
                                                            if (rotacao < 12) {
                                                                document.getElementById('r2').innerHTML = rotacao + 1;
                                                            } else {
                                                                document.getElementById('r2').innerHTML = 7;
                                                            }

                                                        }
  
                                                        var sel1 = document.getElementById('zona1');
                                                        <c:forEach items='${map.lut}' var='lut'>
                                                            var opt1 = document.createElement('option');
                                                            opt1.innerHTML = "<c:out value ="${lut.nome}"></c:out>";
                                                            opt1.value = <c:out value ="${lut.idUtilizador}"></c:out>;
                                                            sel1.appendChild(opt1);
                                                        </c:forEach>

                                                        var sel2 = document.getElementById('zona2');
                                                        <c:forEach items='${map.lut}' var='lut'>
                                                            var opt2 = document.createElement('option');
                                                            opt2.innerHTML = "<c:out value ="${lut.nome}"></c:out>";
                                                            opt2.value = <c:out value ="${lut.idUtilizador}"></c:out>;
                                                            sel2.appendChild(opt2);
                                                        </c:forEach>

                                                        var sel3 = document.getElementById('zona3');
                                                        <c:forEach items='${map.lut}' var='lut'>
                                                            var opt3 = document.createElement('option');
                                                            opt3.innerHTML = "<c:out value ="${lut.nome}"></c:out>";
                                                            opt3.value = <c:out value ="${lut.idUtilizador}"></c:out>;
                                                            sel3.appendChild(opt3);
                                                        </c:forEach>

                                                        var sel4 = document.getElementById('zona4');
                                                        <c:forEach items='${map.lut}' var='lut'>
                                                            var opt4 = document.createElement('option');
                                                            opt4.innerHTML = "<c:out value ="${lut.nome}"></c:out>";
                                                            opt4.value = <c:out value ="${lut.idUtilizador}"></c:out>;
                                                            sel4.appendChild(opt4);
                                                        </c:forEach>

                                                        var sel5 = document.getElementById('zona5');
                                                        <c:forEach items='${map.lut}' var='lut'>
                                                            var opt5 = document.createElement('option');
                                                            opt5.innerHTML = "<c:out value ="${lut.nome}"></c:out>";
                                                            opt5.value = <c:out value ="${lut.idUtilizador}"></c:out>;
                                                            sel5.appendChild(opt5);
                                                        </c:forEach>

                                                        var sel6 = document.getElementById('zona6');
                                                        <c:forEach items='${map.lut}' var='lut'>
                                                            var opt6 = document.createElement('option');
                                                            opt6.innerHTML = "<c:out value ="${lut.nome}"></c:out>";
                                                            opt6.value = <c:out value ="${lut.idUtilizador}"></c:out>;
                                                            sel6.appendChild(opt6);
                                                         </c:forEach>

                                                        function jog() {
                                                            alert(jogadores);
                                                        }

                                                        function atribui1() {
                                                            var myselect = document.getElementById('zona1');
                                                            document.getElementById('i1').innerHTML = myselect.options[myselect.selectedIndex].value;
                                                            document.getElementById('l1').innerHTML = myselect.options[myselect.selectedIndex].text;
                                                  
                                                        }

                                                        function atribui2() {
                                                            var myselect = document.getElementById('zona2');
                                                            document.getElementById('i2').innerHTML = myselect.options[myselect.selectedIndex].value;
                                                            document.getElementById('l2').innerHTML = myselect.options[myselect.selectedIndex].text;
                                                        }

                                                        function atribui3() {
                                                            var myselect = document.getElementById('zona3');
                                                            document.getElementById('i3').innerHTML = myselect.options[myselect.selectedIndex].value;
                                                            document.getElementById('l3').innerHTML = myselect.options[myselect.selectedIndex].text;
                                                        }

                                                        function atribui4() {
                                                            var myselect = document.getElementById('zona4');
                                                            document.getElementById('i4').innerHTML = myselect.options[myselect.selectedIndex].value;
                                                            document.getElementById('l4').innerHTML = myselect.options[myselect.selectedIndex].text;
                                                        }

                                                        function atribui5() {
                                                            var myselect = document.getElementById('zona5');
                                                            document.getElementById('i5').innerHTML = myselect.options[myselect.selectedIndex].value;
                                                            document.getElementById('l5').innerHTML = myselect.options[myselect.selectedIndex].text;
                                                        }

                                                        function atribui6() {
                                                            var myselect = document.getElementById('zona6');
                                                            document.getElementById('i6').innerHTML = myselect.options[myselect.selectedIndex].value;
                                                            document.getElementById('l6').innerHTML = myselect.options[myselect.selectedIndex].text;
                                                        }
                                                        
                                                        
                                                        var sel7 = document.getElementById('zona7');
                                                        <c:forEach items='${map.ljea}' var='ljea'>
                                                            var opt7 = document.createElement('option');
                                                            opt7.innerHTML = "<c:out value ="${ljea.nome}"></c:out>";
                                                            opt7.value = <c:out value ="${ljea.idJEA}"></c:out>;
                                                            sel7.appendChild(opt7);
                                                        </c:forEach>

                                                        var sel8 = document.getElementById('zona8');
                                                        <c:forEach items='${map.ljea}' var='ljea'>
                                                            var opt8 = document.createElement('option');
                                                            opt8.innerHTML = "<c:out value ="${ljea.nome}"></c:out>";
                                                            opt8.value = <c:out value ="${ljea.idJEA}"></c:out>;
                                                            sel8.appendChild(opt8);
                                                        </c:forEach>

                                                        var sel9 = document.getElementById('zona9');
                                                        <c:forEach items='${map.ljea}' var='ljea'>
                                                            var opt9 = document.createElement('option');
                                                            opt9.innerHTML = "<c:out value ="${ljea.nome}"></c:out>";
                                                            opt9.value = <c:out value ="${ljea.idJEA}"></c:out>;
                                                            sel9.appendChild(opt9);
                                                        </c:forEach>

                                                        var sel10 = document.getElementById('zona10');
                                                        <c:forEach items='${map.ljea}' var='ljea'>
                                                            var opt10 = document.createElement('option');
                                                            opt10.innerHTML = "<c:out value ="${ljea.nome}"></c:out>";
                                                            opt10.value = <c:out value ="${ljea.idJEA}"></c:out>;
                                                            sel10.appendChild(opt10);
                                                        </c:forEach>

                                                        var sel11 = document.getElementById('zona11');
                                                        <c:forEach items='${map.ljea}' var='ljea'>
                                                            var opt11 = document.createElement('option');
                                                            opt11.innerHTML = "<c:out value ="${ljea.nome}"></c:out>";
                                                            opt11.value = <c:out value ="${ljea.idJEA}"></c:out>;
                                                            sel11.appendChild(opt11);
                                                        </c:forEach>

                                                        var sel12 = document.getElementById('zona12');
                                                        <c:forEach items='${map.ljea}' var='ljea'>
                                                            var opt12 = document.createElement('option');
                                                            opt12.innerHTML = "<c:out value ="${ljea.nome}"></c:out>";
                                                            opt12.value = <c:out value ="${ljea.idJEA}"></c:out>;
                                                            sel12.appendChild(opt12);
                                                         </c:forEach>
                                                             
                                                             
                                                        function atribui7() {
                                                            var myselect = document.getElementById('zona7');
                                                            document.getElementById('i7').innerHTML = myselect.options[myselect.selectedIndex].value;
                                                            document.getElementById('l7').innerHTML = myselect.options[myselect.selectedIndex].text;
                                                        }

                                                        function atribui8() {
                                                            var myselect = document.getElementById('zona8');
                                                            document.getElementById('i8').innerHTML = myselect.options[myselect.selectedIndex].value;
                                                            document.getElementById('l8').innerHTML = myselect.options[myselect.selectedIndex].text;
                                                        }

                                                        function atribui9() {
                                                            var myselect = document.getElementById('zona9');
                                                            document.getElementById('i9').innerHTML = myselect.options[myselect.selectedIndex].value;
                                                            document.getElementById('l9').innerHTML = myselect.options[myselect.selectedIndex].text;
                                                        }

                                                        function atribui10() {
                                                            var myselect = document.getElementById('zona10');
                                                            document.getElementById('i10').innerHTML = myselect.options[myselect.selectedIndex].value;
                                                            document.getElementById('l10').innerHTML = myselect.options[myselect.selectedIndex].text;
                                                        }

                                                        function atribui11() {
                                                            var myselect = document.getElementById('zona11');
                                                            document.getElementById('i11').innerHTML = myselect.options[myselect.selectedIndex].value;
                                                            document.getElementById('l11').innerHTML = myselect.options[myselect.selectedIndex].text;
                                                        }

                                                        function atribui12() {
                                                            var myselect = document.getElementById('zona12');
                                                            document.getElementById('i12').innerHTML = myselect.options[myselect.selectedIndex].value;
                                                            document.getElementById('l12').innerHTML = myselect.options[myselect.selectedIndex].text;
                                                        }     

                                                       

                                                        $(document).ready(function() {
                                                            $('#pos1').click(function(e) {
                                                                var rotacao = $("#r").text();
                                                                var jogador = $("#i1").text();
                                                                var posicao = $("#p1").text();
                                                                jogada = [rotacao, jogador, posicao];
                                                          
                                                                ar.push(jogada);
                                                                controlo();

                                                            });

                                                            $('#pos2').click(function(e) {
                                                                var rotacao = $("#r").text();
                                                                var jogador = $("#i2").text();
                                                                var posicao = $("#p2").text();
                                                                jogada = [rotacao, jogador, posicao];
                                                                alert(jogada);
                                                                ar.push(jogada);
                                                                controlo();
                                                            });
                                                            $('#pos3').click(function(e) {
                                                                var rotacao = $("#r").text();
                                                                var jogador = $("#i3").text();
                                                                var posicao = $("#p3").text();
                                                                jogada = [rotacao, jogador, posicao];
                                                           
                                                                ar.push(jogada);
                                                                controlo();

                                                            });
                                                            $('#pos4').click(function(e) {
                                                                var rotacao = $("#r").text();
                                                                var jogador = $("#i4").text();
                                                                var posicao = $("#p4").text();
                                                                jogada = [rotacao, jogador, posicao];
                                                           
                                                                ar.push(jogada);
                                                                controlo();

                                                            });
                                                            $('#pos5').click(function(e) {
                                                                var rotacao = $("#r").text();
                                                                var jogador = $("#i5").text();
                                                                var posicao = $("#p5").text();
                                                                jogada = [rotacao, jogador, posicao];
                                                             
                                                                ar.push(jogada);
                                                                controlo();

                                                            });
                                                            $('#pos6').click(function(e) {
                                                                var rotacao = $("#r").text();
                                                                var jogador = $("#i6").text();
                                                                var posicao = $("#p6").text();
                                                                jogada = [rotacao, jogador, posicao];
                                                               
                                                                ar.push(jogada);
                                                                controlo();

                                                            });
                                                            $('#pos7').click(function(e) {
                                                                var rotacao = $("#r2").text();
                                                                var jogador = $("#i7").text();
                                                                var posicao = $("#p7").text();
                                                                jogada = [rotacao, jogador, posicao];
                                                                
                                                                ar.push(jogada);
                                                                controlo();

                                                            });
                                                            $('#pos8').click(function(e) {
                                                                var rotacao = $("#r2").text();
                                                                var jogador = $("#i8").text();
                                                                var posicao = $("#p8").text();
                                                                jogada = [rotacao, jogador, posicao];
                                                               
                                                                ar.push(jogada);
                                                                controlo();

                                                            });
                                                            $('#pos9').click(function(e) {
                                                                var rotacao = $("#r2").text();
                                                                var jogador = $("#l9").text();
                                                                var posicao = $("#p9").text();
                                                                jogada = [rotacao, jogador, posicao];
                                                                
                                                                ar.push(jogada);
                                                                controlo();
                                                            });
                                                            $('#pos10').click(function(e) {
                                                                var rotacao = $("#r2").text();
                                                                var jogador = $("#l10").text();
                                                                var posicao = $("#p10").text();
                                                                jogada = [rotacao, jogador, posicao];
                                                              
                                                                ar.push(jogada);
                                                                controlo();
                                                            });
                                                            $('#pos11').click(function(e) {
                                                                var rotacao = $("#r2").text();
                                                                var jogador = $("#l11").text();
                                                                var posicao = $("#p11").text();
                                                                jogada = [rotacao, jogador, posicao];
                                                                
                                                                ar.push(jogada);
                                                                controlo();
                                                            });
                                                            $('#pos12').click(function(e) {
                                                                var rotacao = $("#r2").text();
                                                                var jogador = $("#l12").text();
                                                                var posicao = $("#p12").text();
                                                                jogada = [rotacao, jogador, posicao];
                                                               
                                                                ar.push(jogada);
                                                                controlo();

                                                            });
                                                            $('#pos19').click(function(e) {
                                                                var rotacao = $("#r").text();
                                                                var jogador = $("#i1").text();
                                                                var posicao = document.getElementById('pos19').innerHTML;
                                                                jogada = [rotacao, jogador, posicao];
                                                                ar.push(jogada);
                                                                
                                                            
                                                                controlo();
                                                                

                                                            });
                                                            $('#pos13').click(function(e) {
                                                                var rotacao = $("#r").text();
                                                                var jogador = null;
                                                                var posicao = document.getElementById('pos13').innerHTML;
                                                                jogada = [rotacao, jogador, posicao];
                                                                ar.push(jogada);
                                                               
                                                                comeco();
                                                            });
                                                            $('#pos14').click(function(e) {
                                                                var rotacao = $("#r").text();
                                                                var jogador = null;
                                                                var posicao = document.getElementById('pos14').innerHTML;
                                                                jogada = [rotacao, jogador, posicao];
                                                                ar.push(jogada);   
                                                                controlo();
                                                            });
                                                            $('#pos15').click(function(e) {
                                                                var rotacao = $("#r").text();
                                                                var jogador = null;
                                                                var posicao = document.getElementById('pos15').innerHTML;
                                                                jogada = [rotacao, jogador, posicao];
                                                                ar.push(jogada);
                                                                controlo();
                                                            });
                                                            $('#pos16').click(function(e) {
                                                                var rotacao = $("#r2").text();
                                                                var jogador = null;
                                                                var posicao = document.getElementById('pos16').innerHTML;
                                                                jogada = [rotacao, jogador, posicao];
                                                                ar.push(jogada);
                                                               
                                                                controlo();
                                                            });
                                                            $('#pos17').click(function(e) {
                                                                var rotacao = $("#r2").text();
                                                                var jogador = null;
                                                                var posicao = document.getElementById('pos17').innerHTML;
                                                                jogada = [rotacao, jogador, posicao];
                                                                ar.push(jogada);
                                                                
                                                                controlo();
                                                            });
                                                            
                                                            $('#pos18').click(function(e) {
                                                                var rotacao = $("#r2").text();
                                                                var jogador = null;
                                                                var posicao = document.getElementById('pos18').innerHTML;
                                                                jogada = [rotacao, jogador, posicao];
                                                                ar.push(jogada);
                                                                
                                                                controlo();
                                                            });
                                                            $('#pos20').click(function(e) {
                                                                var rotacao = $("#r").text();
                                                                var jogador = $("#i7").text();
                                                                var posicao = document.getElementById('pos20').innerHTML;
                                                                jogada = [rotacao, jogador, posicao];
                                                                ar.push(jogada);
                                                              
                                                                controlo();
                                                            });
                                                        });
$("#baseDiv").click(function(e) {
    $("#popUpDiv").show();
});
$("#popupSelect").change(function(e) {
    $("#baseDiv").html($("#popupSelect").val() + ' clicked. Click again to change.');
    $("#popUpDiv").hide();
});



                                            </script>

                                            </body>
                                            </html>

