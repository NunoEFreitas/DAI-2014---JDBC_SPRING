/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dai.controller;

import com.dai.domain.Treino;
import com.dai.services.TreinoService;
import com.dai.services.UtilizadorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.dai.controller.UtilizadorController;
import com.dai.domain.SelecaoTreino;
import com.dai.domain.Utilizador;
import com.dai.services.SelecaoTreinoService;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.web.bind.annotation.PathVariable;

/**
 *
 * @author Nuno
 */
@Controller
public class TreinoController {

    @Autowired
    UtilizadorService utilizadorService;

    @Autowired
    TreinoService treinoService;

    @Autowired
    SelecaoTreinoService stService;

    @RequestMapping("/gestaoDeTreinos")
    public ModelAndView gerirTreinos() {

        return new ModelAndView("gestaoDeTreinos");
    }

    @RequestMapping("/criarTreino")
    public ModelAndView criarTreino(@ModelAttribute Treino treino) {
        return new ModelAndView("criarTreino");
    }

    @RequestMapping("/inserirTreino")
    public String inserirTreino(@ModelAttribute Treino treino, HttpServletRequest request) {
        HttpSession session = request.getSession();
        int escalao = ((int) session.getAttribute("escalao"));
        treino.setIdEscalao(escalao);
        treinoService.novoTreino(treino);

        return "redirect:/criarTreino";
    }

    @RequestMapping("/listarTreinosT")
    public ModelAndView listarTreinos(@ModelAttribute Treino treino, HttpServletRequest request) {
        HttpSession session = request.getSession();
        int escalao = ((int) session.getAttribute("escalao"));
        List<Treino> li = treinoService.listaTreinosEscalao(escalao);

        return new ModelAndView("listarTreinosT", "li", li);
    }

    @RequestMapping("/listarTreinosJ")
    public ModelAndView listarTreinosJ(@ModelAttribute Treino treino, HttpServletRequest request) {
        HttpSession session = request.getSession();
        int escalao = ((int) session.getAttribute("escalao"));
        List<Treino> li = treinoService.listaTreinosEscalao(escalao);

        return new ModelAndView("listarTreinosJ", "li", li);
    }

    @RequestMapping("/listarTreinosTA")
    public ModelAndView listarTreinosTA(@ModelAttribute Treino treino, HttpServletRequest request) {
        HttpSession session = request.getSession();
        int escalao = ((int) session.getAttribute("escalao"));
        List<Treino> li = treinoService.listaTreinosEscalao(escalao);

        return new ModelAndView("listarTreinosTA", "li", li);
    }

    @RequestMapping("/treino/apagar/{idTreino}")
    public String apagarTreino(@PathVariable("idTreino") Integer idTreino) {
        treinoService.apagaTreino(idTreino);

        return "redirect:/listarTreinosT";
    }

    @RequestMapping("/treino/selecionar/{idTreino}")
    public ModelAndView selecionadosTreino(@PathVariable("idTreino") Integer idTreino, HttpServletRequest request) {
        List<Integer> treino = new ArrayList();
        treino.add(idTreino);
        HttpSession session = request.getSession();
        int escalao = ((int) session.getAttribute("escalao"));
        List<Utilizador> lutilizador = utilizadorService.listarUTparaTreino(idTreino, escalao);
        Map<String, List> map = new HashMap<String, List>();
        map.put("treino", treino);
        map.put("utilizador", lutilizador);

        return new ModelAndView("treinoSelecionados", "map", map);
    }

    @RequestMapping("/treino/selecionar/jogadorSelecionado/{idTreino}/{idUtilizador}/{nomeUtilizador}")
    public String selecionaJogador(@PathVariable("idTreino") Integer treino, @PathVariable("idUtilizador") Integer ut, @PathVariable("nomeUtilizador") String nome) {

        SelecaoTreino st = new SelecaoTreino();
        st.setIdTreino(treino);
        st.setIdUtilizador(ut);
        st.setNome(nome);

        stService.adicionaST(st);
        return "redirect:/treino/selecionar/" + treino;
    }

    @RequestMapping("/treino/presencas/{idTreino}")
    public ModelAndView treinoPresencas(@PathVariable("idTreino") Integer treino) {

        List<SelecaoTreino> li = stService.listaSTparaPresencas(treino);

        return new ModelAndView("marcarPresencas", "li", li);
    }

    @RequestMapping("/treino/presencas/faltou/{idTreino}/{idUtilizador}")
    public String treinoFaltou(@PathVariable("idTreino") Integer treino, @PathVariable("idUtilizador") Integer ut) {

        stService.jogadorFaltou(ut, treino);

        return "redirect:/treino/presencas/" + treino;
    }

    @RequestMapping("/treino/presencas/presente/{idTreino}/{idUtilizador}")
    public String treinoPresente(@PathVariable("idTreino") Integer treino, @PathVariable("idUtilizador") Integer ut) {

        stService.jogadorPresente(ut, treino);

        return "redirect:/treino/presencas/" + treino;
    }

    @RequestMapping("treino/editar/{idTreino}")
    public ModelAndView editarTreino(@ModelAttribute Treino treino, @PathVariable("idTreino") Integer idtreino) {

        Treino tr = treinoService.getTreino(idtreino);

        return new ModelAndView("editarTreino", "tr", tr);
    }

    @RequestMapping("/updateTreino")
    public String updateTreino(@ModelAttribute Treino treino) {

        treinoService.updateTreino(treino);

        return "redirect:/listarTreinosT";
    }
}
