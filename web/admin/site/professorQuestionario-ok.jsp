
<%@page import="java.math.BigInteger"%>
<%@page import="dao.ProfessorDAO"%>
<%@page import="dao.ProfAvalDAO"%>
<%@page import="modelo.ProfAval"%>
<%@page import="dao.QuestionarioDAO"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Questionario"%>
<%@page import="modelo.Professor"%>
<%@include file="cabecalho.jsp"%>
<%
    String msg = "";
    if (request.getParameter("rdoPergunta") == null
            || request.getParameter("rdoPergunta2") == null || request.getParameter("rdoPergunta3") == null
            || request.getParameter("rdoPergunta4") == null || request.getParameter("rdoPergunta5") == null
            || request.getParameter("rdoPergunta6") == null || request.getParameter("rdoPergunta7") == null
            || request.getParameter("rdoPergunta8") == null || request.getParameter("rdoPergunta9") == null
            || request.getParameter("rdoPergunta10") == null) {
        response.sendRedirect("index.jsp");
    } else {
        msg = "Confirmou";
        BigInteger v_resposta1 = new BigInteger(request.getParameter("rdoPergunta"));
        BigInteger v_resposta2 = new BigInteger(request.getParameter("rdoPergunta2"));
        BigInteger v_resposta3 = new BigInteger(request.getParameter("rdoPergunta3"));
        BigInteger v_resposta4 = new BigInteger(request.getParameter("rdoPergunta4"));
        BigInteger v_resposta5 = new BigInteger(request.getParameter("rdoPergunta5"));
        BigInteger v_resposta6 = new BigInteger(request.getParameter("rdoPergunta6"));
        BigInteger v_resposta7 = new BigInteger(request.getParameter("rdoPergunta7"));
        BigInteger v_resposta8 = new BigInteger(request.getParameter("rdoPergunta8"));
        BigInteger v_resposta9 = new BigInteger(request.getParameter("rdoPergunta9"));
        BigInteger v_resposta10 = new BigInteger(request.getParameter("rdoPergunta10"));
        String maPeriodo = request.getParameter("maPeriodo");
   
        Long idProfessor = Long.parseLong(request.getParameter("idProfessor"));

        //Chamar a inclusão da DAO
        QuestionarioDAO qdao = new QuestionarioDAO();
        Questionario objQues = new Questionario();
        List<Questionario> qList = qdao.listar();
        Questionario q = qList.get(1);

        ProfAval pa = new ProfAval();
        ProfAvalDAO paDAO = new ProfAvalDAO();
        
        Professor objProf = new Professor();

        pa.setPaResposta1(v_resposta1);
        pa.setPaResposta2(v_resposta2);
        pa.setPaResposta3(v_resposta3);
        pa.setPaResposta4(v_resposta4);
        pa.setPaResposta5(v_resposta5);
        pa.setPaResposta6(v_resposta6);
        pa.setPaResposta7(v_resposta7);
        pa.setPaResposta8(v_resposta8);
        pa.setPaResposta9(v_resposta9);
        pa.setPaResposta10(v_resposta10);
        pa.setPaPeriodo(maPeriodo);
        objProf.setIdProfessor(idProfessor);
        pa.setIdProfessor(objProf);
        pa.setIdQuestionario(q);

        paDAO.incluir(pa);
    }
%>


<img style="-webkit-user-select: none" src="http://3.bp.blogspot.com/-8LogxatfG6g/UAMJFw0MaZI/AAAAAAAABZ4/9mOwtJsPJkw/s1600/gato+que+dan%C3%A7a.gif">
<h4>Pronto</h4>
<button  id="salvar" value="acao" name="acao" class="btn btn-primary"  onclick="location.href='index.jsp'">index</button>

<%@include file="rodape.jsp"%>