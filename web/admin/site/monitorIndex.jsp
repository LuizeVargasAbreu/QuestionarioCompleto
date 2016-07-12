<%@page import="java.util.List"%>
<%@page import="dao.MonitorDAO"%>
<%@page import="modelo.Monitor"%>
<%@include file="cabecalho.jsp"%>
<%
    // Pesquisar o nome do monitor e lhe entregar sua média geral de avaliação
    Monitor moni = new Monitor();
    MonitorDAO moniDAO = new MonitorDAO();
    List<Monitor> mList = moniDAO.listar();
%>

<body>
    
        <div class="pergunta">
            <div class="opcoes">
                <form action="monitorIndex-ok.jsp" method="post">
                    <div class="form-group">
                        <label>Selecione o monitor que você deseja saber a média de seu desempenho</label>
                        <select class="form-control" id="idMonitor" name="idMonitor" value="<%=moni.getIdMonitor()%>">
                            <option value="">Selecione..</option>
                            <%
                                for (Monitor m : mList) {
                            %>
                            <option value="<%=m.getIdMonitor()%>"><%=m%></option>
                        <%
                            }
                        %>
                        </select>
                        
                    </div>
                        <br/>
                    <hr/>
                    <input type="submit" value="Saber média" name="btnConfirmar"  /> 
              
                
            </div>
        
        <div class="painelUsuario">

            <br />
        
        </div>
</div>
</body>
</html>
 <%@include file="rodape.jsp"%>
