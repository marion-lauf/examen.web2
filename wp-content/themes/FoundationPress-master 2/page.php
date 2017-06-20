<?php
/**
 * The template for displaying pages
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages and that
 * other "pages" on your WordPress site will use a different template.
 *
 * @package FoundationPress
 * @since FoundationPress 1.0.0
 */

 get_header(); ?>


 <section class="details">
 	<div class="row">
    <div class="large-6 columns">
      <img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/image-slider.png" alt="image-slider" class="image-slider"/>


        <img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/miniature-1.png" alt="image-slider" class="image-slider"/>
        <img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/miniature-2.png" alt="image-slider" class="image-slider"/>
        <img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/miniature-3.png" alt="image-slider" class="image-slider"/>

    </div>
    <div class="large-6 columns">
      <h3>meuble complet sur mesure</h3>
        <p>Craquez pour ce magnifique meuble tout en un. Il comporte une armoire à rangements intelligents pour que le moindre recoin soit utilisé + une commode à 5 tiroirs entièrement fonctionnels.</p>

        <p>Meuble idéal pour petite pièce ou pièce mensardée.
           Coloris du bois des portes au choix.
           Toutes largeurs et hauteurs possibles.</p>

      <a href="#features" class="button" id="button-page">Demander un devis</a>
    </div>


 	</div>
 </section>



 <div class="articles">
 	<div class="row">
 			<h2>pièces d'exception</h2>
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
 	<h2>l'artisan</h2>

 	<div class="large-3 columns">
 		<img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/avatar.png" alt="puce" class="puce"/>
 	</div>

 	<div class="large-9 columns">
 	<h3>Olivier Hess</h3>

 	<p>Artisan menuisier de métier, Olivier a crée sa société de mobilier et d’aménagement en novembre 2011.
 		Il porte une attention particulière à proposer des projets sur mesure à ses clients, intégrant aux pièces les particularités du client (environnement, personnalité) et le design estampillé <b>«Structures Intérieures»</b>. Chaque réalisation est un projet à part entière : L’artisan rencontre le client, échange sur ses objectifs et usages, propose différentes simulations avant de livrer et d’installer les pièces définitives.</p>
 	</div>
 </div>

 </div>

 <?php get_footer();
