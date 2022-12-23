<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
* {
		margin: 0;
		padding: 0;
		list-style: none;
	}

	.outer{
		width: 70%;
		margin-left: 280px;
	}


/* Image */

	.image {
		border-radius: 4px;
		border: 0;
		display: inline-block;
		position: relative;
	}

		.image img {
			border-radius: 4px;
			display: block;
		}

		.image.left, .image.right {
			max-width: 40%;
		}

			.image.left img, .image.right img {
				width: 100%;
			}

		.image.left {
			float: left;
			padding: 0 1.5em 1em 0;
			top: 0.25em;
		}

		.image.right {
			float: right;
			padding: 0 0 1em 1.5em;
			top: 0.25em;
		}

		.image.fit {
			display: block;
			margin: 0 0 2em 0;
			width: 100%;
		}

			.image.fit img {
				width: 100%;
			}

		.image.main {
			display: block;
			margin: 0 0 3em 0;
			width: 100%;
		}

			.image.main img {
				width: 100%;
			}


			


/* Tiles */

	.tiles {
		display: -moz-flex;
		display: -webkit-flex;
		display: -ms-flex;
		display: flex;
		-moz-flex-wrap: wrap;
		-webkit-flex-wrap: wrap;
		-ms-flex-wrap: wrap;
		flex-wrap: wrap;
		position: relative;
		margin: -2.5em 0 0 -2.5em;
	}

		.tiles article {
			-moz-transition: -moz-transform 0.5s ease, opacity 0.5s ease;
			-webkit-transition: -webkit-transform 0.5s ease, opacity 0.5s ease;
			-ms-transition: -ms-transform 0.5s ease, opacity 0.5s ease;
			transition: transform 0.5s ease, opacity 0.5s ease;
			position: relative;
			width: calc(33.33333% - 2.5em);
			margin: 2.5em 0 0 2.5em;
		}

			.tiles article > .image {
				-moz-transition: -moz-transform 0.5s ease;
				-webkit-transition: -webkit-transform 0.5s ease;
				-ms-transition: -ms-transform 0.5s ease;
				transition: transform 0.5s ease;
				position: relative;
				display: block;
				width: 100%;
				border-radius: 4px;
				overflow: hidden;
			}

				.tiles article > .image img {
					display: block;
					width: 100%;
				}

				.tiles article > .image:before {
					pointer-events: none;
					-moz-transition: background-color 0.5s ease, opacity 0.5s ease;
					-webkit-transition: background-color 0.5s ease, opacity 0.5s ease;
					-ms-transition: background-color 0.5s ease, opacity 0.5s ease;
					transition: background-color 0.5s ease, opacity 0.5s ease;
					content: '';
					display: block;
					position: absolute;
					top: 0;
					left: 0;
					width: 100%;
					height: 100%;
					opacity: 1.0;
					z-index: 1;
					opacity: 0.8;
				}

				.tiles article > .image:after {
					pointer-events: none;
					-moz-transition: opacity 0.5s ease;
					-webkit-transition: opacity 0.5s ease;
					-ms-transition: opacity 0.5s ease;
					transition: opacity 0.5s ease;
					content: '';
					display: block;
					position: absolute;
					top: 0;
					left: 0;
					width: 100%;
					height: 100%;
					background-image: url("data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' width='100' height='100' viewBox='0 0 100 100' preserveAspectRatio='none'%3E%3Cstyle%3Eline %7B stroke-width: 0.25px%3B stroke: %23ffffff%3B %7D%3C/style%3E%3Cline x1='0' y1='0' x2='100' y2='100' /%3E%3Cline x1='100' y1='0' x2='0' y2='100' /%3E%3C/svg%3E");
					background-position: center;
					background-repeat: no-repeat;
					background-size: 100% 100%;
					opacity: 0.25;
					z-index: 2;
				}

			.tiles article > a {
				display: -moz-flex;
				display: -webkit-flex;
				display: -ms-flex;
				display: flex;
				-moz-flex-direction: column;
				-webkit-flex-direction: column;
				-ms-flex-direction: column;
				flex-direction: column;
				-moz-align-items: center;
				-webkit-align-items: center;
				-ms-align-items: center;
				align-items: center;
				-moz-justify-content: center;
				-webkit-justify-content: center;
				-ms-justify-content: center;
				justify-content: center;
				-moz-transition: background-color 0.5s ease, -moz-transform 0.5s ease;
				-webkit-transition: background-color 0.5s ease, -webkit-transform 0.5s ease;
				-ms-transition: background-color 0.5s ease, -ms-transform 0.5s ease;
				transition: background-color 0.5s ease, transform 0.5s ease;
				position: absolute;
				top: 0;
				left: 0;
				width: 100%;
				height: 100%;
				padding: 1em;
				border-radius: 4px;
				border-bottom: 0;
				color: #ffffff;
				text-align: center;
				text-decoration: none;
				z-index: 3;
			}

				.tiles article > a > :last-child {
					margin: 0;
				}

				.tiles article > a:hover {
					color: #ffffff !important;
				}

				.tiles article > a h2 {
					margin: 0;
				}

				.tiles article > a .content {
					-moz-transition: max-height 0.5s ease, opacity 0.5s ease;
					-webkit-transition: max-height 0.5s ease, opacity 0.5s ease;
					-ms-transition: max-height 0.5s ease, opacity 0.5s ease;
					transition: max-height 0.5s ease, opacity 0.5s ease;
					width: 100%;
					max-height: 0;
					line-height: 1.5;
					margin-top: 0.35em;
					opacity: 0;
				}

					.tiles article > a .content > :last-child {
						margin-bottom: 0;
					}

			.tiles article.style1 > .image:before {
				background-color: #f2849e;
			}

			.tiles article.style2 > .image:before {
				background-color: #7ecaf6;
			}

			.tiles article.style3 > .image:before {
				background-color: #7bd0c1;
			}

			.tiles article.style4 > .image:before {
				background-color: #c75b9b;
			}

			.tiles article.style5 > .image:before {
				background-color: #ae85ca;
			}

			.tiles article.style6 > .image:before {
				background-color: #8499e7;
			}

			body:not(.is-touch) .tiles article:hover > .image {
				-moz-transform: scale(1.1);
				-webkit-transform: scale(1.1);
				-ms-transform: scale(1.1);
				transform: scale(1.1);
			}

				body:not(.is-touch) .tiles article:hover > .image:before {
					background-color: #333333;
					opacity: 0.35;
				}

				body:not(.is-touch) .tiles article:hover > .image:after {
					opacity: 0;
				}

			body:not(.is-touch) .tiles article:hover .content {
				max-height: 15em;
				opacity: 1;
			}

		* + .tiles {
			margin-top: 2em;
		}

		body.is-preload .tiles article {
			-moz-transform: scale(0.9);
			-webkit-transform: scale(0.9);
			-ms-transform: scale(0.9);
			transform: scale(0.9);
			opacity: 0;
		}

		body.is-touch .tiles article .content {
			max-height: 15em;
			opacity: 1;
		}


		#smalltitle{
			margin-top: 250px;
			text-align: center;
			font-size: 40px;
		}



	</style>
</head>
<body>

<jsp:include page="../common/header.jsp" />

	<div class="outer">

		<div id="main">
		<div class="inner">
			<div id="smalltitle">
				<p> 기업 / 부스 정보</p>

			</div>
				<section class="tiles">
				<article class="style1">
					<span class="image">
						<img src="images/pic01.jpg" alt="" />
					</span>
					<a href="generic.html">
						<h2>Magna</h2>
						<div class="content">
							<p>Sed nisl arcu euismod sit amet nisi lorem etiam dolor veroeros et feugiat.</p>
						</div>
					</a>
				</article>
				<article class="style2">
					<span class="image">
						<img src="images/pic02.jpg" alt="" />
					</span>
					<a href="generic.html">
						<h2>Lorem</h2>
						<div class="content">
							<p>Sed nisl arcu euismod sit amet nisi lorem etiam dolor veroeros et feugiat.</p>
						</div>
					</a>
				</article>
				<article class="style3">
					<span class="image">
						<img src="images/pic03.jpg" alt="" />
					</span>
					<a href="generic.html">
						<h2>Feugiat</h2>
						<div class="content">
							<p>Sed nisl arcu euismod sit amet nisi lorem etiam dolor veroeros et feugiat.</p>
						</div>
					</a>
				</article>
				<article class="style4">
					<span class="image">
						<img src="images/pic04.jpg" alt="" />
					</span>
					<a href="generic.html">
						<h2>Tempus</h2>
						<div class="content">
							<p>Sed nisl arcu euismod sit amet nisi lorem etiam dolor veroeros et feugiat.</p>
						</div>
					</a>
				</article>
				<article class="style5">
					<span class="image">
						<img src="images/pic05.jpg" alt="" />
					</span>
					<a href="generic.html">
						<h2>Aliquam</h2>
						<div class="content">
							<p>Sed nisl arcu euismod sit amet nisi lorem etiam dolor veroeros et feugiat.</p>
						</div>
					</a>
				</article>
				<article class="style6">
					<span class="image">
						<img src="images/pic06.jpg" alt="" />
					</span>
					<a href="generic.html">
						<h2>Veroeros</h2>
						<div class="content">
							<p>Sed nisl arcu euismod sit amet nisi lorem etiam dolor veroeros et feugiat.</p>
						</div>
					</a>
				</article>
				<article class="style2">
					<span class="image">
						<img src="images/pic07.jpg" alt="" />
					</span>
					<a href="generic.html">
						<h2>Ipsum</h2>
						<div class="content">
							<p>Sed nisl arcu euismod sit amet nisi lorem etiam dolor veroeros et feugiat.</p>
						</div>
					</a>
				</article>
				<article class="style3">
					<span class="image">
						<img src="images/pic08.jpg" alt="" />
					</span>
					<a href="generic.html">
						<h2>Dolor</h2>
						<div class="content">
							<p>Sed nisl arcu euismod sit amet nisi lorem etiam dolor veroeros et feugiat.</p>
						</div>
					</a>
				</article>
				<article class="style1">
					<span class="image">
						<img src="images/pic09.jpg" alt="" />
					</span>
					<a href="generic.html">
						<h2>Nullam</h2>
						<div class="content">
							<p>Sed nisl arcu euismod sit amet nisi lorem etiam dolor veroeros et feugiat.</p>
						</div>
					</a>
				</article>
				<article class="style5">
					<span class="image">
						<img src="images/pic10.jpg" alt="" />
					</span>
					<a href="generic.html">
						<h2>Ultricies</h2>
						<div class="content">
							<p>Sed nisl arcu euismod sit amet nisi lorem etiam dolor veroeros et feugiat.</p>
						</div>
					</a>
				</article>
				<article class="style6">
					<span class="image">
						<img src="images/pic11.jpg" alt="" />
					</span>
					<a href="generic.html">
						<h2>Dictum</h2>
						<div class="content">
							<p>Sed nisl arcu euismod sit amet nisi lorem etiam dolor veroeros et feugiat.</p>
						</div>
					</a>
				</article>
				<article class="style4">
					<span class="image">
						<img src="images/pic12.jpg" alt="" />
					</span>
					<a href="generic.html">
						<h2>Pretium</h2>
						<div class="content">
							<p>Sed nisl arcu euismod sit amet nisi lorem etiam dolor veroeros et feugiat.</p>
						</div>
					</a>
				</article>
			</section>
		</div>
	</div>


</div>





</body>
	
</body>
</html>