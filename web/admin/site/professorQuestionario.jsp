<%@page import="dao.QuestionarioDAO"%>
<%@page import="modelo.Questionario"%>
<%@page import="modelo.ProfAval"%>
<%@page import="java.util.List"%>
<%@page import="dao.ProfessorDAO"%>
<%@page import="modelo.Professor"%>
<%@include file="cabecalho.jsp"%>
<%
    
    Professor profe = new Professor();

    ProfessorDAO profDAO = new ProfessorDAO();

    List<Professor> pList = profDAO.listar();

    ProfAval pAv = new ProfAval();
    Questionario q;

    QuestionarioDAO qdao = new QuestionarioDAO();

    List<Questionario> qList = qdao.listar();

    q = qList.get(1);


%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Avaliação professores</title>
        <link rel="stylesheet" href="css/estilo.css"/>
    </head>
    <body>
        <div class="pergunta">
            <div class="opcoes">
                <form action="professorQuestionario-ok.jsp" method="post">
                    <div class="form-group">
                        <label>Selecione os professores</label>
                        <select class="form-control" id="idProfessor" name="idProfessor" value="<%=profe.getIdProfessor()%>">
                            <option value="">Selecione..</option>
                            <%
                                for (Professor p : pList) {
                            %>
                            <option value="<%=p.getIdProfessor()%>"><%=p%></option>
                        <%
                            }
                        %>
                        </select>
                        
                    </div>
                    
                  
                        
                    <div class="mdl-cell--12-col"> 
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                            <input class="mdl-textfield__input" type="text" required  name="maPeriodo" id="maPeriodo" value="<%=pAv.getPaPeriodo()%>" />
                            <label class="mdl-textfield__label" for="txtPeriodoPA">Período de Avaliação</label>
                        </div>
                    </div>
                    <h4 class="enunciado"><%=q.getPergunta1()%></h4>

                    <div class="form-group">

                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta" id="optionsRadiosInline1" value="1" checked>Ruim
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta" id="optionsRadiosInline2" value="2">Mais ou menos
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta" id="optionsRadiosInline3" value="3">Bom
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta" id="optionsRadiosInline4" value="4">otimo
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta" id="optionsRadiosInline5" value="5">Excelente
                        </label>
                    </div>
                    <h4 class="enunciado"><%=q.getPergunta2()%></h4>

                    <div class="form-group">

                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta2" id="optionsRadiosInline1" value="1" checked>Ruim
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta2" id="optionsRadiosInline2" value="2">Mais ou menos
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta2" id="optionsRadiosInline3" value="3">Bom
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta2" id="optionsRadiosInline4" value="4">ótimo
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta2" id="optionsRadiosInline5" value="5">Excelente
                        </label>
                    </div>
                    <h4 class="enunciado"><%=q.getPergunta3()%></h4>

                    <div class="form-group">

                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta3" id="optionsRadiosInline1" value="1" checked>Ruim
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta3" id="optionsRadiosInline2" value="2">Mais ou menos
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta3" id="optionsRadiosInline3" value="3">Bom
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta3" id="optionsRadiosInline4" value="4">ótimo
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta3" id="optionsRadiosInline5" value="5">Excelente
                        </label>
                    </div>
                    <h4 class="enunciado"><%=q.getPergunta4()%></h4>

                    <div class="form-group">

                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta4" id="optionsRadiosInline1" value="1" checked>Ruim
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta4" id="optionsRadiosInline2" value="2">Mais ou menos
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta4" id="optionsRadiosInline3" value="3">Bom
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta4" id="optionsRadiosInline4" value="4">ótimo
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta4" id="optionsRadiosInline5" value="5">Excelente
                        </label>
                    </div>
                    <h4 class="enunciado"><%=q.getPergunta5()%></h4>

                    <div class="form-group">

                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta5" id="optionsRadiosInline1" value="1" checked>Ruim
                        </label>
                        <label class=" radio-inline">
                            <input type="radio" name="rdoPergunta5" id="optionsRadiosInline2" value="2">Mais ou menos
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta5" id="optionsRadiosInline3" value="3">Bom
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta5" id="optionsRadiosInline4" value="4">ótimo
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta5" id="optionsRadiosInline5" value="5">Excelente
                        </label>
                    </div>
                    <h4 class="enunciado"><%=q.getPergunta6()%></h4>

                    <div class="form-group">

                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta6" id="optionsRadiosInline1" value="1" checked>Ruim
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta6" id="optionsRadiosInline2" value="2">Mais ou menos
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta6" id="optionsRadiosInline3" value="3">Bom
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta6" id="optionsRadiosInline4" value="4">ótimo
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta6" id="optionsRadiosInline5" value="5">Excelente
                        </label>
                    </div>
                    <h4 class="enunciado"><%=q.getPergunta7()%></h4>

                    <div class="form-group">

                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta7" id="optionsRadiosInline1" value="1" checked>Ruim
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta7" id="optionsRadiosInline2" value="2">Mais ou menos
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta7" id="optionsRadiosInline3" value="3">Bom
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta7" id="optionsRadiosInline4" value="4">ótimo
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta7" id="optionsRadiosInline5" value="5">Excelente
                        </label>
                    </div>
                    <h4 class="enunciado"><%=q.getPergunta8()%></h4>

                    <div class="form-group">

                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta8" id="optionsRadiosInline1" value="1" checked>Ruim
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta8" id="optionsRadiosInline2" value="2">Mais ou menos
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta8" id="optionsRadiosInline3" value="3">Bom
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta8" id="optionsRadiosInline4" value="4">ótimo
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta8" id="optionsRadiosInline5" value="5">Excelente
                        </label>
                    </div>
                    <h4 class="enunciado"><%=q.getPergunta9()%></h4>

                    <div class="form-group">

                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta9" id="optionsRadiosInline1" value="1" checked>Ruim
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta9" id="optionsRadiosInline2" value="2">Mais ou menos
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta9" id="optionsRadiosInline3" value="3">Bom
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta9" id="optionsRadiosInline4" value="4">ótimo
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta9" id="optionsRadiosInline5" value="5">Excelente
                        </label>
                    </div>
                    <h4 class="enunciado"><%=q.getPergunta10()%></h4>

                    <div class="form-group">

                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta10" id="optionsRadiosInline1" value="1" checked>Ruim
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta10" id="optionsRadiosInline2" value="2">Mais ou menos
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta10" id="optionsRadiosInline3" value="3">Bom
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta10" id="optionsRadiosInline4" value="4">ótimo
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="rdoPergunta10" id="optionsRadiosInline5" value="5">Excelente
                        </label>
                    </div>
                    <br/>
                    <hr/>
                    <input type="submit" value="confirmar" name="btnConfirmar"  /> 
              
                
            </div>
        
        <div class="painelUsuario">

            <br />
        
        </div>
        
    </body>

    <%@include file="rodape.jsp"%>


