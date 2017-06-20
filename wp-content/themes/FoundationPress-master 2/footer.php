<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the "off-canvas-wrap" div and all content after.
 *
 * @package FoundationPress
 * @since FoundationPress 1.0.0
 */
?>

<section class="pied">
		<div class="footer-container" data-sticky-footer>
			<footer class="footer">
					<div class="row">
					  <div class="large-3 columns">
							<h4>coordonnées</h4>
							<h5>5 rue du César Julien
									67200<br/> STRASBOURG - 06 74 86 02 59<br/>
									structures.interieures@gmail.com</h5>
							<a target="_blank" href="https://fr-fr.facebook.com/Structures-Int%C3%A9rieures-541193659275924/"><img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/icone-facebook.png" alt="facebook" class="facebook"/></a>
						</div>

						<div class="large-3 columns">
							<h4>à propos de "SI"</h4>
							<a>CGU</a><br/>
							<a>Mentions légales</a><br/>
							<a>Copyright 2017</a>
						</div>

					  <div class="large-3 columns">
							<h4>service client</h4>
							<a>Contactez la société</a><br/>
							<a>FAQ</a>
						</div>

					  <div class="large-3 columns">
							<h4>abonnement</h4>
							<h5>Abonnez-vous à la Newsletter
								et reçevez nos offres avantageuses
								en avant-première</h5>

								<div class="input-group">
								  <input class="input-group-field" type="text" id="abonnement" textarea placeholder="Votre E-mail">
								  <div class="input-group-button">
								    <input type="submit" class="button" value="OK" id="ok">
								  </div>
								</div>
						</div>
					</div>
	</section>



				<?php do_action( 'foundationpress_before_footer' ); ?>
				<?php dynamic_sidebar( 'footer-widgets' ); ?>
				<?php do_action( 'foundationpress_after_footer' ); ?>
			</footer>
		</div>



		<?php do_action( 'foundationpress_layout_end' ); ?>

<?php if ( get_theme_mod( 'wpt_mobile_menu_layout' ) === 'offcanvas' ) : ?>
		</div><!-- Close off-canvas content -->
	</div><!-- Close off-canvas wrapper -->
<?php endif; ?>


<?php wp_footer(); ?>
<?php do_action( 'foundationpress_before_closing_body' ); ?>

<script id="__bs_script__">//<![CDATA[
    document.write("<script async src='http://HOST:3000/browser-sync/browser-sync-client.js?v=2.18.12'><\/script>".replace("HOST", location.hostname));
//]]></script>

</body>
</html>
