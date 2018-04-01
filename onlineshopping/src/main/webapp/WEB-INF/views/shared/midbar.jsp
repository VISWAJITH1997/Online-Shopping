<c:forEach items="${categories}" var="category">
<div class="col-lg-4 col-md-6">
	<div class="box-simple">
			<div class="icon-outlined">
				<i class="fa fa-desktop"></i>
			</div>
			<h3 class="h4"><a href="${contextRoot}/show/category/${category.id}/products">${category.name}</a></h3>
			<p>Fifth abundantly made Give sixth hath. Cattle creature i be
				don't them behold green moved fowl Moved life us beast good
				yielding. Have bring.</p>
	</div>
</div>
</c:forEach>