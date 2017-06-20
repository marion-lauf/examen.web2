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


<div class="row">
	<img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/slide.png" alt="image de presentation" class="slide"/>
	<h1>des créations uniques</h1>
	<a href="#features" class="button">Découvrir</a>
</div>


<div class="row">
  <div class="large-3 columns">
		<img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/picto-diamant.png" alt="elements de rassurance" class="rassurance"/>
		<p><img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/puce.png" alt="puce" class="puce"/> Pièces uniques</p>
		<p><img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/puce.png" alt="puce" class="puce"/> Sur mesure</p>
	</div>

	<div class="large-3 columns">
		<img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/picto-madeinfrance.png" alt="elements de rassurance" class="rassurance"/>
		<p><img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/puce.png" alt="puce" class="puce"/> Fabrication Artisanale</p>
		<p><img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/puce.png" alt="puce" class="puce"/> 100% Française</p>
	</div>


  <div class="large-3 columns">
		<img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/picto-manuel.png" alt="elements de rassurance" class="rassurance"/>
		<p><img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/puce.png" alt="puce" class="puce"/> 6 ans d’expérience</p>
		<p><img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/puce.png" alt="puce" class="puce"/> Réalisations faites main</p>
	</div>

  <div class="large-3 columns">
		<img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/picto-qualite.png" alt="elements de rassurance" class="rassurance"/>
		<p><img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/puce.png" alt="puce" class="puce"/> Testés et approuvés</p>
		<p><img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/puce.png" alt="puce" class="puce"/> Matériaux nobles</p>
	</div>
</div>






<?php get_footer();
