<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>

<html>
<head>
<meta name="viewport" content="width=device-width" />
<title>Recipe Table View</title>
<c:url var="stylesheetUrl" value="/css/site.css" />
<link rel="stylesheet" href="${stylesheetUrl}" />
</head>
<body>
	<header>
		<h1>MVC Exercises - Views Part 2: Models</h1>
	</header>
	<nav>
		<ul>
			<c:url var="recipeTilesUrl" value="/recipeTiles" />
			<li><a href="${recipeTilesUrl}">Tile Layout</a></li>
			<c:url var="recipeTableUrl" value="/recipeTable" />
			<li><a href="${recipeTableUrl}">Table Layout</a></li>
		</ul>

	</nav>
	<section id="main-content">

		<table>
			<tr>
				<td></td>
				<%--loops through all the images--%>
				<c:forEach var="recipe" items="${recipes}">

					<th>
						<%--loops through all the images--%>
						<div class="image">
							<c:url value="/img/recipe${recipe.recipeId}.jpg" var="picture0" />
							<img src="${picture0}" width="100%" height="100%">

						</div>

					</th>
				</c:forEach>

				<%--item names --%>

			</tr>

			<tr class="dark">
				<td>Name</td>
				<c:forEach var="recipe" items="${recipes}">
					<td><c:out value="${recipe.name}" /></td>

				</c:forEach>
			</tr>
			<%--type  --%>
			<tr class="light">
				<td>Type</td>
				<c:forEach var="recipe" items="${recipes}">
					<td><c:out value="${recipe.recipeType}" /></td>

				</c:forEach>
			</tr>

			<%--cook time --%>
			<tr class="dark">
				<td>Cook-Time</td>
				<c:forEach var="recipe" items="${recipes}">
					<td><c:out value="${recipe.cookTimeInMinutes}" /></td>

				</c:forEach>
			</tr>
			<%--ingredients  --%>
			<tr>
				<td>Ingredients</td>
				<c:forEach var="recipe" items="${recipes}">
					<td><c:out value="${recipe.ingredients.size()}" /></td>

				</c:forEach>
			</tr>
			<%--rating  --%>
			<tr class="dark">
				<td>Rating</td>
				<c:forEach var="recipe" items="${recipes}">

					<fmt:formatNumber maxFractionDigits="0"
						value="${ recipe.averageRating}" var="rating" />

					<c:url value="/img/${rating}-star.png" var="starRating" />

					<td><img src="${starRating}" width="100px" height="20px"></td>


				</c:forEach>
			</tr>
		</table>
		<!-- Use the request attribute "recipes" (List<Recipe>) -->





	</section>
</body>
</html>