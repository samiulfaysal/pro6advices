<?php 

/**
 * This view serves as the contents of the ProcessFormBuilder 'embed' tab. 
 *
 */

if(!defined("PROCESSWIRE")) throw new \ProcessWire\WireException("This file may not be accessed directly "); 

$theme = $form->theme ? $form->theme : 'default';

$embedFields = \ProcessWire\wire('modules')->get('FormBuilder')->embedFields;
$embedFieldsStr = '';

foreach($embedFields as $field_id) {
	$field = \ProcessWire\wire('fields')->get((int) $field_id);
	if(!$field) continue; 
	$embedFieldsStr .= "<u>{$field->label}</u>, ";
}
$embedFieldsStr = rtrim($embedFieldsStr, ", "); 

?>

<div class='ProcessFormBuilderAccordion'>
	<h5><a href='#'><b><?php echo \ProcessWire\__('Option A: Easy Embed', \ProcessWire\wire("config")->paths->root . 'site/modules/FormBuilder/ProcessFormBuilderEmbed.php'); ?></b></a></h5>
	<div>
		<?php if(count($embedFields)): ?>

		<p>
		<b><?php echo \ProcessWire\__('Paste a tag into your text where you want the form to appear.', \ProcessWire\wire("config")->paths->root . 'site/modules/FormBuilder/ProcessFormBuilderEmbed.php'); ?></b>
		<?php echo sprintf(\ProcessWire\__('This is the easiest method and requires you do nothing other than edit a page and paste in (or type) a tag. You can just copy and paste the following tag where you want your form to appear in %s.', \ProcessWire\wire("config")->paths->root . 'site/modules/FormBuilder/ProcessFormBuilderEmbed.php'), $embedFieldsStr); ?>
		</p>

		<p><textarea class='code' rows='1'><?php echo $embedTag . '/' . $form->name; ?></textarea></p>

		<p>
		<?php echo \ProcessWire\__('Note that the tag above must be pasted (or typed) into a paragraph or a headline (p, h1, h2, h3, h4) and be the only thing in it.', \ProcessWire\wire("config")->paths->root . 'site/modules/FormBuilder/ProcessFormBuilderEmbed.php'); ?>
		<?php echo \ProcessWire\__('Save the page and view it, and you should see your form.', \ProcessWire\wire("config")->paths->root . 'site/modules/FormBuilder/ProcessFormBuilderEmbed.php'); ?>
		</p>

		<p class='detail'><?php echo \ProcessWire\__('If you want to support this easy embed option in other fields, you may add more from the Form Builder module settings.', \ProcessWire\wire("config")->paths->root . 'site/modules/FormBuilder/ProcessFormBuilderEmbed.php'); ?></p>
		
		<?php else: ?>

		<p><?php echo \ProcessWire\__('This embed option cannot be used because no embed fields have been defined in your Form Builder module settings. Please edit the Form Builder module settings and check the box for at least one field.', \ProcessWire\wire("config")->paths->root . 'site/modules/FormBuilder/ProcessFormBuilderEmbed.php'); ?></p>

		<?php endif; ?>
	</div>

	<h5><a href='#'><b><?php echo \ProcessWire\__('Option B: Template Embed', \ProcessWire\wire("config")->paths->root . 'site/modules/FormBuilder/ProcessFormBuilderEmbed.php'); ?></b></a></h5>
	<div>
		<p>
		<b><?php echo \ProcessWire\__('Paste an embed code into your template file.', \ProcessWire\wire("config")->paths->root . 'site/modules/FormBuilder/ProcessFormBuilderEmbed.php'); ?></b>
		<?php echo \ProcessWire\__('Use this option if you want the form to be loaded from a template file rather than from a field.', \ProcessWire\wire("config")->paths->root . 'site/modules/FormBuilder/ProcessFormBuilderEmbed.php'); ?> 
		<?php echo \ProcessWire\__('This provides you with more defined placement options than option A, but requires editing a template file.', \ProcessWire\wire("config")->paths->root . 'site/modules/FormBuilder/ProcessFormBuilderEmbed.php'); ?> 
		<?php echo \ProcessWire\__('Copy and paste the following directly into your template file(s) where you want the form to appear:', \ProcessWire\wire("config")->paths->root . 'site/modules/FormBuilder/ProcessFormBuilderEmbed.php'); ?>
		</p>

		<p><textarea class='code' rows='1'>&lt;?php echo $forms->embed('<?php echo $form->name; ?>'); ?&gt;</textarea></p>
	</div>

	<h5><a href='#'><b><?php echo \ProcessWire\__('Option C: Custom Embed', \ProcessWire\wire("config")->paths->root . 'site/modules/FormBuilder/ProcessFormBuilderEmbed.php'); ?></b></a></h5>
	<div>
		<p>
		<b><?php echo \ProcessWire\__('Render the form markup in your template file without an iframe.', \ProcessWire\wire("config")->paths->root . 'site/modules/FormBuilder/ProcessFormBuilderEmbed.php'); ?></b> 
		<?php echo \ProcessWire\__('This option is only recommended for those that do not mind resolving potential CSS conflicts between your site styles and those used by the form... or for those that prefer not to use any of FormBuilder CSS stylesheets.', \ProcessWire\wire("config")->paths->root . 'site/modules/FormBuilder/ProcessFormBuilderEmbed.php'); ?>
		<?php echo \ProcessWire\__('It renders the form markup directly in the page, but consistency of output may potentially be affected by your own CSS (which is either a good thing or a bad thing, depending on what you want).', \ProcessWire\wire("config")->paths->root . 'site/modules/FormBuilder/ProcessFormBuilderEmbed.php'); ?> 
		<?php echo \ProcessWire\__('To proceed, copy and paste the following code into your template file where you want the form to appear.', \ProcessWire\wire("config")->paths->root . 'site/modules/FormBuilder/ProcessFormBuilderEmbed.php'); ?>
		</p>

		<p><textarea class='code' rows='1'>&lt;?php echo $forms->load('<?php echo $form->name; ?>')->render(); ?></textarea></p>

		<p>
		<b><?php echo \ProcessWire\__('This next part is optional but recommended.', \ProcessWire\wire("config")->paths->root . 'site/modules/FormBuilder/ProcessFormBuilderEmbed.php'); ?></b>
		<?php echo \ProcessWire\__('Some of the layout and UI features in our forms are handled by CSS and/or Javascript.', \ProcessWire\wire("config")->paths->root . 'site/modules/FormBuilder/ProcessFormBuilderEmbed.php'); ?>
		<?php echo \ProcessWire\__('If you want to maintain capabilities such as theming, column width, collapsible fieldsets and more, then you should include the code outlined below.', \ProcessWire\wire("config")->paths->root . 'site/modules/FormBuilder/ProcessFormBuilderEmbed.php'); ?>
		<?php echo \ProcessWire\__('If you do not include it, then all form styling will be your responsibility (which may or may not be what you want).', \ProcessWire\wire("config")->paths->root . 'site/modules/FormBuilder/ProcessFormBuilderEmbed.php'); ?>
		<?php echo \ProcessWire\__('Place the following between your document <head></head> tags to provide default CSS styling and javascript behaviors.', \ProcessWire\wire("config")->paths->root . 'site/modules/FormBuilder/ProcessFormBuilderEmbed.php'); ?> 
		</p>
		<p>
<textarea class='code' rows='16'>&lt;?php
$modules->get('JqueryCore'); // <?php echo \ProcessWire\__('...or load your own jQuery', \ProcessWire\wire("config")->paths->root . 'site/modules/FormBuilder/ProcessFormBuilderEmbed.php'); ?>

$config->styles->append($config->urls->root . "wire/templates-admin/styles/inputfields.css"); 
$config->scripts->append($config->urls->root . "wire/templates-admin/scripts/inputfields.js"); 
$config->styles->append($config->urls->FormBuilder . 'form-builder.css'); 
$config->scripts->append($config->urls->FormBuilder . "form-builder.js"); 
foreach(array('jquery-ui', 'inputfields', 'main') as $file) {
  $path = $config->paths->FormBuilder . "themes/<?php echo $theme; ?>/$file";
  $url = $config->urls->FormBuilder . "themes/<?php echo $theme; ?>/$file";
  if(is_file("$path.css")) $config->styles->append("$url.css"); 
  if(is_file("$path.js")) $config->scripts->append("$url.js"); 
}
foreach($config->styles as $file) echo "<link rel='stylesheet' type='text/css' href='$file' />"; 
foreach($config->scripts as $file) echo "<script type='text/javascript' src='$file'></script>";
?&gt;</textarea>
		</p>
		<p><?php echo \ProcessWire\__('The last line (outputting the script tags) may be moved to the end of your document (before the closing </body> tag) if you prefer it. If you know what you are doing, you should feel free to modify, remove, or entirely exclude the above code as you see fit.', \ProcessWire\wire("config")->paths->root . 'site/modules/FormBuilder/ProcessFormBuilderEmbed.php'); ?></p>
	</div>
</div>
<script type='text/javascript'>$("textarea.code").click(function() { $(this).select()});</script>

