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
        <link href="<c:url value ="/resources/css/styleCampo.css"/>" rel="stylesheet" type="text/css">
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

                                            <div id ="classificacao">	
                                                <div id="rbd" style="display:none">
                                                    <h3>Classificação de Defesa</h3>
                                                    <input type="radio" name="cld" value="3" onclick="defesa()" />3<br>
                                                    <input type="radio" name="cld" value="2" onclick="defesa()" />2<br>
                                                    <input type="radio" name="cld" value="1" onclick="defesa()" />1<br>
                                                    <input type="radio" name="cld" value="0" onclick="defesa()" />0<br>
                                                    <input type="radio" name="cld" value="-1" onclick="defesa()" />Erro<br>
                                                </div>

                                                <div id="rba" style="display:none">
                                                    <h3>Classificação de Ataque</h3>
                                                    <input type="radio" name="cla" value="3" onclick="ataque()" />3<br>
                                                    <input type="radio" name="cla" value="2" onclick="ataque()" />2<br>
                                                    <input type="radio" name="cla" value="1" onclick="ataque()"/>1<br>
                                                    <input type="radio" name="cla" value="0" onclick="ataque()"/>0<br>
                                                    <input type="radio" name="cla" value="-1" onclick="ataque()"/>Erro<br>

                                                </div>

                                            </div>

                                            </div>
                                            <div id="mid">

                                                <div id="campo">
                                                    <div class="elementServiceLeft" id="pos19" name="pos19" > 19 </div>
                                                    <div class="elementOutLeft" id="pos13" name="pos13" > 13 </div>    
                                                    <div class="elementTopLeft" id="pos14" name="pos14" > 14 </div>    
                                                    <div class="elementBotLeft" id="pos14" name="pos15" > 15 </div>   
                                                    <div class="element1" id="pos1" name="pos1" ><label id="p1"> 1 </label> <br> <label id="l1"> Jogador </label> </div>
                                                    <div class="element2" id="pos2" name="pos2" ><label id="p2"> 2 </label> <br> <label id="l2"> Jogador </label> </div>
                                                    <div class="element3" id="pos3" name="pos3" ><label id="p3"> 3 </label> <br> <label id="l3"> Jogador </label></div>
                                                    <div class="element6" id="pos6" name="pos6" ><label id="p6"> 6 </label> <br> <label id="l6"> Jogador </label></div>
                                                    <div class="element4" id="pos4" name="pos4" ><label id="p4"> 4 </label> <br> <label id="l4"> Jogador </label></div>
                                                    <div class="element5" id="pos5" name="pos5" ><label id="p5"> 5 </label> <br> <label id="l5"> Jogador </label></div>
                                                    <div class="elementLinha" id="posLinha" name="linha" > L </div>
                                                    <div class="element7" id="pos7" name="pos7" ><label id="p7">7</label> <br> <label id="l7"> ADV 7 </label></div>
                                                    <div class="element12" id="pos12" name="pos12" ><label id="p12">12</label> <br> <label id="l12"> ADV 12 </label></div>
                                                    <div class="element11" id="pos11" name="pos11" ><label id="p11">11</label> <br> <label id="l11"> ADV 11</label></div>
                                                    <div class="element10" id="pos10" name="pos10" ><label id="p10">10</label> <br> <label id="l10"> ADV 10</label></div>
                                                    <div class="element9" id="pos9" name="pos9" ><label id="p9">9</label> <br> <label id="l9"> ADV 9</label></div>
                                                    <div class="element8" id="pos8" name="pos8" ><label id="p8">8</label> <br> <label id="l8"> ADV 8</label></div>
                                                    <div class="elementTopRight" id="pos16" name="pos16" > 16 </div>
                                                    <div class="elementBotRight" id="pos17" name="pos17" > 17 </div>
                                                    <div class="elementOutRight" id="pos18" name="pos18" > 18 </div>  
                                                    <div class="elementServiceRight" id="pos20" name="pos20" > 20 </div> 

                                                </div>

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
                                                    <select id="zona1" onchange="atribui7()"></select>
                                                    <br>
                                                    <label> Zona 8 </label>
                                                    <select id="zona2" onchange="atribui8()"></select>
                                                    <br>
                                                    <label> Zona 9 </label>
                                                    <select id="zona3" onchange="atribui9()"></select>
                                                    <br>
                                                    <label> Zona 10 </label>
                                                    <select id="zona4" onchange="atribui10()"></select>
                                                    <br>
                                                    <label> Zona 11 </label>
                                                    <select id="zona5" onchange="atribui11()"></select>
                                                    <br>
                                                    <label> Zona 12 </label>
                                                    <select id="zona6"onchange="atribui12()"></select>
                                                    <br>
                                                </div>

                                                <div id="textboxes">
                                                    <textarea class="relato"id="jogadasTxt"rows = "5" cols ="30"></textarea>
                                                </div>

                                            </div>

                                            <div id="btnestat">

                                                <a href="estatisticas"><h2>Visualizar estatísticas</h2></a>
                                                </a></div>





                                            <!--
                                            
                                            <div id=tabela>
                                                <input name="generate" type="button" value="Create Table!" onclick='createTable();'/>
                                                <div id="wrapper"></div>
                                            </div>
                                            
                                            
                                                                <div id="dragAndDrop">
                                                                    <div id="dragj1" class="ui-widget-content" >Jogador 1</div>
                                            
                                                                    <div id="dragj2" class="ui-widget-content">Jogador 2</div>
                                            
                                                                    <div id="dragj3" class="ui-widget-content">Jogador 3</div>
                                            
                                                                    <div id="dragj4" class="ui-widget-content">Jogador 4</div>
                                            
                                                                    <div id="dragj5" class="ui-widget-content">Jogador 5</div>
                                            
                                                                    <div id="dragj6" class="ui-widget-content">Jogador 6</div>
                                            
                                            
                                                                    <div id="dropP1" class="ui-widget-header"><p>Posicao 1</p></div>
                                            
                                                                    <div id="dropP2" class="ui-widget-header"><p>Posicao 2</p></div>
                                            
                                                                    <div id="dropP3" class="ui-widget-header"><p>Posicao 3</p></div>
                                            
                                                                    <div id="dropP4" class="ui-widget-header"><p>Posicao 4</p></div>
                                            
                                                                    <div id="dropP5" class="ui-widget-header"><p>Posicao 5</p></div>
                                            
                                                                    <div id="dropP6" class="ui-widget-header"><p>Posicao 6</p></div>
                                                                </div>
                                            
                                            !-->
                                            <script>

                                                var campo1 = [1, 2, 3, 4, 5, 6, 19];
                                                var campo2 = [7, 8, 9, 10, 11, 12, 20];
                                                var fora = [14, 15, 16, 17, 13, 18];
                                                var servico1 = [19];
                                                var servico2 = [20];
                                                var ataques = new Array;
                                                var defesas = new Array;
                                                var erros = {};
                                                var servicos = {};
                                                var jogadores = new Array;
                                                jogadores.push('Ana');
                                                jogadores.push('Maria');
                                                jogadores.push('Manuela');
                                                jogadores.push('Joaquina');
                                                jogadores.push('Carla');
                                                jogadores.push('Diana');

                                                var adv = new Array();

                                                adv.push('ADV1');
                                                adv.push('ADV2');
                                                adv.push('ADV3');
                                                adv.push('ADV4');
                                                adv.push('ADV5');
                                                adv.push('ADV6');

                                                function helloAjax() {
                                                    var jogador = 'nuno';
                                                    var clube = 'fcp';
                                                    $.ajax({
                                                        url: '${pageContext.request.contextPath}/helloajax',
                                                        data: {"jogador": jogador, "clube": clube},
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

                                                    var rotacao = parseInt($("#r").text());
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

                                                    var rotacao = parseInt($("#r").text());
                                                    if (rotacao < 12) {
                                                        document.getElementById('r').innerHTML = rotacao + 1;
                                                    } else {
                                                        document.getElementById('r').innerHTML = 7;
                                                    }

                                                }
                                                var sel1 = document.getElementById('zona1');
                                                for (var i = 0; i < jogadores.length; i++) {
                                                    var opt1 = document.createElement('option');
                                                    opt1.innerHTML = jogadores[i];
                                                    opt1.value = jogadores[i];
                                                    sel1.appendChild(opt1);
                                                }

                                                var sel2 = document.getElementById('zona2');
                                                for (var i = 0; i < jogadores.length; i++) {
                                                    var opt2 = document.createElement('option');
                                                    opt2.innerHTML = jogadores[i];
                                                    opt2.value = jogadores[i];
                                                    sel2.appendChild(opt2);
                                                }

                                                var sel3 = document.getElementById('zona3');
                                                for (var i = 0; i < jogadores.length; i++) {
                                                    var opt3 = document.createElement('option');
                                                    opt3.innerHTML = jogadores[i];
                                                    opt3.value = jogadores[i];
                                                    sel3.appendChild(opt3);
                                                }

                                                var sel4 = document.getElementById('zona4');
                                                for (var i = 0; i < jogadores.length; i++) {
                                                    var opt4 = document.createElement('option');
                                                    opt4.innerHTML = jogadores[i];
                                                    opt4.value = jogadores[i];
                                                    sel4.appendChild(opt4);
                                                }

                                                var sel5 = document.getElementById('zona5');
                                                for (var i = 0; i < jogadores.length; i++) {
                                                    var opt5 = document.createElement('option');
                                                    opt5.innerHTML = jogadores[i];
                                                    opt5.value = jogadores[i];
                                                    sel5.appendChild(opt5);
                                                }

                                                var sel6 = document.getElementById('zona6');
                                                for (var i = 0; i < jogadores.length; i++) {
                                                    var opt6 = document.createElement('option');
                                                    opt6.innerHTML = jogadores[i];
                                                    opt6.value = jogadores[i];
                                                    sel6.appendChild(opt6);
                                                }

                                                function jog() {
                                                    alert(jogadores);
                                                }

                                                function atribui1() {
                                                    var myselect = document.getElementById('zona1');
                                                    document.getElementById('l1').innerHTML = myselect.options[myselect.selectedIndex].value;
                                                }

                                                function atribui2() {
                                                    var myselect = document.getElementById('zona2');
                                                    document.getElementById('l2').innerHTML = myselect.options[myselect.selectedIndex].value;
                                                }

                                                function atribui3() {
                                                    var myselect = document.getElementById('zona3');
                                                    document.getElementById('l3').innerHTML = myselect.options[myselect.selectedIndex].value;
                                                }

                                                function atribui4() {
                                                    var myselect = document.getElementById('zona4');
                                                    document.getElementById('l4').innerHTML = myselect.options[myselect.selectedIndex].value;
                                                }

                                                function atribui5() {
                                                    var myselect = document.getElementById('zona5');
                                                    document.getElementById('l5').innerHTML = myselect.options[myselect.selectedIndex].value;
                                                }

                                                function atribui6() {
                                                    var myselect = document.getElementById('zona6');
                                                    document.getElementById('l6').innerHTML = myselect.options[myselect.selectedIndex].value;
                                                }


                                                function comeco() {

                                                    var x = ar.length;
                                                    var ultima = parseInt(ar[x - 1][2]);
                                                    if (x == 1) {
                                                        if ($.inArray(ultima, servico1) >= 0 || $.inArray(ultima, servico2) >= 0) {
                                                            $('#jogadasTxt').html('servico');
                                                        } else {
                                                            $('#jogadasTxt').html('erro todas as jogadas tem de comecar com um servico');
                                                            ar.length = 0;
                                                        }
                                                    }
                                                    if (x == 2) {
                                                        if ($.inArray(ultima, fora) < 0) {
                                                            $('#jogadasTxt').html('servico para a zona' + ultima);

                                                        } else {
                                                            $('#jogadasTxt').html('servico para a fora');

                                                        }
                                                    }
                                                }

                                                function servico() {
                                                    var x = ar.length;
                                                    var ul = parseInt(ar[x - 1][2]);
                                                    if (x == 1) {
                                                        // servico tem de comecar por area de servico
                                                        if ($.inArray(ul, servico1) >= 0 || $.inArray(ul, servico2) >= 0) {
                                                            $('#jogadasTxt').html('servico');
                                                        } else {
                                                            $('#jogadasTxt').html('erro todas as jogadas tem de comecar com um servico');
                                                            ar.length = 0;
                                                        }
                                                    }
                                                }



                                                function ponto() {
                                                    var x = ar.length;
                                                    var ul = parseInt(ar[x - 1][2]);
                                                    var pr = parseInt(ar[0][2]);
                                                    if (x > 2) {
                                                        if ($.inArray(ul, servico1) >= 0) {
                                                            $('#jogadasTxt').html('ponto equipa da casa');
                                                            document.getElementById('btncasa').value++;
                                                            if (ul != pr) {
                                                                rotacaoCampo1();
                                                            }
                                                            ar.length = 0;
                                                        } else {
                                                            if ($.inArray(ul, servico2) >= 0) {
                                                                $('#jogadasTxt').html('ponto equipa de fora');
                                                                document.getElementById('btnfora').value++;
                                                                if (ul != pr) {
                                                                    rotacaoCampo2();
                                                                }
                                                                ar.length = 0;
                                                            }
                                                        }

                                                    }
                                                }

                                                function ataqueEdefesa() {

                                                    var x = ar.length;
                                                    var ultima = ar[x - 1];
                                                    var pultima = ar[x - 2];
                                                    if (x > 2) {

                                                        if ($.inArray(parseInt(pultima[2]), campo1) >= 0 && $.inArray(parseInt(ultima[2]), campo2) >= 0) {
                                                            //$('#ataquesTxt').html('ataque da jogadora '+ pultima[1] +' da posicao ' + pultima[2] + ' para a posicao ' + ultima[2]);
                                                            document.getElementById('rba').style.display = 'block';

                                                        } else {
                                                            if ($.inArray(parseInt(ultima[2]), campo1) >= 0 && $.inArray(parseInt(pultima[2]), campo2) >= 0) {
                                                                //$('#defesasTxt').html('defesa da jogadora ' + ultima[1] +'na posicao ' + ultima[2] + ' a um ataque da posicao ' + pultima[2]);
                                                                document.getElementById('rbd').style.display = 'block';

                                                            }
                                                        }

                                                    }
                                                }

                                                function ataque() {
                                                    var x = ar.length;
                                                    var ultima = ar[x - 1];
                                                    var pultima = ar[x - 2];
                                                    document.getElementById("ataquesTxt").value += 'Ataque da jogadora ' + pultima[1] + ' da posicao ' + pultima[2] + ' para a posicao ' + ultima[2] + '\n';
                                                    var cl = $("input[type='radio'][name='cla']:checked").val();
                                                    // controlar quando for erro enviar para a funcao ponto 
                                                    var at = [pultima[0], pultima[1], pultima[2], ultima[1], ultima[2]];
                                                    ataques.push(at);
                                                    document.getElementById('rba').style.display = 'none';

                                                }

                                                function defesa() {
                                                    var x = ar.length;
                                                    var ultima = ar[x - 1];
                                                    var pultima = ar[x - 2];
                                                    document.getElementById("defesasTxt").value += 'Defesa da jogadora ' + ultima[1] + 'na posicao ' + ultima[2] + ' a um ataque da posicao ' + pultima[2] + '\n';
                                                    var cl = $("input[type='radio'][name='cld']:checked").val();
                                                    // controlar quando for erro enviar para a funcao ponto
                                                    var df = [ultima[0], ultima[1], ultima[2], pultima[1], pultima[2]];
                                                    defesas.push(df);
                                                    document.getElementById('rbd').style.display = 'none';

                                                }


                                                function mostraAtaques() {
                                                    alert(ataques);


                                                }

                                                function mostraDefesas() {
                                                    alert(defesas);
                                                }



                                                var ar = new Array();
                                                var jogada = new Array();

                                                $(document).ready(function() {
                                                    $('#pos1').click(function(e) {
                                                        var rotacao = $("#r").text();
                                                        var jogador = $("#l1").text();
                                                        var posicao = $("#p1").text();
                                                        jogada = [rotacao, jogador, posicao];
                                                        ar.push(jogada);
                                                        comeco();
                                                        ataqueEdefesa();

                                                    });

                                                    $('#pos2').click(function(e) {
                                                        var rotacao = $("#r").text();
                                                        var jogador = $("#l2").text();
                                                        var posicao = $("#p2").text();
                                                        jogada = [rotacao, jogador, posicao];
                                                        ar.push(jogada);
                                                        comeco();
                                                        ataqueEdefesa();
                                                    });
                                                    $('#pos3').click(function(e) {
                                                        var rotacao = $("#r").text();
                                                        var jogador = $("#l3").text();
                                                        var posicao = $("#p3").text();
                                                        jogada = [rotacao, jogador, posicao];
                                                        ar.push(jogada);
                                                        comeco();
                                                        ataqueEdefesa();

                                                    });
                                                    $('#pos4').click(function(e) {
                                                        var rotacao = $("#r").text();
                                                        var jogador = $("#l4").text();
                                                        var posicao = $("#p4").text();
                                                        jogada = [rotacao, jogador, posicao];
                                                        ar.push(jogada);
                                                        comeco();
                                                        ataqueEdefesa();

                                                    });
                                                    $('#pos5').click(function(e) {
                                                        var rotacao = $("#r").text();
                                                        var jogador = $("#l5").text();
                                                        var posicao = $("#p5").text();
                                                        jogada = [rotacao, jogador, posicao];
                                                        ar.push(jogada);
                                                        comeco();
                                                        ataqueEdefesa();

                                                    });
                                                    $('#pos6').click(function(e) {
                                                        var rotacao = $("#r").text();
                                                        var jogador = $("#l6").text();
                                                        var posicao = $("#p6").text();
                                                        jogada = [rotacao, jogador, posicao];
                                                        ar.push(jogada);
                                                        comeco();
                                                        ataqueEdefesa();

                                                    });
                                                    $('#pos7').click(function(e) {
                                                        var rotacao = $("#r").text();
                                                        var jogador = $("#l7").text();
                                                        var posicao = $("#p7").text();
                                                        jogada = [rotacao, jogador, posicao];
                                                        ar.push(jogada);
                                                        comeco();
                                                        ataqueEdefesa();

                                                    });
                                                    $('#pos8').click(function(e) {
                                                        var rotacao = $("#r").text();
                                                        var jogador = $("#l8").text();
                                                        var posicao = $("#p8").text();
                                                        jogada = [rotacao, jogador, posicao];
                                                        ar.push(jogada);
                                                        comeco();
                                                        ataqueEdefesa();

                                                    });
                                                    $('#pos9').click(function(e) {
                                                        var rotacao = $("#r").text();
                                                        var jogador = $("#l9").text();
                                                        var posicao = $("#p9").text();
                                                        jogada = [rotacao, jogador, posicao];
                                                        ar.push(jogada);
                                                        comeco();
                                                        ataqueEdefesa();
                                                    });
                                                    $('#pos10').click(function(e) {
                                                        var rotacao = $("#r").text();
                                                        var jogador = $("#l10").text();
                                                        var posicao = $("#p10").text();
                                                        jogada = [rotacao, jogador, posicao];
                                                        ar.push(jogada);
                                                        comeco();
                                                        ataqueEdefesa();
                                                    });
                                                    $('#pos11').click(function(e) {
                                                        var rotacao = $("#r").text();
                                                        var jogador = $("#l11").text();
                                                        var posicao = $("#p11").text();
                                                        jogada = [rotacao, jogador, posicao];
                                                        ar.push(jogada);
                                                        comeco();
                                                        ataqueEdefesa();
                                                    });
                                                    $('#pos12').click(function(e) {
                                                        var rotacao = $("#r").text();
                                                        var jogador = $("#l12").text();
                                                        var posicao = $("#p12").text();
                                                        jogada = [rotacao, jogador, posicao];
                                                        ar.push(jogada);
                                                        comeco();
                                                        ataqueEdefesa();

                                                    });
                                                    $('#pos19').click(function(e) {
                                                        var rotacao = $("#r").text();
                                                        var jogador = $("#l1").text();
                                                        var posicao = document.getElementById('pos19').innerHTML;
                                                        jogada = [rotacao, jogador, posicao];
                                                        ar.push(jogada);
                                                        comeco();

                                                        ponto();

                                                    });
                                                    $('#pos14').click(function(e) {
                                                        ar.push(document.getElementById('pos14').innerHTML);
                                                        comeco();
                                                    });
                                                    $('#pos15').click(function(e) {
                                                        ar.push(document.getElementById('pos15').innerHTML);
                                                        comeco();
                                                    });
                                                    $('#pos16').click(function(e) {
                                                        ar.push(document.getElementById('pos16').innerHTML);
                                                        comeco();
                                                    });
                                                    $('#pos17').click(function(e) {
                                                        ar.push(document.getElementById('pos17').innerHTML);
                                                        comeco();
                                                    });
                                                    $('#pos13').click(function(e) {
                                                        ar.push(document.getElementById('pos13').innerHTML);
                                                        comeco();
                                                    });
                                                    $('#pos18').click(function(e) {
                                                        ar.push(document.getElementById('pos18').innerHTML);
                                                        comeco();
                                                    });
                                                    $('#pos20').click(function(e) {
                                                        var rotacao = $("#r").text();
                                                        var jogador = $("#l7").text();
                                                        var posicao = document.getElementById('pos20').innerHTML;
                                                        jogada = [rotacao, jogador, posicao];
                                                        ar.push(jogada);
                                                        comeco();
                                                        ponto();
                                                    });
                                                });



                                                function calc() {
                                                    alert(ar);
                                                }

                                                // -------------------------TABELA----------------------------------------------
                                                function createTable()
                                                {
                                                    var num_rows = 10;
                                                    var num_cols = 5;
                                                    var theader = '<table border="1">\n';
                                                    var tbody = '';

                                                    for (var i = 0; i < num_rows; i++)
                                                    {
                                                        tbody += '<tr>';
                                                        for (var j = 0; j < num_cols; j++)
                                                        {
                                                            tbody += '<td>';
                                                            tbody += 'Cell ' + i + ',' + j;
                                                            tbody += '</td>'
                                                        }
                                                        tbody += '</tr>\n';
                                                    }
                                                    var tfooter = '</table>';
                                                    document.getElementById('wrapper').innerHTML = theader + tbody + tfooter;
                                                }

                                                // ----------------------------------------drag and drop-------------------------------------

                                                $(document).ready(function() {
                                                    $("#dragj1, #dragj2, #dragj3, #dragj4, #dragj5, #dragj6").draggable();
                                                    $("#dropP1, #dropP2, #dropP3, #dropP4, #dropP5, #dropP6").droppable({
                                                        hoverClass: 'ui-state-hover',
                                                        helper: 'clone',
                                                        cursor: 'move',
                                                        drop: function(event, ui) {
                                                            $(this).addClass('ui-state-highlight');
                                                            $(ui.draggable).addClass('ui-state-highlight');
                                                            $(ui.draggable).draggable('enable');


                                                            var itemId = $(ui.draggable).attr("id");
                                                            $(this).data('dropped', itemId);
                                                            var destId = event.target.id;
                                                            var message = '"' + itemId + '" was dragged to "' + destId + '"';
                                                            alert(message);
                                                            console.log(message);
                                                        }
                                                    });

                                                    $('.ui-widget-header').click(function(event) {
                                                        var item = event.target;
                                                        if ($(item).data('dropped'))
                                                        {
                                                            alert($(item).data('dropped'));
                                                        }
                                                        //if (item.nodeName == 'P') {
                                                        //   item = item.parentNode;
                                                        //}
                                                        //alert(item.id);
                                                    });

                                                    $('.ui-widget-content').click(function(event) {
                                                        var item = event.target;


                                                        if (item.offsetTop >= 140)
                                                        {
                                                            alert(item.id);
                                                        }
                                                    });
                                                });



                                            </script>

                                            </body>
                                            </html>

