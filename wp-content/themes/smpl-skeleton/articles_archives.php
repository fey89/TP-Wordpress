<?php /* Template Name: articles_archives */ ?>
<?php get_header(); ?> 
<div class="span-24" id="contentwrap"> 
 <div class="span-16"> 
 <div id="content"> 
 <h2>Archives par mois</h2> 
 <ul> <?php wp_get_archives('type=monthly&show_post_count=1'); ?> </ul> 
 <h2>Archives par catégories</h2> 
 <ul><?php wp_list_cats('sort_column=name&optioncount=1'); ?></ul> 
 </div> 
 </div> 
 <?php get_sidebars(); ?> 
</div> 
<?php get_footer(); ?>