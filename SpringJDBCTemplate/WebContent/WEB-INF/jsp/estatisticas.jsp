<!DOCTYPE html>
<!-- Website template by freewebsitetemplates.com -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>

    <head>
        <meta charset="UTF-8">
        <Meta  http-equiv = "X-UA-Compatible"  content = "IE = borda" >
        <title>Sistema de Informação - SCB</title>
        <script src="<c:url value="/resources/js/jquery-1.11.1.js" />"></script>
        <script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
        <link href="<c:url value ="/resources/css/styleestatisticas.css"/>" rel="stylesheet" type="text/css">
        
        <script type="text/javascript">
            var estatistica = new Array();
   function changeFunc() {
    var selectBox = document.getElementById("zona1");
    var selectedValue = selectBox.options[selectBox.selectedIndex].value;
    var idJogo = ${idJogo};
    
    getEstatistica(selectedValue, idJogo).success(function (data) {
    alert(data);
});
    
   }
   
                                                        
   function getEstatistica(selectedValue, idJogo){
    return $.ajax({
        url: '${pageContext.request.contextPath}/getEstatistica',
        type: 'GET',
        cache: false,
        data: {
           "estatistica": selectedValue, "jogo": idJogo
        }
    });
}                                                     
                                                        

  </script>
    </head>

    <body>



        <div id="mid">
            <h1>ESTATÍSTICAS TEMPO REAL</h1>



            
            
            <div id="comboestat1">
                <h3> Campo 1<h3>
                <br>
               <a href="/VoleiUM/estatisticas/getEstatisticas/atP/${idJogo}">Ataques</a>
               <br>
            <a href="/VoleiUM/estatisticas/getEstatisticas/seP/${idJogo}">Servicos</a>
            <br>
            <a href="/VoleiUM/estatisticas/getEstatisticas/deP/${idJogo}">Defesas</a>
            <br>
            <a href="/VoleiUM/estatisticas/getEstatisticas/beP/${idJogo}">Blocos</a>
                <br>
                 
            </div>
            
           
            <div id="campo">
                <div class="elementServiceLeft" id="pos19" name="pos19" ><br><label id="19"></label></div>
                <div class="elementOutLeft" id="pos13" name="pos13" ><br><label id="13"></label></div>    
                <div class="elementTopLeft" id="pos14" name="pos14" ><br><label id="14"></label></div>    
                <div class="elementBotLeft" id="pos14" name="pos15" ><br><label id="15"></label></div>   
                <div class="element1" id="pos1" name="pos1" ><br><label id="1"></label></div>
                <div class="element2" id="pos2" name="pos2" ><br><label id="2"></label></div>
                <div class="element3" id="pos3" name="pos3" ><br><label id="3"></label></div>
                <div class="element6" id="pos6" name="pos6" ><br><label id="6"></label></div>
                <div class="element4" id="pos4" name="pos4" ><br><label id="4"></label></div>
                <div class="element5" id="pos5" name="pos5" ><br><label id="5"></label></div>
                <div class="elementLinha" id="posLinha" name="linha" ></div>
                <div class="element7" id="pos7" name="pos7" > <br><label id="7"></label></div>
                <div class="element12" id="pos12" name="pos12" > <br><label id="12"></label></div>
                <div class="element11" id="pos11" name="pos11" > <br><label id="11"> </label></div>
                <div class="element10" id="pos10" name="pos10" > <br><label id="10"> </label></div>
                <div class="element9" id="pos9" name="pos9" ><br><label id="9"> </label></div>
                <div class="element8" id="pos8" name="pos8" ><br><label id="8"> </label></div>
                <div class="elementTopRight" id="pos16" name="pos16" ><br><label id="16"></label></div>
                <div class="elementBotRight" id="pos17" name="pos17" > <br><label id="17"></label></div>
                <div class="elementOutRight" id="pos18" name="pos18" > <br><label id="18"></label></div>  
                <div class="elementServiceRight" id="pos20" name="pos20" ><br><label id="20"></label></div> 

            </div>

            <div id="comboestat2">
                <h3> Campo2 <h3>
                <br>
                <a href="/VoleiUM/estatisticas/getEstatisticas/atA/${idJogo}">Ataques Adversario</a>
               <br>
            <a href="/VoleiUM/estatisticas/getEstatisticas/seA/${idJogo}">Servicos Adversario</a>
            <br>
            <a href="/VoleiUM/estatisticas/getEstatisticas/deA/${idJogo}">Defesas Adversario</a>
            </div>

           <div id="voltarCampo">
                <a href="/VoleiUM/listarJogosTA"><h2>Voltar</h2></a>
                </a></div>
               <script>

    </body>
   
</html>

