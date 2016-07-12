<%@page import="dao.QuestionarioDAO"%>
<%@page import="modelo.Questionario"%>
<%@page import="java.math.BigDecimal"%>
<%@page import="dao.ProfAvalDAO"%>
<%@page import="dao.ProfessorDAO"%>
<%@page import="java.util.List"%>
<%@page import="java.math.BigInteger"%>
<%@page import="modelo.ProfAval"%>
<%@page import="modelo.Professor"%>
<%@include file="cabecalho.jsp"%>
<%
    String p1="", p2="", p3="", p4="", p5="", p6="", p7="",p8="", p9="", p10="";
    BigDecimal media = BigDecimal.ZERO;
    BigDecimal media1 = BigDecimal.ZERO;
    BigDecimal media2 = BigDecimal.ZERO;
    BigDecimal media3 = BigDecimal.ZERO;
    BigDecimal media4 = BigDecimal.ZERO;
    BigDecimal media5 = BigDecimal.ZERO;
    BigDecimal media6 = BigDecimal.ZERO;
    BigDecimal media7 = BigDecimal.ZERO;
    BigDecimal media8 = BigDecimal.ZERO;
    BigDecimal media9 = BigDecimal.ZERO;
    BigDecimal media10 = BigDecimal.ZERO;
    
    
    if (request.getParameter("idProfessor") == null) {
        response.sendRedirect("index.jsp");
    } else {
        ProfAvalDAO dao = new ProfAvalDAO();
        Professor prof = new Professor();
        ProfAval profAval = new ProfAval();
        Questionario q;
        QuestionarioDAO qdao = new QuestionarioDAO();

        List<Questionario> qList = qdao.listar();

        
        Long idProfessor = Long.parseLong(request.getParameter("idProfessor"));
        media = dao.verMedia(idProfessor);
        media1 = dao.verMedia1(idProfessor);
        media2 = dao.verMedia2(idProfessor);
        media3 = dao.verMedia3(idProfessor);
        media4 = dao.verMedia4(idProfessor);
        media5 = dao.verMedia5(idProfessor);
        media6 = dao.verMedia6(idProfessor);
        media7 = dao.verMedia7(idProfessor);
        media8 = dao.verMedia8(idProfessor);
        media9= dao.verMedia9(idProfessor);
        media10 = dao.verMedia10(idProfessor);
        p1 =qList.get(1).getPergunta1();
        p2 =qList.get(1).getPergunta2();
        p3 =qList.get(1).getPergunta3();
        p4 =qList.get(1).getPergunta4();
        p5 =qList.get(1).getPergunta5();
        p6 =qList.get(1).getPergunta6();
        p7 =qList.get(1).getPergunta7();
        p8 =qList.get(1).getPergunta8();
        p9 =qList.get(1).getPergunta9();
        p10 =qList.get(1).getPergunta10();

        
   //     double num = media.doubleValue();
        
        
    }
    
    


%>
   <h1 class="centro">Média dos professores</h1>
   <br />
   <h4>As notas estão de base 5, onde Ruim = 1 e Excelente = 5</h4><br />
   Média geral: <%=media%><br /><br />
   Média da pergunta "<%=p1%>": <%=media1%><br /><br />
   Média da pergunta "<%=p2%>": <%=media2%><br /><br />
   Média da pergunta "<%=p3%>": <%=media3%><br /><br />
   Média da pergunta "<%=p4%>": <%=media4%><br /><br />
   Média da pergunta "<%=p5%>": <%=media5%><br /><br />
   Média da pergunta "<%=p6%>": <%=media6%><br /><br />
   Média da pergunta "<%=p7%>": <%=media7%><br /><br />
   Média da pergunta "<%=p8%>": <%=media8%><br /><br />
   Média da pergunta "<%=p9%>": <%=media9%><br /><br />
   Média da pergunta "<%=p10%>": <%=media10%><br />
 <br />
  <a href="index.jsp">Voltar para página incial</a>
         
    </body>
</html>
 <%@include file="rodape.jsp"%>
