<?php
/**
 * The main template file
 *
 * This is the most generic template file in a WordPress theme
 * and one of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query.
 * e.g., it puts together the home page when no home.php file exists.
 *
 * Learn more: {@link https://codex.wordpress.org/Template_Hierarchy}
 *
 * @package FoundationPress
 * @since FoundationPress 1.0.0
 */

get_header(); ?>

<section class="image-accueil">
	<div class="row">
		<img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/slide.png" alt="image de presentation" class="slide"/>
		<h1 id="creations">des créations uniques</h1>
		<a href="#features" class="button" id="decouvrir">Découvrir</a>
	</div>
</section>


<section class="elements-rassurance">
	<div class="row">
	  <div class="large-3 columns">
			<img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/picto-diamant.png" alt="elements de rassurance" class="pictos-rassurance"/>
			<p class="points"><img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/puce.png" alt="puce" class="puce"/> Pièces uniques <br/>
			<img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/puce.png" alt="puce" class="puce"/> Sur mesure</p>
		</div>

		<div class="large-3 columns">
			<img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/picto-madeinfrance.png" alt="elements de rassurance" class="pictos-rassurance"/>
			<p class="points"><img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/puce.png" alt="puce" class="puce"/> Fabrication Artisanale <br/>
			<img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/puce.png" alt="puce" class="puce"/> 100% Française</p>
		</div>

	  <div class="large-3 columns">
			<img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/picto-manuel.png" alt="elements de rassurance" class="pictos-rassurance"/>
			<p class="points"><img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/puce.png" alt="puce" class="puce"/> 6 ans d’expérience <br/>
			<img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/puce.png" alt="puce" class="puce"/> Réalisations faites main</p>
		</div>

	  <div class="large-3 columns">
			<img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/picto-qualite.png" alt="elements de rassurance" class="pictos-rassurance"/>
			<p class="points"><img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/puce.png" alt="puce" class="puce"/> Testés et approuvés <br/>
			<img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/puce.png" alt="puce" class="puce"/> Matériaux nobles</p>
		</div>
	</div>
</section>


<div class="articles">
	<div class="row">
			<h2>dernières réalisations</h2>
			<ul>
				<?php
				$args = array( 'numberposts' => 3, 'order'=> 'ASC', 'orderby' => 'title' );
				$postslist = get_posts( $args );
				foreach ($postslist as $post) :  setup_postdata($post); ?>
				<div class="large-4 columns end extrait-page">
					<?php the_post_thumbnail(); ?>
					<a class="h1-title" href="<?php the_permalink(); ?>" title="<?php the_title();?>"> <?php the_title(); ?></a><br>
					<?php the_excerpt(); ?>
				</div>
				<?php endforeach; ?>
			</ul>
	</div>
</div>
</div>


<div class="articles">
	<div class="row">
			<h2 id="baisse">pièces d'exception</h2>
			<ul>
				<?php
				$args = array( 'numberposts' => 3, 'order'=> 'ASC', 'orderby' => 'title' );
				$postslist = get_posts( $args );
				foreach ($postslist as $post) :  setup_postdata($post); ?>
				<div class="large-4 columns end extrait-page">
					<?php the_post_thumbnail(); ?>
					<a class="h1-title" href="<?php the_permalink(); ?>" title="<?php the_title();?>"> <?php the_title(); ?></a><br>
					<?php the_excerpt(); ?>
				</div>
				<?php endforeach; ?>
			</ul>
	</div>
</div>
</div>


<div class="row">
	<h2 id="baisse">l'artisan</h2>

	<div class="large-3 columns">
		<img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/avatar.png" alt="puce" class="puce"/>
	</div>

	<div class="large-9 columns">
	<h3>Olivier Hess</h3>

	<p>Artisan menuisier de métier, Olivier a crée sa société de mobilier et d’aménagement en novembre 2011.
		Il porte une attention particulière à proposer des projets sur mesure à ses clients, intégrant aux pièces les particularités du client (environnement, personnalité) et le design estampillé <b>«Structures Intérieures»</b>. Chaque réalisation est un projet à part entière : L’artisan rencontre le client, échange sur ses objectifs et usages, propose différentes simulations avant de livrer et d’installer les pièces définitives.</p>
	</div>
</div>


<?php get_footer();
