 <h3 align="center">Insérer un contenu</h3>
    <form action="${pageContext.request.contextPath}/insertFilm" method="post" enctype="multipart/form-data">
        <input type="text" placeholder="Titre" class="form-control" name="titre" required>
        <input id="fileupload" type="file" class="form-control" name="sary" required />
        <textarea placeholder="Description" class="form-control" name="description" required></textarea>
        <input type="submit" value="Valider">
    </form>
