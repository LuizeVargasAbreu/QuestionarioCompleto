<%@page import="java.util.List"%>
<%@page import="dao.QuestionarioDAO"%>
<%@page import="modelo.MoniAval"%>
<%@page import="dao.MoniAvalDAO"%>
<%@page import="modelo.Monitor"%>
<%@page import="modelo.Questionario"%>
<%@page import="java.math.BigInteger"%>
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
    BigInteger rdoPergunta = new BigInteger(request.getParameter("rdoPergunta"));
    BigInteger rdoPergunta2 = new BigInteger(request.getParameter("rdoPergunta2"));
    BigInteger rdoPergunta3 = new BigInteger(request.getParameter("rdoPergunta3"));
    BigInteger rdoPergunta4 = new BigInteger(request.getParameter("rdoPergunta4"));
    BigInteger rdoPergunta5 = new BigInteger(request.getParameter("rdoPergunta5"));
    BigInteger rdoPergunta6 = new BigInteger(request.getParameter("rdoPergunta6"));
    BigInteger rdoPergunta7 = new BigInteger(request.getParameter("rdoPergunta7"));
    BigInteger rdoPergunta8 = new BigInteger(request.getParameter("rdoPergunta8"));
    BigInteger rdoPergunta9 = new BigInteger(request.getParameter("rdoPergunta9"));
    BigInteger rdoPergunta10 = new BigInteger(request.getParameter("rdoPergunta10"));
    String maPeriodo = request.getParameter("maPeriodo");
    
    Long idMonitor = Long.parseLong(request.getParameter("idMonitor"));
    
        QuestionarioDAO qdao = new QuestionarioDAO();
        Questionario objQues = new Questionario();
        List<Questionario> qList = qdao.listar();
        Questionario q = qList.get(0);
        
        MoniAval obj = new MoniAval();
        MoniAvalDAO dao = new MoniAvalDAO();
        
        Monitor objMon = new Monitor();
  
        obj.setMaResposta1(rdoPergunta);
        obj.setMaResposta2(rdoPergunta2);
        obj.setMaResposta3(rdoPergunta3);
        obj.setMaResposta4(rdoPergunta4);
        obj.setMaResposta5(rdoPergunta5);
        obj.setMaResposta6(rdoPergunta6);
        obj.setMaResposta7(rdoPergunta7);
        obj.setMaResposta8(rdoPergunta8);
        obj.setMaResposta9(rdoPergunta9);
        obj.setMaResposta10(rdoPergunta10);
        obj.setMaPeriodo(maPeriodo); //
        objMon.setIdMonitor(idMonitor);
        obj.setIdMonitor(objMon);
        obj.setIdQuestionario(q);//
        
        
        dao.incluir(obj);
    }
%>

<img style="-webkit-user-select: none" src="https://turistasliterarias.files.wordpress.com/2015/01/tumblr_lzi67rgsbp1qb82v1o2_250.gif?w=506&amp;h=454">
<h4>Concluido!</h4>

<button  id="salvar" value="acao" name="acao" class="btn btn-primary"  onclick="location.href='index.jsp'">index</button>
<%@include file="rodape.jsp"%>
