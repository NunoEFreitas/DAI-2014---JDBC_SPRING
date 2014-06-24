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
        

    </head>

    <body>



        <div id="mid">
            <h1>ESTATÍSTICAS TEMPO REAL - SERVICOS ${map.nome}</h1>
            



            
            
        
            
           
            

            <div id="campo">
                <div class="elementServiceLeft" id="pos19" name="pos19" > <br> <label id="19"> </label> </div>
                <div class="elementOutLeft" id="pos13" name="pos13" ><label id="13">  </label>  </div>    
                <div class="elementTopLeft" id="pos14" name="pos14" ><label id="14">  </label>  </div>    
                <div class="elementBotLeft" id="pos14" name="pos15" ><label id="15">  </label>  </div>   
                <div class="element1" id="pos1" name="pos1" ><label id="1">  </label> <br> <label id="l1">  </label> </div>
                <div class="element2" id="pos2" name="pos2" ><label id="2">  </label> <br> <label id="l2">  </label> </div>
                <div class="element3" id="pos3" name="pos3" ><label id="3">  </label> <br> <label id="l3">  </label></div>
                <div class="element6" id="pos6" name="pos6" ><label id="6"> </label> <br> <label id="l6">  </label></div>
                <div class="element4" id="pos4" name="pos4" ><label id="4">  </label> <br> <label id="l4">  </label></div>
                <div class="element5" id="pos5" name="pos5" ><label id="5">  </label> <br> <label id="l5">  </label></div>
                <div class="elementLinha" id="posLinha" name="linha" >  </div>
                <div class="element7" id="pos7" name="pos7" > <br> <label id="7"> </label></div>
                <div class="element12" id="pos12" name="pos12" > <br> <label id="12"> </label></div>
                <div class="element11" id="pos11" name="pos11" > <br> <label id="11"> </label></div>
                <div class="element10" id="pos10" name="pos10" > <br> <label id="10"> </label></div>
                <div class="element9" id="pos9" name="pos9" ><br> <label id="9"> </label></div>
                <div class="element8" id="pos8" name="pos8" ><br> <label id="8"> </label></div>
                <div class="elementTopRight" id="pos16" name="pos16" ><br> <label id="16"> </label></div>
                <div class="elementBotRight" id="pos17" name="pos17" > <br> <label id="17"> </label></div>
                <div class="elementOutRight" id="pos18" name="pos18" > <br> <label id="18"> </label></div>  
                <div class="elementServiceRight" id="pos20" name="pos20" ><br> <label id="20"> </label>  </div> 

            </div>

            
            <div id="voltarCampo">
                <a href="javascript:history.back()"><h2>Voltar</h2></a>
                <p> ${da}</p>
                </div>
                
                
                 <div id="comboestat1">
              <c:forEach items='${map.lsj}' var='lsj'>
   
                  <a href="/VoleiUM/estatisticas/getEstatisticas/seP/${map.jogo}/${lsj.getIdUtilizador()}"><h2>${lsj.getNome()}</h2></a>     
                    </c:forEach>
                 
            </div>
               <script>
                  
                   
                
            <c:forEach items='${map.da}' var='da'>
   
                document.getElementById(${da}).innerHTML++;
                document.getElementById('19').innerHTML++;        
                    </c:forEach>
                       document.getElementById('19').style.display = 'none'; 
                       var total = document.getElementById('19').innerHTML;
                       
                       for(i = 1; i<18;i++){
                           
                       var a = document.getElementById(i).innerHTML;
                       if(a != 0){

                       var percentagem = (a / total) * 100;
                       percentagem = percentagem.toFixed(2);
                       document.getElementById(i).innerHTML = percentagem + '%';
                   }    
                       }
            
            
        </script>

    </body>
   
</html>


