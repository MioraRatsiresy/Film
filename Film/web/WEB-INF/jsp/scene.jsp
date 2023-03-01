<h3 align="center">Insérer une scene</h3>
    <form action="${pageContext.request.contextPath}/insertScene" method="post">
        <input type="text" placeholder="Film" class="form-control" name="idfilm" required>
        <input type="text" placeholder="Plateau" class="form-control" name="idplateau" required>
        <input type="text" placeholder="Description" class="form-control" name="description" required>
        <input type="text" placeholder="Auteur" class="form-control" name="auteur" required>
        <input type="submit" value="Valider">
    </form>