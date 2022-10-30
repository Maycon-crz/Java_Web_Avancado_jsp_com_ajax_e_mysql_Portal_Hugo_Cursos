<jsp:include page="cabecalho.jsp" />
<% String pag = "categorias"; %>

<div class="container">
    <div class="row mt-4 mb-b">
        <a type="button" class="btn-info btn-sm ml-3" href="<%= pag %>.jsp?funcao=novo">Nova Categoria</a>
        <form class="form-inline my-2 my-lg-0 direita" method="get">
            <input class="form-control form-control-sm mr-sm-2" type="search" id="txtbuscar" placeholder="Buscar pelo Nome" aria-label="Search" />
            <button class="btn btn-outline-info btn-sm my-2 my-sm-0 d-none d-md-block" type="submit" id="btn-buscar">Buscar</button>
        </form>
    </div>

    <div id="listar">

    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="modalDados" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Inserir Registro</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <label for="nome">Nome</label>
                    <input type="text" class="form-control" id="nome" placeholder="Nome">            
                </div>
                <div class="form-group">
                    <label for="descricao">Descrição</label>
                    <input type="text" class="form-control" id="descricao" placeholder="Descrição">            
                </div>
                <div class="form-group">
                    <label for="imagem">Imagem</label>
                    <input type="file" class="form-control-file" id="imagem">
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                <button type="button" name="btn-salvar" id="btn-salvar" class="btn btn-primary">Salvar</button>
            </div>
        </div>
    </div>
</div>

<%
    if(request.getParameter("funcao") != null && request.getParameter("funcao").equals("novo")){
        out.print("<script>$('#modalDados').modal('show');</script>");
    }
%>

<!-- Ajax para inserir dados -->
