-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 05, 2024 at 08:19 AM
-- Server version: 10.11.9-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u558951646_processwire`
--

-- --------------------------------------------------------

--
-- Table structure for table `caches`
--

CREATE TABLE `caches` (
  `name` varchar(250) NOT NULL,
  `data` mediumtext NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `caches`
--

INSERT INTO `caches` (`name`, `data`, `expires`) VALUES
('Modules.wire/modules/', 'System/SystemNotifications/SystemNotifications.module\nSystem/SystemNotifications/FieldtypeNotifications.module\nSystem/SystemUpdater/SystemUpdater.module\nTextformatter/TextformatterNewlineBR.module\nTextformatter/TextformatterPstripper.module\nTextformatter/TextformatterNewlineUL.module\nTextformatter/TextformatterEntities.module\nTextformatter/TextformatterStripTags.module\nTextformatter/TextformatterSmartypants/TextformatterSmartypants.module\nTextformatter/TextformatterMarkdownExtra/TextformatterMarkdownExtra.module\nPageRender.module\nPagePaths.module\nFileCompilerTags.module\nInputfield/InputfieldFieldset.module\nInputfield/InputfieldForm.module\nInputfield/InputfieldEmail.module\nInputfield/InputfieldText/InputfieldText.module\nInputfield/InputfieldPageAutocomplete/InputfieldPageAutocomplete.module\nInputfield/InputfieldCheckbox/InputfieldCheckbox.module\nInputfield/InputfieldPageName/InputfieldPageName.module\nInputfield/InputfieldAsmSelect/InputfieldAsmSelect.module\nInputfield/InputfieldURL.module\nInputfield/InputfieldCKEditor/InputfieldCKEditor.module\nInputfield/InputfieldCheckboxes/InputfieldCheckboxes.module\nInputfield/InputfieldMarkup.module\nInputfield/InputfieldPageListSelect/InputfieldPageListSelectMultiple.module\nInputfield/InputfieldPageListSelect/InputfieldPageListSelect.module\nInputfield/InputfieldTextTags/InputfieldTextTags.module\nInputfield/InputfieldButton.module\nInputfield/InputfieldTextarea.module\nInputfield/InputfieldPassword/InputfieldPassword.module\nInputfield/InputfieldPageTitle/InputfieldPageTitle.module\nInputfield/InputfieldName.module\nInputfield/InputfieldRadios/InputfieldRadios.module\nInputfield/InputfieldTinyMCE/InputfieldTinyMCE.module.php\nInputfield/InputfieldHidden.module\nInputfield/InputfieldImage/InputfieldImage.module\nInputfield/InputfieldFile/InputfieldFile.module\nInputfield/InputfieldDatetime/InputfieldDatetime.module\nInputfield/InputfieldSubmit/InputfieldSubmit.module\nInputfield/InputfieldToggle/InputfieldToggle.module\nInputfield/InputfieldPage/InputfieldPage.module\nInputfield/InputfieldSelect.module\nInputfield/InputfieldFloat.module\nInputfield/InputfieldIcon/InputfieldIcon.module\nInputfield/InputfieldSelectMultiple.module\nInputfield/InputfieldPageTable/InputfieldPageTable.module\nInputfield/InputfieldSelector/InputfieldSelector.module\nInputfield/InputfieldInteger.module\nPagePermissions.module\nLanguageSupport/LanguageSupport.module\nLanguageSupport/FieldtypePageTitleLanguage.module\nLanguageSupport/LanguageSupportPageNames.module\nLanguageSupport/FieldtypeTextLanguage.module\nLanguageSupport/ProcessLanguage.module\nLanguageSupport/LanguageTabs.module\nLanguageSupport/FieldtypeTextareaLanguage.module\nLanguageSupport/ProcessLanguageTranslator.module\nLanguageSupport/LanguageSupportFields.module\nImage/ImageSizerEngineAnimatedGif/ImageSizerEngineAnimatedGif.module\nImage/ImageSizerEngineIMagick/ImageSizerEngineIMagick.module\nPage/PageFrontEdit/PageFrontEdit.module\nProcess/ProcessHome.module\nProcess/ProcessList.module\nProcess/ProcessPageList/ProcessPageList.module\nProcess/ProcessPermission/ProcessPermission.module\nProcess/ProcessField/ProcessField.module\nProcess/ProcessPageTrash.module\nProcess/ProcessPageEditImageSelect/ProcessPageEditImageSelect.module\nProcess/ProcessForgotPassword/ProcessForgotPassword.module\nProcess/ProcessTemplate/ProcessTemplate.module\nProcess/ProcessRole/ProcessRole.module\nProcess/ProcessPageSearch/ProcessPageSearch.module\nProcess/ProcessProfile/ProcessProfile.module\nProcess/ProcessPageEdit/ProcessPageEdit.module\nProcess/ProcessPagesExportImport/ProcessPagesExportImport.module\nProcess/ProcessPageSort.module\nProcess/ProcessCommentsManager/ProcessCommentsManager.module\nProcess/ProcessLogin/ProcessLogin.module\nProcess/ProcessPageAdd/ProcessPageAdd.module\nProcess/ProcessPageType/ProcessPageType.module\nProcess/ProcessRecentPages/ProcessRecentPages.module\nProcess/ProcessPageLister/ProcessPageLister.module\nProcess/ProcessPageEditLink/ProcessPageEditLink.module\nProcess/ProcessLogger/ProcessLogger.module\nProcess/ProcessModule/ProcessModule.module\nProcess/ProcessPageView.module\nProcess/ProcessUser/ProcessUser.module\nProcess/ProcessPageClone.module\nFieldtype/FieldtypeFile/FieldtypeFile.module\nFieldtype/FieldtypeSelector.module\nFieldtype/FieldtypeFieldsetTabOpen.module\nFieldtype/FieldtypePageTitle.module\nFieldtype/FieldtypeRepeater/InputfieldRepeater.module\nFieldtype/FieldtypeRepeater/FieldtypeRepeater.module\nFieldtype/FieldtypeRepeater/FieldtypeFieldsetPage.module\nFieldtype/FieldtypePage.module\nFieldtype/FieldtypeCache.module\nFieldtype/FieldtypeFieldsetOpen.module\nFieldtype/FieldtypePageTable.module\nFieldtype/FieldtypeText.module\nFieldtype/FieldtypeInteger.module\nFieldtype/FieldtypePassword.module\nFieldtype/FieldtypeToggle.module\nFieldtype/FieldtypeURL.module\nFieldtype/FieldtypeCheckbox.module\nFieldtype/FieldtypeFloat.module\nFieldtype/FieldtypeOptions/FieldtypeOptions.module\nFieldtype/FieldtypeModule.module\nFieldtype/FieldtypeFieldsetClose.module\nFieldtype/FieldtypeDecimal.module\nFieldtype/FieldtypeImage/FieldtypeImage.module\nFieldtype/FieldtypeEmail.module\nFieldtype/FieldtypeComments/CommentFilterAkismet.module\nFieldtype/FieldtypeComments/InputfieldCommentsAdmin.module\nFieldtype/FieldtypeComments/FieldtypeComments.module\nFieldtype/FieldtypeDatetime.module\nFieldtype/FieldtypeTextarea.module\nMarkup/MarkupHTMLPurifier/MarkupHTMLPurifier.module\nMarkup/MarkupAdminDataTable/MarkupAdminDataTable.module\nMarkup/MarkupCache.module\nMarkup/MarkupPagerNav/MarkupPagerNav.module\nMarkup/MarkupRSS.module\nMarkup/MarkupPageArray.module\nMarkup/MarkupPageFields.module\nSession/SessionLoginThrottle/SessionLoginThrottle.module\nSession/SessionHandlerDB/ProcessSessionDB.module\nSession/SessionHandlerDB/SessionHandlerDB.module\nJquery/JqueryTableSorter/JqueryTableSorter.module\nJquery/JqueryUI/JqueryUI.module\nJquery/JqueryMagnific/JqueryMagnific.module\nJquery/JqueryCore/JqueryCore.module\nJquery/JqueryWireTabs/JqueryWireTabs.module\nPagePathHistory.module\nLazyCron.module\nAdminTheme/AdminThemeDefault/AdminThemeDefault.module\nAdminTheme/AdminThemeReno/AdminThemeReno.module\nAdminTheme/AdminThemeUikit/AdminThemeUikit.module', '2010-04-08 03:10:01'),
('Modules.site/modules/', 'FormBuilder/FormBuilder.module\nFormBuilder/ProcessFormBuilder.module\nFormBuilder/InputfieldFormBuilderFile.module\nTextformatterVideoEmbed-master/TextformatterVideoEmbed.module', '2010-04-08 03:10:01'),
('ModulesVerbose.info', '{\"139\":{\"summary\":\"Manages system versions and upgrades.\",\"core\":true,\"versionStr\":\"0.2.0\"},\"61\":{\"summary\":\"Entity encode ampersands, quotes (single and double) and greater-than\\/less-than signs using htmlspecialchars(str, ENT_QUOTES). It is recommended that you use this on all text\\/textarea fields except those using a rich text editor or a markup language like Markdown.\",\"core\":true,\"versionStr\":\"1.0.0\"},\"171\":{\"summary\":\"Markdown\\/Parsedown extra lightweight markup language by Emanuil Rusev. Based on Markdown by John Gruber.\",\"core\":true,\"versionStr\":\"1.8.0\"},\"115\":{\"summary\":\"Adds a render method to Page and caches page output.\",\"core\":true,\"versionStr\":\"1.0.5\"},\"78\":{\"summary\":\"Groups one or more fields together in a container\",\"core\":true,\"versionStr\":\"1.0.1\"},\"30\":{\"summary\":\"Contains one or more fields in a form\",\"core\":true,\"versionStr\":\"1.0.7\"},\"80\":{\"summary\":\"E-Mail address in valid format\",\"core\":true,\"versionStr\":\"1.0.2\"},\"34\":{\"summary\":\"Single line of text\",\"core\":true,\"versionStr\":\"1.0.6\"},\"170\":{\"summary\":\"Multiple Page selection using auto completion and sorting capability. Intended for use as an input field for Page reference fields.\",\"core\":true,\"versionStr\":\"1.1.3\"},\"37\":{\"summary\":\"Single checkbox toggle\",\"core\":true,\"versionStr\":\"1.0.6\"},\"86\":{\"summary\":\"Text input validated as a ProcessWire Page name field\",\"core\":true,\"versionStr\":\"1.0.6\"},\"25\":{\"summary\":\"Multiple selection, progressive enhancement to select multiple\",\"core\":true,\"versionStr\":\"2.0.3\"},\"108\":{\"summary\":\"URL in valid format\",\"core\":true,\"versionStr\":\"1.0.3\"},\"38\":{\"summary\":\"Multiple checkbox toggles\",\"core\":true,\"versionStr\":\"1.0.8\"},\"79\":{\"summary\":\"Contains any other markup and optionally child Inputfields\",\"core\":true,\"versionStr\":\"1.0.2\"},\"137\":{\"summary\":\"Selection of multiple pages from a ProcessWire page tree list\",\"core\":true,\"versionStr\":\"1.0.3\"},\"15\":{\"summary\":\"Selection of a single page from a ProcessWire page tree list\",\"core\":true,\"versionStr\":\"1.0.1\"},\"169\":{\"summary\":\"Enables input of user entered tags or selection of predefined tags.\",\"core\":true,\"versionStr\":\"0.0.6\"},\"131\":{\"summary\":\"Form button element that you can optionally pass an href attribute to.\",\"core\":true,\"versionStr\":\"1.0.0\"},\"35\":{\"summary\":\"Multiple lines of text\",\"core\":true,\"versionStr\":\"1.0.3\"},\"122\":{\"summary\":\"Password input with confirmation field that doesn&#039;t ever echo the input back.\",\"core\":true,\"versionStr\":\"1.0.2\"},\"112\":{\"summary\":\"Handles input of Page Title and auto-generation of Page Name (when name is blank)\",\"core\":true,\"versionStr\":\"1.0.2\"},\"41\":{\"summary\":\"Text input validated as a ProcessWire name field\",\"core\":true,\"versionStr\":\"1.0.0\"},\"39\":{\"summary\":\"Radio buttons for selection of a single item\",\"core\":true,\"versionStr\":\"1.0.6\"},\"155\":{\"summary\":\"TinyMCE rich text editor version 6.4.1.\",\"core\":true,\"versionStr\":\"6.1.6\"},\"40\":{\"summary\":\"Hidden value in a form\",\"core\":true,\"versionStr\":\"1.0.1\"},\"56\":{\"summary\":\"One or more image uploads (sortable)\",\"core\":true,\"versionStr\":\"1.2.7\"},\"55\":{\"summary\":\"One or more file uploads (sortable)\",\"core\":true,\"versionStr\":\"1.2.8\"},\"94\":{\"summary\":\"Inputfield that accepts date and optionally time\",\"core\":true,\"versionStr\":\"1.0.7\"},\"32\":{\"summary\":\"Form submit button\",\"core\":true,\"versionStr\":\"1.0.3\"},\"172\":{\"summary\":\"A toggle providing similar input capability to a checkbox but much more configurable.\",\"core\":true,\"versionStr\":\"0.0.1\"},\"60\":{\"summary\":\"Select one or more pages\",\"core\":true,\"versionStr\":\"1.0.8\"},\"36\":{\"summary\":\"Selection of a single value from a select pulldown\",\"core\":true,\"versionStr\":\"1.0.2\"},\"90\":{\"summary\":\"Floating point number with precision\",\"core\":true,\"versionStr\":\"1.0.5\"},\"168\":{\"summary\":\"Select an icon\",\"core\":true,\"versionStr\":\"0.0.3\"},\"43\":{\"summary\":\"Select multiple items from a list\",\"core\":true,\"versionStr\":\"1.0.1\"},\"149\":{\"summary\":\"Build a page finding selector visually.\",\"author\":\"Avoine + ProcessWire\",\"core\":true,\"versionStr\":\"0.2.8\"},\"85\":{\"summary\":\"Integer (positive or negative)\",\"core\":true,\"versionStr\":\"1.0.5\"},\"114\":{\"summary\":\"Adds various permission methods to Page objects that are used by Process modules.\",\"core\":true,\"versionStr\":\"1.0.5\"},\"173\":{\"summary\":\"ProcessWire multi-language support.\",\"author\":\"Ryan Cramer\",\"core\":true,\"versionStr\":\"1.0.3\"},\"174\":{\"summary\":\"Manage system languages\",\"author\":\"Ryan Cramer\",\"core\":true,\"versionStr\":\"1.0.3\",\"permissions\":{\"lang-edit\":\"Administer languages and static translation files\"}},\"175\":{\"summary\":\"Provides language translation capabilities for ProcessWire core and modules.\",\"author\":\"Ryan Cramer\",\"core\":true,\"versionStr\":\"1.0.3\"},\"87\":{\"summary\":\"Acts as a placeholder Process for the admin root. Ensures proper flow control after login.\",\"core\":true,\"versionStr\":\"1.0.1\"},\"76\":{\"summary\":\"Lists the Process assigned to each child page of the current\",\"core\":true,\"versionStr\":\"1.0.1\"},\"12\":{\"summary\":\"List pages in a hierarchical tree structure\",\"core\":true,\"versionStr\":\"1.2.4\"},\"136\":{\"summary\":\"Manage system permissions\",\"core\":true,\"versionStr\":\"1.0.1\"},\"48\":{\"summary\":\"Edit individual fields that hold page data\",\"core\":true,\"versionStr\":\"1.1.4\",\"searchable\":\"fields\"},\"109\":{\"summary\":\"Handles emptying of Page trash\",\"core\":true,\"versionStr\":\"1.0.3\"},\"129\":{\"summary\":\"Provides image manipulation functions for image fields and rich text editors.\",\"core\":true,\"versionStr\":\"1.2.1\"},\"47\":{\"summary\":\"List and edit the templates that control page output\",\"core\":true,\"versionStr\":\"1.1.4\",\"searchable\":\"templates\"},\"68\":{\"summary\":\"Manage user roles and what permissions are attached\",\"core\":true,\"versionStr\":\"1.0.4\"},\"104\":{\"summary\":\"Provides a page search engine for admin use.\",\"core\":true,\"versionStr\":\"1.0.8\"},\"138\":{\"summary\":\"Enables user to change their password, email address and other settings that you define.\",\"core\":true,\"versionStr\":\"1.0.5\"},\"7\":{\"summary\":\"Edit a Page\",\"core\":true,\"versionStr\":\"1.1.2\"},\"14\":{\"summary\":\"Handles page sorting and moving for PageList\",\"core\":true,\"versionStr\":\"1.0.0\"},\"10\":{\"summary\":\"Login to ProcessWire\",\"core\":true,\"versionStr\":\"1.0.9\"},\"17\":{\"summary\":\"Add a new page\",\"core\":true,\"versionStr\":\"1.0.9\"},\"134\":{\"summary\":\"List, Edit and Add pages of a specific type\",\"core\":true,\"versionStr\":\"1.0.1\"},\"165\":{\"summary\":\"Shows a list of recently edited pages in your admin.\",\"author\":\"Ryan Cramer\",\"href\":\"http:\\/\\/modules.processwire.com\\/\",\"core\":true,\"versionStr\":\"0.0.2\",\"permissions\":{\"page-edit-recent\":\"Can see recently edited pages\"},\"page\":{\"name\":\"recent-pages\",\"parent\":\"page\",\"title\":\"Recent\"}},\"150\":{\"summary\":\"Admin tool for finding and listing pages by any property.\",\"author\":\"Ryan Cramer\",\"core\":true,\"versionStr\":\"0.2.6\",\"permissions\":{\"page-lister\":\"Use Page Lister\"}},\"121\":{\"summary\":\"Provides a link capability as used by some Fieldtype modules (like rich text editors).\",\"core\":true,\"versionStr\":\"1.1.2\"},\"167\":{\"summary\":\"View and manage system logs.\",\"author\":\"Ryan Cramer\",\"core\":true,\"versionStr\":\"0.0.2\",\"permissions\":{\"logs-view\":\"Can view system logs\",\"logs-edit\":\"Can manage system logs\"},\"page\":{\"name\":\"logs\",\"parent\":\"setup\",\"title\":\"Logs\"}},\"50\":{\"summary\":\"List, edit or install\\/uninstall modules\",\"core\":true,\"versionStr\":\"1.2.0\"},\"83\":{\"summary\":\"All page views are routed through this Process\",\"core\":true,\"versionStr\":\"1.0.6\"},\"66\":{\"summary\":\"Manage system users\",\"core\":true,\"versionStr\":\"1.0.7\",\"searchable\":\"users\"},\"6\":{\"summary\":\"Field that stores one or more files\",\"core\":true,\"versionStr\":\"1.0.7\"},\"107\":{\"summary\":\"Open a fieldset to group fields. Same as Fieldset (Open) except that it displays in a tab instead.\",\"core\":true,\"versionStr\":\"1.0.0\"},\"111\":{\"summary\":\"Field that stores a page title\",\"core\":true,\"versionStr\":\"1.0.0\"},\"4\":{\"summary\":\"Field that stores one or more references to ProcessWire pages\",\"core\":true,\"versionStr\":\"1.0.7\"},\"105\":{\"summary\":\"Open a fieldset to group fields. Should be followed by a Fieldset (Close) after one or more fields.\",\"core\":true,\"versionStr\":\"1.0.1\"},\"3\":{\"summary\":\"Field that stores a single line of text\",\"core\":true,\"versionStr\":\"1.0.2\"},\"84\":{\"summary\":\"Field that stores an integer\",\"core\":true,\"versionStr\":\"1.0.2\"},\"133\":{\"summary\":\"Field that stores a hashed and salted password\",\"core\":true,\"versionStr\":\"1.0.1\"},\"135\":{\"summary\":\"Field that stores a URL\",\"core\":true,\"versionStr\":\"1.0.1\"},\"97\":{\"summary\":\"This Fieldtype stores an ON\\/OFF toggle via a single checkbox. The ON value is 1 and OFF value is 0.\",\"core\":true,\"versionStr\":\"1.0.1\"},\"89\":{\"summary\":\"Field that stores a floating point number\",\"core\":true,\"versionStr\":\"1.0.7\"},\"27\":{\"summary\":\"Field that stores a reference to another module\",\"core\":true,\"versionStr\":\"1.0.2\"},\"106\":{\"summary\":\"Close a fieldset opened by FieldsetOpen. \",\"core\":true,\"versionStr\":\"1.0.0\"},\"57\":{\"summary\":\"Field that stores one or more GIF, JPG, or PNG images\",\"core\":true,\"versionStr\":\"1.0.2\"},\"29\":{\"summary\":\"Field that stores an e-mail address\",\"core\":true,\"versionStr\":\"1.0.1\"},\"28\":{\"summary\":\"Field that stores a date and optionally time\",\"core\":true,\"versionStr\":\"1.0.5\"},\"1\":{\"summary\":\"Field that stores multiple lines of text\",\"core\":true,\"versionStr\":\"1.0.7\"},\"156\":{\"summary\":\"Front-end to the HTML Purifier library.\",\"core\":true,\"versionStr\":\"4.9.7\"},\"67\":{\"summary\":\"Generates markup for data tables used by ProcessWire admin\",\"core\":true,\"versionStr\":\"1.0.7\"},\"98\":{\"summary\":\"Generates markup for pagination navigation\",\"core\":true,\"versionStr\":\"1.0.5\"},\"113\":{\"summary\":\"Adds renderPager() method to all PaginatedArray types, for easy pagination output. Plus a render() method to PageArray instances.\",\"core\":true,\"versionStr\":\"1.0.0\"},\"125\":{\"summary\":\"Throttles login attempts to help prevent dictionary attacks.\",\"core\":true,\"versionStr\":\"1.0.3\"},\"177\":{\"summary\":\"Enables you to browse active database sessions.\",\"core\":true,\"versionStr\":\"0.0.5\",\"page\":{\"name\":\"sessions-db\",\"parent\":\"access\",\"title\":\"Sessions\"}},\"176\":{\"summary\":\"Installing this module makes ProcessWire store sessions in the database rather than the file system. Note that this module will log you out after install or uninstall.\",\"core\":true,\"versionStr\":\"0.0.6\"},\"103\":{\"summary\":\"Provides a jQuery plugin for sorting tables.\",\"href\":\"https:\\/\\/mottie.github.io\\/tablesorter\\/\",\"core\":true,\"versionStr\":\"2.31.3\"},\"117\":{\"summary\":\"jQuery UI as required by ProcessWire and plugins\",\"href\":\"https:\\/\\/ui.jquery.com\",\"core\":true,\"versionStr\":\"1.10.4\"},\"151\":{\"summary\":\"Provides lightbox capability for image galleries. Replacement for FancyBox. Uses Magnific Popup by @dimsemenov.\",\"href\":\"https:\\/\\/github.com\\/dimsemenov\\/Magnific-Popup\\/\",\"core\":true,\"versionStr\":\"1.1.0\"},\"116\":{\"summary\":\"jQuery Core as required by ProcessWire Admin and plugins\",\"href\":\"https:\\/\\/jquery.com\",\"core\":true,\"versionStr\":\"1.12.4\"},\"45\":{\"summary\":\"Provides a jQuery plugin for generating tabs in ProcessWire.\",\"core\":true,\"versionStr\":\"1.1.0\"},\"148\":{\"summary\":\"Minimal admin theme that supports all ProcessWire features.\",\"core\":true,\"versionStr\":\"0.1.4\"},\"166\":{\"summary\":\"Uikit v3 admin theme\",\"core\":true,\"versionStr\":\"0.3.3\"},\"178\":{\"summary\":\"Enter a full YouTube (or Vimeo) URL by itself in any paragraph (example: https:\\/\\/youtu.be\\/Wl4XiYadV_k) and this will automatically convert it to an embedded video. This formatter is intended to be run on trusted input. Recommended for use with CKEditor textarea fields.\",\"author\":\"Ryan Cramer\",\"href\":\"https:\\/\\/processwire.com\\/modules\\/textformatter-video-embed\\/\",\"versionStr\":\"2.0.2\"},\"179\":{\"summary\":\"Create or edit forms and manage submitted entries.\",\"versionStr\":\"0.2.2\"},\"180\":{\"summary\":\"Create or edit forms and manage submitted entries.\",\"versionStr\":\"0.2.2\"},\"181\":{\"summary\":\"Form Builder file upload \\\\ProcessWire\\\\input(alpha test)\",\"versionStr\":\"0.0.1\"}}', '2010-04-08 03:10:01'),
('ModulesUninstalled.info', '{\"SystemNotifications\":{\"name\":\"SystemNotifications\",\"title\":\"System Notifications\",\"version\":12,\"versionStr\":\"0.1.2\",\"summary\":\"Adds support for notifications in ProcessWire (currently in development)\",\"icon\":\"bell\",\"installs\":[\"FieldtypeNotifications\"],\"autoload\":true,\"created\":1729852528,\"installed\":false,\"configurable\":\"SystemNotificationsConfig.php\",\"core\":true},\"FieldtypeNotifications\":{\"name\":\"FieldtypeNotifications\",\"title\":\"Notifications\",\"version\":4,\"versionStr\":\"0.0.4\",\"summary\":\"Field that stores user notifications.\",\"requiresVersions\":{\"SystemNotifications\":[\">=\",0]},\"created\":1729852528,\"installed\":false,\"core\":true},\"TextformatterNewlineBR\":{\"name\":\"TextformatterNewlineBR\",\"title\":\"Newlines to XHTML Line Breaks\",\"version\":100,\"versionStr\":\"1.0.0\",\"summary\":\"Converts newlines to XHTML line break <br \\/> tags. \",\"created\":1729852528,\"installed\":false,\"core\":true},\"TextformatterPstripper\":{\"name\":\"TextformatterPstripper\",\"title\":\"Paragraph Stripper\",\"version\":100,\"versionStr\":\"1.0.0\",\"summary\":\"Strips paragraph <p> tags that may have been applied by other text formatters before it. \",\"created\":1729852528,\"installed\":false,\"core\":true},\"TextformatterNewlineUL\":{\"name\":\"TextformatterNewlineUL\",\"title\":\"Newlines to Unordered List\",\"version\":100,\"versionStr\":\"1.0.0\",\"summary\":\"Converts newlines to <li> list items and surrounds in an <ul> unordered list. \",\"created\":1729852528,\"installed\":false,\"core\":true},\"TextformatterStripTags\":{\"name\":\"TextformatterStripTags\",\"title\":\"Strip Markup Tags\",\"version\":100,\"versionStr\":\"1.0.0\",\"summary\":\"Strips HTML\\/XHTML Markup Tags\",\"created\":1729852528,\"installed\":false,\"configurable\":3,\"core\":true},\"TextformatterSmartypants\":{\"name\":\"TextformatterSmartypants\",\"title\":\"SmartyPants Typographer\",\"version\":171,\"versionStr\":\"1.7.1\",\"summary\":\"Smart typography for web sites, by Michel Fortin based on SmartyPants by John Gruber. If combined with Markdown, it should be applied AFTER Markdown.\",\"created\":1729852528,\"installed\":false,\"configurable\":4,\"core\":true,\"url\":\"https:\\/\\/github.com\\/michelf\\/php-smartypants\"},\"TextformatterMarkdownExtra\":{\"name\":\"TextformatterMarkdownExtra\",\"title\":\"Markdown\\/Parsedown Extra\",\"version\":180,\"versionStr\":\"1.8.0\",\"summary\":\"Markdown\\/Parsedown extra lightweight markup language by Emanuil Rusev. Based on Markdown by John Gruber.\",\"created\":1729852528,\"installed\":false,\"configurable\":4,\"core\":true},\"PagePaths\":{\"name\":\"PagePaths\",\"title\":\"Page Paths\",\"version\":4,\"versionStr\":\"0.0.4\",\"summary\":\"Enables page paths\\/urls to be queryable by selectors. Also offers potential for improved load performance. Builds an index at install (may take time on a large site).\",\"autoload\":true,\"singular\":true,\"created\":1729852528,\"installed\":false,\"configurable\":4,\"core\":true},\"FileCompilerTags\":{\"name\":\"FileCompilerTags\",\"title\":\"Tags File Compiler\",\"version\":1,\"versionStr\":\"0.0.1\",\"summary\":\"Enables {var} or {var.property} variables in markup sections of a file. Can be used with any API variable.\",\"created\":1729852528,\"installed\":false,\"configurable\":4,\"core\":true},\"InputfieldPageAutocomplete\":{\"name\":\"InputfieldPageAutocomplete\",\"title\":\"Page Auto Complete\",\"version\":113,\"versionStr\":\"1.1.3\",\"summary\":\"Multiple Page selection using auto completion and sorting capability. Intended for use as an input field for Page reference fields.\",\"created\":1729852528,\"installed\":false,\"core\":true},\"InputfieldCKEditor\":{\"name\":\"InputfieldCKEditor\",\"title\":\"CKEditor\",\"version\":171,\"versionStr\":\"1.7.1\",\"summary\":\"CKEditor textarea rich text editor.\",\"installs\":[\"MarkupHTMLPurifier\"],\"created\":1729852528,\"installed\":false,\"core\":true},\"InputfieldTextTags\":{\"name\":\"InputfieldTextTags\",\"title\":\"Text Tags\",\"version\":6,\"versionStr\":\"0.0.6\",\"summary\":\"Enables input of user entered tags or selection of predefined tags.\",\"icon\":\"tags\",\"created\":1729852528,\"installed\":false,\"core\":true},\"InputfieldToggle\":{\"name\":\"InputfieldToggle\",\"title\":\"Toggle\",\"version\":1,\"versionStr\":\"0.0.1\",\"summary\":\"A toggle providing similar input capability to a checkbox but much more configurable.\",\"created\":1729852528,\"installed\":false,\"core\":true},\"InputfieldIcon\":{\"name\":\"InputfieldIcon\",\"title\":\"Icon\",\"version\":3,\"versionStr\":\"0.0.3\",\"summary\":\"Select an icon\",\"created\":1729852528,\"installed\":false,\"core\":true},\"InputfieldPageTable\":{\"name\":\"InputfieldPageTable\",\"title\":\"ProFields: Page Table\",\"version\":14,\"versionStr\":\"0.1.4\",\"summary\":\"Inputfield to accompany FieldtypePageTable\",\"requiresVersions\":{\"FieldtypePageTable\":[\">=\",0]},\"created\":1729852528,\"installed\":false,\"core\":true},\"LanguageSupport\":{\"name\":\"LanguageSupport\",\"title\":\"Languages Support\",\"version\":103,\"versionStr\":\"1.0.3\",\"author\":\"Ryan Cramer\",\"summary\":\"ProcessWire multi-language support.\",\"installs\":[\"ProcessLanguage\",\"ProcessLanguageTranslator\"],\"autoload\":true,\"singular\":true,\"created\":1729852528,\"installed\":false,\"configurable\":3,\"core\":true,\"addFlag\":32},\"FieldtypePageTitleLanguage\":{\"name\":\"FieldtypePageTitleLanguage\",\"title\":\"Page Title (Multi-Language)\",\"version\":100,\"versionStr\":\"1.0.0\",\"author\":\"Ryan Cramer\",\"summary\":\"Field that stores a page title in multiple languages. Use this only if you want title inputs created for ALL languages on ALL pages. Otherwise create separate languaged-named title fields, i.e. title_fr, title_es, title_fi, etc. \",\"requiresVersions\":{\"LanguageSupportFields\":[\">=\",0],\"FieldtypeTextLanguage\":[\">=\",0]},\"created\":1729852528,\"installed\":false,\"core\":true},\"LanguageSupportPageNames\":{\"name\":\"LanguageSupportPageNames\",\"title\":\"Languages Support - Page Names\",\"version\":13,\"versionStr\":\"0.1.3\",\"author\":\"Ryan Cramer\",\"summary\":\"Required to use multi-language page names.\",\"requiresVersions\":{\"LanguageSupport\":[\">=\",0],\"LanguageSupportFields\":[\">=\",0]},\"autoload\":true,\"singular\":true,\"created\":1729852528,\"installed\":false,\"configurable\":4,\"core\":true},\"FieldtypeTextLanguage\":{\"name\":\"FieldtypeTextLanguage\",\"title\":\"Text (Multi-language)\",\"version\":100,\"versionStr\":\"1.0.0\",\"summary\":\"Field that stores a single line of text in multiple languages\",\"requiresVersions\":{\"LanguageSupportFields\":[\">=\",0]},\"created\":1729852528,\"installed\":false,\"core\":true},\"ProcessLanguage\":{\"name\":\"ProcessLanguage\",\"title\":\"Languages\",\"version\":103,\"versionStr\":\"1.0.3\",\"author\":\"Ryan Cramer\",\"summary\":\"Manage system languages\",\"icon\":\"language\",\"requiresVersions\":{\"LanguageSupport\":[\">=\",0]},\"permission\":\"lang-edit\",\"permissions\":{\"lang-edit\":\"Administer languages and static translation files\"},\"created\":1729852528,\"installed\":false,\"configurable\":3,\"core\":true,\"useNavJSON\":true},\"LanguageTabs\":{\"name\":\"LanguageTabs\",\"title\":\"Languages Support - Tabs\",\"version\":117,\"versionStr\":\"1.1.7\",\"author\":\"adamspruijt, ryan, flipzoom\",\"summary\":\"Organizes multi-language fields into tabs for a cleaner easier to use interface.\",\"requiresVersions\":{\"LanguageSupport\":[\">=\",0]},\"autoload\":\"template=admin\",\"singular\":true,\"created\":1729852528,\"installed\":false,\"configurable\":4,\"core\":true},\"FieldtypeTextareaLanguage\":{\"name\":\"FieldtypeTextareaLanguage\",\"title\":\"Textarea (Multi-language)\",\"version\":100,\"versionStr\":\"1.0.0\",\"summary\":\"Field that stores a multiple lines of text in multiple languages\",\"requiresVersions\":{\"LanguageSupportFields\":[\">=\",0]},\"created\":1729852528,\"installed\":false,\"core\":true},\"ProcessLanguageTranslator\":{\"name\":\"ProcessLanguageTranslator\",\"title\":\"Language Translator\",\"version\":103,\"versionStr\":\"1.0.3\",\"author\":\"Ryan Cramer\",\"summary\":\"Provides language translation capabilities for ProcessWire core and modules.\",\"requiresVersions\":{\"LanguageSupport\":[\">=\",0]},\"permission\":\"lang-edit\",\"created\":1729852528,\"installed\":false,\"configurable\":4,\"core\":true},\"LanguageSupportFields\":{\"name\":\"LanguageSupportFields\",\"title\":\"Languages Support - Fields\",\"version\":101,\"versionStr\":\"1.0.1\",\"author\":\"Ryan Cramer\",\"summary\":\"Required to use multi-language fields.\",\"requiresVersions\":{\"LanguageSupport\":[\">=\",0]},\"installs\":[\"FieldtypePageTitleLanguage\",\"FieldtypeTextareaLanguage\",\"FieldtypeTextLanguage\"],\"autoload\":true,\"singular\":true,\"created\":1729852528,\"installed\":false,\"core\":true},\"ImageSizerEngineAnimatedGif\":{\"name\":\"ImageSizerEngineAnimatedGif\",\"title\":\"Animated GIF Image Sizer\",\"version\":1,\"versionStr\":\"0.0.1\",\"author\":\"Horst Nogajski\",\"summary\":\"Upgrades image manipulations for animated GIFs.\",\"created\":1729852528,\"installed\":false,\"configurable\":4,\"core\":true},\"ImageSizerEngineIMagick\":{\"name\":\"ImageSizerEngineIMagick\",\"title\":\"IMagick Image Sizer\",\"version\":3,\"versionStr\":\"0.0.3\",\"author\":\"Horst Nogajski\",\"summary\":\"Upgrades image manipulations to use PHP\'s ImageMagick library when possible.\",\"created\":1729852528,\"installed\":false,\"configurable\":4,\"core\":true},\"PageFrontEdit\":{\"name\":\"PageFrontEdit\",\"title\":\"Front-End Page Editor\",\"version\":6,\"versionStr\":\"0.0.6\",\"author\":\"Ryan Cramer\",\"summary\":\"Enables front-end editing of page fields.\",\"icon\":\"cube\",\"permissions\":{\"page-edit-front\":\"Use the front-end page editor\"},\"autoload\":true,\"created\":1729852528,\"installed\":false,\"configurable\":\"PageFrontEditConfig.php\",\"core\":true,\"license\":\"MPL 2.0\"},\"ProcessForgotPassword\":{\"name\":\"ProcessForgotPassword\",\"title\":\"Forgot Password\",\"version\":104,\"versionStr\":\"1.0.4\",\"summary\":\"Provides password reset\\/email capability for the Login process.\",\"permission\":\"page-view\",\"created\":1729852528,\"installed\":false,\"configurable\":4,\"core\":true},\"ProcessPagesExportImport\":{\"name\":\"ProcessPagesExportImport\",\"title\":\"Pages Export\\/Import\",\"version\":1,\"versionStr\":\"0.0.1\",\"author\":\"Ryan Cramer\",\"summary\":\"Enables exporting and importing of pages. Development version, not yet recommended for production use.\",\"icon\":\"paper-plane-o\",\"permission\":\"page-edit-export\",\"created\":1729852528,\"installed\":false,\"core\":true,\"page\":{\"name\":\"export-import\",\"parent\":\"page\",\"title\":\"Export\\/Import\"}},\"ProcessCommentsManager\":{\"name\":\"ProcessCommentsManager\",\"title\":\"Comments\",\"version\":12,\"versionStr\":\"0.1.2\",\"author\":\"Ryan Cramer\",\"summary\":\"Manage comments in your site outside of the page editor.\",\"icon\":\"comments\",\"requiresVersions\":{\"FieldtypeComments\":[\">=\",0]},\"permission\":\"comments-manager\",\"permissions\":{\"comments-manager\":\"Use the comments manager\"},\"created\":1729852528,\"installed\":false,\"searchable\":\"comments\",\"core\":true,\"page\":{\"name\":\"comments\",\"parent\":\"setup\",\"title\":\"Comments\"},\"nav\":[{\"url\":\"?go=approved\",\"label\":\"Approved\"},{\"url\":\"?go=pending\",\"label\":\"Pending\"},{\"url\":\"?go=spam\",\"label\":\"Spam\"},{\"url\":\"?go=all\",\"label\":\"All\"}]},\"ProcessRecentPages\":{\"name\":\"ProcessRecentPages\",\"title\":\"Recent Pages\",\"version\":2,\"versionStr\":\"0.0.2\",\"author\":\"Ryan Cramer\",\"summary\":\"Shows a list of recently edited pages in your admin.\",\"href\":\"http:\\/\\/modules.processwire.com\\/\",\"icon\":\"clock-o\",\"permission\":\"page-edit-recent\",\"permissions\":{\"page-edit-recent\":\"Can see recently edited pages\"},\"created\":1729852528,\"installed\":false,\"core\":true,\"page\":{\"name\":\"recent-pages\",\"parent\":\"page\",\"title\":\"Recent\"},\"useNavJSON\":true,\"nav\":[{\"url\":\"?edited=1\",\"label\":\"Edited\",\"icon\":\"users\",\"navJSON\":\"navJSON\\/?edited=1\"},{\"url\":\"?added=1\",\"label\":\"Created\",\"icon\":\"users\",\"navJSON\":\"navJSON\\/?added=1\"},{\"url\":\"?edited=1&me=1\",\"label\":\"Edited by me\",\"icon\":\"user\",\"navJSON\":\"navJSON\\/?edited=1&me=1\"},{\"url\":\"?added=1&me=1\",\"label\":\"Created by me\",\"icon\":\"user\",\"navJSON\":\"navJSON\\/?added=1&me=1\"},{\"url\":\"another\\/\",\"label\":\"Add another\",\"icon\":\"plus-circle\",\"navJSON\":\"anotherNavJSON\\/\"}]},\"ProcessLogger\":{\"name\":\"ProcessLogger\",\"title\":\"Logs\",\"version\":2,\"versionStr\":\"0.0.2\",\"author\":\"Ryan Cramer\",\"summary\":\"View and manage system logs.\",\"icon\":\"tree\",\"permission\":\"logs-view\",\"permissions\":{\"logs-view\":\"Can view system logs\",\"logs-edit\":\"Can manage system logs\"},\"created\":1729852528,\"installed\":false,\"core\":true,\"page\":{\"name\":\"logs\",\"parent\":\"setup\",\"title\":\"Logs\"},\"useNavJSON\":true},\"ProcessPageClone\":{\"name\":\"ProcessPageClone\",\"title\":\"Page Clone\",\"version\":104,\"versionStr\":\"1.0.4\",\"summary\":\"Provides ability to clone\\/copy\\/duplicate pages in the admin. Adds a &quot;copy&quot; option to all applicable pages in the PageList.\",\"permission\":\"page-clone\",\"permissions\":{\"page-clone\":\"Clone a page\",\"page-clone-tree\":\"Clone a tree of pages\"},\"autoload\":\"template=admin\",\"created\":1729852528,\"installed\":false,\"core\":true,\"page\":{\"name\":\"clone\",\"title\":\"Clone\",\"parent\":\"page\",\"status\":1024}},\"FieldtypeSelector\":{\"name\":\"FieldtypeSelector\",\"title\":\"Selector\",\"version\":13,\"versionStr\":\"0.1.3\",\"author\":\"Avoine + ProcessWire\",\"summary\":\"Build a page finding selector visually.\",\"created\":1729852528,\"installed\":false,\"core\":true},\"InputfieldRepeater\":{\"name\":\"InputfieldRepeater\",\"title\":\"Repeater\",\"version\":111,\"versionStr\":\"1.1.1\",\"summary\":\"Repeats fields from another template. Provides the input for FieldtypeRepeater.\",\"requiresVersions\":{\"FieldtypeRepeater\":[\">=\",0]},\"created\":1729852528,\"installed\":false,\"core\":true},\"FieldtypeRepeater\":{\"name\":\"FieldtypeRepeater\",\"title\":\"Repeater\",\"version\":112,\"versionStr\":\"1.1.2\",\"summary\":\"Maintains a collection of fields that are repeated for any number of times.\",\"installs\":[\"InputfieldRepeater\"],\"autoload\":true,\"created\":1729852528,\"installed\":false,\"configurable\":3,\"core\":true},\"FieldtypeFieldsetPage\":{\"name\":\"FieldtypeFieldsetPage\",\"title\":\"Fieldset (Page)\",\"version\":1,\"versionStr\":\"0.0.1\",\"summary\":\"Fieldset with fields isolated to separate namespace (page), enabling re-use of fields.\",\"requiresVersions\":{\"FieldtypeRepeater\":[\">=\",0]},\"autoload\":true,\"created\":1729852528,\"installed\":false,\"configurable\":3,\"core\":true},\"FieldtypeCache\":{\"name\":\"FieldtypeCache\",\"title\":\"Cache\",\"version\":102,\"versionStr\":\"1.0.2\",\"summary\":\"Caches the values of other fields for fewer runtime queries. Can also be used to combine multiple text fields and have them all be searchable under the cached field name.\",\"created\":1729852528,\"installed\":false,\"core\":true},\"FieldtypePageTable\":{\"name\":\"FieldtypePageTable\",\"title\":\"ProFields: Page Table\",\"version\":8,\"versionStr\":\"0.0.8\",\"summary\":\"A fieldtype containing a group of editable pages.\",\"installs\":[\"InputfieldPageTable\"],\"autoload\":true,\"created\":1729852528,\"installed\":false,\"core\":true},\"FieldtypeToggle\":{\"name\":\"FieldtypeToggle\",\"title\":\"Toggle (Yes\\/No)\",\"version\":1,\"versionStr\":\"0.0.1\",\"summary\":\"Configurable yes\\/no, on\\/off toggle alternative to a checkbox, plus optional \\u201cother\\u201d option.\",\"requiresVersions\":{\"InputfieldToggle\":[\">=\",0]},\"created\":1729852528,\"installed\":false,\"core\":true},\"FieldtypeOptions\":{\"name\":\"FieldtypeOptions\",\"title\":\"Select Options\",\"version\":2,\"versionStr\":\"0.0.2\",\"summary\":\"Field that stores single and multi select options.\",\"created\":1729852528,\"installed\":false,\"core\":true},\"FieldtypeDecimal\":{\"name\":\"FieldtypeDecimal\",\"title\":\"Decimal\",\"version\":1,\"versionStr\":\"0.0.1\",\"summary\":\"Field that stores a decimal number\",\"created\":1729852528,\"installed\":false,\"core\":true},\"CommentFilterAkismet\":{\"name\":\"CommentFilterAkismet\",\"title\":\"Comment Filter: Akismet\",\"version\":200,\"versionStr\":\"2.0.0\",\"summary\":\"Uses the Akismet service to identify comment spam. Module plugin for the Comments Fieldtype.\",\"requiresVersions\":{\"FieldtypeComments\":[\">=\",0]},\"created\":1729852528,\"installed\":false,\"configurable\":3,\"core\":true},\"InputfieldCommentsAdmin\":{\"name\":\"InputfieldCommentsAdmin\",\"title\":\"Comments Admin\",\"version\":104,\"versionStr\":\"1.0.4\",\"summary\":\"Provides an administrative interface for working with comments\",\"requiresVersions\":{\"FieldtypeComments\":[\">=\",0]},\"created\":1729852528,\"installed\":false,\"core\":true},\"FieldtypeComments\":{\"name\":\"FieldtypeComments\",\"title\":\"Comments\",\"version\":110,\"versionStr\":\"1.1.0\",\"summary\":\"Field that stores user posted comments for a single Page\",\"installs\":[\"InputfieldCommentsAdmin\"],\"created\":1729852528,\"installed\":false,\"core\":true},\"MarkupCache\":{\"name\":\"MarkupCache\",\"title\":\"Markup Cache\",\"version\":101,\"versionStr\":\"1.0.1\",\"summary\":\"A simple way to cache segments of markup in your templates. \",\"href\":\"https:\\/\\/processwire.com\\/api\\/modules\\/markupcache\\/\",\"autoload\":true,\"singular\":true,\"created\":1729852528,\"installed\":false,\"configurable\":3,\"core\":true},\"MarkupRSS\":{\"name\":\"MarkupRSS\",\"title\":\"Markup RSS Feed\",\"version\":105,\"versionStr\":\"1.0.5\",\"summary\":\"Renders an RSS feed. Given a PageArray, renders an RSS feed of them.\",\"icon\":\"rss-square\",\"created\":1729852528,\"installed\":false,\"configurable\":3,\"core\":true},\"MarkupPageFields\":{\"name\":\"MarkupPageFields\",\"title\":\"Markup Page Fields\",\"version\":100,\"versionStr\":\"1.0.0\",\"summary\":\"Adds $page->renderFields() and $page->images->render() methods that return basic markup for output during development and debugging.\",\"autoload\":true,\"singular\":true,\"created\":1729852528,\"installed\":false,\"core\":true,\"permanent\":true},\"ProcessSessionDB\":{\"name\":\"ProcessSessionDB\",\"title\":\"Sessions\",\"version\":5,\"versionStr\":\"0.0.5\",\"summary\":\"Enables you to browse active database sessions.\",\"icon\":\"dashboard\",\"requiresVersions\":{\"SessionHandlerDB\":[\">=\",0]},\"created\":1729852528,\"installed\":false,\"core\":true,\"page\":{\"name\":\"sessions-db\",\"parent\":\"access\",\"title\":\"Sessions\"}},\"SessionHandlerDB\":{\"name\":\"SessionHandlerDB\",\"title\":\"Session Handler Database\",\"version\":6,\"versionStr\":\"0.0.6\",\"summary\":\"Installing this module makes ProcessWire store sessions in the database rather than the file system. Note that this module will log you out after install or uninstall.\",\"installs\":[\"ProcessSessionDB\"],\"created\":1729852528,\"installed\":false,\"configurable\":3,\"core\":true},\"PagePathHistory\":{\"name\":\"PagePathHistory\",\"title\":\"Page Path History\",\"version\":8,\"versionStr\":\"0.0.8\",\"summary\":\"Keeps track of past URLs where pages have lived and automatically redirects (301 permanent) to the new location whenever the past URL is accessed.\",\"autoload\":true,\"singular\":true,\"created\":1729852528,\"installed\":false,\"configurable\":4,\"core\":true},\"LazyCron\":{\"name\":\"LazyCron\",\"title\":\"Lazy Cron\",\"version\":103,\"versionStr\":\"1.0.3\",\"summary\":\"Provides hooks that are automatically executed at various intervals. It is called \'lazy\' because it\'s triggered by a pageview, so the interval is guaranteed to be at least the time requested, rather than exactly the time requested. This is fine for most cases, but you can make it not lazy by connecting this to a real CRON job. See the module file for details. \",\"href\":\"https:\\/\\/processwire.com\\/api\\/modules\\/lazy-cron\\/\",\"autoload\":true,\"singular\":true,\"created\":1729852528,\"installed\":false,\"core\":true},\"AdminThemeReno\":{\"name\":\"AdminThemeReno\",\"title\":\"Reno\",\"version\":17,\"versionStr\":\"0.1.7\",\"author\":\"Tom Reno (Renobird)\",\"summary\":\"Admin theme for ProcessWire 2.5+ by Tom Reno (Renobird)\",\"requiresVersions\":{\"AdminThemeDefault\":[\">=\",0]},\"autoload\":\"template=admin\",\"created\":1729852528,\"installed\":false,\"configurable\":3,\"core\":true},\"AdminThemeUikit\":{\"name\":\"AdminThemeUikit\",\"title\":\"Uikit\",\"version\":33,\"versionStr\":\"0.3.3\",\"summary\":\"Uikit v3 admin theme\",\"autoload\":\"template=admin\",\"created\":1729852528,\"installed\":false,\"configurable\":4,\"core\":true}}', '2010-04-08 03:10:01'),
('ModulesVersions.info', '[]', '2010-04-08 03:10:01');
INSERT INTO `caches` (`name`, `data`, `expires`) VALUES
('Modules.info', '{\"139\":{\"name\":\"SystemUpdater\",\"title\":\"System Updater\",\"version\":20,\"singular\":true,\"created\":1729831113,\"configurable\":3,\"permanent\":true},\"61\":{\"name\":\"TextformatterEntities\",\"title\":\"HTML Entity Encoder (htmlspecialchars)\",\"version\":100,\"created\":1729831113},\"171\":{\"name\":\"TextformatterMarkdownExtra\",\"title\":\"Markdown\\/Parsedown Extra\",\"version\":180,\"singular\":1,\"created\":1729910506,\"configurable\":4},\"115\":{\"name\":\"PageRender\",\"title\":\"Page Render\",\"version\":105,\"autoload\":true,\"singular\":true,\"created\":1729831113,\"configurable\":3,\"permanent\":true},\"78\":{\"name\":\"InputfieldFieldset\",\"title\":\"Fieldset\",\"version\":101,\"created\":1729831113,\"permanent\":true},\"30\":{\"name\":\"InputfieldForm\",\"title\":\"Form\",\"version\":107,\"created\":1729831113,\"permanent\":true},\"80\":{\"name\":\"InputfieldEmail\",\"title\":\"Email\",\"version\":102,\"created\":1729831113},\"34\":{\"name\":\"InputfieldText\",\"title\":\"Text\",\"version\":106,\"created\":1729831113,\"permanent\":true},\"170\":{\"name\":\"InputfieldPageAutocomplete\",\"title\":\"Page Auto Complete\",\"version\":113,\"created\":1729910327},\"37\":{\"name\":\"InputfieldCheckbox\",\"title\":\"Checkbox\",\"version\":106,\"created\":1729831113,\"permanent\":true},\"86\":{\"name\":\"InputfieldPageName\",\"title\":\"Page Name\",\"version\":106,\"created\":1729831113,\"configurable\":3,\"permanent\":true},\"25\":{\"name\":\"InputfieldAsmSelect\",\"title\":\"asmSelect\",\"version\":203,\"created\":1729831113,\"permanent\":true},\"108\":{\"name\":\"InputfieldURL\",\"title\":\"URL\",\"version\":103,\"created\":1729831113},\"38\":{\"name\":\"InputfieldCheckboxes\",\"title\":\"Checkboxes\",\"version\":108,\"created\":1729831113,\"permanent\":true},\"79\":{\"name\":\"InputfieldMarkup\",\"title\":\"Markup\",\"version\":102,\"created\":1729831113,\"permanent\":true},\"137\":{\"name\":\"InputfieldPageListSelectMultiple\",\"title\":\"Page List Select Multiple\",\"version\":103,\"created\":1729831113,\"permanent\":true},\"15\":{\"name\":\"InputfieldPageListSelect\",\"title\":\"Page List Select\",\"version\":101,\"created\":1729831113,\"permanent\":true},\"169\":{\"name\":\"InputfieldTextTags\",\"title\":\"Text Tags\",\"version\":6,\"icon\":\"tags\",\"created\":1729910266},\"131\":{\"name\":\"InputfieldButton\",\"title\":\"Button\",\"version\":100,\"created\":1729831113,\"permanent\":true},\"35\":{\"name\":\"InputfieldTextarea\",\"title\":\"Textarea\",\"version\":103,\"created\":1729831113,\"permanent\":true},\"122\":{\"name\":\"InputfieldPassword\",\"title\":\"Password\",\"version\":102,\"created\":1729831113,\"permanent\":true},\"112\":{\"name\":\"InputfieldPageTitle\",\"title\":\"Page Title\",\"version\":102,\"created\":1729831113,\"permanent\":true},\"41\":{\"name\":\"InputfieldName\",\"title\":\"Name\",\"version\":100,\"created\":1729831113,\"permanent\":true},\"39\":{\"name\":\"InputfieldRadios\",\"title\":\"Radio Buttons\",\"version\":106,\"created\":1729831113,\"permanent\":true},\"155\":{\"name\":\"InputfieldTinyMCE\",\"title\":\"TinyMCE\",\"version\":616,\"icon\":\"keyboard-o\",\"requiresVersions\":{\"ProcessWire\":[\">=\",\"3.0.200\"],\"MarkupHTMLPurifier\":[\">=\",0]},\"created\":1729831113,\"configurable\":4},\"40\":{\"name\":\"InputfieldHidden\",\"title\":\"Hidden\",\"version\":101,\"created\":1729831113,\"permanent\":true},\"56\":{\"name\":\"InputfieldImage\",\"title\":\"Images\",\"version\":127,\"created\":1729831113,\"permanent\":true},\"55\":{\"name\":\"InputfieldFile\",\"title\":\"Files\",\"version\":128,\"created\":1729831113,\"permanent\":true},\"94\":{\"name\":\"InputfieldDatetime\",\"title\":\"Datetime\",\"version\":107,\"created\":1729831113,\"permanent\":true},\"32\":{\"name\":\"InputfieldSubmit\",\"title\":\"Submit\",\"version\":103,\"created\":1729831113,\"permanent\":true},\"172\":{\"name\":\"InputfieldToggle\",\"title\":\"Toggle\",\"version\":1,\"created\":1729929530},\"60\":{\"name\":\"InputfieldPage\",\"title\":\"Page\",\"version\":108,\"created\":1729831113,\"configurable\":3,\"permanent\":true},\"36\":{\"name\":\"InputfieldSelect\",\"title\":\"Select\",\"version\":102,\"created\":1729831113,\"permanent\":true},\"90\":{\"name\":\"InputfieldFloat\",\"title\":\"Float\",\"version\":105,\"created\":1729831113,\"permanent\":true},\"168\":{\"name\":\"InputfieldIcon\",\"title\":\"Icon\",\"version\":3,\"created\":1729831141},\"43\":{\"name\":\"InputfieldSelectMultiple\",\"title\":\"Select Multiple\",\"version\":101,\"created\":1729831113,\"permanent\":true},\"149\":{\"name\":\"InputfieldSelector\",\"title\":\"Selector\",\"version\":28,\"autoload\":\"template=admin\",\"created\":1729831113,\"configurable\":3,\"addFlag\":32},\"85\":{\"name\":\"InputfieldInteger\",\"title\":\"Integer\",\"version\":105,\"created\":1729831113,\"permanent\":true},\"114\":{\"name\":\"PagePermissions\",\"title\":\"Page Permissions\",\"version\":105,\"autoload\":true,\"singular\":true,\"created\":1729831113,\"permanent\":true},\"173\":{\"name\":\"LanguageSupport\",\"title\":\"Languages Support\",\"version\":103,\"installs\":[\"ProcessLanguage\",\"ProcessLanguageTranslator\"],\"autoload\":true,\"singular\":true,\"created\":1730263516,\"configurable\":3,\"addFlag\":32},\"174\":{\"name\":\"ProcessLanguage\",\"title\":\"Languages\",\"version\":103,\"icon\":\"language\",\"requiresVersions\":{\"LanguageSupport\":[\">=\",0]},\"permission\":\"lang-edit\",\"singular\":1,\"created\":1730263516,\"configurable\":3,\"useNavJSON\":true},\"175\":{\"name\":\"ProcessLanguageTranslator\",\"title\":\"Language Translator\",\"version\":103,\"requiresVersions\":{\"LanguageSupport\":[\">=\",0]},\"permission\":\"lang-edit\",\"singular\":1,\"created\":1730263516,\"configurable\":4},\"87\":{\"name\":\"ProcessHome\",\"title\":\"Admin Home\",\"version\":101,\"permission\":\"page-view\",\"created\":1729831113,\"permanent\":true},\"76\":{\"name\":\"ProcessList\",\"title\":\"List\",\"version\":101,\"permission\":\"page-view\",\"created\":1729831113,\"permanent\":true},\"12\":{\"name\":\"ProcessPageList\",\"title\":\"Page List\",\"version\":124,\"icon\":\"sitemap\",\"permission\":\"page-edit\",\"created\":1729831113,\"configurable\":3,\"permanent\":true,\"useNavJSON\":true},\"136\":{\"name\":\"ProcessPermission\",\"title\":\"Permissions\",\"version\":101,\"icon\":\"gear\",\"permission\":\"permission-admin\",\"singular\":1,\"created\":1729831113,\"configurable\":3,\"permanent\":true,\"useNavJSON\":true},\"48\":{\"name\":\"ProcessField\",\"title\":\"Fields\",\"version\":114,\"icon\":\"cube\",\"permission\":\"field-admin\",\"created\":1729831113,\"configurable\":3,\"permanent\":true,\"useNavJSON\":true,\"addFlag\":32},\"109\":{\"name\":\"ProcessPageTrash\",\"title\":\"Page Trash\",\"version\":103,\"singular\":1,\"created\":1729831113,\"permanent\":true},\"129\":{\"name\":\"ProcessPageEditImageSelect\",\"title\":\"Page Edit Image\",\"version\":121,\"permission\":\"page-edit\",\"singular\":1,\"created\":1729831113,\"configurable\":3,\"permanent\":true},\"47\":{\"name\":\"ProcessTemplate\",\"title\":\"Templates\",\"version\":114,\"icon\":\"cubes\",\"permission\":\"template-admin\",\"created\":1729831113,\"configurable\":4,\"permanent\":true,\"useNavJSON\":true},\"68\":{\"name\":\"ProcessRole\",\"title\":\"Roles\",\"version\":104,\"icon\":\"gears\",\"permission\":\"role-admin\",\"created\":1729831113,\"configurable\":3,\"permanent\":true,\"useNavJSON\":true},\"104\":{\"name\":\"ProcessPageSearch\",\"title\":\"Page Search\",\"version\":108,\"permission\":\"page-edit\",\"singular\":1,\"created\":1729831113,\"configurable\":3,\"permanent\":true},\"138\":{\"name\":\"ProcessProfile\",\"title\":\"User Profile\",\"version\":105,\"permission\":\"profile-edit\",\"singular\":1,\"created\":1729831113,\"configurable\":3,\"permanent\":true},\"7\":{\"name\":\"ProcessPageEdit\",\"title\":\"Page Edit\",\"version\":112,\"icon\":\"edit\",\"permission\":\"page-edit\",\"singular\":1,\"created\":1729831113,\"configurable\":3,\"permanent\":true,\"useNavJSON\":true},\"14\":{\"name\":\"ProcessPageSort\",\"title\":\"Page Sort and Move\",\"version\":100,\"permission\":\"page-edit\",\"created\":1729831113,\"permanent\":true},\"10\":{\"name\":\"ProcessLogin\",\"title\":\"Login\",\"version\":109,\"permission\":\"page-view\",\"created\":1729831113,\"configurable\":4,\"permanent\":true},\"17\":{\"name\":\"ProcessPageAdd\",\"title\":\"Page Add\",\"version\":109,\"icon\":\"plus-circle\",\"permission\":\"page-edit\",\"created\":1729831113,\"configurable\":3,\"permanent\":true,\"useNavJSON\":true},\"134\":{\"name\":\"ProcessPageType\",\"title\":\"Page Type\",\"version\":101,\"singular\":1,\"created\":1729831113,\"configurable\":3,\"permanent\":true,\"useNavJSON\":true,\"addFlag\":32},\"165\":{\"name\":\"ProcessRecentPages\",\"title\":\"Recent Pages\",\"version\":2,\"icon\":\"clock-o\",\"permission\":\"page-edit-recent\",\"singular\":1,\"created\":1729831138,\"useNavJSON\":true,\"nav\":[{\"url\":\"?edited=1\",\"label\":\"Edited\",\"icon\":\"users\",\"navJSON\":\"navJSON\\/?edited=1\"},{\"url\":\"?added=1\",\"label\":\"Created\",\"icon\":\"users\",\"navJSON\":\"navJSON\\/?added=1\"},{\"url\":\"?edited=1&me=1\",\"label\":\"Edited by me\",\"icon\":\"user\",\"navJSON\":\"navJSON\\/?edited=1&me=1\"},{\"url\":\"?added=1&me=1\",\"label\":\"Created by me\",\"icon\":\"user\",\"navJSON\":\"navJSON\\/?added=1&me=1\"},{\"url\":\"another\\/\",\"label\":\"Add another\",\"icon\":\"plus-circle\",\"navJSON\":\"anotherNavJSON\\/\"}]},\"150\":{\"name\":\"ProcessPageLister\",\"title\":\"Lister\",\"version\":26,\"icon\":\"search\",\"permission\":\"page-lister\",\"created\":1729831113,\"configurable\":true,\"permanent\":true,\"useNavJSON\":true,\"addFlag\":32},\"121\":{\"name\":\"ProcessPageEditLink\",\"title\":\"Page Edit Link\",\"version\":112,\"icon\":\"link\",\"permission\":\"page-edit\",\"singular\":1,\"created\":1729831113,\"configurable\":4,\"permanent\":true},\"167\":{\"name\":\"ProcessLogger\",\"title\":\"Logs\",\"version\":2,\"icon\":\"tree\",\"permission\":\"logs-view\",\"singular\":1,\"created\":1729831141,\"useNavJSON\":true},\"50\":{\"name\":\"ProcessModule\",\"title\":\"Modules\",\"version\":120,\"permission\":\"module-admin\",\"created\":1729831113,\"permanent\":true,\"useNavJSON\":true,\"nav\":[{\"url\":\"?site#tab_site_modules\",\"label\":\"Site\",\"icon\":\"plug\",\"navJSON\":\"navJSON\\/?site=1\"},{\"url\":\"?core#tab_core_modules\",\"label\":\"Core\",\"icon\":\"plug\",\"navJSON\":\"navJSON\\/?core=1\"},{\"url\":\"?configurable#tab_configurable_modules\",\"label\":\"Configure\",\"icon\":\"gear\",\"navJSON\":\"navJSON\\/?configurable=1\"},{\"url\":\"?install#tab_install_modules\",\"label\":\"Install\",\"icon\":\"sign-in\",\"navJSON\":\"navJSON\\/?install=1\"},{\"url\":\"?new#tab_new_modules\",\"label\":\"New\",\"icon\":\"plus\"},{\"url\":\"?reset=1\",\"label\":\"Refresh\",\"icon\":\"refresh\"}]},\"83\":{\"name\":\"ProcessPageView\",\"title\":\"Page View\",\"version\":106,\"permission\":\"page-view\",\"created\":1729831113,\"permanent\":true},\"66\":{\"name\":\"ProcessUser\",\"title\":\"Users\",\"version\":107,\"icon\":\"group\",\"permission\":\"user-admin\",\"created\":1729831113,\"configurable\":\"ProcessUserConfig.php\",\"permanent\":true,\"useNavJSON\":true},\"6\":{\"name\":\"FieldtypeFile\",\"title\":\"Files\",\"version\":107,\"created\":1729831113,\"configurable\":4,\"permanent\":true},\"107\":{\"name\":\"FieldtypeFieldsetTabOpen\",\"title\":\"Fieldset in Tab (Open)\",\"version\":100,\"singular\":1,\"created\":1729831113,\"permanent\":true},\"111\":{\"name\":\"FieldtypePageTitle\",\"title\":\"Page Title\",\"version\":100,\"singular\":true,\"created\":1729831113,\"permanent\":true},\"4\":{\"name\":\"FieldtypePage\",\"title\":\"Page Reference\",\"version\":107,\"created\":1729831113,\"configurable\":3,\"permanent\":true},\"105\":{\"name\":\"FieldtypeFieldsetOpen\",\"title\":\"Fieldset (Open)\",\"version\":101,\"singular\":1,\"created\":1729831113,\"permanent\":true},\"3\":{\"name\":\"FieldtypeText\",\"title\":\"Text\",\"version\":102,\"created\":1729831113,\"permanent\":true},\"84\":{\"name\":\"FieldtypeInteger\",\"title\":\"Integer\",\"version\":102,\"created\":1729831113,\"permanent\":true},\"133\":{\"name\":\"FieldtypePassword\",\"title\":\"Password\",\"version\":101,\"singular\":true,\"created\":1729831113,\"permanent\":true},\"135\":{\"name\":\"FieldtypeURL\",\"title\":\"URL\",\"version\":101,\"singular\":true,\"created\":1729831113,\"permanent\":true},\"97\":{\"name\":\"FieldtypeCheckbox\",\"title\":\"Checkbox\",\"version\":101,\"singular\":1,\"created\":1729831113,\"permanent\":true},\"89\":{\"name\":\"FieldtypeFloat\",\"title\":\"Float\",\"version\":107,\"singular\":1,\"created\":1729831113,\"permanent\":true},\"27\":{\"name\":\"FieldtypeModule\",\"title\":\"Module Reference\",\"version\":102,\"created\":1729831113,\"permanent\":true},\"106\":{\"name\":\"FieldtypeFieldsetClose\",\"title\":\"Fieldset (Close)\",\"version\":100,\"singular\":1,\"created\":1729831113,\"permanent\":true},\"57\":{\"name\":\"FieldtypeImage\",\"title\":\"Images\",\"version\":102,\"created\":1729831113,\"configurable\":4,\"permanent\":true},\"29\":{\"name\":\"FieldtypeEmail\",\"title\":\"E-Mail\",\"version\":101,\"created\":1729831113},\"28\":{\"name\":\"FieldtypeDatetime\",\"title\":\"Datetime\",\"version\":105,\"created\":1729831113},\"1\":{\"name\":\"FieldtypeTextarea\",\"title\":\"Textarea\",\"version\":107,\"created\":1729831113,\"permanent\":true},\"156\":{\"name\":\"MarkupHTMLPurifier\",\"title\":\"HTML Purifier\",\"version\":497,\"created\":1729831113},\"67\":{\"name\":\"MarkupAdminDataTable\",\"title\":\"Admin Data Table\",\"version\":107,\"created\":1729831113,\"permanent\":true},\"98\":{\"name\":\"MarkupPagerNav\",\"title\":\"Pager (Pagination) Navigation\",\"version\":105,\"created\":1729831113},\"113\":{\"name\":\"MarkupPageArray\",\"title\":\"PageArray Markup\",\"version\":100,\"autoload\":true,\"singular\":true,\"created\":1729831113},\"125\":{\"name\":\"SessionLoginThrottle\",\"title\":\"Session Login Throttle\",\"version\":103,\"autoload\":\"function\",\"singular\":true,\"created\":1729831113,\"configurable\":3},\"177\":{\"name\":\"ProcessSessionDB\",\"title\":\"Sessions\",\"version\":5,\"icon\":\"dashboard\",\"requiresVersions\":{\"SessionHandlerDB\":[\">=\",0]},\"singular\":1,\"created\":1730263541},\"176\":{\"name\":\"SessionHandlerDB\",\"title\":\"Session Handler Database\",\"version\":6,\"installs\":[\"ProcessSessionDB\"],\"autoload\":true,\"singular\":true,\"created\":1730263541,\"configurable\":3},\"103\":{\"name\":\"JqueryTableSorter\",\"title\":\"jQuery Table Sorter Plugin\",\"version\":\"2.31.3\",\"singular\":1,\"created\":1729831113},\"117\":{\"name\":\"JqueryUI\",\"title\":\"jQuery UI\",\"version\":\"1.10.4\",\"singular\":true,\"created\":1729831113,\"permanent\":true},\"151\":{\"name\":\"JqueryMagnific\",\"title\":\"jQuery Magnific Popup\",\"version\":\"1.1.0\",\"singular\":1,\"created\":1729831113},\"116\":{\"name\":\"JqueryCore\",\"title\":\"jQuery Core\",\"version\":\"1.12.4\",\"singular\":true,\"created\":1729831113,\"permanent\":true},\"45\":{\"name\":\"JqueryWireTabs\",\"title\":\"jQuery Wire Tabs Plugin\",\"version\":110,\"created\":1729831113,\"configurable\":3,\"permanent\":true},\"148\":{\"name\":\"AdminThemeDefault\",\"title\":\"Default\",\"version\":14,\"autoload\":\"template=admin\",\"created\":1729831113,\"configurable\":19},\"166\":{\"name\":\"AdminThemeUikit\",\"title\":\"Uikit\",\"version\":33,\"autoload\":\"template=admin\",\"created\":1729831138,\"configurable\":4},\"178\":{\"name\":\"TextformatterVideoEmbed\",\"title\":\"Video embed for YouTube (and Vimeo)\",\"version\":202,\"requiresVersions\":{\"ProcessWire\":[\">=\",\"3.0.148\"]},\"singular\":1,\"created\":1730444102,\"configurable\":3},\"179\":{\"name\":\"FormBuilder\",\"title\":\"Form Builder\",\"version\":22,\"installs\":[\"ProcessFormBuilder\",\"InputfieldFormBuilderFile\"],\"autoload\":true,\"singular\":true,\"configurable\":true,\"namespace\":\"\\\\\"},\"180\":{\"name\":\"ProcessFormBuilder\",\"title\":\"Forms\",\"version\":22,\"requiresVersions\":{\"FormBuilder\":[\">=\",0]},\"permission\":\"form-builder\",\"singular\":true,\"namespace\":\"\\\\\"},\"181\":{\"name\":\"InputfieldFormBuilderFile\",\"title\":\"File (for FormBuilder)\",\"version\":1,\"requiresVersions\":{\"FormBuilder\":[\">=\",0]},\"namespace\":\"\\\\\"}}', '2010-04-08 03:10:01'),
('FileCompiler__43945bf1aae031306179831e3b50e83f', '{\"source\":{\"file\":\"\\/home\\/u558951646\\/domains\\/pro6advies.samiulfaysal.com\\/public_html\\/site\\/modules\\/FormBuilder\\/FormBuilder.module\",\"hash\":\"8c526083748c4bf0e8bd1389ecd10d03\",\"size\":12396,\"time\":1730627797,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/home\\/u558951646\\/domains\\/pro6advies.samiulfaysal.com\\/public_html\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/FormBuilder\\/FormBuilder.module\",\"hash\":\"178a8a61004305f9711a957f5ca53292\",\"size\":13391,\"time\":1730627797}}', '2010-04-08 03:10:10'),
('FileCompiler__9bc46dad5a8e2a9da9a083a7548c4c4c', '{\"source\":{\"file\":\"\\/home\\/u558951646\\/domains\\/pro6advies.samiulfaysal.com\\/public_html\\/site\\/modules\\/FormBuilder\\/FormBuilderConfig.php\",\"hash\":\"fbcb0b07fe9871b7d58a0970596de845\",\"size\":12612,\"time\":1730630995,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/home\\/u558951646\\/domains\\/pro6advies.samiulfaysal.com\\/public_html\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/FormBuilder\\/FormBuilderConfig.php\",\"hash\":\"9312ba0442b8d97f16028540e5c2d2e6\",\"size\":13497,\"time\":1730630995}}', '2010-04-08 03:10:10'),
('FileCompiler__12a468c821e3cd0bb0c79fbf80563902', '{\"source\":{\"file\":\"\\/home\\/u558951646\\/domains\\/pro6advies.samiulfaysal.com\\/public_html\\/site\\/modules\\/FormBuilder\\/InputfieldFormBuilderFile.module\",\"hash\":\"0042f8c5fa2c744495c8b87f2d1ac857\",\"size\":10440,\"time\":1730627797,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/home\\/u558951646\\/domains\\/pro6advies.samiulfaysal.com\\/public_html\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/FormBuilder\\/InputfieldFormBuilderFile.module\",\"hash\":\"03b4e47260f9a9bc2c5db2272fda0ac4\",\"size\":10837,\"time\":1730627797}}', '2010-04-08 03:10:10'),
('FileCompiler__8cea20ad5cc4f77f82b18c93d7e33a61', '{\"source\":{\"file\":\"\\/home\\/u558951646\\/domains\\/pro6advies.samiulfaysal.com\\/public_html\\/site\\/modules\\/FormBuilder\\/InputfieldFormBuilder.php\",\"hash\":\"8c6209d0662295e3e83cab3dfc190bbe\",\"size\":777,\"time\":1730627797,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/home\\/u558951646\\/domains\\/pro6advies.samiulfaysal.com\\/public_html\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/FormBuilder\\/InputfieldFormBuilder.php\",\"hash\":\"7be14756a0b110f0e19d8c9165e13f7a\",\"size\":790,\"time\":1730627797}}', '2010-04-08 03:10:10'),
('FileCompiler__256fcae8cc66fd1c3fa324e308b8b2c1', '{\"source\":{\"file\":\"\\/home\\/u558951646\\/domains\\/pro6advies.samiulfaysal.com\\/public_html\\/site\\/modules\\/FormBuilder\\/ProcessFormBuilder.module\",\"hash\":\"bc20441a155b111b3bba6780d59a1839\",\"size\":77266,\"time\":1730627797,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/home\\/u558951646\\/domains\\/pro6advies.samiulfaysal.com\\/public_html\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/FormBuilder\\/ProcessFormBuilder.module\",\"hash\":\"319a9de1e6397b204c0a0dc434ad115e\",\"size\":79781,\"time\":1730627797}}', '2010-04-08 03:10:10'),
('FileCompiler__65c5f42cdcfd2481f0bbebab213109e0', '{\"source\":{\"file\":\"\\/home\\/u558951646\\/domains\\/pro6advies.samiulfaysal.com\\/public_html\\/site\\/modules\\/FormBuilder\\/FormBuilderMain.php\",\"hash\":\"2e5c83b240b645a284aafe759cab3e70\",\"size\":14339,\"time\":1730627797,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/home\\/u558951646\\/domains\\/pro6advies.samiulfaysal.com\\/public_html\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/FormBuilder\\/FormBuilderMain.php\",\"hash\":\"b112774e9e33f8fb7046f37d8a1c6653\",\"size\":15257,\"time\":1730627797}}', '2010-04-08 03:10:10'),
('FileCompiler__57b5ab9cc462da5f185d2a2e67b32013', '{\"source\":{\"file\":\"\\/home\\/u558951646\\/domains\\/pro6advies.samiulfaysal.com\\/public_html\\/site\\/modules\\/FormBuilder\\/FormBuilderException.php\",\"hash\":\"3fc223a3e3aeea1498e94e0e358134a0\",\"size\":192,\"time\":1730627797,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/home\\/u558951646\\/domains\\/pro6advies.samiulfaysal.com\\/public_html\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/FormBuilder\\/FormBuilderException.php\",\"hash\":\"3fc223a3e3aeea1498e94e0e358134a0\",\"size\":192,\"time\":1730627797}}', '2010-04-08 03:10:10'),
('FileCompiler__850eb3fffa68a305481eadf4ef9e9d7c', '{\"source\":{\"file\":\"\\/home\\/u558951646\\/domains\\/pro6advies.samiulfaysal.com\\/public_html\\/site\\/modules\\/FormBuilder\\/FormBuilderData.php\",\"hash\":\"8d6d0e707d4b752d9116a92fec18e7af\",\"size\":1998,\"time\":1730627797,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/home\\/u558951646\\/domains\\/pro6advies.samiulfaysal.com\\/public_html\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/FormBuilder\\/FormBuilderData.php\",\"hash\":\"8d6d0e707d4b752d9116a92fec18e7af\",\"size\":1998,\"time\":1730627797}}', '2010-04-08 03:10:10'),
('FileCompiler__37178fe90a639ba2a9e89eafc4240347', '{\"source\":{\"file\":\"\\/home\\/u558951646\\/domains\\/pro6advies.samiulfaysal.com\\/public_html\\/site\\/modules\\/FormBuilder\\/FormBuilderField.php\",\"hash\":\"79f6509393468e896324289b725fbce5\",\"size\":6623,\"time\":1730627797,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/home\\/u558951646\\/domains\\/pro6advies.samiulfaysal.com\\/public_html\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/FormBuilder\\/FormBuilderField.php\",\"hash\":\"48ae52e8842f588a23ff44d9998d0fd3\",\"size\":6635,\"time\":1730627797}}', '2010-04-08 03:10:10'),
('FileCompiler__74af58f93df44ee6cdd0d53552261c22', '{\"source\":{\"file\":\"\\/home\\/u558951646\\/domains\\/pro6advies.samiulfaysal.com\\/public_html\\/site\\/modules\\/FormBuilder\\/FormBuilderForm.php\",\"hash\":\"41c593dd3dd1b820ab8dfe1442064217\",\"size\":3386,\"time\":1730627797,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/home\\/u558951646\\/domains\\/pro6advies.samiulfaysal.com\\/public_html\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/FormBuilder\\/FormBuilderForm.php\",\"hash\":\"dc7506c14be2ec74442d9ad3dc86f3ba\",\"size\":3801,\"time\":1730627797}}', '2010-04-08 03:10:10'),
('FileCompiler__26f8369693ae90306adb541546f68d27', '{\"source\":{\"file\":\"\\/home\\/u558951646\\/domains\\/pro6advies.samiulfaysal.com\\/public_html\\/site\\/modules\\/FormBuilder\\/FormBuilderEntries.php\",\"hash\":\"bc79c84d56ab663696aadffc4e236ffd\",\"size\":8679,\"time\":1730627797,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/home\\/u558951646\\/domains\\/pro6advies.samiulfaysal.com\\/public_html\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/FormBuilder\\/FormBuilderEntries.php\",\"hash\":\"3414c566ec5f32687b6eb62b5a1ab657\",\"size\":8770,\"time\":1730627797}}', '2010-04-08 03:10:10'),
('FileCompiler__ced7cf68dc392fb5884d397384b37a2b', '{\"source\":{\"file\":\"\\/home\\/u558951646\\/domains\\/pro6advies.samiulfaysal.com\\/public_html\\/site\\/modules\\/FormBuilder\\/FormBuilderInstall.php\",\"hash\":\"adc2e84a52d04da293e6541b2cc08aee\",\"size\":3868,\"time\":1730627797,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/home\\/u558951646\\/domains\\/pro6advies.samiulfaysal.com\\/public_html\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/FormBuilder\\/FormBuilderInstall.php\",\"hash\":\"2652cb4c26beef90ff6aa69a069ebacf\",\"size\":4134,\"time\":1730627797}}', '2010-04-08 03:10:10'),
('Permissions.names', '{\"form-builder\":1076,\"form-builder-add\":1077,\"lang-edit\":1055,\"logs-edit\":1014,\"logs-view\":1013,\"page-delete\":34,\"page-edit\":32,\"page-edit-recent\":1011,\"page-lister\":1006,\"page-lock\":54,\"page-move\":35,\"page-sort\":50,\"page-template\":51,\"page-view\":36,\"profile-edit\":53,\"user-admin\":52}', '2010-04-08 03:10:10'),
('FileCompiler__595fc53d5942f7174749c5ba6ba0f516', '{\"source\":{\"file\":\"\\/home\\/u558951646\\/domains\\/pro6advies.samiulfaysal.com\\/public_html\\/site\\/modules\\/FormBuilder\\/FormBuilderProcessor.php\",\"hash\":\"3196a72078c4f93821cce89927e9aa3e\",\"size\":28667,\"time\":1730627797,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/home\\/u558951646\\/domains\\/pro6advies.samiulfaysal.com\\/public_html\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/FormBuilder\\/FormBuilderProcessor.php\",\"hash\":\"47deac533eb7b43bced49599852e39db\",\"size\":30086,\"time\":1730627797}}', '2010-04-08 03:10:10'),
('FileCompiler__ea531d4eb416f2e65254681b715a1e93', '{\"source\":{\"file\":\"\\/home\\/u558951646\\/domains\\/pro6advies.samiulfaysal.com\\/public_html\\/site\\/modules\\/FormBuilder\\/ProcessFormBuilderEmbed.php\",\"hash\":\"154d743ff1f88aa88f9389cf038b1887\",\"size\":5755,\"time\":1730627797,\"ns\":\"\\\\\"},\"target\":{\"file\":\"\\/home\\/u558951646\\/domains\\/pro6advies.samiulfaysal.com\\/public_html\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/FormBuilder\\/ProcessFormBuilderEmbed.php\",\"hash\":\"b64449af79616d68c00b714ec4a85219\",\"size\":8242,\"time\":1730627797}}', '2010-04-08 03:10:10');

-- --------------------------------------------------------

--
-- Table structure for table `fieldgroups`
--

CREATE TABLE `fieldgroups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `fieldgroups`
--

INSERT INTO `fieldgroups` (`id`, `name`) VALUES
(2, 'admin'),
(3, 'user'),
(4, 'role'),
(5, 'permission'),
(1, 'home'),
(83, 'basic-page'),
(97, 'createBusiness'),
(98, 'myaccount'),
(99, 'login'),
(100, 'language'),
(101, 'singleService'),
(102, 'reviews'),
(103, 'error_page'),
(104, 'form-builder');

-- --------------------------------------------------------

--
-- Table structure for table `fieldgroups_fields`
--

CREATE TABLE `fieldgroups_fields` (
  `fieldgroups_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `fields_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sort` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `data` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `fieldgroups_fields`
--

INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES
(2, 2, 1, NULL),
(2, 1, 0, NULL),
(3, 4, 2, NULL),
(3, 92, 1, NULL),
(4, 5, 0, NULL),
(5, 1, 0, NULL),
(3, 97, 3, NULL),
(83, 1, 0, NULL),
(1, 124, 24, NULL),
(3, 3, 0, NULL),
(97, 1, 0, NULL),
(97, 98, 1, '{\"label\":\"Main Content\"}'),
(97, 106, 2, NULL),
(98, 1, 0, NULL),
(99, 1, 0, NULL),
(100, 1, 0, NULL),
(100, 102, 1, NULL),
(100, 103, 2, NULL),
(3, 104, 4, NULL),
(101, 105, 0, NULL),
(101, 1, 1, NULL),
(101, 98, 2, NULL),
(97, 99, 3, NULL),
(97, 100, 4, NULL),
(97, 101, 5, NULL),
(102, 1, 0, NULL),
(102, 98, 1, NULL),
(102, 105, 2, NULL),
(103, 1, 0, NULL),
(1, 132, 23, NULL),
(1, 129, 22, NULL),
(1, 126, 21, NULL),
(1, 123, 20, NULL),
(1, 131, 19, NULL),
(1, 128, 18, NULL),
(1, 125, 17, NULL),
(1, 122, 16, NULL),
(1, 121, 15, NULL),
(1, 120, 14, NULL),
(1, 119, 13, NULL),
(1, 118, 12, NULL),
(1, 117, 11, NULL),
(1, 116, 10, NULL),
(1, 115, 9, NULL),
(1, 114, 8, NULL),
(1, 113, 7, NULL),
(1, 112, 6, NULL),
(1, 111, 5, NULL),
(1, 110, 4, NULL),
(1, 109, 3, NULL),
(1, 108, 2, NULL),
(1, 107, 1, NULL),
(1, 1, 0, NULL),
(1, 127, 25, NULL),
(1, 130, 26, NULL),
(1, 133, 27, NULL),
(104, 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fields`
--

CREATE TABLE `fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(128) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `name` varchar(250) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `flags` int(11) NOT NULL DEFAULT 0,
  `label` varchar(250) NOT NULL DEFAULT '',
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `fields`
--

INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES
(1, 'FieldtypePageTitle', 'title', 13, 'Biz Title', '{\"required\":1,\"textformatters\":[\"TextformatterEntities\"],\"size\":0,\"maxlength\":255}'),
(2, 'FieldtypeModule', 'process', 25, 'Process', '{\"description\":\"The process that is executed on this page. Since this is mostly used by ProcessWire internally, it is recommended that you don\'t change the value of this unless adding your own pages in the admin.\",\"collapsed\":1,\"required\":1,\"moduleTypes\":[\"Process\"],\"permanent\":1}'),
(3, 'FieldtypePassword', 'pass', 24, 'Set Password', '{\"collapsed\":1,\"size\":50,\"maxlength\":128}'),
(5, 'FieldtypePage', 'permissions', 24, 'Permissions', '{\"derefAsPage\":0,\"parent_id\":31,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldCheckboxes\"}'),
(4, 'FieldtypePage', 'roles', 24, 'Roles', '{\"derefAsPage\":0,\"parent_id\":30,\"labelFieldName\":\"name\",\"inputfield\":\"InputfieldCheckboxes\",\"description\":\"User will inherit the permissions assigned to each role. You may assign multiple roles to a user. When accessing a page, the user will only inherit permissions from the roles that are also assigned to the page\'s template.\"}'),
(92, 'FieldtypeEmail', 'email', 9, 'E-Mail Address', '{\"size\":70,\"maxlength\":255}'),
(97, 'FieldtypeModule', 'admin_theme', 8, 'Admin Theme', '{\"moduleTypes\":[\"AdminTheme\"],\"labelField\":\"title\",\"inputfieldClass\":\"InputfieldRadios\"}'),
(98, 'FieldtypeTextarea', 'bizcontent', 0, 'bizContent', '{\"inputfieldClass\":\"InputfieldTinyMCE\",\"contentType\":1,\"htmlOptions\":[2,4,8,16],\"inlineMode\":0,\"height\":500,\"lazyMode\":1,\"features\":[\"toolbar\",\"menubar\",\"stickybars\",\"purifier\",\"imgUpload\",\"imgResize\",\"pasteFilter\"],\"toolbar\":\"styles bold italic pwlink pwimage blockquote hr bullist numlist table anchor code media\",\"plugins\":[\"anchor\",\"code\",\"image\",\"link\",\"lists\",\"media\",\"pwimage\",\"pwlink\",\"table\"],\"collapsed\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"rows\":15}'),
(99, 'FieldtypeImage', 'sidebar_image_1', 0, 'Sidebar Image 1', '{\"fileSchema\":270,\"maxFiles\":1,\"extensions\":\"gif jpg jpeg png\",\"outputFormat\":0,\"descriptionRows\":1,\"useTags\":0,\"gridMode\":\"grid\",\"focusMode\":\"on\",\"resizeServer\":0,\"clientQuality\":90,\"maxReject\":0,\"dimensionsByAspectRatio\":0,\"defaultValuePage\":0,\"inputfieldClass\":\"InputfieldImage\"}'),
(100, 'FieldtypeImage', 'sidebar_image_2', 0, 'Sidebar Image 2', '{\"fileSchema\":270,\"maxFiles\":1,\"extensions\":\"gif jpg jpeg png\",\"outputFormat\":0,\"descriptionRows\":1,\"useTags\":0,\"collapsed\":0,\"gridMode\":\"grid\",\"focusMode\":\"on\",\"resizeServer\":0,\"clientQuality\":90,\"maxReject\":0,\"dimensionsByAspectRatio\":0,\"defaultValuePage\":0,\"inputfieldClass\":\"InputfieldImage\"}'),
(101, 'FieldtypeTextarea', 'sidebar_content', 0, 'Sidebar Content', '{\"inputfieldClass\":\"InputfieldTinyMCE\",\"contentType\":1}'),
(102, 'FieldtypeFile', 'language_files_site', 24, 'Site Translation Files', '{\"extensions\":\"json csv\",\"maxFiles\":0,\"inputfieldClass\":\"InputfieldFile\",\"unzip\":1,\"description\":\"Use this field for translations specific to your site (like files in \\/site\\/templates\\/ for example).\",\"descriptionRows\":0,\"fileSchema\":14}'),
(103, 'FieldtypeFile', 'language_files', 24, 'Core Translation Files', '{\"extensions\":\"json csv\",\"maxFiles\":0,\"inputfieldClass\":\"InputfieldFile\",\"unzip\":1,\"description\":\"Use this field for [language packs](http:\\/\\/modules.processwire.com\\/categories\\/language-pack\\/). To delete all files, double-click the trash can for any file, then save.\",\"descriptionRows\":0,\"fileSchema\":14}'),
(104, 'FieldtypePage', 'language', 24, 'Language', '{\"derefAsPage\":1,\"parent_id\":1056,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldRadios\",\"required\":1}'),
(105, 'FieldtypeImage', 'single_image', 0, 'Single Image', '{\"fileSchema\":270,\"maxFiles\":1,\"extensions\":\"gif jpg jpeg png\",\"outputFormat\":0,\"descriptionRows\":1,\"useTags\":0,\"collapsed\":0,\"gridMode\":\"grid\",\"focusMode\":\"on\",\"resizeServer\":0,\"clientQuality\":90,\"maxReject\":0,\"dimensionsByAspectRatio\":0,\"defaultValuePage\":0,\"inputfieldClass\":\"InputfieldImage\"}'),
(106, 'FieldtypeTextarea', 'single_video', 0, 'Single Video', '{\"textformatters\":[\"TextformatterVideoEmbed\"],\"inputfieldClass\":\"InputfieldTinyMCE\",\"contentType\":1,\"collapsed\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"rows\":5,\"inlineMode\":0,\"height\":500,\"lazyMode\":1,\"features\":[\"toolbar\",\"menubar\",\"stickybars\",\"purifier\",\"imgUpload\",\"imgResize\",\"pasteFilter\"],\"toolbar\":\"styles bold italic pwlink pwimage blockquote hr bullist numlist table anchor code media\",\"plugins\":[\"anchor\",\"code\",\"link\",\"lists\",\"media\",\"pwimage\",\"pwlink\",\"table\"]}'),
(107, 'FieldtypeText', 'home_left_title_1', 0, 'Home Left title 1', '{\"textformatters\":[\"TextformatterEntities\"]}'),
(108, 'FieldtypeImage', 'home_right_image_1', 0, 'Home Right Image 1', '{\"fileSchema\":270,\"maxFiles\":1,\"extensions\":\"gif jpg jpeg png\",\"outputFormat\":0,\"descriptionRows\":1,\"useTags\":0,\"gridMode\":\"grid\",\"focusMode\":\"on\",\"resizeServer\":0,\"clientQuality\":90,\"maxReject\":0,\"dimensionsByAspectRatio\":0,\"defaultValuePage\":0,\"inputfieldClass\":\"InputfieldImage\"}'),
(109, 'FieldtypeImage', 'home_section_2_left_image_1', 0, 'Home Section 2 Left Image 1', '{\"fileSchema\":270,\"maxFiles\":1,\"extensions\":\"gif jpg jpeg png\",\"outputFormat\":0,\"descriptionRows\":1,\"useTags\":0,\"collapsed\":0,\"gridMode\":\"grid\",\"focusMode\":\"on\",\"resizeServer\":0,\"clientQuality\":90,\"maxReject\":0,\"dimensionsByAspectRatio\":0,\"defaultValuePage\":0,\"inputfieldClass\":\"InputfieldImage\"}'),
(110, 'FieldtypeText', 'home_section_2_right_title', 0, 'Home Section 2 Right Title', '{\"textformatters\":[\"TextformatterEntities\"]}'),
(111, 'FieldtypeText', 'home_section_2_right_subtitle', 0, 'Home Section 2 Right Subtitle', '{\"textformatters\":[\"TextformatterEntities\"]}'),
(112, 'FieldtypeText', 'home_section_3_title', 0, 'Home Section 3 Title', '{\"textformatters\":[\"TextformatterEntities\"],\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}'),
(113, 'FieldtypeTextarea', 'home_section_3_video_1', 0, 'Home Section 3 Video 1', '{\"textformatters\":[\"TextformatterVideoEmbed\"],\"inputfieldClass\":\"InputfieldTextarea\",\"contentType\":1,\"collapsed\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"rows\":5}'),
(114, 'FieldtypeTextarea', 'home_section_3_video_2', 0, 'Home Section 3 Video 2', '{\"textformatters\":[\"TextformatterVideoEmbed\"],\"inputfieldClass\":\"InputfieldTextarea\",\"contentType\":1,\"collapsed\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"rows\":5}'),
(115, 'FieldtypeTextarea', 'home_section_3_video_3', 0, 'Home Section 3 Video 3', '{\"textformatters\":[\"TextformatterVideoEmbed\"],\"inputfieldClass\":\"InputfieldTextarea\",\"contentType\":1,\"collapsed\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"rows\":5}'),
(116, 'FieldtypeTextarea', 'home_section_3_video_4', 0, 'Home Section 3 Video 4', '{\"textformatters\":[\"TextformatterVideoEmbed\"],\"inputfieldClass\":\"InputfieldTextarea\",\"contentType\":1,\"collapsed\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"rows\":5}'),
(117, 'FieldtypeText', 'home_section_4_left_title', 0, 'Home Section 4 Left Title', '{\"textformatters\":[\"TextformatterEntities\"]}'),
(118, 'FieldtypeText', 'home_section_4_right_box_1_title', 0, 'Home Section 4 Right Box 1 Title', '{\"textformatters\":[\"TextformatterEntities\"]}'),
(119, 'FieldtypeText', 'home_section_4_right_box_1_content', 0, 'Home Section 4 Right Box 1 Content', '{\"textformatters\":[\"TextformatterEntities\"]}'),
(120, 'FieldtypeText', 'home_section_4_right_box_1_button_text', 0, 'Home Section 4 Right Box 1 Button Text', '{\"textformatters\":[\"TextformatterEntities\"]}'),
(121, 'FieldtypeURL', 'home_section_4_right_box_1_button_link', 0, 'Home Section 4 Right Box 1 Button Link', '{\"textformatters\":[\"TextformatterEntities\"]}'),
(122, 'FieldtypeText', 'home_section_4_right_box_2_title', 0, 'Home Section 4 Right Box 2 Title', '{\"textformatters\":[\"TextformatterEntities\"]}'),
(123, 'FieldtypeText', 'home_section_4_right_box_3_title', 0, 'Home Section 4 Right Box 3 Title', '{\"textformatters\":[\"TextformatterEntities\"]}'),
(124, 'FieldtypeText', 'home_section_4_right_box_4_title', 0, 'Home Section 4 Right Box 4 Title', '{\"textformatters\":[\"TextformatterEntities\"]}'),
(125, 'FieldtypeText', 'home_section_4_right_box_2_content', 0, 'Home Section 4 Right Box 2 Content', '{\"textformatters\":[\"TextformatterEntities\"]}'),
(126, 'FieldtypeText', 'home_section_4_right_box_3_content', 0, 'Home Section 4 Right Box 3 Content', '{\"textformatters\":[\"TextformatterEntities\"]}'),
(127, 'FieldtypeText', 'home_section_4_right_box_4_content', 0, 'Home Section 4 Right Box 4 Content', '{\"textformatters\":[\"TextformatterEntities\"]}'),
(128, 'FieldtypeText', 'home_section_4_right_box_2_button_text', 0, 'Home Section 4 Right Box 2 Button Text', '{\"textformatters\":[\"TextformatterEntities\"]}'),
(129, 'FieldtypeText', 'home_section_4_right_box_3_button_text', 0, 'Home Section 4 Right Box 3 Button Text', '{\"textformatters\":[\"TextformatterEntities\"]}'),
(130, 'FieldtypeText', 'home_section_4_right_box_4_button_text', 0, 'Home Section 4 Right Box 4 Button Text', '{\"textformatters\":[\"TextformatterEntities\"]}'),
(131, 'FieldtypeURL', 'home_section_4_right_box_2_button_link', 0, 'Home Section 4 Right Box 2 Button Link', '{\"textformatters\":[\"TextformatterEntities\"]}'),
(132, 'FieldtypeURL', 'home_section_4_right_box_3_button_link', 0, 'Home Section 4 Right Box 3 Button Link', '{\"textformatters\":[\"TextformatterEntities\"]}'),
(133, 'FieldtypeURL', 'home_section_4_right_box_4_button_link', 0, 'Home Section 4 Right Box 4 Button Link', '{\"textformatters\":[\"TextformatterEntities\"]}');

-- --------------------------------------------------------

--
-- Table structure for table `field_admin_theme`
--

CREATE TABLE `field_admin_theme` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `field_admin_theme`
--

INSERT INTO `field_admin_theme` (`pages_id`, `data`) VALUES
(41, 166);

-- --------------------------------------------------------

--
-- Table structure for table `field_bizcontent`
--

CREATE TABLE `field_bizcontent` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `field_bizcontent`
--

INSERT INTO `field_bizcontent` (`pages_id`, `data`) VALUES
(1015, '<h1>Ondernemingsplan schrijven</h1>\n<p> </p>\n<p>Wil je een eigen bedrijf starten? Ga je dan je ondernemingsplan, bedrijfsplan of businessplan <strong>zelf schrijven</strong> of <strong>laten schrijven</strong>?</p>\n<p>Wanneer wij je bedrijfsplan schrijven:</p>\n<ol>\n<li>zijn banken bereid eerder te financieren,</li>\n<li>wordt duidelijk of je idee haalbaar is,</li>\n<li>bespaar je jezelf veel tijd en energie,</li>\n<li>vertalen we jouw idee in cijfers en een bedrijfsplan,</li>\n<li>vergroot je de kans op een financiering van Qredits.</li>\n</ol>\n<h2>Waarom een ondernemingsplan</h2>\n<p>Heb je een financiering van een bank nodig, dan is een ondernemingsplan verplicht. Wist je dat Qredits 70% van alle ondernemingsplannen afkeurt die (startende) ondernemers indienen? Een goed en doordacht plan is dan ook <strong>geen overbodige luxe</strong>.<br /><br />Een <strong>krap budget</strong> om advies in te kopen? Vaak laten wij onze kosten meefinancieren door de bank. Start je zonder lening? Dan is een ondernemingsplan een uitstekend middel om de haalbaarheid van je plan te onderzoeken.</p>\n<h2>Waarom Pro6 Advies een ondernemingsplan laten schrijven?</h2>\n<p>(Startende) ondernemers hebben vaak maar 1 of 2 keer in hun leven een ondernemingsplan nodig. En niet iedereen lukt het een plan te schrijven dat door banken direct goed wordt gekeurd. Dus waarom zelf ploeteren, terwijl wij heel succesvol zijn! Wist je dat op basis van onze ondernemingplannen 95% van onze klanten een lening van een bank krijgt?</p>\n<h2>Hoe gaan we te werk?</h2>\n<p>Het liefst ontmoeten wij je persoonlijk, zodat je al je ideeën aan ons kunt vertellen / laten zien. Standaard bezoeken we je één keer, dat is vaak voldoende om alle informatie voor een goed plan te verzamelen. Via telefoon, e-mail of Skype hebben we contact als dat nodig blijkt. Als we alle informatie compleet hebben, is het concept ondernemingsplan <strong>binnen 5 werkdagen</strong> klaar. Je ontvangt dan een pdf-bestand. </p>\n<h2>Tarieven</h2>\n<p>Na een telefonisch intakegesprek ontvang je een offerte. Voor je investering, bekijk onze <a href=\"https://www.pro6advies.nl/tarieven/\">tarieven</a>.</p>\n<h2>Tijdsduur</h2>\n<p>Zodra alle informatie compleet is, hebben we ongeveer 5 werkdagen nodig voor het eerste concept van het ondernemingsplan. Soms is het zinvol om vòòr het schrijven van het definitieve plan eerst uitgebreid marktonderzoek uit te voeren. Daar kunnen wij je bij ondersteunen. Voor de duidelijheid, dat doen we op uur- of offertebasis.</p>'),
(1016, '<p><strong>Een bedrijfsplan opgesteld door Pro6 Advies:</strong></p>\n<ul>\n<li>is een professioneel visitekaartje,</li>\n<li>wordt sneller en vaker gefinancierd door een bank,</li>\n<li>scheelt je veel energie en tijd,</li>\n<li>voorkomt onnodige fouten, zoals een te lage financiering,</li>\n<li>overtuigt je partner, de financier, UWV en jezelf,</li>\n<li>verbetert je bedrijfsmodel.                              </li>\n</ul>\n<h2>Hoe gaat het verder:</h2>\n<p>Stap 1: 1e Kennismaking per telefoon of videobellen<br />Stap 2: Offerte en opdrachtbevestiging<br />Stap 3: Concept plan per e-mail<br />Stap 4: Opleveren definitief plan</p>\n<h2>Extra</h2>\n<p>Stap 5: Advies en begeleiding bij verkrijgen financiering </p>\n<h2>Interesse in een bedrijfsplan door Pro6 Advies?</h2>\n<p>Leuk, we gaan graag voor je aan de slag! Je kunt contact met ons opnemen via <a href=\"mailto:info@pro6advies.nl\">info@pro6advies.nl</a> of door te bellen naar (0546) 57 84 85.</p>'),
(1017, '<p><strong>Mijn naam is Milo Groot Obbink, business-coach en oprichter van Pro6 Advies</strong></p>\n<p>Geweldig, je kiest voor ondernemen! Je wilt een eigen bedrijf starten, vanuit een uitkering van UWV, via een outplacement traject of baan in loondienst.<br /><br />Als het ondernemerschap nieuw voor je is kan ik me voorstellen dat je nog veel vragen hebt <strong>hoe </strong>je het starten van een eigen onderneming aanpakt en <strong>welke stappen</strong> je moet nemen en in welke volgorde. </p>\n<p>Herken je dit: </p>\n<ul>\n<li>Je wilt graag een eigen bedrijf starten maar er is online zo veel informatie te vinden over het starten van een bedrijf, dat jij niet goed weet waar je moet beginnen </li>\n<li>Je hebt<strong> een ondernemingsplan nodig</strong> maar je hebt geen idee hoe je een ondernemingsplan schrijft</li>\n<li>Wat je online vindt om zelf een ondernemingsplan te uitgebreid, ingewikkeld of lastig te vertalen naar jouw situatie / plan</li>\n</ul>\n<p>Je kunt dus een expert gebruiken die je helpt met het opstellen van jouw bedrijfsplan en die jou ondersteunt met het nemen van <strong>de juiste stappen in de goede volgorde</strong> om jouw bedrijf tot <strong>een succes te maken.</strong></p>\n<h2>Kun je wel wat hulp gebruiken bij het opstarten van je eigen bedrijf?</h2>\n<p>Als experts in het starten van een eigen bedrijf weten wij wat belangrijk is en waar je op moet letten. En waar niet op. Wij schrijven een sterk bedrijfsplan en leggen een mooie basis voor succes!</p>\n<p>Interesse ? Neem dan contact op via de button hieronder, door te mailen naar <a href=\"mailto:info@pro6advies.nl\">info@pro6advies.nl</a> of bel (0546) 57 84 85. We komen graag met je in contact.</p>\n<p><em><a href=\"https://www.pro6advies.nl/contact/contactformulier/\"><img src=\"https://www.pro6advies.nl/site/assets/files/1095/ja_ik_wil_in_10_stappen_mijn_eigen_bedijf_starten.jpg\" alt=\"\" /></a></em></p>'),
(1018, '<p>Of je nu een bedrijf gaat starten of al jaren ondernemer bent, de kennis, ervaring en feedback van anderen kan heel waardevol zijn. Als ondernemer of starter kun je namelijk simpelweg niet &aacute;lles weten en kunnen.<br><br>Elke ondernemer heeft&nbsp;<strong>\'blinde vlekken\'</strong>:&nbsp;een gebied of eigenschap waarvan jezelf vindt dat het geweldig gaat, maar wat&nbsp;de buitenwereld niet zo ervaart. Wil je meer rust ervaren, meer plezier en inkomen, begin dan met het zichtbaar maken van&nbsp;je blinde vlekken. Dat is de stap naar positieve&nbsp;verandering.</p>\n<h2>Hoe?</h2>\n<p>Als je jezelf (zakelijk) wilt verbeteren of wanneer je de kans op succes wilt vergroten, ga dan met ons in&nbsp;<a href=\"https://www.pro6advies.nl/contact/contactformulier/\">gesprek</a>. Wij maken je blinde vlekken (op persoonlijk, financieel, bedrijfsmatig gebied) zichtbaar &eacute;n geven aan hoe je deze vlekken voortaan voorkomt.<br><br>Als bestaande ondernemer, zzp\'er&nbsp;of freelancer heb je vaak andere behoeften op het gebied van coaching dan een startende ondernemer:</p>\n<ul>\n<li><a href=\"https://www.pro6advies.nl/coaching/voor-ondernemers/\">coaching voor ondernemers, zzp\'ers en freelancers</a></li>\n<li><a href=\"https://www.pro6advies.nl/coaching/voor-starters/\">coaching voor startende ondernemers</a></li>\n</ul>'),
(1019, '<p>Hier vind je informatie over onze werkwijze.</p>\n<p><strong>Start: intakegesprek</strong><br>In dit gesprek maken we uitgebreid kennis met je. Waar ben je goed in, waar moet je rekening mee houden. En ook&nbsp;hoe ben je geworden wie je nu bent, wat zijn je plannen en welke ondersteuning denk jij dat je nodig hebt.<br><br><strong>Voorstel voor begeleiding</strong><br>Na het intakegesprek ontvang je een offerte waarin we&nbsp;vertellen we&nbsp;hoe wij je gaan begeleiden. Ben&nbsp;je klant van UWV dan&nbsp;overleggen we eerst met je contactpersoon van UWV, vaak een arbeidsdeskundige of re-integratiebegeleider. De offerte bestaat dan uit een re-integratieplan met&nbsp;daarin het aantal contactmomenten en de duur van de begeleiding.<br><br><strong>Start begeleiding</strong><br>Meestal gaan we aan de hand van de indeling van een ondernemingsplan (concept, markt, marketing, investering, financieren, begroting)&nbsp;aan de slag. Het kan ook zijn dat je plan al bijna&nbsp;klaar is en dat advies&nbsp;nodig hebt om een lening aan te vragen. Of dat je graag begeleiding wilt bij het vinden van de juiste klanten.<br><br><strong>Wat wij zoal doen</strong><br>- overzicht scheppen in alles wat nodig voor de start<br>- aanscherpen van je bedrijfsidee<br>- opstellen ondernemingsplan<br>- aanvragen financiering (bij Qredits, een bank of bij UWV)<br>- opzetten van je administratie en boekhouding<br>- helpen potenti&euml;le klanten benaderen<br>- opstellen van een (standaard)offerte<br>- marketing via Facebook<br>- verbeteren van je website<br>- klankborden over ondernemerszaken<br>- advies over prijsbepaling<br>- handvaten en tools om de balans tussen inspanning, geld verdienen en ontspanning goed te houden<br>- uitleg over belastingen<br><br><strong>Hoe werken wij</strong><br>In overleg bezoeken wij&nbsp;je thuis of we&nbsp;spreken af&nbsp;op een externe locatie. Contact&nbsp;hebben we via telefoon, Zoom, Teams, Whatsapp, Skype of Facetime. Ook kunnen we op afstand je computer overnemen zodat we dingen kunnen laten zien.&nbsp;</p>'),
(1021, '<h1>Tips voor ondernemers en starters</h1>\n<p>Op deze pagina vind je nuttige en interessante websites voor ondernemers en starters:</p>\n<p><strong>UWV-uitkering en winst eigen bedrijf</strong><br />Welk deel van mijn winst moet ik terugbetalen ? Deze <a href=\"http://www.uwv.nl/particulieren/systeem/diversen/popup.aspx?id=373507\" target=\"_blank\" rel=\"noopener noreferrer\">rekenhulp oude WAJONG</a> geeft een richtlijn.<br />Heb je \'nieuwe\' WAJONG, klik dan <a href=\"http://www.uwv.nl/particulieren/systeem/diversen/popup.aspx?id=373506\" target=\"_blank\" rel=\"noopener noreferrer\">hier</a>. Ontvang je een WIA-uitkering (dus een LGU, LAU of een vervolguitkering), mail ons dan als je meer wilt weten.<strong> <br /><br />Gratis facturen maken online met iMuis Online</strong><br />Met de factuurmodule van iMuis kun je online perfecte facturen maken. Probeer het eens uit: <a href=\"https://www.muis.nl/spitsfactuur/\" target=\"_blank\" rel=\"noopener noreferrer\">naar Spitsfactuur</a>. Let wel even op dat je helemaal onderaan in het aanmeldscherm Support uitvinkt, anders betaal je € 17,50 per maand (voor de module Financieel).<br /><br /><strong>Online boekhoudsoftware</strong><br />Voor 10 euro per maand is <a href=\"https://www.siel.nl/acumulus/\" target=\"_blank\" rel=\"noopener noreferrer\">siel.nl/acumulus</a> een prima online boekhoudpakket. Een zeer gemakkeljk softwareprogramma voor boekhouden is <a href=\"https://www.digibtw.nl/\" target=\"_blank\" rel=\"noopener noreferrer\">digibtw.nl</a><br />Kijk ook eens naar: <a href=\"https://www.moneymonk.nl/\">moneymonk.nl</a>, 25 euro per maand of <a href=\"http://www.rompslomp.nl/\" target=\"_blank\" rel=\"noopener noreferrer\">rompslomp.nl</a>, 15 euro per maand (beiden incl. een app waarmee je bonnetjes kunt scannen en uploaden!).<br /><br /><strong>Belasting voor ondernemers</strong><br />Op <a href=\"http://www.belastingdienst-aangiftehulp.nl/\" target=\"_blank\" rel=\"noopener noreferrer\">belastingdienst-aangiftehulp.nl</a> vind je heel duidelijke informatie over de inkomstenbelasting voor ondernemers, eigen aan je administratie, de aangifte etc.<br />Twijfel of je als ondernemer gezien wordt door de Belastingdienst ? Doorloop de <a href=\"https://www.pro6advies.nl/downloads/www.belastingdienst-ondernemerscheck.nl\" target=\"_blank\" rel=\"noopener noreferrer\">ondernemerscheck</a>.<br /><br /><strong>Branche-informatie voor ondernemingsplan</strong><br />De Kamer van Koophandel en het CBS hebben de <a href=\"https://locatiescan.info/\" target=\"_blank\" rel=\"noopener noreferrer\">https://locatiescan.info</a> opgezegd. Via deze website kun je informatie vinden over inwonersaantallen, inkomen, bevolkingsopbouw, aantallen concurrenten etc.<br /><br /><strong>MKB Santos</strong><br />Als ondernemer kun je onverwachts in ernstige problemen raken. Soms is hulp uit een onverwachte hoek de sleutel voor een oplossing. De stichting MKB Santos kan dit zijn omdat zij financiële hulp kunnen bieden. Meer weten ? Lees <a href=\"https://www.pro6advies.nl/downloads/stichting-mkb-santos/\">hier</a> verder.</p>'),
(1020, '<h1>Dit zijn onze tarieven (exclusief 21 % BTW)</h1>\n<p>Begeleiding voor klanten van UWV,&nbsp;geen kosten</p>\n<hr>\n<p>Businesscoaching, &euro; 125 per uur</p>\n<hr>\n<p>Opstellen financieel deel ondernemingsplan, &euro; 750</p>\n<hr>\n<p>Volledig ondernemingsplan, &euro; 1.500</p>\n<hr>\n<p>Haalbaarheidsgesprek (2 uur), &euro; 300</p>\n<hr>\n<p>Haalbaarheidsonderzoek, via offerte</p>\n<hr>\n<p>Re-integratie via UWV, via offerte</p>\n<hr>\n<p>Re-integratie via outplacement, via offerte</p>\n<hr>\n<p>Overige condities: 50 % betaling vooraf, 50 % na oplevering</p>'),
(1022, '<h1>Hooggevoelig en ondernemen</h1>\n<p>We begeleiden regelmatig klanten die hooggevoelig /&nbsp;hsp-er zijn. Soms vertellen onze klanten direct dat ze hooggevoelig zijn. Maar meestal komt hooggevoeligheid pas later ter sprake.&nbsp;Dat is jammer, want hooggevoelig zijn&nbsp;vergt&nbsp;vaak veel energie, zeker als een ander (onbedoeld)&nbsp;te weinig rekening houdt met de prikkels waar jij sterk(er) op reageert.&nbsp;<br><br>De reden dat hooggevoeligheid op onze website staat is om te benadrukken&nbsp;dat we hooggevoeligheid serieus nemen. En&nbsp;om te laten zien dat hooggevoelig en ondenemerschap prima samen kunnen&nbsp;gaan.<br><br><strong>Hoe wij met hooggevoeligheid omgaan</strong><br>Het leren voelen en ervaren van je grenzen&nbsp;en&nbsp;je hierover (durven) uitspreken en is vaak een hele opgave. Dat&nbsp;geldt zeker voor hsp-ers. Het hanteren van grenzen in je persoonlijke leven is belangrijk,&nbsp;bij het&nbsp;ondernemen is dat niet anders. Het mooie van ondernemen is dat&nbsp;je meer mogelijkheden hebt om je eigen grenzen te stellen. Denk aan grenzen over het aantal uur dat je werkzaam wilt zijn, hoe je bereikbaar bent, op welke manier je je werk wilt doen, welke voorwaarden je vooraf aan je klanten stelt, etcetera.&nbsp;&nbsp;<br><br>Onze begeleiding komt het beste tot zijn recht waneer wij weten wat voor jou belangrijke behoeften zijn als het gaat om communicatie.&nbsp;Zo moet de plek waar we afspreken prettig&nbsp;aanvoelen en prikkelarm zijn. Milo Groot Obbink bezoekt daarom in overleg zijn klanten thuis.&nbsp;Rob Videler doet dit ook, maar in beperkte mate.<br>Ons motto is ook: hoe beter je jezelf kent, hoe beter je je behoeften en grenzen kunt aangeven. En hoe succesvoller je ondernemerschap.</p>'),
(1024, '<h1>Financieel plan</h1>\n<p><strong>Jij&nbsp;</strong><strong>het idee, wij de cijfers</strong></p>\n<p>Je hebt een goed idee en weet precies hoe je dat wilt gaan uitvoeren.&nbsp;<strong>Maar hoe vertaal je je plan naar cijfers?&nbsp;</strong>Specifieker, hoe vertaal je je idee naar een investeringsbegroting, een prognose en een openingsbalans?&nbsp;Pro6 Advies vertaalt je idee snel en helder naar cijfers die kloppen.</p>\n<p>Wij geven antwoord op de volgende vragen:</p>\n<ul>\n<li>Hoeveel geld is er nodig&nbsp;voor de opstart?</li>\n<li>Hoeveel krediet heb ik nodig?</li>\n<li>Hoe moet ik rekening houden met groei, hoe snel mijn klanten betalen en tegenvallers?</li>\n</ul>\n<h2>Vergroot je kans op een financiering</h2>\n<p>Is er een krediet nodig, dan&nbsp;<em>moeten</em>&nbsp;de cijfers realistisch en onderbouwd zijn wil een bank of Qredits je&nbsp;aanvraag in behandeling nemen. Wij merken dat zonder kennis van kredietaanvragen, bedrijfsfinancieringen en het&nbsp;opstellen van prognoses lastig is.</p>\n<h2>Garantie</h2>\n<p>Wij garanderen dat de kans op&nbsp;een financiering toeneemt wanneer wij het&nbsp;financi&euml;le deel&nbsp;van je ondernemingsplan opstellen!</p>\n<h2>Je financieel plan laten opstellen door Pro6 Advies?</h2>\n<p>Goed idee, we gaan graag voor je aan de slag! Je kunt contact met ons opnemen via&nbsp;<a href=\"mailto:info@pro6advies.nl\">info@pro6advies.nl</a>&nbsp;of door te bellen naar (0546) 57 84 85.</p>'),
(1025, '<h1>Laat je ondernemingsplan checken</h1>\n<p>Zelf een ondernemingsplan geschreven?&nbsp;<strong>Weet je zeker dat het plan klopt, de cijfers correct zijn en de presentatie in orde is?&nbsp;</strong>Bij enige twijfel is het een goed idee om je plan&nbsp;te&nbsp;laten controleren door de experts van Pro6 Advies.</p>\n<p>Laat je ondernemingsplan door ons checken:</p>\n<ul>\n<li>controle op minimaal 10 punten (o.a. concept, prognose, investeringsbegroting)</li>\n<li>financieringscheck</li>\n<li>doorrekenen exploitatiebegroting</li>\n<li>terugkoppeling per e-mail</li>\n<li>inclusief verbeteradvies</li>\n<li>binnen 5 werkdagen gereed</li>\n</ul>\n<h2>Je ondernemingsplan laten controleren door Pro6 Advies?</h2>\n<p>Goed idee, we gaan graag voor je aan de slag! Je kunt contact met ons opnemen via&nbsp;info@pro6advies.nl&nbsp;of door te bellen naar (0546) 57 84 85.</p>'),
(1026, '<h1>Bedrijf starten met UWV-uitkering</h1>\n<p>Mag je een bedrijf starten naast je UWV-uitkering?&nbsp;Het antwoord is: JA! Voordat je je eigen onderneming start, neem wel eerst contact op met het UWV. Zij kunnen je adviseren &eacute;n zelfs begeleiding aanbieden.</p>\n<h2>Waarom zou je&nbsp;een eigen bedrijf starten vanuit een UWV-uitkering?</h2>\n<p>Al meer dan 15 jaar begeleiden wij onze klanten die een&nbsp;WIA-, Ziektewet-, WAJONG-, WW- &nbsp;of WAO-uitkering ontvangen bij het starten van een eigen bedrijf en met succes. Een eigen bedrijf is een fantastische mogelijkheid om je vaardigheden&nbsp;en talenten toch uit te oefenen en er geld mee te verdienen, ondanks eventuele&nbsp;beperkingen. Niet alleen bepaal je zelf wanneer&nbsp;je in je bedrijf werkt, hoeveel tijd je er aan besteed,&nbsp;maar ook voor wie en op welke manier.&nbsp;<strong>De&nbsp;vrijheid en flexibiliteit van het ondernemen maakt het&nbsp;mogelijk dat je w&eacute;l bezig kan zijn met dat wat je leuk vindt en goed kan.</strong></p>\n<h2>Is een eigen bedrijf naast een uitkering voor iedereen mogelijk?</h2>\n<p>Nee, helaas niet.&nbsp;<strong>Een eigen bedrijf starten vraagt meer dan alleen ergens goed in zijn.</strong>&nbsp;Je moet contacten leggen en onderhouden, overzicht houden over je werk en administratie, door kunnen zetten, inzicht hebben in je eigen sterke en zwakke punten, hulp durven vragen en pro-actief zijn. Wij weten dat zonder deze eigenschappen succesvol ondernemen heel lastig is.</p>\n<h2>Hoe kom je bij ons terecht?</h2>\n<p>Pro6 Advies werkt al jarenlang samen met het UWV. Kom je via het UWV in aanmerking voor een coach of coachingstraject? Dan kun je aan ons gekoppeld worden. We gaan graag met je aan de slag om bij te dragen aan jouw succesvolle onderneming!</p>'),
(1027, '<p>De volgende vragen zijn belangrijk als je een eigen bedrijf start met een WW-uitkering:</p>\n<ol>\n<li>Hoe worden winsten uit mijn bedrijf verrekend met de WW?</li>\n<li>Welke ondersteuning is er voor WW-ers die een bedrijf starten?</li>\n<li>Is mijn bedrijf haalbaar?</li>\n<li>Heb ik een ondernemingsplan nodig?</li>\n</ol>\n<h2>Inkomsten bedrijf en WW</h2>\n<p><strong>Tijdens de startersperiode van 26 weken ontvang je 29% minder WW. De inkomsten uit je bedrijf in deze periode mag je volledig behouden</strong>.&nbsp;Na afloop van de startersperiode geef je aan het UWV door hoeveel uur per week besteedt aan je onderneming. Dat zijn ook de indirecte uren zoals voor boekhouding, bijhouden social media&nbsp;en acquisitietijd. Op basis van je dagloon berekent het UWV uit welk bedrag je WW-uitkering blijvend (!) gekort wordt. Meer weten?&nbsp;<a href=\"https://www.uwv.nl/particulieren/eigen-bedrijf-starten/starten-vanuit-ww-uitkering/doorgaan-met-eigen-bedrijf/index.aspx?friendlyurl=/particulieren/eigen-bedrijf-starten/starten-vanuit-ww-uitkering/doorgaan-met-eigen-bedrijf/detail/na-de-startperiode-ik-ga-door-met-mijn-bedrijf/na-de-startperiode-uren-voor-eigen-bedrijf-doorgeven\" target=\"_blank\" rel=\"noopener noreferrer\">Klik hier&nbsp;door naar&nbsp;de pagina \'Doorgaan met eigen bedrijf\'</a>&nbsp;op de site van UWV.&nbsp;Pro6 Advies is partner van het UWV. Wij weten wat de regels van het UWV voor jouw situatie betekenen.</p>\n<h2><strong>Bedrijf starten vanuit een WW-uitkering</strong></h2>\n<p>Sinds 1 januari 2019 is het mogelijk dat&nbsp;<strong>UWV de kosten van begeleiding bij het starten van een bedrijf vergoedt voor WW-gerechtigden die ziek zijn geweest</strong>. Voorwaarde is dat&nbsp;de toekenning van een WIA-uitkering is afgewezen na afloop van je ziektewetperiode!&nbsp;Dit is voor velen geweldig&nbsp;nieuws, omdat een eigen bedrijf na een ziekteperiode vaak een prima alternatief is (en soms zelfs beter) dan een baan in loondienst.</p>\n<h2>Is mijn bedrijf haalbaar?</h2>\n<p>De stap van een WW-uitkering naar een eigen bedrijf heeft nogal wat consequenties.&nbsp;<strong>Wij geven een onafhankelijk advies of je bedrijf haalbaar is</strong>. Daarbij kijken we naar je persoonlijke kwaliteiten, ervaring en netwerk, het bedrijfsidee, de marktontwikkelingen, concurrenten en je persoonlijke financi&euml;le situatie. We zijn er van overtuigd dat je met onze ervaring een betere beslissing neemt!</p>\n<h2>Ondernemingsplan en WW</h2>\n<p>Wil je met een WW-uitkering je onderneming starten,&nbsp;<strong>dan is een ondernemingsplan nodig om gebruik te maken van de startperiode</strong>. Kun je hulp gebruiken om een ondernemingsplan op te stellen? Neem contact met ons op via het&nbsp;<a href=\"https://www.pro6advies.nl/contact/contactformulier/\" target=\"_blank\" rel=\"noopener noreferrer\">contactformulier</a>&nbsp;of bel naar (0546) 57 84 85.<br><br>&nbsp;</p>\n<h2>Hoe kan ik een bedrijf starten met WW?</h2>\n<p>Een eigen bedrijf starten met WW is een geweldige combinatie. Op&nbsp;<a href=\"https://www.pro6advies.nl/bedrijf-starten/vanuit-een-ww-uitkering/een-bedrijf-starten-vanuit-de-ww-3-manieren/\">deze pagina</a>&nbsp;vind je meer uitleg</p>'),
(1028, '<p>Als je een eigen bedrijf wilt starten met een WIA-uitkering, kan dit veel vragen oproepen. Voordat je aan praktische zaken toe bent (zoals inschrijving bij de Kamer van Koophandel, boekhouding, factuur opstellen) adviseren wij eerst de volgende vragen te beantwoorden:</p>\n<ol>\n<li>Is mijn bedrijf financieel en praktisch haalbaar?</li>\n<li>Kan ik begeleiding krijgen via UWV bij het starten van mijn eigen bedrijf?</li>\n<li>Past een eigen bedrijf bij mij als persoon?</li>\n</ol>\n<p>Daarnaast hebben we de volgende tips voor je:</p>\n<ol>\n<li>Werk je ideëen uit in een plan, bijvoorbeeld aan de hand van een ondernemingsplan.</li>\n<li>Verdiep je in de effecten van winst op je WIA-uitkering.</li>\n</ol>\n<h2>Begeleiding bij het starten van een eigen bedrijf vanuit de WIA</h2>\n<p>Heb je een haalbaar plan, overleg dan eerst met het UWV voordat je start. Behalve dat je het UWV op de hoogte moet stellen, kun je via hen ook begeleiding krijgen bij het opstarten van je onderneming!<br /><br />UWV koopt bij een (gespecialiseerd) re-integratiebedrijf begeleiding in. UWV betaalt de kosten van deze begeleiding. <strong>Wil je weten of je plan haalbaar is en of je in aanmerking komt voor begeleiding bij de start van je bedrijf vanuit de WIA? </strong>Vul dan onze <a href=\"https://www.pro6advies.nl/uwv-begeleiding-check/uwv-haalbaarheids-check/formulier-uwv-haalbaarheidscheck/\" target=\"_blank\" rel=\"noopener noreferrer\">begeleidingsscan</a> in.</p>'),
(1029, '<p>Start je met een WAJONG-uitkering een bedrijf, dan krijg je te maken met de volgende vraagstukken:</p>\n<ol>\n<li>Hoe worden winsten uit mijn bedrijf verrekend met de WAJONG?</li>\n<li>Welke ondersteuning is er voor WAJONG-ers die een bedrijf starten?</li>\n<li>Is mijn bedrijf haalbaar?</li>\n<li>Hoe schrijf ik een ondernemingsplan?</li>\n</ol>\n<h2>Inkomsten bedrijf en WAJONG</h2>\n<p>Hoe UWV de winst uit je bedrijf verrekent hangt af van jepersoonlijke situatie. Pro6 Advies is partner van UWV. Wij weten in de meeste gevallen wat de regels van het UWV voor jouw situatie betekenen.</p>\n<h2>Ondersteuning voor WAJONG-ers die een bedrijf starten</h2>\n<p>Wanneer je arbeidsdeskundige achter je plannen staat, is er de mogelijkheid een re-integratietraject te starten. Dat houdt in dat de kosten van onze begeleiding door UWV worden vergoed.</p>\n<h2>Is mijn bedrijf haalbaar</h2>\n<p>Wanneer je een bedrijf start verandert er veel. Niet alleen je privé-situatie verandert, ook je inkomen en de (financiële) risico\'s die je loopt. Voordat je start kunnen wij adviseren of je bedrijf haalbaar kan zijn. Daarbij kijken wij bijvoorbeeld naar je persoonlijke kwaliteiten, werkervaring, privé-situatie, schulden, het idee, marktontwikkelingen en concurrentie.</p>'),
(1030, '<p>Start je met een WAO-uitkering een bedrijf, dan krijg je te maken met de volgende vraagstukken:</p>\n<ol>\n<li>Is mijn bedrijf haalbaar?</li>\n<li>Welke ondersteuning is er voor WAO-ers die een bedrijf starten?</li>\n<li>Hoe worden winsten uit mijn bedrijf verrekend met de WAO?</li>\n<li>Hoe schrijf ik een ondernemingsplan?</li>\n</ol>\n<h2><strong>Is mijn bedrijf haalbaar</strong></h2>\n<p>Wanneer je een bedrijf start verandert er veel. Niet alleen je privé-situatie, ook je inkomen en de (financiële) risico\'s. Voordat je start vinden wij het belangrijk dat je weet of je plannen haalbaar zijn en of het ondernemerschap bij je past.</p>\n<p>Bij het bepalen van de haalbaarheid van je idee onderzoeken wij onder meer:</p>\n<ul>\n<li>je persoonlijke kwaliteiten,</li>\n<li>(werk)ervaring en achtergrond,</li>\n<li>de privé-situatie (o.a. financieel),</li>\n<li>hoe onderscheidend je idee is,</li>\n<li>de marktontwikkelingen,</li>\n<li>de mate van concurrentie.</li>\n</ul>\n<h2><strong>Begeleiding voor WAO-ers die een bedrijf starten</strong></h2>\n<p>Is je idee haalbaar, maar heb je nog begeleiding nodig om te kunnen starten? UWV kan onze begeleiding vergoeden. Jouw arbeidsdeskundige moet achter je plannen staan en toestemming geeft voor een re-integratietraject. Voorwaarde is onder meer dat je minimaal de helft van het aantal uren waarop je WAO-uitkering is gebaseerd, aan je bedrijf besteed. </p>\n<h2><strong>Inkomsten eigen bedrijf en WAO</strong></h2>\n<p>Hoe UWV de winst uit je bedrijf met de WAO verrekent hangt af van je persoonlijke situatie. Omdat wij partner zijn van UWV kennen wij de regels van het UWV die voor jouw specifieke situatie gelden.</p>'),
(1031, '<p>Start je met een Zieketwet (ZW)-uitkering een bedrijf, dan krijg je te maken met de volgende vraagstukken:</p>\n<ol>\n<li>Hoe worden winsten uit mijn bedrijf verrekend met de ZW?</li>\n<li>Welke ondersteuning biedt het UWV?</li>\n<li>Is mijn bedrijf haalbaar?</li>\n<li>Hoe schrijf ik een ondernemingsplan?</li>\n</ol>\n<h2>Inkomsten bedrijf en ziektewet</h2>\n<p>Hoe het UWV de winst uit uw bedrijf verrekent hangt af van je persoonlijke situatie. Pro6 Advies werkt al jarenlang samen met UWV. Wij weten wat de regels van het UWV voor jouw situatie betekenen.</p>\n<h2>Ondersteuning bij het starten van een bedrijf</h2>\n<p>Wanneer je arbeidsdeskundige achter je plannen staat, is er de mogelijkheid een re-integratietraject te starten. Dat houdt in dat de kosten van onze begeleiding door UWV worden vergoed. Voorwaarde is wel dat je tenminste de helft van het aantal uur waarop je ZW-uitkering is gebaseerd in je bedrijf steekt.</p>\n<h2>Is mijn bedrijf haalbaar</h2>\n<p>Wanneer je een bedrijf start verandert er veel. Niet alleen je privé-situatie, ook het inkomen en de (financiële) risico\'s. Wij geven advies of je idee haalbaar kan zijn. Daarbij kijken we naar je persoonlijke kwaliteiten, werkervaring, schulden, het idee, ontwikkelingen in de markt en concurrenten.</p>'),
(1032, '<p>De stap van loondienst naar ondernemerschap zet je niet zomaar. Je wilt vooraf weten:</p>\n<ul>\n<li>of je&nbsp;idee haalbaar is,</li>\n<li>of je aannames over omzet en winst&nbsp;realistisch zijn,</li>\n<li>wat de gevolgen zijn voor je inkomen,</li>\n<li>wat de&nbsp;kritieke punten van je ondernemingsplan zijn,</li>\n<li>of je belangrijke zaken over het hoofd ziet.</li>\n</ul>\n<p>Zonder een duidelijk antwoord op deze vragen is starten met een bedrijf een sprong in het diepe. Kies&nbsp;je voor zwemmen in bekend water of voor een sprong in het diepe?<br><br><strong>Door onze ervaring zijn wij in staat een helder, onafhankelijk en eerlijk advies te geven over jouw kans van slagen</strong>, toegespitst&nbsp;op jouw&nbsp;persoonlijke situatie.&nbsp;Zoek je een coach om je eigen bedrijf te starten? Dan&nbsp;kunnen wij ondersteunen met:</p>\n<hr>\n<h2>1&nbsp;Onderzoek naar de&nbsp;haalbaarheid</h2>\n<p>We geven antwoord op&nbsp;de volgende vragen:</p>\n<ol>\n<li>is mijn idee haalbaar</li>\n<li>welk inkomen kan ik verdienen als ondernemer</li>\n<li>wat zijn de&nbsp;risico\'s</li>\n</ol>\n<hr>\n<h2><strong>2</strong>&nbsp;<a href=\"https://www.pro6advies.nl/ondernemingsplan/een-volledig-ondernemingsplan-opstellen/\">Ondernemingsplan</a>&nbsp;opstellen</h2>\n<p>We doorlopen de&nbsp;volgende stappen:</p>\n<ol>\n<li>Inzicht in jezelf: wat kan ik, wat wil ik, wie ken ik, wat zijn mijn verwachtingen.</li>\n<li>Onderzoek&nbsp;naar de markt: wie zijn mijn klanten, wat zijn de klantwensen, wie zijn mijn concurrentie, wat gebeurt er in de markt.</li>\n<li>Uitwerken van het bedrijfsconcept:&nbsp;verdienmodel, onderscheidend vermogen.</li>\n<li>Inzicht in geld: hoeveel geld heb ik nodig om te kunnen starten, wat zijn de verwachte opbrengsten, hoe&nbsp;financier ik de start.</li>\n<li>Opstellen van begrotingen voor&nbsp;investeringen, opbrengsten&nbsp;en bedrijfskosten.</li>\n<li>Het vinden van geld.</li>\n</ol>\n<hr>\n<h2><strong>3</strong>&nbsp;Begeleiding op urenbasis</h2>\n<p>Vind je het prettig om te sparren, advies in te winnen&nbsp;over een specifiek onderwerp of om je ide&euml;en te bespreken? Kies dan voor begeleiding op urenbasis.</p>\n<h2>Interesse in onze ondersteuning bij het starten van je eigen bedrijf?</h2>\n<p>Je kunt contact met ons opnemen via&nbsp;<a href=\"mailto:info@pro6advies.nl\">info@pro6advies.nl</a>&nbsp;of door te bellen naar (0546) 57 84 85. We gaan graag met je aan de slag!</p>'),
(1033, '<p>Een outplacementtraject kun je gebruiken om je eigen bedrijf te starten. Wij brengen een offerte uit aan je werkgever of mobiliteitscentrum. Is er toestemming, dan volgen we de volgende route:</p>\n<ol>\n<li>Intakegesprek.</li>\n<li>Onderzoek naar haalbaarheid en ondernemerstest.</li>\n<li>Opstellen ondernemingsplan.</li>\n<li>Aanvragen financiering (mits nodig).</li>\n<li>Klankbord na de start door middel van coachingsgesprekken.</li>\n</ol>\n<p>Een outplacementtraject gaat niet alleen over het vinden van een nieuwe bron van inkomen. Wij staan ook stil bij afscheid nemen, vertrouwen opbouwen en een nieuwe invulling geven aan je leven.</p>\n<h2>Interesse in onze ondersteuning bij een outplacementtraject?</h2>\n<p>Je kunt contact met ons opnemen via <a href=\"mailto:info@pro6advies.nl\">info@pro6advies.nl</a> of door te bellen naar (0546) 57 84 85. We helpen je graag met het starten van je eigen bedrijf.</p>'),
(1034, '<ul>\n<li>Doe ik als ondernemer de dingen die ik wil doen?</li>\n<li>Bereik ik mijn doelen?</li>\n<li>Waarom loop ik telkens tegen hetzelfde probleem aan?</li>\n<li>Hoe vind ik mijn droomklant?</li>\n<li>Hoe motiveer ik mijn werknemers? </li>\n<li>Hoe maak ik mezelf misbaar?</li>\n<li>Wat is een goede strategie om mijn markten uit te breiden?</li>\n<li>Hoe vergroot ik mijn winst?</li>\n</ul>\n<p>Dit zijn vragen die vele ondernemers/zzp\'ers tegenkomen. Maar wie investeert in het beantwoorden van deze vragen? Tevreden ondernemers weten heel goed waar ze goed en niet goed in zijn en hebben één ding gemeen: ze raadplegen collega-ondernemers, vrienden, boekhouders<strong> én coaches/adviseurs.</strong><br /><br />Waarom? Simpelweg omdat een juiste coach/adviseur niet alleen de vraag beantwoordt, maar ook de vraag achter de vraag. Door niet alleen cijfers, plannen en doelstellingen te onderzoeken; maar ook door persoonlijke waarden, wensen en dromen te betrekken in de coaching.</p>\n<h2>Kom eens met ons kennismaken</h2>\n<p>Dat is de meest simpele manier om te ervaren wat wij als ondernemende adviseurs voor je kunnen betekenen. Een intake is gratis, daarna reken je af per afspraak, uur of traject. Je kunt contact met ons opnemen via <a href=\"mailto:info@pro6advies.nl\">info@pro6advies.nl</a> of door te bellen naar (0546) 57 84 85.</p>'),
(1035, '<p><strong>Wij vinden dat een goede <a href=\"https://www.pro6advies.nl/over-pro6-advies/onze-adviseurs/\">starterscoach</a> een boekhouder, bankier, marketeer, coach en ondernemer in één moet zijn. </strong></p>\n<p>Wij zijn dan ook goed op de hoogte van financieringen, social media, marketing, verzekeringen, verkopen &amp; acquisitie, belastingen, administratie, starten vanuit een uitkering en subsidies. Met onze kennis en ervaring geven wij je een zo volledig mogelijk beeld over wat voor jouw en je bedrijf belangrijk is. Weten wij onvoldoende over een onderwerp? Dan verwijzen we door naar betrouwbare specialisten. Dat is bijvoorbeeld een boekhouder, SEO-specialist, notaris, financieel adviseur, websitebouwer of grafisch ontwerper.</p>\n<h2><strong>Waarom wij goede coaches zijn voor startende ondernemers</strong></h2>\n<ul>\n<li>Wij geven overzicht zodat je weet wat je, wanneer en waarom moet doen.</li>\n<li>Met onze adviezen verbeter je je business (beter verdienmodel, realistische exploitatie, effectieve marketing).</li>\n<li>Vergroot je de kans op een financiering met 100%.</li>\n<li>Wij schrijven heldere <a href=\"https://www.pro6advies.nl/ondernemingsplan/een-volledig-ondernemingsplan-opstellen/\">ondernemingsplannen</a> die werken.</li>\n</ul>\n<h2>Starterscoaching door Pro6 Advies, hoe werkt het?</h2>\n<ol>\n<li><strong>Kennismaken</strong><br />Het liefst persoonlijk, op een rustige locatie of bij je thuis. Om elkaar te leren kennen en duidelijk te krijgen wat je nodig hebt</li>\n<li><strong>Coachingsovereenkomst</strong><br />We spreken af wat we doen, hoe vaak we contact hebben en met welk doel. Als het nodig is, stellen we een stappenplan op voor maximaal overzicht. Contact hebben we door bezoek bij je thuis, op een rustige locatie in de beurt, via telefoon of Skype.</li>\n<li><strong>Investering</strong><br />Vanaf € 300. Een coachingstraject factureren wij in twee delen: 50% vooraf en 50% na afloop.</li>\n</ol>\n<h2>Interesse in coaching door Pro6 Advies?</h2>\n<p>We gaan graag met je aan de slag! Je kunt contact met ons opnemen via <a href=\"mailto:info@pro6advies.nl\">info@pro6advies.nl</a> of door te bellen naar (0546) 57 84 85.</p>'),
(1036, '<p>Waar bestaat onze aanpak uit ?<br /><br /><strong>Stap 1 intakegesprek </strong><br />Kennismaken, wie ben je, wat is je idee, waarmee onderscheid je je, wat houdt je tegen en wat is er nodig om te kunnen starten. Wat heb je nodig en, niet onbelangrijk, is er tussen ons een klik.<br /><br /><strong>Stap 2 afspraken met UWV</strong><br />In overleg met je contactpersoon bij UWV wordt er bepaald hoeveel begeleidingsuren er beschikbaar zijn en hoeveel maanden de begeleiding duurt. Na toestemming van UWV kunnen we direct starten.<br /><br /><strong>Stap 3 start van de begeleiding</strong><br />Er is contact via telefoon, videobellen of face-to-face contact. Heb je vragen, dan stel je die ook via e-mail en Whatsapp. <br /><br />Wat wij zoal met en voor je doen ?</p>\n<ul>\n<li>opzetten van je boekhouding</li>\n<li>uitleg over de verschillende belastingen</li>\n<li>uitleg hoe winst je UWV-uitkering beïnvloedt</li>\n<li>vinden van klanten</li>\n<li>online zichtbaar worden</li>\n<li>kiezen van verzekeringen</li>\n<li>opstellen ondernemingsplan</li>\n<li>aanvragen van een bedrijfslening bij Qredits</li>\n<li>aanvragen Starterskrediet bij UWV</li>\n<li>vraagbaak over ondernemersvragen</li>\n<li>steunpilaar en motivator</li>\n</ul>\n<p><br />Meer weten ? Bel ons of neem contact op via ons <a href=\"https://www.pro6advies.nl/contact/contactformulier/\">contactformulier</a>.</p>'),
(1037, '<p>Start je een eigen bedrijf, als ZZP-er, als ondernemer met personeel, vanuit een uitkering of loondienst, cijfers in een <a href=\"https://www.pro6advies.nl/ondernemingsplan/een-volledig-ondernemingsplan-opstellen/\">ondernemingsplan</a> zijn voor velen lastig.<br />We leggen uit hoe wij te werk gaan wanneer wij het cijfermatige deel van het ondernemingsplan voor je opstellen. </p>\n<h2><strong>Wanneer wij de cijfers in je ondernemingsplan opstellen</strong></h2>\n<p>Investeringsbegroting, exploitatiebegroting, liquiditeitsbegroting, financieringsbegroting. Dit zijn verplichte onderdelen in een ondernemingsplan wanneer je een bedrijfslening wilt aanvragen. We vragen je diverse financiële informatie aan te leveren voor het opstellen van de verschillende begrotingen. Denk aan offertes, kolommenbalans, aangifte Inkomstenbelasting, kostprijsmodellen, etc. Natuurlijk gaan we ook met je in gesprek om de verwachte investeringen, omzet, marges en bedrijfskosten te inventariseren. Vervolgens bespreken we gezamelijk de conceptbegroting. </p>'),
(1038, '<p><img class=\"align_center\" src=\"https://www.pro6advies.nl/site/assets/files/1210/geen_ad_s_via_de_kvk.png\" alt=\"\" /></p>\n<p>Je bedrijfsgegevens zijn openbaar en kunnen gekocht worden door bedrijven. Als je de non-mailing-indicator activeert, kies je in het formulier voor \'inschakelen\'. Daarmee geef je aan dat je gegevens uit het Handelsregister mogen niet worden gebruikt voor postreclame of verkoop aan de deur. Klik <a href=\"https://www.kvk.nl/service-en-contact/non-mailing-indicatorformulier/\" target=\"_blank\" rel=\"noopener noreferrer\">hier</a> op om de juiste pagina op de site van de Kamer van Koophandel terecht te komen.</p>'),
(1039, '<p>Welke gegevens zijn nodig voor het doen van de aangifte Inkomstenbelasting:<br /><br />- boekhouding bijgewerkt (welke winst, inclusief overzicht opstaande facturen (=debiteuren) en openstaande inkoopfacturen (=crediteuren)<br />- kilometeradminstratie als je zakelijke kilometers rijdt met je privé auto (datum, postcode startpunt, postcode eindpunt, gereden km\'s)<br />- de voorlopige aanslag Inkomstenbelasting<br />- laatste bankafschrift met eindsaldo<br />- aanslag WOZ-waarde eigen woning<br />- jaaropgave hypothecaire lening<br />- jaaropgave partner<br />- betaalde premies Arbeidsongeschikhteidsverzekering (niet de inleg voor een Broodfonds)<br />- als het van toepassing is: bedrag aan onderhanden werk. Dus een overzicht van de werkzaamheden die je al hebt verricht maar nog<br />  niet hebt gefactureerd, en werkzaamheden die al zijn gefactureerd maar nog niet zijn uitgevoerd<br />- waardering van de voorraad per 31/12</p>'),
(1040, '<p>Via de website <a href=\"http://www.vraaghugo.nl/\">vraaghugo.nl</a> kun je aan de hand van een stappenplan voor een zeer aantrekkelijke prijs zelf juridische documenten samenstellen. Het idee achter deze site is dat veel juridische documenten in feite standaarddocumenten zijn. Door een vraag en antwoordmodule stel je de documenten samen. Wanneer je voldoende hebt aan de standaard, is dit een prima oplossing. Denk aan webwinkelvoorwaarden, privacy-statement, algemene voorwaarden dienstverlening, leningovereenkomst, etc.</p>'),
(1041, '<h1> </h1>\n<p>Met <a href=\"http://www.logomaster.ai/\" target=\"_blank\" rel=\"noopener noreferrer\">logomaster.ai</a> creëer een prachtig eigen logo. Voor het bedrag van € 66 (prijspeil 2019) download je het logo in álle bestandsformaten. Zo kun je het logo direct gebruiken voor LinkedIn, Facebook, Twitter. En omdat het logo ook als vectorbestand is, is het volledig schaalbaar.</p>'),
(1042, '<p>Op deze pagina is in opbouw en je vindt hier een overzicht van de crowdfundingsplatforms en hun specifieke toepassingen. </p>\n<p><a href=\"http://www.voordekunst.nl/\">voordekunst.nl</a>, voor de creatieve sector. </p>\n<p><a href=\"http://www.geldvoorelkaar.nl/\">geldvoorelkaar.nl</a>, de marktleider in Nederland, met een eigen financiële staf die voorstellen scant. Geschikt voor startende ondernemers, beleggers, vastgoed en bestaande ondernemers.</p>'),
(1043, '<p>Via deze link <a href=\"https://www.belastingdienst.nl/wps/wcm/connect/bldcontentnl/themaoverstijgend/programmas_en_formulieren/programmas_en_formulieren_ondernemer\" target=\"_blank\" rel=\"noopener noreferrer\">https://www.belastingdienst.nl/wps/wcm/connect/bldcontentnl/themaoverstijgend/programmas_en_formulieren/programmas_en_formulieren_ondernemer</a> kom je op de pagina van de Belastingdienst waar je alle formulieren, rekenhulpen en nieuws voor ondernemers, particulieren, verenigingen en stichtingen vindt. Superhandig !</p>'),
(1044, '<p>Pixieset.com is een platform waar je als fotograaf een geweldige website kunt bouwen die er zeer professioneel uitziet. En dat voor nog geen € 10 per maand ! <a href=\"https://pixieset.com/pricing/\" target=\"_blank\" rel=\"noopener noreferrer\">https://pixieset.com/pricing/</a></p>'),
(1045, '<p>Tijd besparen en fouten verminderen bij het maken van facturen ? Ga online je facturen maken! We hebben 2 GRATIS programma\'s gevonden die supergoed werken:<br /><br />1. <a href=\"http://www.rompslomp.nl/\" target=\"_blank\" rel=\"noopener noreferrer\">rompslomp.nl</a></p>\n<p>2. <a href=\"http://www.ezboekhouding.nl/\" target=\"_blank\" rel=\"noopener noreferrer\">ezboekhouding.nl</a></p>\n<p>Beiden programma\'s werken met een online programma waar je wel een (gratis) account voor moet aanmaken. Uiteraard kun je het gebruik van de factuurmodule eenvoudig uitbreiden door de betaalde versie van het programma te gebruiken. Met € 15 per maand zijn deze programma\'s zeker niet duur.</p>'),
(1046, '<p>Hieronder vind je een aantal links naar pagina\'s op de site van UWV die erg handig zijn als je een bedrijf start;<br /><br />1. <a href=\"https://www.uwv.nl/particulieren/overige-onderwerpen/toeslag-van-uwv/detail/mijn-plichten-bij-toeslag-uwv/direct-uw-wijzigingen-doorgeven/doorgeven-wijzigingen-wia--wajong--wao--of-waz-uitkering\" target=\"_blank\" rel=\"noopener noreferrer\">wijziging doorgeven</a><br />Zodra je je hebt ingeschreven bij de Kamer van Koophandel, geeft dat direct door met dit formulier</p>\n<p>2. <a href=\"https://www.uwv.nl/particulieren/formulieren/ondersteuning-startende-ondernemers-bij-reintegratie.aspx\" target=\"_blank\" rel=\"noopener noreferrer\">aanvragen Starterskrediet UWV</a><br />Wanneer je aanvraag bij b.v. Qredits is afgewezen, kun je je aanvraag ook bij UWV aanmelden. Let wel, je plan moet wel kansrijk zijn. Heb je daar hulp bij nodig, neem dan contact met ons op<br /><br />3. <a href=\"https://www.uwv.nl/particulieren/rekenhulpen/index.aspx\" target=\"_blank\" rel=\"noopener noreferrer\">overzicht rekentools</a><br />Wil je weten wat het effect is van winst op je WIA, WAJONG of ZW-uitkering ? Vul dan één van de rekentools in.</p>'),
(1047, '<p>Een fot gebruiken op je website die je gevonden hebt via een zoekmachine is niet aan te raden. Je zult niet de eerste zijn die een sommatie ontvangt van een advocaat om (fors) te betalen. Gebruik daarom altijd eigen foto\'s en afbeeldingen of gebruik foto\'s die rechtenvrij zijn. Op de site van <a href=\"https://www.corneelonline.nl/blog/gratis-stockfoto-s-die-er-niet-lullig-uitzien/\" target=\"_blank\" rel=\"noopener noreferrer\">corneeonline.nl</a> vind je een flinke lijst</p>'),
(1048, '<p>Shopify.nl heeft een goed artikel geplaatst hoe je geld kunt verdienen met de verkoop van foto\'s. Maar liefst 18 websites worden in dit artikel besproken. Ben je fotograaf of heb je foto\'s die verkoopbaar zijn, lees dan <a href=\"https://www.shopify.nl/blog/online-fotos-verkopen\" target=\"_blank\" rel=\"noopener noreferrer\">dit artikel</a></p>'),
(1049, '<p>Wie is mijn klant, wie zijn mijn concurrenten, wat zijn belangrijke ontwikkelingen om rekening mee te houden, waar zijn mijn klanten en concurrenten gevestigd: het zijn vragen die horen bij een <strong>marktonderzoek</strong>.<br /><br />Het antwoord op deze vragen is veel werk, heel veel werk. Gelukkig biedt de Kamer van Koophandel enige hulp met de <a href=\"https://www.kvk.nl/tools-en-platformen/locatiescan/\" target=\"_blank\" rel=\"noopener noreferrer\">locatiescan</a>. Het is een hulpmiddel om te achterhalen waar je meeste klanten en concurrenten zijn gevestigd. Omdat de scan gratis is, probeer het eens uit! </p>'),
(1061, '<p>A Good Book For Web Design &amp; Development</p>'),
(1060, '<p>A Good Book For Personal Business Development</p>'),
(1062, '<p>A Good Book Professionalism. Grow Yourself</p>'),
(1063, '<p><strong>Waarvoor kan ik begeleiding krijgen via UWV bij starten van een eigen bedrijf</strong>?<br>Wanneer je een WIA-uitkering, een Ziektewet, WAJONG of WAO-uitkering ontvangt&nbsp;of vrijwillig bent verzekerd via UWV, kun je begeleiding krijgen bij:<br>- onderzoek of een bedrijf starten haalbaar is en bij je past<br>- het opstarten van een eigen bedrijf<br>- het verbeteren van je onderneming<br><br><strong>Wat houdt onze begeleiding in?</strong><br>Wij doen veel voor onze klanten omdat we graag willen dat ze succesvol zijn. Daarom:<br>- schrijven wij een ondernemingsplan of helpen daarbij<br>-&nbsp;geven wij&nbsp;advies hoe je klanten vindt<br>- laten we zien hoe je&nbsp;een boekhouding opzet<br>- doen we samen de eerste aangifte Omzetbelasting<br>- begeleiden wij&nbsp;bij het aanvragen van een bedrijfslening bij UWV, een bank of Qredits<br>- coachen wij&nbsp;je bij het houden van balans tussen wat je lichaam kan en wat je graag wilt<br><br><strong>Voor wie de begeleiding?</strong><br>Past &eacute;&eacute;n van de&nbsp;volgende situaties bij jou:<br>- ik wil een bedrijf starten met een WW-uitkering ( je hebt&nbsp;<em>na</em>&nbsp;<em>afloop</em>&nbsp;van&nbsp;de ZW-uitkering geen recht hebt op een WIA-uitkering, maar wel WW)<br>- ik wil&nbsp;een bedrijf starten&nbsp;met een WAJONG-uitkering<br>- ik wil een bedrijf starten met een ZW-uitkering<br>- ik wil een bedrijf&nbsp;starten met een WIA-uitkering<br>- ik wil een bedrijf starten met een WAO-uitkering<br>Als je antwoord ja is, dan is het mogelijk dat UWV de kosten van onze begeleiding vergoed.<br><br><strong>Is mijn idee haalbaar ?</strong><br>Speciaal voor klanten van UWV die&nbsp;graag een bedrijf willen starten en willen weten of een eigen bedrijf haalbaar, is er de UWV Haalbaarheids Check vragenlijst.<br>Het is&nbsp;een flinke vragenlijst, maar dat geeft ons&nbsp;een goed beeld van je plan&nbsp;en je situatie.<br>&nbsp;<br><strong>Wil je een advies over hoe je een bedrijf start met begeleiding via UWV ?&nbsp;<a href=\"https://www.pro6advies.nl/uwv-begeleiding-check/uwv-haalbaarheids-check/\">Naar de UWV Haalbaarheids Check</a>.</strong></p>'),
(1064, '<h2>Stappenplan UWV Haalbaarheids Check</h2>\n<ol>\n<li><a href=\"https://www.pro6advies.nl/uwv-begeleiding-check/uwv-haalbaarheids-check/formulier-uwv-haalbaarheidscheck/\">vul de vragenlijst in</a></li>\n<li>binnen 2 werkdagen nemen we contact met je op</li>\n<li>we geven je advies over de haalbaarheid en of je in aanmerking komt voor begeleiding via UWV</li>\n</ol>\n<p><strong>Privacy</strong><br />Het spreekt voor zich en toch vermelden wij het hier: alle (persoonlijke) gegevens die je invult worden uiterst vertrouwelijk behandeld en slechts tijdelijk bewaard voor eigen gebruik.</p>\n<p><strong>Werkwijze</strong><br />Klik na het invullen op verzenden ! Wij nemen binnen 3 werkdagen contact met je op (via e-mail of telefoon) voor een persoonlijk advies.<br /><br /><strong>Naar de vragenlijst</strong><br /><a href=\"https://www.pro6advies.nl/uwv-begeleiding-check/uwv-haalbaarheids-check/formulier-uwv-haalbaarheidscheck/\">Link naar de vragenlijst.</a></p>');
INSERT INTO `field_bizcontent` (`pages_id`, `data`) VALUES
(1065, '<p>\"Milo is een ontzettend vriendelijke persoon die me in alle rust heeft begeleid. In de tijd dat ik nog niet helemaal stevig in mijn schoenen stond als ondernemer was hij iemand waarbij ik onzeker durfde te zijn en domme vragen aan durfde te stellen. Zijn kennis weet hij op een hele vriendelijke, geduldige manier over te brengen..\"</p>\n<h2><br /><img src=\"https://www.pro6advies.nl/site/assets/files/1269/coahing_voor_starters_elsbeth.jpg\" alt=\"\" /><br />De ervaringen van Elsbeth met Pro6 Advies</h2>\n<p>Elsbeth Reijmers, trainer en coach op het gebied van persoonlijk leiderschap:</p>\n<p>‘Ik geef coaching en verzorg trainingen persoonlijk leiderschap voor mensen die in hun privéleven of loopbaan zijn vastgelopen en behoefte hebben aan ondersteuning om verder te kunnen. Ik werk met hen aan thema’s als: hoe hou je de regie over je leven en je loopbaan en hoe blijf je hierin trouw aan jezelf? Ik vind het belangrijk om daarin echt die connectie tussen hoofd, hart en lijf te herstellen.’</p>\n<h2>Wat was je motivatie om voor jezelf te beginnen?</h2>\n<p>‘Ik ben een periode ziek geweest en in die periode ben ik zelf teruggegaan naar de basis. Wie ben ik, wat wil ik behouden en waar wil ik afscheid van nemen. Eigenlijk ben ik voor mezelf begonnen omdat ik meer regie wilde over mijn leven en een betere balans zocht tussen werk en privé. Hiervoor werkte ik jarenlang als coach/trainer in de commerciële sector. Daar werd mijn agenda volledig beheerd en werden doelstellingen bepaald door de organisatie. Ik merkte dat ik zelf de regie wilde pakken.’</p>\n<h2>Wat is je ervaring geweest met Pro6 Advies?</h2>\n<p>‘Milo is een ontzettend vriendelijk persoon die me in alle rust heeft begeleid. In de tijd dat ik nog niet helemaal stevig in mijn schoenen stond als ondernemer was hij iemand waarbij ik onzeker durfde te zijn en domme vragen aan durfde te stellen. Zijn kennis weet hij op een hele vriendelijke, geduldige manier over te brengen.’</p>\n<p>‘Van herstel na ziekte naar zelfstandig ondernemer was een proces van vallen en opstaan voor mij. Als ik zelf even niet wist hoe ik verder moest wist Milo mij op basis van gelijkwaardigheid weer te motiveren om de volgende stap te zetten. Dat heb ik in zijn begeleiding heel prettig gevonden.’<br /> </p>\n<h2>Wat heb je eraan gehad?</h2>\n<p>‘De helpende hand van iemand anders, daar had ik behoefte aan. Ik had behoefte aan iemand die meekeek, die me hielp de scherven aan elkaar te plakken. Ik vond het prettig om een klankbord te hebben.’</p>\n<p>‘Milo heeft me geholpen vertrouwen te hebben in het proces van het opgroeien als zelfstandig ondernemer. Waarbij tegenslag niet altijd een ramp hoeft te zijn, maar een proces is waar je jezelf doorheen werkt. Daarna schijnt weer de zon. Die golfbeweging, daar heeft hij me goed doorheen geloodst. Inmiddels coach en train ik mensen vanuit mijn eigen bedrijf Etc Persoonlijk Leiderschap zowel privé als binnen het bedrijfsleven. Gezien Covid-19 doe ik dit op een veilige manier met wandelcoaching lekker buiten in de natuur of trainingen online via Zoom of Teams. Op mijn LinkedIn enkele reacties van mensen die ik heb mogen begeleiden.’</p>\n<p>Etc Persoonlijk Leiderschap</p>\n<p>Training en Coaching in Professionele - en Persoonlijke ontwikkeling en Work-Life Balance<br />(06) 53 93 76 11   <a href=\"https://www.linkedin.com/in/elsbethreijmers/\" target=\"_blank\" rel=\"noopener noreferrer\">LinkedIn</a></p>'),
(1066, '<p>Pro6 Advies begeleidde mij bij de overname van een fotostudio, en hoe ! Milo Groot Obbink wist precies hoe je een bank moet benaderen en hoe je een lening aanvraagt. Ik ben vooral te spreken over het prettige persoonlijke contact.</p>\n<p> </p>'),
(1067, '<h1>Start transportbedrijf</h1>\n<p>Milo Groot Obbink van Pro6 Advies heeft een heel goed plan voor mij opgesteld; overal waar ik kwam, iedereen vond het een goed plan. Dankzij Milo heb ik eindelijk een eigen bedrijf.</p>\n<p>&nbsp;</p>'),
(1068, '<h1>Computerreparateur</h1>\n<p>Het grote voordeel van Pro6 Advies is dat ze bij je thuis komen. Het persoonlijke contact was voor mij het belangrijkste. Rob Videler van Pro6 Advies gaf steeds aan wat de juiste stappen waren op welk moment.</p>\n<p> </p>'),
(1069, '<h1>Huiswerkbegeleiding</h1>\n<p>Ik had allerlei ideëen maar wist niet waar ik moest beginnen of eindigen. Pro6 Advies heeft mij heel goed geholpen met structuur aanbrengen, een tijdspad uitzetten en een klankbord zijn. Het was erg plezierig te ervaren dat de adviseur aansluiting had met mij visie, waardoor zijn input nog waardevoller werd.</p>\n<p> </p>'),
(1070, '<h1>Diëtiste Jelierse</h1>\n<p>Pro6 Advies heeft mij geholpen structuur aan te brengen in mijn bedrijf en te blijven vertrouwen in wat ik doe.</p>\n<p> </p>'),
(1071, '<h1>Tennisleraar</h1>\n<p>Stephan startte met hulp van Pro6 Advies als tennisleraar. Nu is hij fulltime ondernemer en verdient hij zijn eigen inkomen</p>\n<p><img src=\"https://www.pro6advies.nl/site/assets/files/1293/stevenpheifer.344x0-is.jpg\" alt=\"\"><br><br><strong>Aan het&nbsp;woord is Steven Pheifer, zelfstandig tennisleraar in Utrecht.</strong></p>\n<p>&lsquo;Ik ben Steven Pheifer (1987), ik kom uit Utrecht. Vroeger heb ik veel gesport, aan de hand daarvan ben ik tennisleraar geworden en van daaruit ben ik voor mezelf begonnen. Dat is nu een jaar geleden, sinds mei 2020. Eigenlijk bevalt dat heel goed! Ik geef tennisles aan jeugd en volwassenen in Utrecht en omgeving.&rsquo;</p>\n<h4>Wat is je motivatie geweest om voor jezelf te beginnen?</h4>\n<p>&lsquo;Vanuit het UWV kwam ik in contact met Milo omdat ik nierpati&euml;nt ben. Twee jaar geleden ben ik getransplanteerd. Na mijn operatie heb ik mijn leven opnieuw onder de loep genomen en heb ik gekeken naar waar mijn passie ligt. Ik heb altijd iets gehad met lesgeven en ik tenniste zelf al op hoog niveau. In 2019 heb ik een Gouden plak gewonnen bij de World Transplant Games in Newcastle. Vandaar de keuze om tennisleraar te worden.&rsquo;</p>\n<h4>Wat is je ervaring geweest met Pro6 Advies?</h4>\n<p>&lsquo;Heel positief. Ik kon altijd met vragen bij Milo terecht en hij had altijd vrij snel een antwoord. Hij heeft me geholpen in de weg die ik moest bewandelen en de stappen die ik moest nemen. Vooral financieel gezien. Ik spreek het liefst face-to-face met Milo, in coronatijd werd dat helaas lastig. Ik heb ons contact als heel prettig ervaren.&rsquo;</p>\n<h4>Wat heb je eraan gehad?</h4>\n<p>&lsquo;Ik heb goede uitleg gehad van Milo. Ik vond het fijn om iemand op de achtergrond te hebben die meekijkt, iemand om mee te sparren of om advies te vragen als ik even vastliep. Ik heb dan zelf wel een idee, maar het is altijd fijn om een professional te spreken die ervaring heeft. Dan ga ik met iets meer zekerheid die stappen nemen.&rsquo;</p>\n<p><strong>PP Tennis&nbsp;</strong>P(lezierig) P(rogressief) Tennis<br>Tennisles in Utrecht en omgeving.<br>Trainer jeugd en senioren bij SV Kampong.<br>Hoofdtrainer bij TV Atilla.</p>\n<p>Bezoek Steven op LinkedIn:&nbsp;<a href=\"https://www.linkedin.com/in/steven-pheifer-5931b1b4/\">https://www.linkedin.com/in/steven-pheifer-5931b1b4/</a><br>Bezoek Steven op Facebook:&nbsp;<a href=\"https://www.facebook.com/steven.pheifer.7\">https://www.facebook.com/steven.pheifer.7</a></p>'),
(1072, '<h1>Ecologische tuinderij</h1>\n<p>&ldquo;Milo was voor mij een sparringpartner. Ik bespreek met hem &lsquo;waar ik tegenaan loop&rsquo;. Hij belde op en vroeg me dan hoe het gaat en waar ik mee bezig ben. Dan kwam er altijd wel uit waar ik onzeker over was. Hij dacht mee met mijn vraagstukken en gaf me tips waar ik de kennis kon vinden. Hij kon me ook heel goed positieve feedback geven. Zo van &lsquo;dat weet jij wel&rsquo;.</p>\n<p><img src=\"https://www.pro6advies.nl/site/assets/files/1319/foto_marjolein_lausberg_623x623_pixels.jpeg\" alt=\"\"></p>\n<h2>De ervaring met Pro6 Advies</h2>\n<p><strong><em>Marjolein Lausberg&nbsp;vertelt&nbsp;over het starten van haar eigen onderneming en hoe zij hierin de begeleiding van ons heeft&nbsp;ervaren.&nbsp;</em></strong></p>\n<p>&ldquo;Op een stukje land tussen Amsterdam en Utrecht kweek ik sinds begin 2020 op ecologische wijze groenten, kruiden, eetbare bloemen en wilde gewassen, voor avontuurlijke eters en chefkoks.&rdquo;</p>\n<h2>Wat was je motivatie om te gaan ondernemen?</h2>\n<p>&ldquo;Ik ben bij het UWV terechtgekomen in de tijd dat mijn man erg ziek was. Ik werkte als vertrouwenspersoon in de jeugdhulp, maar zat met verzuim thuis omdat ik voor mijn man zorgde. In 2016 is mijn man overleden. Dat was heel zwaar, vooral aan het eind van zijn ziekte. Ik ben daardoor zelf in een burn-out beland.</p>\n<p>Een jaar na zijn overlijden ben ik verhuisd, naar een huis m&eacute;t een tuintje. Ik merkte dat ik daar heel blij van werd. Terwijl ik er nooit eerder iets mee heb gehad, met tuinieren. Het was het &eacute;nige dat goed voelde, dus ik plantte mijn tuin vol.</p>\n<p>Ik vind groenten en eetbare planten leuker dan siertuin-planten, dus ik ging boeken lezen over groente kweken. Al snel merkte ik dat je niet uit een boek kunt leren tuinieren, je moet het vooral doen. Juist door te doen en dingen op te zoeken in boeken, op blogs en fora heb ik me het vak eigen gemaakt. De noodzaak om het te doen en tegelijk op te zoeken &lsquo;hoe het moet&rsquo; heeft mij enorm gemotiveerd. Ook de vrijheid die ik hierbij voelde.. de bevrijding dat je niet alles hoeft te weten om het te doen. Daar haal ik heel veel voldoening uit.</p>\n<p>Ik kreeg een baan in Leiden bij een kweker waarbij ik mensen begeleidde met een afstand tot de arbeidsmarkt. Dat vond ik een mooie combinatie, meters maken in de tuin &eacute;n weer werken met mensen. Het bleek te ambitieus, te snel te veel. Toen ben ik uitgevallen en bleek dat het rouwproces nog niet ver genoeg was. In oktober 2019 ben ik daar weggegaan.&rdquo;</p>\n<h2>Daarna kreeg je kriebels om voor jezelf te beginnen?</h2>\n<p>&ldquo;Ja, vanuit de luxepositie dat ik in de ziektewet zat, dus er was weinig druk. Anders was het zeker te zwaar voor me geweest om het op te pakken. Ik ben voorzichtig begonnen met ondernemen. Logootje ontwerpen, op zoek naar een stuk land etc.</p>\n<p>Met het financi&euml;le stuk, o.a. het uitrekenen van de haalbaarheid, had ik moeite. Die vraagstukken heb ik bij het UWV neergelegd. Zij brachten me in contact met Milo van Pro6 Advies. Wat ik heel leuk vond is dat Milo er meteen geloof in had.&rdquo;</p>\n<h2>Wat heeft het ondernemerschap je tot nu toe gebracht?</h2>\n<p>&ldquo;Het is heel creatief &eacute;n bevredigend om die euro zelf te verdienen. Alles leidt naar dat ene punt dat je zelf hebt bepaald.</p>\n<p>Ik heb ook geleerd om flexibel te blijven. Eerst wilde ik alleen maar bijzondere groente kweken, maar ik merkte dat er toch ook vraag blijft naar &lsquo;gewone&rsquo; broccoli. Dus blijf ik flexibel kijken naar het aanbod.&rdquo;</p>\n<h2>Wat vind je lastig aan ondernemen?</h2>\n<p>&ldquo;Het heeft een onzekerheid in zich. Ik doe heel veel op gevoel. Als het gevoel maar klopt dan gaat het wel goed. Dat gevoel helpt je heel ver maar ik merk wel dat de getalletjes belangrijker worden. Ik heb nu een stagiair (Bert) die erg enthousiast is, veel kennis vergaart en me aanvult.</p>\n<p>Mensen kunnen bij ons een abonnement afnemen. Elke week leveren we dan een tas vol verse groenten. Met een abonnement mag er niks mislukken, dat is wel heel spannend. Wat ik zeker weet dat ik kan leveren dat bied ik aan en we nemen daarin een ruime marge. Bert is daar heel goed in, die berekent dat allemaal. Hoeveel hebben we nodig? Zoveel meter voor zoveel mensen. Daar ben ik heel blij mee.</p>\n<p>Van januari tot mei gaan we adverteren en flyeren. Zo willen we elk jaar wat opschalen.&rdquo;</p>\n<h2>Hoe was de samenwerking met Pro6 Advies?</h2>\n<p>&ldquo;Milo was voor mij een sparringpartner. Ik bespreek met hem &lsquo;waar ik tegenaan loop&rsquo;. Hij belde op en vroeg me dan hoe het gaat en waar ik mee bezig ben. Dan kwam er altijd wel uit waar ik onzeker over was. Hij dacht mee met mijn vraagstukken en gaf me tips waar ik de kennis kon vinden. Hij kon me ook heel goed positieve feedback geven. Zo van &lsquo;dat weet jij wel&rsquo;.</p>\n<p>Milo heeft ook veel geholpen met het vereenvoudigen van mijn administratie en heeft me aan een boekhouder geholpen. Hij denkt ook heel erg goed mee. Wat betekent ondernemen voor je WIA en waar moet je rekening mee houden. Hij heeft zicht op de wirwar van regels. Of zoekt het uit als hij het niet weet.&rdquo;</p>\n<h2>En hoe is het contact met Pro6 Advies nu je al een tijdje ondernemer bent?</h2>\n<p>&ldquo;We hebben af en toe contact over hoe het nu gaat. We bespreken dan vooral de financi&euml;le kant, omdat ik daar meer stress van heb dan van het ondernemen zelf. Ook de werk-priv&eacute; balans bespreek ik met hem. De gesprekken gaan dus verder dan alleen het ondernemen pur sang. Hij denkt altijd &lsquo;hoe kan ik hierin meedenken&rsquo;. Ik vind het een ongedwongen, ontspannen contact. Hij zet er geen druk op, maar vraagt eerder &lsquo;Wanneer zal ik je helpen?&rsquo;. Heel gelijkwaardig.&rdquo;</p>\n<p>Contactinformatie Veldlof</p>\n<p>Website<br><a href=\"https://veldlof.nl/\">https://veldlof.nl/</a></p>\n<p>Facebook<br><a href=\"https://www.facebook.com/veldlof/\">https://www.facebook.com/veldlof/</a></p>\n<p>Mailadres<br><a href=\"mailto:m.lausberg@veldlof.nl\">m.lausberg@veldlof.nl</a></p>'),
(1073, '<h1>Ademcoach</h1>\n<p>&ldquo;Wat ik vooral heb ervaren is dat ik wel volgens mijn eigen gevoel aan de slag mocht en dat ik echt gezien werd. Op het moment dat ik behoefte had aan hulp, was Rob van Pro6 Advies er ook echt voor me. Hij gaf me altijd meerdere keuzes: &ldquo;Als je daar tegenaan loopt dan kun je dit doen, of dit of dit&hellip; kijk maar wat voor jou het fijnst is&rdquo;. Dat vind ik heel prettig werken. Dat geeft me toch het gevoel dat ik het zelf doe en dat geeft vertrouwen.</p>\n<h2><img src=\"https://www.pro6advies.nl/site/assets/files/1322/portret_babs_origineel_kopie_2.png\" alt=\"\"><img src=\"https://www.pro6advies.nl/site/assets/files/1322/portret_babs_origineel_kopie.315x0-is.jpeg\" alt=\"\"><br>Wat was je motivatie om te gaan ondernemen?</h2>\n<p>&ldquo;Eind 2017 ben ik heel ziek geworden. Het leek een zware griep. Na een week of 6 &agrave; 7 ging de ontsteking weg uit mijn lijf maar de klachten bleven. Mijn moeder hield me een spiegel voor: &ldquo;Misschien moet je eens vanuit een andere hoek bekijken waarom je je niet zo goed voelt&rdquo;. Dat heb ik gedaan. Toen bleek dat ik een zware burn-out had met matige depressieklachten. Mijn lichaam trok eigenlijk zelf aan de bel. Dat was het begin van mijn persoonlijk ontwikkelingstraject.</p>\n<p>Ik werkte al heel lang in de horecabranche en was net overgestapt naar een ander horecabedrijf met uitzicht op een rustigere functie. Uiteindelijk bleek dat dit toch niet werkte voor me. Ik ging de ziektewet in en toen de ziektewet voorbij was kwam ik in de WW terecht.</p>\n<p>Die tijd heb ik gebruikt voor mijn eigen proces. Het UWV heeft me daar echt in ondersteund. Dat was heel fijn. Ik ben een ruim 1 jaar bezig geweest met mijn eigen proces. Ik ben eerst bij een psycholoog geweest. Dat werkte niet voldoende. Ik kon wel heel goed vertellen wat ik dacht en voelde, maar mijn lichaam moest nog heel veel voelen en verwerken. Toen heb ik een aantal ademsessies gedaan via een vriendin. Dat ging echt de diepte in en heeft mij heel snel nieuwe inzichten gebracht.</p>\n<p>Ik vond het z&oacute; interessant dat ik er meer van wilde weten en zo ben ik een opleiding tot ademcoach gaan volgen. Ik ben gaan oefenen op bekenden en familie en vanuit die positie ben ik door gaan groeien.</p>\n<p>Per 1 januari 2021 ben ik officieel begonnen als zzp&rsquo;er en per 1 mei 2021 heb ik mijn eigen praktijk. Een hele prettige rustgevende ruimte in het centrum van Leiden. Voor die tijd werkte ik vanuit huis of op locatie.&rdquo;</p>\n<h2>Hoe ben je in contact gekomen met Pro6 Advies?</h2>\n<p>&ldquo;Mijn traject bij het UWV liep bijna af en ik zou een coach krijgen om me te helpen mijn bedrijf op te starten. Het UWV heeft de connectie gemaakt met Pro6 Advies en zo heb ik Rob Videler leren kennen.</p>\n<p>Ik was zelf al best ver, maar liep nog tegen veel dingen aan. Er komt zoveel kijken bij het ondernemen: het hele social media gebeuren, de website, administratie, verzekeringen... Rob zei me dat ik eerst een bedrijfsplan moest maken. Daar blokkeerde ik echt volledig in. Ik sta zo intu&iuml;tief in het leven, dat ik het heel lastig vond om het vast op papier te zetten. Gelukkig dacht Rob ontzettend flexibel met mij mee. Hij bleef niet in zijn eigen stramien zitten. Hij heeft zich heel erg ingeleefd in mijn situatie\".</p>\n<h2>Hoe ervaar je het om ademcoach te zijn?</h2>\n<p>&ldquo;Intens en bijzonder. Heel mooi dat je mensen zo mag begeleiden in hun eigen proces en dat je ze 2 uur later verlicht de deur uit ziet gaan. Je probeert snel tot de kern te komen. Door middel van ademtechniek ga je echt het lijf in en ga je luisteren naar je lichaam. Dan gebeuren er soms wonderlijke dingen op de mat. In een week of 10 maken we stappen. Soms kleine stapjes, maar soms ook hele grote. Vaak komen ze dan ook nog wel eens in de zoveel tijd terug. Even een APK-tje halen. De connectie van lichaam en geest mag ook af en toe ook even weer opnieuw verbonden worden. Even luisteren: hoe voel ik me nou uiteindelijk echt?&rdquo;</p>\n<h2>Wat vind je lastig aan het ondernemen?</h2>\n<p>&ldquo;Administratie vind ik echt niet leuk. Daar wil ik me helemaal niet mee bezig houden. Dat brengt veel stress met zich mee en extra uren. Cijfertjes zijn niet mijn ding, dat besteed ik uit. Tussen 2000 en 2003 had ik al een eigen bedrijf, een skate en snowboard winkeltje in Zoetermeer. Dat is helaas niet geslaagd, maar daar heb ik wel veel van geleerd. Ik heb me dus niet vergist in wat het ondernemerschap inhoudt.&rdquo;</p>\n<h2>Wat zijn je plannen voor de toekomst?</h2>\n<p>&ldquo;Ik ben op dit moment bezig met een opleiding tot Buteyko therapeut, deze rond ik eind dit jaar af. De Buteyko methode helpt mensen die last hebben van luchtwegaandoeningen zoals astma, hyperventilatie en hooikoorts. Als ik me nog verder richt op de toekomst dan zou ik heel graag een alternatief gezondheidscentrum willen waar meerdere therapie&euml;n samenkomen. Ik denk dat het heel krachtig zou kunnen zijn als je verschillende therapie&euml;n bij en naast elkaar zet.</p>\n<p>Binnen mijn eigen expertise zou ik daar nog warmte/koudetherapie en zouttherapie aan toe willen voegen, maar de basis blijft adem. De adem is zo superinteressant!</p>\n<h2>Hoe heb je de begeleiding van Pro6Advies ervaren en wat heb je eraan gehad?</h2>\n<p>&ldquo;Wat ik vooral heb ervaren is dat ik wel volgens mijn eigen gevoel aan de slag mocht en dat ik echt gezien werd. Op het moment dat ik behoefte had aan hulp, was Rob er ook echt voor me. Hij gaf me altijd meerdere keuzes: &ldquo;Als je daar tegenaan loopt dan kun je dit doen, of dit of dit&hellip; kijk maar wat voor jou het fijnst is&rdquo;. Dat vind ik heel prettig werken. Dat geeft me toch het gevoel dat ik het zelf doe en dat geeft vertrouwen.</p>\n<p>Zo werkt het ook met mijn eigen cli&euml;nten. Er is nooit 1 rechte weg, er zijn altijd meerdere mogelijkheden, omdat je onderzoekt wat het beste bij jou past. Dan ben je echt een coach, als je dat kunt inzien. Onze werkwijze matcht op die manier goed met elkaar.&rdquo;</p>\n<p>Het AdemCentrum<br>Middelstegracht 89K<br>2312 TT Leiden<br>(06) 21 28 87 89</p>\n<p><strong>Website</strong><br><a href=\"https://www.ademtherapieleiden.nl/\">https://www.ademtherapieleiden.nl/</a></p>\n<p><strong>Mailadres</strong><br><a href=\"mailto:info@ademtherapieleiden.nl\">info@ademtherapieleiden.nl</a></p>'),
(1074, '<h1>Waterpark</h1>\n<p>Albert Klomp is Storm Aquapark Utrecht gestart, een drijvend park op het water vol evenwichtsbalken, trampolines en glijbanen. Rob Videler van Pro6 Advies heeft Albert begeleid bij het verbeteren van zijn plan &egrave;n het succesvol aanvragen van een bedrijfslening.</p>\n<p><img src=\"https://www.pro6advies.nl/site/assets/files/1340/foto_aquapark_albert_klomp.469x0-is.png\" alt=\"\"><br><strong><em>Pro6 Advies laat graag haar klanten aan het woord. Zij vertellen over het starten van hun eigen onderneming en hoe zij hierin de begeleiding van ons hebben ervaren. Deze keer het woord aan Albert Klomp.</em></strong></p>\n<p>&ldquo;Samen met mijn compagnon heb ik Storm Aquapark Utrecht, een drijvend park op het water vol evenwichtsbalken, trampolines en glijbanen, opgezet. Om ervoor te zorgen dat het park blijft liggen, is er een ankerplan gemaakt en hebben we zelf gedoken om dit te realiseren. Wekelijks duiken we onder het park om ervoor te zorgen dat alles perfect en veilig is.&rdquo;</p>\n<p><em>Hoe ziet jouw werkdag eruit?</em></p>\n<p>&ldquo;Het park is geopend van 1 mei tot en met 1 oktober. Dan wordt er ook gewerkt van &rsquo;s morgens vroeg tot &rsquo;s avonds laat. Op een mooie dag werken we ongeveer met 7 werknemers/lifeguards. Zij zorgen ervoor dat alles soepel verloopt en dat de veiligheid van de deelnemers gegarandeerd wordt. We beginnen met het schoonmaken van het park: emmers water, bezems, sponsjes en boenen maar. Er kunnen 120 kinderen per uur in het park spelen, dus er is volop werk te doen als manager/eigenaar: het aansturen van het team, backoffice, mails beantwoorden, cursussen volgen op het gebied van veiligheid, et cetera. Uiteindelijk hebben we het doel om te groeien en dit concept te kopi&euml;ren.&rdquo;</p>\n<p>Wat was je motivatie om te gaan ondernemen?</p>\n<p>&ldquo;Ik werkte bijna 20 jaar lang bij een wakeboardbaan. Toen kreeg ik een burn-out. Ik had geen werk en vroeg mezelf af: ga ik voor een baas werken of voor mijzelf?</p>\n<p>Ik was al lange tijd bezig met het schrijven van bedrijfsplannen. Maar als ik deze dan aan bijvoorbeeld familie liet lezen, keurden zij het keihard af. &lsquo;Je moet iets gaan doen wat meer in je straatje ligt&rsquo;, zeiden ze. Toen ik met het bedrijfsplan voor het aquapark kwam, waren ze meteen enthousiast, want dit paste echt bij mij. Ik was lang op zoek naar een bedrijf dat bij mij paste. Een groot deel van mijn leven heb ik bij een wakeboardbaan gewerkt en het runnen van een eigen bedrijf was altijd al een grote droom van mij.&rdquo;</p>\n<p><em>Hoe kwam je bij Pro6 Advies terecht?</em></p>\n<p>&ldquo;Ik was best ver met het schrijven van mijn bedrijfsplan. Er ontbrak alleen &eacute;&eacute;n ding en dat was de financiering. Het was coronatijd en voor deze sector was de financiering stopgezet. In die tijd had ik een burn-out en had ik geen werk. Ik klopte aan bij het UWV. Zij brachten mij in contact met Pro6 Advies.&rdquo;</p>\n<p><em>Wat is je ervaring met Pro6 Advies?</em></p>\n<p>&ldquo;Toen ik het proces begon, zat ik nog vrij diep in mijn burn-out, ik had paniekaanvallen. Het schrijven van het bedrijfsplan en het contact met Rob heeft mij er weer bovenop geholpen. Ik kreeg een nieuw doel in mijn leven, iets om naartoe te werken, zeg maar. Ik vind Rob een fijne man om mee samen te werken. Als ik het idee heb dat iemand lulkoek verteld, ben ik snel klaar, maar hij heeft bakken meer kennis in huis dan dat ik heb en gaf veel waardevolle tips. Hij heeft veel kennis op financieel gebied, is een betrokken persoon en liet mij verschillende inzichten zien. Ik heb er veel baat bij gehad.&rdquo;</p>\n<p><em>Wat heeft de begeleiding van Pro6 Advies je gebracht?</em></p>\n<p>&ldquo;Je mag het misschien niet zeggen, maar Rob was een beetje een psycholoog voor mij. Doordat ik in die tijd geen werk had, kon ik niet re-integreren en niet aan mijzelf werken. Tijdens de gesprekken met Rob gingen we weer op zoek naar uitdagingen en dit heeft mij er bovenop geholpen. De gesprekken gingen dus veel verder dan het schrijven van een bedrijfseconomisch plan.</p>\n<p>Voor de financiering maakten we een plan voor Qredits. Rob hielp mij met het gehele proces. Uiteindelijk ging deze financiering niet door, maar kon ik een lening krijgen bij de importeur van het Aquapark.</p>\n<p>Ik heb er zowel op persoonlijk als financieel vlak veel aan gehad. Ik had het niet graag zonder de begeleiding van Rob willen doen. Hij heeft het veel makkelijker gemaakt en ook deels mogelijk gemaakt. Dit mooie persoonlijke verhaal heeft geresulteerd in een winstgevend bedrijf. Ondanks het opstartjaar en een slechte zomer in het seizoen erna heeft het bedrijf vanaf het eerste jaar een winst gemaakt waarvan twee gezinnen kunnen leven. Dat is bijzonder en uniek.&rdquo;</p>\n<p><em>Contactgegevens Storm Aquapark Utrecht</em></p>\n<p>Website:&nbsp;<a href=\"http://www.stormaquaparkutrecht.nl/\">www.stormaquaparkutrecht.nl</a></p>\n<p>E-mailadres eigenaar:&nbsp;albertnklomp@gmail.com</p>');

-- --------------------------------------------------------

--
-- Table structure for table `field_email`
--

CREATE TABLE `field_email` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` varchar(250) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `field_email`
--

INSERT INTO `field_email` (`pages_id`, `data`) VALUES
(41, 'samiulfaysal@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `field_home_left_title_1`
--

CREATE TABLE `field_home_left_title_1` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `field_home_left_title_1`
--

INSERT INTO `field_home_left_title_1` (`pages_id`, `data`) VALUES
(1, 'Een Succesvolle Onderneming');

-- --------------------------------------------------------

--
-- Table structure for table `field_home_right_image_1`
--

CREATE TABLE `field_home_right_image_1` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) UNSIGNED NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext DEFAULT NULL,
  `filesize` int(11) DEFAULT NULL,
  `created_users_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `modified_users_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `ratio` decimal(4,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `field_home_right_image_1`
--

INSERT INTO `field_home_right_image_1` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`, `width`, `height`, `ratio`) VALUES
(1, 'hero-1.png', 0, '', '2024-11-02 22:38:47', '2024-11-02 22:38:47', '{\"uploadName\":\"Photography (1).png\"}', 85954, 41, 41, 494, 664, 0.74);

-- --------------------------------------------------------

--
-- Table structure for table `field_home_section_2_left_image_1`
--

CREATE TABLE `field_home_section_2_left_image_1` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) UNSIGNED NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext DEFAULT NULL,
  `filesize` int(11) DEFAULT NULL,
  `created_users_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `modified_users_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `ratio` decimal(4,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `field_home_section_2_left_image_1`
--

INSERT INTO `field_home_section_2_left_image_1` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`, `width`, `height`, `ratio`) VALUES
(1, 'about-img.jpg', 0, '', '2024-11-02 22:44:24', '2024-11-02 22:44:24', '', 25780, 41, 41, 488, 631, 0.77);

-- --------------------------------------------------------

--
-- Table structure for table `field_home_section_2_right_subtitle`
--

CREATE TABLE `field_home_section_2_right_subtitle` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `field_home_section_2_right_subtitle`
--

INSERT INTO `field_home_section_2_right_subtitle` (`pages_id`, `data`) VALUES
(1, 'Wij hebben meer dan 12 jaar ervaring in het leveren van adviesdiensten <br> en zakelijke oplossingen en bieden de beste bescherming.');

-- --------------------------------------------------------

--
-- Table structure for table `field_home_section_2_right_title`
--

CREATE TABLE `field_home_section_2_right_title` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `field_home_section_2_right_title`
--

INSERT INTO `field_home_section_2_right_title` (`pages_id`, `data`) VALUES
(1, 'Wij zijn een dynamisch team voor creatief werk en uw bedrijfsontwikkeling');

-- --------------------------------------------------------

--
-- Table structure for table `field_home_section_3_title`
--

CREATE TABLE `field_home_section_3_title` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `field_home_section_3_title`
--

INSERT INTO `field_home_section_3_title` (`pages_id`, `data`) VALUES
(1, 'Enkele van onze recente beoordelingen');

-- --------------------------------------------------------

--
-- Table structure for table `field_home_section_3_video_1`
--

CREATE TABLE `field_home_section_3_video_1` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `field_home_section_3_video_1`
--

INSERT INTO `field_home_section_3_video_1` (`pages_id`, `data`) VALUES
(1, 'https://youtu.be/FjBzUnrpNbA');

-- --------------------------------------------------------

--
-- Table structure for table `field_home_section_3_video_2`
--

CREATE TABLE `field_home_section_3_video_2` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `field_home_section_3_video_2`
--

INSERT INTO `field_home_section_3_video_2` (`pages_id`, `data`) VALUES
(1, 'https://youtu.be/Jleufv4SBvY');

-- --------------------------------------------------------

--
-- Table structure for table `field_home_section_3_video_3`
--

CREATE TABLE `field_home_section_3_video_3` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `field_home_section_3_video_3`
--

INSERT INTO `field_home_section_3_video_3` (`pages_id`, `data`) VALUES
(1, 'https://youtu.be/RbCbKrBD4cg');

-- --------------------------------------------------------

--
-- Table structure for table `field_home_section_3_video_4`
--

CREATE TABLE `field_home_section_3_video_4` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `field_home_section_3_video_4`
--

INSERT INTO `field_home_section_3_video_4` (`pages_id`, `data`) VALUES
(1, 'https://youtu.be/QydyrMAJLdg');

-- --------------------------------------------------------

--
-- Table structure for table `field_home_section_4_left_title`
--

CREATE TABLE `field_home_section_4_left_title` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `field_home_section_4_right_box_1_button_link`
--

CREATE TABLE `field_home_section_4_right_box_1_button_link` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `field_home_section_4_right_box_1_button_text`
--

CREATE TABLE `field_home_section_4_right_box_1_button_text` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `field_home_section_4_right_box_1_content`
--

CREATE TABLE `field_home_section_4_right_box_1_content` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `field_home_section_4_right_box_1_title`
--

CREATE TABLE `field_home_section_4_right_box_1_title` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `field_home_section_4_right_box_2_button_link`
--

CREATE TABLE `field_home_section_4_right_box_2_button_link` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `field_home_section_4_right_box_2_button_text`
--

CREATE TABLE `field_home_section_4_right_box_2_button_text` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `field_home_section_4_right_box_2_content`
--

CREATE TABLE `field_home_section_4_right_box_2_content` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `field_home_section_4_right_box_2_title`
--

CREATE TABLE `field_home_section_4_right_box_2_title` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `field_home_section_4_right_box_3_button_link`
--

CREATE TABLE `field_home_section_4_right_box_3_button_link` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `field_home_section_4_right_box_3_button_text`
--

CREATE TABLE `field_home_section_4_right_box_3_button_text` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `field_home_section_4_right_box_3_content`
--

CREATE TABLE `field_home_section_4_right_box_3_content` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `field_home_section_4_right_box_3_title`
--

CREATE TABLE `field_home_section_4_right_box_3_title` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `field_home_section_4_right_box_4_button_link`
--

CREATE TABLE `field_home_section_4_right_box_4_button_link` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `field_home_section_4_right_box_4_button_text`
--

CREATE TABLE `field_home_section_4_right_box_4_button_text` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `field_home_section_4_right_box_4_content`
--

CREATE TABLE `field_home_section_4_right_box_4_content` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `field_home_section_4_right_box_4_title`
--

CREATE TABLE `field_home_section_4_right_box_4_title` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `field_language`
--

CREATE TABLE `field_language` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `field_language`
--

INSERT INTO `field_language` (`pages_id`, `data`, `sort`) VALUES
(40, 1057, 0),
(41, 1057, 0);

-- --------------------------------------------------------

--
-- Table structure for table `field_language_files`
--

CREATE TABLE `field_language_files` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) UNSIGNED NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext DEFAULT NULL,
  `filesize` int(11) DEFAULT NULL,
  `created_users_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `modified_users_id` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `field_language_files_site`
--

CREATE TABLE `field_language_files_site` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) UNSIGNED NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext DEFAULT NULL,
  `filesize` int(11) DEFAULT NULL,
  `created_users_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `modified_users_id` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `field_pass`
--

CREATE TABLE `field_pass` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` char(40) NOT NULL,
  `salt` char(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=ascii COLLATE=ascii_general_ci;

--
-- Dumping data for table `field_pass`
--

INSERT INTO `field_pass` (`pages_id`, `data`, `salt`) VALUES
(41, '5BdZQ4xq8/6.B1L9mmsWsk7MICh1/IG', '$2y$11$uwZL2j3kgvSG3V.mhDpV1O'),
(40, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `field_permissions`
--

CREATE TABLE `field_permissions` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `field_permissions`
--

INSERT INTO `field_permissions` (`pages_id`, `data`, `sort`) VALUES
(38, 32, 1),
(38, 34, 2),
(38, 35, 3),
(37, 36, 0),
(38, 36, 0),
(38, 50, 4),
(38, 51, 5),
(38, 52, 7),
(38, 53, 8),
(38, 54, 6);

-- --------------------------------------------------------

--
-- Table structure for table `field_process`
--

CREATE TABLE `field_process` (
  `pages_id` int(11) NOT NULL DEFAULT 0,
  `data` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `field_process`
--

INSERT INTO `field_process` (`pages_id`, `data`) VALUES
(6, 17),
(3, 12),
(8, 12),
(9, 14),
(10, 7),
(11, 47),
(16, 48),
(300, 104),
(21, 50),
(29, 66),
(23, 10),
(304, 138),
(31, 136),
(22, 76),
(30, 68),
(303, 129),
(2, 87),
(302, 121),
(301, 109),
(28, 76),
(1007, 150),
(1010, 165),
(1012, 167),
(1056, 174),
(1058, 175),
(1059, 177),
(1078, 180);

-- --------------------------------------------------------

--
-- Table structure for table `field_roles`
--

CREATE TABLE `field_roles` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `field_roles`
--

INSERT INTO `field_roles` (`pages_id`, `data`, `sort`) VALUES
(40, 37, 0),
(41, 37, 0),
(41, 38, 2);

-- --------------------------------------------------------

--
-- Table structure for table `field_sidebar_content`
--

CREATE TABLE `field_sidebar_content` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `field_sidebar_content`
--

INSERT INTO `field_sidebar_content` (`pages_id`, `data`) VALUES
(1015, '<p><strong>Wist je dat:</strong></p>\n<p>Wij náást het schrijven van een ondernemingsplan altijd advies geven over de financiering, rechtsvorm, verdienmodel en marketingstrategie?</p>\n<p>Je plan wordt daardoor gegarandeerd beter!</p>'),
(1017, '<p><em><strong>Wat wij voor onze klanten doen:</strong></em></p>\n<ul>\n<li>ondernemingplan schrijven</li>\n<li>bedrijfskrediet aanvragen</li>\n<li>PR-plan opstellen</li>\n<li>succesvolle offertes schrijven</li>\n<li>opzetten boekhouding</li>\n<li>uitleg over belastingen</li>\n<li>leren klanten verwerven</li>\n</ul>'),
(1024, '<h3>Vergroot je kans&nbsp;op financiering en laat je plan door ons checken!</h3>\n<p>Wist je dat Qredits 70% van alle kredietaanvragen afwijst?</p>\n<p>Met een&nbsp;<a href=\"https://www.pro6advies.nl/informatie-aanvragen/\">PlanCheck</a>&nbsp;voldoet je ondernemingsplan aan de eisen die een bank&nbsp;of Qredits stelt.&nbsp;Hiermee verhoog je de kans op een financiering.&nbsp;</p>'),
(1025, '<p><a href=\"mailto:info@pro6advies.nl?subject=Aanvraag%20Plancheck\">VRAAG ONS ADVIES OVER JE ONDERNEMINGSPLAN</a></p>'),
(1027, '<h3>Meer weten of even sparren&nbsp;?</h3>\n<p>Bel ons op (0546) 57 84 of (06) 120 36 948</p>'),
(1028, '<h1><strong>TIP</strong></h1>\n<p>Benieuwd naar je ondernemerskwaliteiten?<br />Op de site van de KvK vind je een overzichtelijke (gratis) test: <a href=\"https://www.kvk.nl/tools-en-platformen/kvk-krachtmeting/\" target=\"_blank\" rel=\"noopener noreferrer\">De KVK Krachtmeting</a>. Met de KVK Krachtmeting krijg je inzicht in je ondernemersvaardigheden.<br /><br />Wil je echt de diepte in? Kies dan voor deze <a href=\"https://entrepreneurscan.com/nl/ondernemerstest/\" target=\"_blank\" rel=\"noopener noreferrer\">entrepreneurscan</a>.</p>'),
(1029, '<h3>Dit zijn je vervolgstappen: </h3>\n<ul>\n<li>Werk je idee uit.</li>\n<li>Praat met potentiële klanten over je idee.</li>\n<li>Onderzoek je concurrenten.</li>\n<li>Schrijf een ondernemingsplan.</li>\n<li>Zoek contact met je arbeidsdeskundige.</li>\n</ul>\n<h3>Meer weten?</h3>\n<p>Bel ons op (0546) 57 84 of (06) 120 36 948</p>'),
(1030, '<h3>Dit zijn je vervolgstappen: </h3>\n<ul>\n<li>Werk je idee uit.</li>\n<li>Praat met potentiële klanten over je idee.</li>\n<li>Onderzoek je concurrenten.</li>\n<li>Schrijf een ondernemingsplan.</li>\n<li>Zoek contact met je arbeidsdeskundige.</li>\n</ul>\n<p> </p>\n<h3>Meer weten?</h3>\n<p>Bel ons op (0546) 57 84 of (06) 120 36 948</p>'),
(1031, '<h3>Dit zijn je vervolgstappen: </h3>\n<ul>\n<li>Werk je idee uit.</li>\n<li>Praat met potentiële klanten over je idee.</li>\n<li>Onderzoek je concurrenten.</li>\n<li>Schrijf een ondernemingsplan.</li>\n<li>Zoek contact met je arbeidsdeskundige.</li>\n</ul>\n<h3>Meer weten?</h3>\n<p>Bel ons op (0546) 57 84 of (06) 120 36 948</p>'),
(1032, '<h3>Adviesgesprek over haalbaarheid</h3>\n<hr />\n<p>Wat: gesprek met een adviseur</p>\n<p>Waar: via videobellen of telefonisch</p>\n<p>Duur: 2 uur</p>\n<p>Kosten: € 400,- exclusief BTW. Bij bezoek op locatie wordt 50% van de reistijd berekend.</p>\n<p> </p>\n<h3>Ondernemingsplan opstellen</h3>\n<hr />\n<p>Wat: opstellen volledig ondernemingsplan</p>\n<p>Waar: op locatie of via videobellen</p>\n<p>Duur: 2 tot 3 weken, wel afhankelijk van de beschikbare informatie.</p>\n<p>Doel: volledig ondernemingsplan</p>\n<p>Kosten: € 1.500, - exclusief BTW</p>'),
(1033, '<p><img src=\"https://www.pro6advies.nl/site/assets/files/1114/tip.0x100.jpg\" alt=\"tip.jpg\" /><br />Weten wat er voor jou mogelijk is?<br /><br />Bel ons gerust op (0546) 57 84 85<br />met vragen of voor een toelichting! </p>'),
(1034, '<h6><strong>Dit zeggen klanten over ons:</strong></h6>\n<p><br />\"Pro6 Advies heeft mij geholpen de samenwerking met mijn businesspartners te verbeteren\',</p>\n<p><em>- ondernemer met een landmeetbedrijf -</em></p>'),
(1063, '<h2>Stappenplan UWV Haalbaarheids Check<br>&nbsp;</h2>\n<ol>\n<li><a href=\"https://www.pro6advies.nl/uwv-begeleiding-check/uwv-haalbaarheids-check/formulier-uwv-haalbaarheidscheck/\">vul de vragenlijst in</a></li>\n<li>wij beoordelen&nbsp;je&nbsp;plan &amp; idee</li>\n<li>binnen 3 werkdagen nemen wij via&nbsp;e-mail of telefoon contact met je op</li>\n<li>je weet na ons contact of je plannen kans hebben en of&nbsp;je in aanmerking komt&nbsp;voor begeleiding via UWV</li>\n</ol>');

-- --------------------------------------------------------

--
-- Table structure for table `field_sidebar_image_1`
--

CREATE TABLE `field_sidebar_image_1` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) UNSIGNED NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext DEFAULT NULL,
  `filesize` int(11) DEFAULT NULL,
  `created_users_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `modified_users_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `ratio` decimal(4,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `field_sidebar_image_1`
--

INSERT INTO `field_sidebar_image_1` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`, `width`, `height`, `ratio`) VALUES
(1015, 'ab-inner-2-1.jpg', 0, '', '2024-10-26 20:55:30', '2024-10-26 20:55:30', '', 113245, 41, 41, 1283, 604, 2.12),
(1016, 'ab-inner-1.jpg', 0, '', '2024-10-26 21:40:18', '2024-10-26 21:40:18', '', 41147, 41, 41, 362, 425, 0.85),
(1017, 'milo_zonder_achtergrond_2023_400x400_384x0-is-pid1095.png', 0, '', '2024-10-27 11:43:19', '2024-10-27 11:43:19', '{\"uploadName\":\"milo_zonder_achtergrond_2023_400x400.384x0-is-pid1095.png\"}', 95708, 41, 41, 384, 374, 1.03),
(1018, 'coaching-re-sized.jpg', 0, '', '2024-10-27 12:14:44', '2024-10-27 12:14:44', '{\"uploadName\":\"mc_1_olhp_786px.jpg\"}', 1011316, 41, 41, 2367, 1481, 1.60),
(1019, 'downpic_cc-502097002.jpg', 0, '', '2024-10-27 12:31:42', '2024-10-27 12:31:42', '{\"uploadName\":\"Downpic.cc-502097002.jpg\"}', 24565, 41, 41, 459, 260, 1.77);

-- --------------------------------------------------------

--
-- Table structure for table `field_sidebar_image_2`
--

CREATE TABLE `field_sidebar_image_2` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) UNSIGNED NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext DEFAULT NULL,
  `filesize` int(11) DEFAULT NULL,
  `created_users_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `modified_users_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `ratio` decimal(4,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `field_sidebar_image_2`
--

INSERT INTO `field_sidebar_image_2` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`, `width`, `height`, `ratio`) VALUES
(1015, 'ab-inner-3.jpg', 0, '', '2024-10-26 20:55:30', '2024-10-26 20:55:30', '', 7497, 41, 41, 306, 206, 1.49),
(1016, 'ab-inner-2.jpg', 0, '', '2024-10-26 21:40:18', '2024-10-26 21:40:18', '', 17698, 41, 41, 306, 206, 1.49),
(1019, '1721181978442.jpg', 0, '', '2024-10-27 12:31:42', '2024-10-27 12:31:42', '', 42336, 41, 41, 1024, 686, 1.49),
(1018, 'grow-slide.jpg', 0, '', '2024-10-27 12:14:44', '2024-10-27 12:14:44', '{\"uploadName\":\"GROW-slide.jpg\"}', 115056, 41, 41, 960, 720, 1.33);

-- --------------------------------------------------------

--
-- Table structure for table `field_single_image`
--

CREATE TABLE `field_single_image` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) UNSIGNED NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext DEFAULT NULL,
  `filesize` int(11) DEFAULT NULL,
  `created_users_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `modified_users_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `ratio` decimal(4,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `field_single_image`
--

INSERT INTO `field_single_image` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`, `filesize`, `created_users_id`, `modified_users_id`, `width`, `height`, `ratio`) VALUES
(1060, 'coaching-re-sized.jpg', 0, '', '2024-11-01 12:18:30', '2024-11-01 12:18:30', '', 1011316, 41, 41, 2367, 1481, 1.60),
(1061, 'winter-lookbook-3.png', 0, '', '2024-11-01 14:46:07', '2024-11-01 14:46:07', '{\"uploadName\":\"Winter-Lookbook-3.png\"}', 217228, 41, 41, 1125, 750, 1.50),
(1062, 'www_samiulfaysal_com.png', 0, '', '2024-11-01 14:49:00', '2024-11-01 14:49:00', '{\"uploadName\":\"www.samiulfaysal.com.png\"}', 59895, 41, 41, 2160, 1215, 1.78);

-- --------------------------------------------------------

--
-- Table structure for table `field_single_video`
--

CREATE TABLE `field_single_video` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `field_single_video`
--

INSERT INTO `field_single_video` (`pages_id`, `data`) VALUES
(1066, '<p>https://www.youtube.com/watch?v=FjBzUnrpNbA</p>'),
(1067, '<p>https://youtu.be/Jleufv4SBvY</p>'),
(1068, '<p>https://youtu.be/RbCbKrBD4cg</p>'),
(1069, '<p>https://youtu.be/oZb9hqbEYqc</p>'),
(1070, '<p>https://youtu.be/QydyrMAJLdg</p>');

-- --------------------------------------------------------

--
-- Table structure for table `field_title`
--

CREATE TABLE `field_title` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `field_title`
--

INSERT INTO `field_title` (`pages_id`, `data`) VALUES
(11, 'Templates'),
(16, 'Fields'),
(22, 'Setup'),
(3, 'Pages'),
(6, 'Add Page'),
(8, 'Tree'),
(9, 'Save Sort'),
(10, 'Edit'),
(21, 'Modules'),
(29, 'Users'),
(30, 'Roles'),
(2, 'Admin'),
(7, 'Trash'),
(27, '404 Not Found'),
(302, 'Insert Link'),
(23, 'Login'),
(304, 'Profile'),
(301, 'Empty Trash'),
(300, 'Search'),
(303, 'Insert Image'),
(28, 'Access'),
(31, 'Permissions'),
(32, 'Edit pages'),
(34, 'Delete pages'),
(35, 'Move pages (change parent)'),
(36, 'View pages'),
(50, 'Sort child pages'),
(51, 'Change templates on pages'),
(52, 'Administer users'),
(53, 'User can update profile/password'),
(54, 'Lock or unlock a page'),
(1, 'Home'),
(1006, 'Use Page Lister'),
(1007, 'Find'),
(1010, 'Recent'),
(1011, 'Can see recently edited pages'),
(1012, 'Logs'),
(1013, 'Can view system logs'),
(1014, 'Can manage system logs'),
(1015, 'Ondernemingsplan'),
(1016, 'Ondernemingsplan opstellen'),
(1017, 'Bedrijf starten'),
(1018, 'Coaching'),
(1019, 'Aanpak'),
(1020, 'Tarieven'),
(1021, 'Tips'),
(1022, 'Hooggevoelig'),
(1023, 'Reviews'),
(1024, 'Het financiële deel van het o.p. opstellen'),
(1025, 'Laat je ondernemingsplan checken'),
(1026, 'Bedrijf starten met UWV-uitkering'),
(1027, 'Bedrijf starten met een WW-uitkering'),
(1028, 'Bedrijf starten met WIA-uitkering'),
(1029, 'Bedrijf starten met een WAJONG-uitkering'),
(1030, 'Bedrijf starten met een WAO-uitkering'),
(1031, 'Bedrijf starten met een ZW-uitkering'),
(1032, 'Van loondienst naar ondernemerschap'),
(1033, 'Bedrijf starten via outplacement'),
(1034, 'Coaching voor ondernemers'),
(1035, 'Coaching voor startende ondernemers'),
(1036, 'Aanpak starten vanuit uitkering UWV'),
(1037, 'Aanpak financieel deel ondernemingsplan'),
(1038, 'Stop gebruik van je gegevens bij de KvK'),
(1039, 'Belastingtips voor ZZP-ers'),
(1040, 'Zelf juridisch documenten samenstellen'),
(1041, 'Maak je eigen logo'),
(1042, 'Crowdfunding'),
(1043, 'Formulieren/rekentools Belastingdienst'),
(1044, 'Doehetzelf website voor fotografen'),
(1045, 'Gratis online facturen maken'),
(1046, 'Handige UWV-pagina\'s eigen bedrijf'),
(1047, 'Gratis stockfoto\'s'),
(1048, 'Geld verdienen met foto\'s'),
(1049, 'Marktonderzoek met de locatiescan van de KvK'),
(1050, 'Privé-inhoud'),
(1061, 'PDF BOOK Two'),
(1053, 'Inloggen'),
(1060, 'PDF Book One'),
(1055, 'Administer languages and static translation files'),
(1056, 'Languages'),
(1057, 'Default'),
(1058, 'Language Translator'),
(1059, 'Sessions'),
(1062, 'PDF Book Three'),
(1063, 'UWV Haalbaarheids Check'),
(1064, 'Vragenlijst bij UWV Haalbaarheids Check'),
(1065, 'Coachingspraktijk'),
(1066, 'fotograaf'),
(1067, 'vrachtwagenchauffeuse'),
(1068, 'computerreparateur'),
(1069, 'huiswerkbegeleiding'),
(1070, 'diëtiste'),
(1071, 'tennisleraar'),
(1072, 'ecologische tuinderij'),
(1073, 'ademcoach'),
(1074, 'oprichter waterpark'),
(1075, 'Form Builder'),
(1076, 'Access Form Builder admin page'),
(1077, 'Add new Form Builder forms'),
(1078, 'Forms');

-- --------------------------------------------------------

--
-- Table structure for table `forms`
--

CREATE TABLE `forms` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forms`
--

INSERT INTO `forms` (`id`, `name`, `data`) VALUES
(1, 'hero-form', '');

-- --------------------------------------------------------

--
-- Table structure for table `forms_entries`
--

CREATE TABLE `forms_entries` (
  `id` int(10) UNSIGNED NOT NULL,
  `forms_id` int(10) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `created` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `class` varchar(128) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `flags` int(11) NOT NULL DEFAULT 0,
  `data` mediumtext NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES
(1, 'FieldtypeTextarea', 0, '', '2024-10-25 10:38:33'),
(3, 'FieldtypeText', 0, '', '2024-10-25 10:38:33'),
(4, 'FieldtypePage', 0, '', '2024-10-25 10:38:33'),
(30, 'InputfieldForm', 0, '', '2024-10-25 10:38:33'),
(6, 'FieldtypeFile', 0, '', '2024-10-25 10:38:33'),
(7, 'ProcessPageEdit', 1, '', '2024-10-25 10:38:33'),
(10, 'ProcessLogin', 0, '', '2024-10-25 10:38:33'),
(12, 'ProcessPageList', 0, '{\"pageLabelField\":\"title\",\"paginationLimit\":25,\"limit\":50}', '2024-10-25 10:38:33'),
(121, 'ProcessPageEditLink', 1, '', '2024-10-25 10:38:33'),
(14, 'ProcessPageSort', 0, '', '2024-10-25 10:38:33'),
(15, 'InputfieldPageListSelect', 0, '', '2024-10-25 10:38:33'),
(117, 'JqueryUI', 1, '', '2024-10-25 10:38:33'),
(17, 'ProcessPageAdd', 0, '', '2024-10-25 10:38:33'),
(125, 'SessionLoginThrottle', 11, '', '2024-10-25 10:38:33'),
(122, 'InputfieldPassword', 0, '', '2024-10-25 10:38:33'),
(25, 'InputfieldAsmSelect', 0, '', '2024-10-25 10:38:33'),
(116, 'JqueryCore', 1, '', '2024-10-25 10:38:33'),
(27, 'FieldtypeModule', 0, '', '2024-10-25 10:38:33'),
(28, 'FieldtypeDatetime', 0, '', '2024-10-25 10:38:33'),
(29, 'FieldtypeEmail', 0, '', '2024-10-25 10:38:33'),
(108, 'InputfieldURL', 0, '', '2024-10-25 10:38:33'),
(32, 'InputfieldSubmit', 0, '', '2024-10-25 10:38:33'),
(34, 'InputfieldText', 0, '', '2024-10-25 10:38:33'),
(35, 'InputfieldTextarea', 0, '', '2024-10-25 10:38:33'),
(36, 'InputfieldSelect', 0, '', '2024-10-25 10:38:33'),
(37, 'InputfieldCheckbox', 0, '', '2024-10-25 10:38:33'),
(38, 'InputfieldCheckboxes', 0, '', '2024-10-25 10:38:33'),
(39, 'InputfieldRadios', 0, '', '2024-10-25 10:38:33'),
(40, 'InputfieldHidden', 0, '', '2024-10-25 10:38:33'),
(41, 'InputfieldName', 0, '', '2024-10-25 10:38:33'),
(43, 'InputfieldSelectMultiple', 0, '', '2024-10-25 10:38:33'),
(45, 'JqueryWireTabs', 0, '', '2024-10-25 10:38:33'),
(47, 'ProcessTemplate', 0, '', '2024-10-25 10:38:33'),
(48, 'ProcessField', 32, '', '2024-10-25 10:38:33'),
(50, 'ProcessModule', 0, '', '2024-10-25 10:38:33'),
(114, 'PagePermissions', 3, '', '2024-10-25 10:38:33'),
(97, 'FieldtypeCheckbox', 1, '', '2024-10-25 10:38:33'),
(115, 'PageRender', 3, '{\"clearCache\":1}', '2024-10-25 10:38:33'),
(55, 'InputfieldFile', 0, '', '2024-10-25 10:38:33'),
(56, 'InputfieldImage', 0, '', '2024-10-25 10:38:33'),
(57, 'FieldtypeImage', 0, '', '2024-10-25 10:38:33'),
(60, 'InputfieldPage', 0, '{\"inputfieldClasses\":[\"InputfieldSelect\",\"InputfieldSelectMultiple\",\"InputfieldCheckboxes\",\"InputfieldRadios\",\"InputfieldAsmSelect\",\"InputfieldPageListSelect\",\"InputfieldPageListSelectMultiple\",\"InputfieldPageAutocomplete\"]}', '2024-10-25 10:38:33'),
(61, 'TextformatterEntities', 0, '', '2024-10-25 10:38:33'),
(66, 'ProcessUser', 0, '{\"showFields\":[\"name\",\"email\",\"roles\"]}', '2024-10-25 10:38:33'),
(67, 'MarkupAdminDataTable', 0, '', '2024-10-25 10:38:33'),
(68, 'ProcessRole', 0, '{\"showFields\":[\"name\"]}', '2024-10-25 10:38:33'),
(76, 'ProcessList', 0, '', '2024-10-25 10:38:33'),
(78, 'InputfieldFieldset', 0, '', '2024-10-25 10:38:33'),
(79, 'InputfieldMarkup', 0, '', '2024-10-25 10:38:33'),
(80, 'InputfieldEmail', 0, '', '2024-10-25 10:38:33'),
(89, 'FieldtypeFloat', 1, '', '2024-10-25 10:38:33'),
(83, 'ProcessPageView', 0, '', '2024-10-25 10:38:33'),
(84, 'FieldtypeInteger', 0, '', '2024-10-25 10:38:33'),
(85, 'InputfieldInteger', 0, '', '2024-10-25 10:38:33'),
(86, 'InputfieldPageName', 0, '', '2024-10-25 10:38:33'),
(87, 'ProcessHome', 0, '', '2024-10-25 10:38:33'),
(90, 'InputfieldFloat', 0, '', '2024-10-25 10:38:33'),
(94, 'InputfieldDatetime', 0, '', '2024-10-25 10:38:33'),
(98, 'MarkupPagerNav', 0, '', '2024-10-25 10:38:33'),
(129, 'ProcessPageEditImageSelect', 1, '', '2024-10-25 10:38:33'),
(103, 'JqueryTableSorter', 1, '', '2024-10-25 10:38:33'),
(104, 'ProcessPageSearch', 1, '{\"searchFields\":\"title\",\"displayField\":\"title path\"}', '2024-10-25 10:38:33'),
(105, 'FieldtypeFieldsetOpen', 1, '', '2024-10-25 10:38:33'),
(106, 'FieldtypeFieldsetClose', 1, '', '2024-10-25 10:38:33'),
(107, 'FieldtypeFieldsetTabOpen', 1, '', '2024-10-25 10:38:33'),
(109, 'ProcessPageTrash', 1, '', '2024-10-25 10:38:33'),
(111, 'FieldtypePageTitle', 1, '', '2024-10-25 10:38:33'),
(112, 'InputfieldPageTitle', 0, '', '2024-10-25 10:38:33'),
(113, 'MarkupPageArray', 3, '', '2024-10-25 10:38:33'),
(131, 'InputfieldButton', 0, '', '2024-10-25 10:38:33'),
(133, 'FieldtypePassword', 1, '', '2024-10-25 10:38:33'),
(134, 'ProcessPageType', 33, '{\"showFields\":[]}', '2024-10-25 10:38:33'),
(135, 'FieldtypeURL', 1, '', '2024-10-25 10:38:33'),
(136, 'ProcessPermission', 1, '{\"showFields\":[\"name\",\"title\"]}', '2024-10-25 10:38:33'),
(137, 'InputfieldPageListSelectMultiple', 0, '', '2024-10-25 10:38:33'),
(138, 'ProcessProfile', 1, '{\"profileFields\":[\"pass\",\"email\",\"admin_theme\",\"language\"]}', '2024-10-25 10:38:33'),
(139, 'SystemUpdater', 1, '{\"systemVersion\":20,\"coreVersion\":\"3.0.229\"}', '2024-10-25 10:38:33'),
(148, 'AdminThemeDefault', 10, '{\"colors\":\"classic\"}', '2024-10-25 10:38:33'),
(149, 'InputfieldSelector', 42, '', '2024-10-25 10:38:33'),
(150, 'ProcessPageLister', 32, '', '2024-10-25 10:38:33'),
(151, 'JqueryMagnific', 1, '', '2024-10-25 10:38:33'),
(155, 'InputfieldTinyMCE', 0, '', '2024-10-25 10:38:33'),
(156, 'MarkupHTMLPurifier', 0, '', '2024-10-25 10:38:33'),
(159, '.Modules.wire/modules/', 8192, 'System/SystemNotifications/SystemNotifications.module\nSystem/SystemNotifications/FieldtypeNotifications.module\nSystem/SystemUpdater/SystemUpdater.module\nTextformatter/TextformatterNewlineBR.module\nTextformatter/TextformatterPstripper.module\nTextformatter/TextformatterNewlineUL.module\nTextformatter/TextformatterEntities.module\nTextformatter/TextformatterStripTags.module\nTextformatter/TextformatterSmartypants/TextformatterSmartypants.module\nTextformatter/TextformatterMarkdownExtra/TextformatterMarkdownExtra.module\nPageRender.module\nPagePaths.module\nFileCompilerTags.module\nInputfield/InputfieldFieldset.module\nInputfield/InputfieldForm.module\nInputfield/InputfieldEmail.module\nInputfield/InputfieldText/InputfieldText.module\nInputfield/InputfieldPageAutocomplete/InputfieldPageAutocomplete.module\nInputfield/InputfieldCheckbox/InputfieldCheckbox.module\nInputfield/InputfieldPageName/InputfieldPageName.module\nInputfield/InputfieldAsmSelect/InputfieldAsmSelect.module\nInputfield/InputfieldURL.module\nInputfield/InputfieldCKEditor/InputfieldCKEditor.module\nInputfield/InputfieldCheckboxes/InputfieldCheckboxes.module\nInputfield/InputfieldMarkup.module\nInputfield/InputfieldPageListSelect/InputfieldPageListSelectMultiple.module\nInputfield/InputfieldPageListSelect/InputfieldPageListSelect.module\nInputfield/InputfieldTextTags/InputfieldTextTags.module\nInputfield/InputfieldButton.module\nInputfield/InputfieldTextarea.module\nInputfield/InputfieldPassword/InputfieldPassword.module\nInputfield/InputfieldPageTitle/InputfieldPageTitle.module\nInputfield/InputfieldName.module\nInputfield/InputfieldRadios/InputfieldRadios.module\nInputfield/InputfieldTinyMCE/InputfieldTinyMCE.module.php\nInputfield/InputfieldHidden.module\nInputfield/InputfieldImage/InputfieldImage.module\nInputfield/InputfieldFile/InputfieldFile.module\nInputfield/InputfieldDatetime/InputfieldDatetime.module\nInputfield/InputfieldSubmit/InputfieldSubmit.module\nInputfield/InputfieldToggle/InputfieldToggle.module\nInputfield/InputfieldPage/InputfieldPage.module\nInputfield/InputfieldSelect.module\nInputfield/InputfieldFloat.module\nInputfield/InputfieldIcon/InputfieldIcon.module\nInputfield/InputfieldSelectMultiple.module\nInputfield/InputfieldPageTable/InputfieldPageTable.module\nInputfield/InputfieldSelector/InputfieldSelector.module\nInputfield/InputfieldInteger.module\nPagePermissions.module\nLanguageSupport/LanguageSupport.module\nLanguageSupport/FieldtypePageTitleLanguage.module\nLanguageSupport/LanguageSupportPageNames.module\nLanguageSupport/FieldtypeTextLanguage.module\nLanguageSupport/ProcessLanguage.module\nLanguageSupport/LanguageTabs.module\nLanguageSupport/FieldtypeTextareaLanguage.module\nLanguageSupport/ProcessLanguageTranslator.module\nLanguageSupport/LanguageSupportFields.module\nImage/ImageSizerEngineAnimatedGif/ImageSizerEngineAnimatedGif.module\nImage/ImageSizerEngineIMagick/ImageSizerEngineIMagick.module\nPage/PageFrontEdit/PageFrontEdit.module\nProcess/ProcessHome.module\nProcess/ProcessList.module\nProcess/ProcessPageList/ProcessPageList.module\nProcess/ProcessPermission/ProcessPermission.module\nProcess/ProcessField/ProcessField.module\nProcess/ProcessPageTrash.module\nProcess/ProcessPageEditImageSelect/ProcessPageEditImageSelect.module\nProcess/ProcessForgotPassword/ProcessForgotPassword.module\nProcess/ProcessTemplate/ProcessTemplate.module\nProcess/ProcessRole/ProcessRole.module\nProcess/ProcessPageSearch/ProcessPageSearch.module\nProcess/ProcessProfile/ProcessProfile.module\nProcess/ProcessPageEdit/ProcessPageEdit.module\nProcess/ProcessPagesExportImport/ProcessPagesExportImport.module\nProcess/ProcessPageSort.module\nProcess/ProcessCommentsManager/ProcessCommentsManager.module\nProcess/ProcessLogin/ProcessLogin.module\nProcess/ProcessPageAdd/ProcessPageAdd.module\nProcess/ProcessPageType/ProcessPageType.module\nProcess/ProcessRecentPages/ProcessRecentPages.module\nProcess/ProcessPageLister/ProcessPageLister.module\nProcess/ProcessPageEditLink/ProcessPageEditLink.module\nProcess/ProcessLogger/ProcessLogger.module\nProcess/ProcessModule/ProcessModule.module\nProcess/ProcessPageView.module\nProcess/ProcessUser/ProcessUser.module\nProcess/ProcessPageClone.module\nFieldtype/FieldtypeFile/FieldtypeFile.module\nFieldtype/FieldtypeSelector.module\nFieldtype/FieldtypeFieldsetTabOpen.module\nFieldtype/FieldtypePageTitle.module\nFieldtype/FieldtypeRepeater/InputfieldRepeater.module\nFieldtype/FieldtypeRepeater/FieldtypeRepeater.module\nFieldtype/FieldtypeRepeater/FieldtypeFieldsetPage.module\nFieldtype/FieldtypePage.module\nFieldtype/FieldtypeCache.module\nFieldtype/FieldtypeFieldsetOpen.module\nFieldtype/FieldtypePageTable.module\nFieldtype/FieldtypeText.module\nFieldtype/FieldtypeInteger.module\nFieldtype/FieldtypePassword.module\nFieldtype/FieldtypeToggle.module\nFieldtype/FieldtypeURL.module\nFieldtype/FieldtypeCheckbox.module\nFieldtype/FieldtypeFloat.module\nFieldtype/FieldtypeOptions/FieldtypeOptions.module\nFieldtype/FieldtypeModule.module\nFieldtype/FieldtypeFieldsetClose.module\nFieldtype/FieldtypeDecimal.module\nFieldtype/FieldtypeImage/FieldtypeImage.module\nFieldtype/FieldtypeEmail.module\nFieldtype/FieldtypeComments/CommentFilterAkismet.module\nFieldtype/FieldtypeComments/InputfieldCommentsAdmin.module\nFieldtype/FieldtypeComments/FieldtypeComments.module\nFieldtype/FieldtypeDatetime.module\nFieldtype/FieldtypeTextarea.module\nMarkup/MarkupHTMLPurifier/MarkupHTMLPurifier.module\nMarkup/MarkupAdminDataTable/MarkupAdminDataTable.module\nMarkup/MarkupCache.module\nMarkup/MarkupPagerNav/MarkupPagerNav.module\nMarkup/MarkupRSS.module\nMarkup/MarkupPageArray.module\nMarkup/MarkupPageFields.module\nSession/SessionLoginThrottle/SessionLoginThrottle.module\nSession/SessionHandlerDB/ProcessSessionDB.module\nSession/SessionHandlerDB/SessionHandlerDB.module\nJquery/JqueryTableSorter/JqueryTableSorter.module\nJquery/JqueryUI/JqueryUI.module\nJquery/JqueryMagnific/JqueryMagnific.module\nJquery/JqueryCore/JqueryCore.module\nJquery/JqueryWireTabs/JqueryWireTabs.module\nPagePathHistory.module\nLazyCron.module\nAdminTheme/AdminThemeDefault/AdminThemeDefault.module\nAdminTheme/AdminThemeReno/AdminThemeReno.module\nAdminTheme/AdminThemeUikit/AdminThemeUikit.module', '2024-10-25 10:38:58'),
(160, '.Modules.site/modules/', 8192, 'FormBuilder/FormBuilder.module\nFormBuilder/ProcessFormBuilder.module\nFormBuilder/InputfieldFormBuilderFile.module\nTextformatterVideoEmbed-master/TextformatterVideoEmbed.module', '2024-10-25 10:38:58'),
(161, '.Modules.info', 8192, '{\"139\":{\"name\":\"SystemUpdater\",\"title\":\"System Updater\",\"version\":20,\"singular\":true,\"created\":1729831113,\"configurable\":3,\"permanent\":true},\"61\":{\"name\":\"TextformatterEntities\",\"title\":\"HTML Entity Encoder (htmlspecialchars)\",\"version\":100,\"created\":1729831113},\"171\":{\"name\":\"TextformatterMarkdownExtra\",\"title\":\"Markdown\\/Parsedown Extra\",\"version\":180,\"singular\":1,\"created\":1729910506,\"configurable\":4},\"115\":{\"name\":\"PageRender\",\"title\":\"Page Render\",\"version\":105,\"autoload\":true,\"singular\":true,\"created\":1729831113,\"configurable\":3,\"permanent\":true},\"78\":{\"name\":\"InputfieldFieldset\",\"title\":\"Fieldset\",\"version\":101,\"created\":1729831113,\"permanent\":true},\"30\":{\"name\":\"InputfieldForm\",\"title\":\"Form\",\"version\":107,\"created\":1729831113,\"permanent\":true},\"80\":{\"name\":\"InputfieldEmail\",\"title\":\"Email\",\"version\":102,\"created\":1729831113},\"34\":{\"name\":\"InputfieldText\",\"title\":\"Text\",\"version\":106,\"created\":1729831113,\"permanent\":true},\"170\":{\"name\":\"InputfieldPageAutocomplete\",\"title\":\"Page Auto Complete\",\"version\":113,\"created\":1729910327},\"37\":{\"name\":\"InputfieldCheckbox\",\"title\":\"Checkbox\",\"version\":106,\"created\":1729831113,\"permanent\":true},\"86\":{\"name\":\"InputfieldPageName\",\"title\":\"Page Name\",\"version\":106,\"created\":1729831113,\"configurable\":3,\"permanent\":true},\"25\":{\"name\":\"InputfieldAsmSelect\",\"title\":\"asmSelect\",\"version\":203,\"created\":1729831113,\"permanent\":true},\"108\":{\"name\":\"InputfieldURL\",\"title\":\"URL\",\"version\":103,\"created\":1729831113},\"38\":{\"name\":\"InputfieldCheckboxes\",\"title\":\"Checkboxes\",\"version\":108,\"created\":1729831113,\"permanent\":true},\"79\":{\"name\":\"InputfieldMarkup\",\"title\":\"Markup\",\"version\":102,\"created\":1729831113,\"permanent\":true},\"137\":{\"name\":\"InputfieldPageListSelectMultiple\",\"title\":\"Page List Select Multiple\",\"version\":103,\"created\":1729831113,\"permanent\":true},\"15\":{\"name\":\"InputfieldPageListSelect\",\"title\":\"Page List Select\",\"version\":101,\"created\":1729831113,\"permanent\":true},\"169\":{\"name\":\"InputfieldTextTags\",\"title\":\"Text Tags\",\"version\":6,\"icon\":\"tags\",\"created\":1729910266},\"131\":{\"name\":\"InputfieldButton\",\"title\":\"Button\",\"version\":100,\"created\":1729831113,\"permanent\":true},\"35\":{\"name\":\"InputfieldTextarea\",\"title\":\"Textarea\",\"version\":103,\"created\":1729831113,\"permanent\":true},\"122\":{\"name\":\"InputfieldPassword\",\"title\":\"Password\",\"version\":102,\"created\":1729831113,\"permanent\":true},\"112\":{\"name\":\"InputfieldPageTitle\",\"title\":\"Page Title\",\"version\":102,\"created\":1729831113,\"permanent\":true},\"41\":{\"name\":\"InputfieldName\",\"title\":\"Name\",\"version\":100,\"created\":1729831113,\"permanent\":true},\"39\":{\"name\":\"InputfieldRadios\",\"title\":\"Radio Buttons\",\"version\":106,\"created\":1729831113,\"permanent\":true},\"155\":{\"name\":\"InputfieldTinyMCE\",\"title\":\"TinyMCE\",\"version\":616,\"icon\":\"keyboard-o\",\"requiresVersions\":{\"ProcessWire\":[\">=\",\"3.0.200\"],\"MarkupHTMLPurifier\":[\">=\",0]},\"created\":1729831113,\"configurable\":4},\"40\":{\"name\":\"InputfieldHidden\",\"title\":\"Hidden\",\"version\":101,\"created\":1729831113,\"permanent\":true},\"56\":{\"name\":\"InputfieldImage\",\"title\":\"Images\",\"version\":127,\"created\":1729831113,\"permanent\":true},\"55\":{\"name\":\"InputfieldFile\",\"title\":\"Files\",\"version\":128,\"created\":1729831113,\"permanent\":true},\"94\":{\"name\":\"InputfieldDatetime\",\"title\":\"Datetime\",\"version\":107,\"created\":1729831113,\"permanent\":true},\"32\":{\"name\":\"InputfieldSubmit\",\"title\":\"Submit\",\"version\":103,\"created\":1729831113,\"permanent\":true},\"172\":{\"name\":\"InputfieldToggle\",\"title\":\"Toggle\",\"version\":1,\"created\":1729929530},\"60\":{\"name\":\"InputfieldPage\",\"title\":\"Page\",\"version\":108,\"created\":1729831113,\"configurable\":3,\"permanent\":true},\"36\":{\"name\":\"InputfieldSelect\",\"title\":\"Select\",\"version\":102,\"created\":1729831113,\"permanent\":true},\"90\":{\"name\":\"InputfieldFloat\",\"title\":\"Float\",\"version\":105,\"created\":1729831113,\"permanent\":true},\"168\":{\"name\":\"InputfieldIcon\",\"title\":\"Icon\",\"version\":3,\"created\":1729831141},\"43\":{\"name\":\"InputfieldSelectMultiple\",\"title\":\"Select Multiple\",\"version\":101,\"created\":1729831113,\"permanent\":true},\"149\":{\"name\":\"InputfieldSelector\",\"title\":\"Selector\",\"version\":28,\"autoload\":\"template=admin\",\"created\":1729831113,\"configurable\":3,\"addFlag\":32},\"85\":{\"name\":\"InputfieldInteger\",\"title\":\"Integer\",\"version\":105,\"created\":1729831113,\"permanent\":true},\"114\":{\"name\":\"PagePermissions\",\"title\":\"Page Permissions\",\"version\":105,\"autoload\":true,\"singular\":true,\"created\":1729831113,\"permanent\":true},\"173\":{\"name\":\"LanguageSupport\",\"title\":\"Languages Support\",\"version\":103,\"installs\":[\"ProcessLanguage\",\"ProcessLanguageTranslator\"],\"autoload\":true,\"singular\":true,\"created\":1730263516,\"configurable\":3,\"addFlag\":32},\"174\":{\"name\":\"ProcessLanguage\",\"title\":\"Languages\",\"version\":103,\"icon\":\"language\",\"requiresVersions\":{\"LanguageSupport\":[\">=\",0]},\"permission\":\"lang-edit\",\"singular\":1,\"created\":1730263516,\"configurable\":3,\"useNavJSON\":true},\"175\":{\"name\":\"ProcessLanguageTranslator\",\"title\":\"Language Translator\",\"version\":103,\"requiresVersions\":{\"LanguageSupport\":[\">=\",0]},\"permission\":\"lang-edit\",\"singular\":1,\"created\":1730263516,\"configurable\":4},\"87\":{\"name\":\"ProcessHome\",\"title\":\"Admin Home\",\"version\":101,\"permission\":\"page-view\",\"created\":1729831113,\"permanent\":true},\"76\":{\"name\":\"ProcessList\",\"title\":\"List\",\"version\":101,\"permission\":\"page-view\",\"created\":1729831113,\"permanent\":true},\"12\":{\"name\":\"ProcessPageList\",\"title\":\"Page List\",\"version\":124,\"icon\":\"sitemap\",\"permission\":\"page-edit\",\"created\":1729831113,\"configurable\":3,\"permanent\":true,\"useNavJSON\":true},\"136\":{\"name\":\"ProcessPermission\",\"title\":\"Permissions\",\"version\":101,\"icon\":\"gear\",\"permission\":\"permission-admin\",\"singular\":1,\"created\":1729831113,\"configurable\":3,\"permanent\":true,\"useNavJSON\":true},\"48\":{\"name\":\"ProcessField\",\"title\":\"Fields\",\"version\":114,\"icon\":\"cube\",\"permission\":\"field-admin\",\"created\":1729831113,\"configurable\":3,\"permanent\":true,\"useNavJSON\":true,\"addFlag\":32},\"109\":{\"name\":\"ProcessPageTrash\",\"title\":\"Page Trash\",\"version\":103,\"singular\":1,\"created\":1729831113,\"permanent\":true},\"129\":{\"name\":\"ProcessPageEditImageSelect\",\"title\":\"Page Edit Image\",\"version\":121,\"permission\":\"page-edit\",\"singular\":1,\"created\":1729831113,\"configurable\":3,\"permanent\":true},\"47\":{\"name\":\"ProcessTemplate\",\"title\":\"Templates\",\"version\":114,\"icon\":\"cubes\",\"permission\":\"template-admin\",\"created\":1729831113,\"configurable\":4,\"permanent\":true,\"useNavJSON\":true},\"68\":{\"name\":\"ProcessRole\",\"title\":\"Roles\",\"version\":104,\"icon\":\"gears\",\"permission\":\"role-admin\",\"created\":1729831113,\"configurable\":3,\"permanent\":true,\"useNavJSON\":true},\"104\":{\"name\":\"ProcessPageSearch\",\"title\":\"Page Search\",\"version\":108,\"permission\":\"page-edit\",\"singular\":1,\"created\":1729831113,\"configurable\":3,\"permanent\":true},\"138\":{\"name\":\"ProcessProfile\",\"title\":\"User Profile\",\"version\":105,\"permission\":\"profile-edit\",\"singular\":1,\"created\":1729831113,\"configurable\":3,\"permanent\":true},\"7\":{\"name\":\"ProcessPageEdit\",\"title\":\"Page Edit\",\"version\":112,\"icon\":\"edit\",\"permission\":\"page-edit\",\"singular\":1,\"created\":1729831113,\"configurable\":3,\"permanent\":true,\"useNavJSON\":true},\"14\":{\"name\":\"ProcessPageSort\",\"title\":\"Page Sort and Move\",\"version\":100,\"permission\":\"page-edit\",\"created\":1729831113,\"permanent\":true},\"10\":{\"name\":\"ProcessLogin\",\"title\":\"Login\",\"version\":109,\"permission\":\"page-view\",\"created\":1729831113,\"configurable\":4,\"permanent\":true},\"17\":{\"name\":\"ProcessPageAdd\",\"title\":\"Page Add\",\"version\":109,\"icon\":\"plus-circle\",\"permission\":\"page-edit\",\"created\":1729831113,\"configurable\":3,\"permanent\":true,\"useNavJSON\":true},\"134\":{\"name\":\"ProcessPageType\",\"title\":\"Page Type\",\"version\":101,\"singular\":1,\"created\":1729831113,\"configurable\":3,\"permanent\":true,\"useNavJSON\":true,\"addFlag\":32},\"165\":{\"name\":\"ProcessRecentPages\",\"title\":\"Recent Pages\",\"version\":2,\"icon\":\"clock-o\",\"permission\":\"page-edit-recent\",\"singular\":1,\"created\":1729831138,\"useNavJSON\":true,\"nav\":[{\"url\":\"?edited=1\",\"label\":\"Edited\",\"icon\":\"users\",\"navJSON\":\"navJSON\\/?edited=1\"},{\"url\":\"?added=1\",\"label\":\"Created\",\"icon\":\"users\",\"navJSON\":\"navJSON\\/?added=1\"},{\"url\":\"?edited=1&me=1\",\"label\":\"Edited by me\",\"icon\":\"user\",\"navJSON\":\"navJSON\\/?edited=1&me=1\"},{\"url\":\"?added=1&me=1\",\"label\":\"Created by me\",\"icon\":\"user\",\"navJSON\":\"navJSON\\/?added=1&me=1\"},{\"url\":\"another\\/\",\"label\":\"Add another\",\"icon\":\"plus-circle\",\"navJSON\":\"anotherNavJSON\\/\"}]},\"150\":{\"name\":\"ProcessPageLister\",\"title\":\"Lister\",\"version\":26,\"icon\":\"search\",\"permission\":\"page-lister\",\"created\":1729831113,\"configurable\":true,\"permanent\":true,\"useNavJSON\":true,\"addFlag\":32},\"121\":{\"name\":\"ProcessPageEditLink\",\"title\":\"Page Edit Link\",\"version\":112,\"icon\":\"link\",\"permission\":\"page-edit\",\"singular\":1,\"created\":1729831113,\"configurable\":4,\"permanent\":true},\"167\":{\"name\":\"ProcessLogger\",\"title\":\"Logs\",\"version\":2,\"icon\":\"tree\",\"permission\":\"logs-view\",\"singular\":1,\"created\":1729831141,\"useNavJSON\":true},\"50\":{\"name\":\"ProcessModule\",\"title\":\"Modules\",\"version\":120,\"permission\":\"module-admin\",\"created\":1729831113,\"permanent\":true,\"useNavJSON\":true,\"nav\":[{\"url\":\"?site#tab_site_modules\",\"label\":\"Site\",\"icon\":\"plug\",\"navJSON\":\"navJSON\\/?site=1\"},{\"url\":\"?core#tab_core_modules\",\"label\":\"Core\",\"icon\":\"plug\",\"navJSON\":\"navJSON\\/?core=1\"},{\"url\":\"?configurable#tab_configurable_modules\",\"label\":\"Configure\",\"icon\":\"gear\",\"navJSON\":\"navJSON\\/?configurable=1\"},{\"url\":\"?install#tab_install_modules\",\"label\":\"Install\",\"icon\":\"sign-in\",\"navJSON\":\"navJSON\\/?install=1\"},{\"url\":\"?new#tab_new_modules\",\"label\":\"New\",\"icon\":\"plus\"},{\"url\":\"?reset=1\",\"label\":\"Refresh\",\"icon\":\"refresh\"}]},\"83\":{\"name\":\"ProcessPageView\",\"title\":\"Page View\",\"version\":106,\"permission\":\"page-view\",\"created\":1729831113,\"permanent\":true},\"66\":{\"name\":\"ProcessUser\",\"title\":\"Users\",\"version\":107,\"icon\":\"group\",\"permission\":\"user-admin\",\"created\":1729831113,\"configurable\":\"ProcessUserConfig.php\",\"permanent\":true,\"useNavJSON\":true},\"6\":{\"name\":\"FieldtypeFile\",\"title\":\"Files\",\"version\":107,\"created\":1729831113,\"configurable\":4,\"permanent\":true},\"107\":{\"name\":\"FieldtypeFieldsetTabOpen\",\"title\":\"Fieldset in Tab (Open)\",\"version\":100,\"singular\":1,\"created\":1729831113,\"permanent\":true},\"111\":{\"name\":\"FieldtypePageTitle\",\"title\":\"Page Title\",\"version\":100,\"singular\":true,\"created\":1729831113,\"permanent\":true},\"4\":{\"name\":\"FieldtypePage\",\"title\":\"Page Reference\",\"version\":107,\"created\":1729831113,\"configurable\":3,\"permanent\":true},\"105\":{\"name\":\"FieldtypeFieldsetOpen\",\"title\":\"Fieldset (Open)\",\"version\":101,\"singular\":1,\"created\":1729831113,\"permanent\":true},\"3\":{\"name\":\"FieldtypeText\",\"title\":\"Text\",\"version\":102,\"created\":1729831113,\"permanent\":true},\"84\":{\"name\":\"FieldtypeInteger\",\"title\":\"Integer\",\"version\":102,\"created\":1729831113,\"permanent\":true},\"133\":{\"name\":\"FieldtypePassword\",\"title\":\"Password\",\"version\":101,\"singular\":true,\"created\":1729831113,\"permanent\":true},\"135\":{\"name\":\"FieldtypeURL\",\"title\":\"URL\",\"version\":101,\"singular\":true,\"created\":1729831113,\"permanent\":true},\"97\":{\"name\":\"FieldtypeCheckbox\",\"title\":\"Checkbox\",\"version\":101,\"singular\":1,\"created\":1729831113,\"permanent\":true},\"89\":{\"name\":\"FieldtypeFloat\",\"title\":\"Float\",\"version\":107,\"singular\":1,\"created\":1729831113,\"permanent\":true},\"27\":{\"name\":\"FieldtypeModule\",\"title\":\"Module Reference\",\"version\":102,\"created\":1729831113,\"permanent\":true},\"106\":{\"name\":\"FieldtypeFieldsetClose\",\"title\":\"Fieldset (Close)\",\"version\":100,\"singular\":1,\"created\":1729831113,\"permanent\":true},\"57\":{\"name\":\"FieldtypeImage\",\"title\":\"Images\",\"version\":102,\"created\":1729831113,\"configurable\":4,\"permanent\":true},\"29\":{\"name\":\"FieldtypeEmail\",\"title\":\"E-Mail\",\"version\":101,\"created\":1729831113},\"28\":{\"name\":\"FieldtypeDatetime\",\"title\":\"Datetime\",\"version\":105,\"created\":1729831113},\"1\":{\"name\":\"FieldtypeTextarea\",\"title\":\"Textarea\",\"version\":107,\"created\":1729831113,\"permanent\":true},\"156\":{\"name\":\"MarkupHTMLPurifier\",\"title\":\"HTML Purifier\",\"version\":497,\"created\":1729831113},\"67\":{\"name\":\"MarkupAdminDataTable\",\"title\":\"Admin Data Table\",\"version\":107,\"created\":1729831113,\"permanent\":true},\"98\":{\"name\":\"MarkupPagerNav\",\"title\":\"Pager (Pagination) Navigation\",\"version\":105,\"created\":1729831113},\"113\":{\"name\":\"MarkupPageArray\",\"title\":\"PageArray Markup\",\"version\":100,\"autoload\":true,\"singular\":true,\"created\":1729831113},\"125\":{\"name\":\"SessionLoginThrottle\",\"title\":\"Session Login Throttle\",\"version\":103,\"autoload\":\"function\",\"singular\":true,\"created\":1729831113,\"configurable\":3},\"177\":{\"name\":\"ProcessSessionDB\",\"title\":\"Sessions\",\"version\":5,\"icon\":\"dashboard\",\"requiresVersions\":{\"SessionHandlerDB\":[\">=\",0]},\"singular\":1,\"created\":1730263541},\"176\":{\"name\":\"SessionHandlerDB\",\"title\":\"Session Handler Database\",\"version\":6,\"installs\":[\"ProcessSessionDB\"],\"autoload\":true,\"singular\":true,\"created\":1730263541,\"configurable\":3},\"103\":{\"name\":\"JqueryTableSorter\",\"title\":\"jQuery Table Sorter Plugin\",\"version\":\"2.31.3\",\"singular\":1,\"created\":1729831113},\"117\":{\"name\":\"JqueryUI\",\"title\":\"jQuery UI\",\"version\":\"1.10.4\",\"singular\":true,\"created\":1729831113,\"permanent\":true},\"151\":{\"name\":\"JqueryMagnific\",\"title\":\"jQuery Magnific Popup\",\"version\":\"1.1.0\",\"singular\":1,\"created\":1729831113},\"116\":{\"name\":\"JqueryCore\",\"title\":\"jQuery Core\",\"version\":\"1.12.4\",\"singular\":true,\"created\":1729831113,\"permanent\":true},\"45\":{\"name\":\"JqueryWireTabs\",\"title\":\"jQuery Wire Tabs Plugin\",\"version\":110,\"created\":1729831113,\"configurable\":3,\"permanent\":true},\"148\":{\"name\":\"AdminThemeDefault\",\"title\":\"Default\",\"version\":14,\"autoload\":\"template=admin\",\"created\":1729831113,\"configurable\":19},\"166\":{\"name\":\"AdminThemeUikit\",\"title\":\"Uikit\",\"version\":33,\"autoload\":\"template=admin\",\"created\":1729831138,\"configurable\":4},\"178\":{\"name\":\"TextformatterVideoEmbed\",\"title\":\"Video embed for YouTube (and Vimeo)\",\"version\":202,\"requiresVersions\":{\"ProcessWire\":[\">=\",\"3.0.148\"]},\"singular\":1,\"created\":1730444102,\"configurable\":3},\"179\":{\"name\":\"FormBuilder\",\"title\":\"Form Builder\",\"version\":22,\"installs\":[\"ProcessFormBuilder\",\"InputfieldFormBuilderFile\"],\"autoload\":true,\"singular\":true,\"configurable\":true,\"namespace\":\"\\\\\"},\"180\":{\"name\":\"ProcessFormBuilder\",\"title\":\"Forms\",\"version\":22,\"requiresVersions\":{\"FormBuilder\":[\">=\",0]},\"permission\":\"form-builder\",\"singular\":true,\"namespace\":\"\\\\\"},\"181\":{\"name\":\"InputfieldFormBuilderFile\",\"title\":\"File (for FormBuilder)\",\"version\":1,\"requiresVersions\":{\"FormBuilder\":[\">=\",0]},\"namespace\":\"\\\\\"}}', '2024-10-25 10:38:58'),
(162, '.ModulesVerbose.info', 8192, '{\"139\":{\"summary\":\"Manages system versions and upgrades.\",\"core\":true,\"versionStr\":\"0.2.0\"},\"61\":{\"summary\":\"Entity encode ampersands, quotes (single and double) and greater-than\\/less-than signs using htmlspecialchars(str, ENT_QUOTES). It is recommended that you use this on all text\\/textarea fields except those using a rich text editor or a markup language like Markdown.\",\"core\":true,\"versionStr\":\"1.0.0\"},\"171\":{\"summary\":\"Markdown\\/Parsedown extra lightweight markup language by Emanuil Rusev. Based on Markdown by John Gruber.\",\"core\":true,\"versionStr\":\"1.8.0\"},\"115\":{\"summary\":\"Adds a render method to Page and caches page output.\",\"core\":true,\"versionStr\":\"1.0.5\"},\"78\":{\"summary\":\"Groups one or more fields together in a container\",\"core\":true,\"versionStr\":\"1.0.1\"},\"30\":{\"summary\":\"Contains one or more fields in a form\",\"core\":true,\"versionStr\":\"1.0.7\"},\"80\":{\"summary\":\"E-Mail address in valid format\",\"core\":true,\"versionStr\":\"1.0.2\"},\"34\":{\"summary\":\"Single line of text\",\"core\":true,\"versionStr\":\"1.0.6\"},\"170\":{\"summary\":\"Multiple Page selection using auto completion and sorting capability. Intended for use as an input field for Page reference fields.\",\"core\":true,\"versionStr\":\"1.1.3\"},\"37\":{\"summary\":\"Single checkbox toggle\",\"core\":true,\"versionStr\":\"1.0.6\"},\"86\":{\"summary\":\"Text input validated as a ProcessWire Page name field\",\"core\":true,\"versionStr\":\"1.0.6\"},\"25\":{\"summary\":\"Multiple selection, progressive enhancement to select multiple\",\"core\":true,\"versionStr\":\"2.0.3\"},\"108\":{\"summary\":\"URL in valid format\",\"core\":true,\"versionStr\":\"1.0.3\"},\"38\":{\"summary\":\"Multiple checkbox toggles\",\"core\":true,\"versionStr\":\"1.0.8\"},\"79\":{\"summary\":\"Contains any other markup and optionally child Inputfields\",\"core\":true,\"versionStr\":\"1.0.2\"},\"137\":{\"summary\":\"Selection of multiple pages from a ProcessWire page tree list\",\"core\":true,\"versionStr\":\"1.0.3\"},\"15\":{\"summary\":\"Selection of a single page from a ProcessWire page tree list\",\"core\":true,\"versionStr\":\"1.0.1\"},\"169\":{\"summary\":\"Enables input of user entered tags or selection of predefined tags.\",\"core\":true,\"versionStr\":\"0.0.6\"},\"131\":{\"summary\":\"Form button element that you can optionally pass an href attribute to.\",\"core\":true,\"versionStr\":\"1.0.0\"},\"35\":{\"summary\":\"Multiple lines of text\",\"core\":true,\"versionStr\":\"1.0.3\"},\"122\":{\"summary\":\"Password input with confirmation field that doesn&#039;t ever echo the input back.\",\"core\":true,\"versionStr\":\"1.0.2\"},\"112\":{\"summary\":\"Handles input of Page Title and auto-generation of Page Name (when name is blank)\",\"core\":true,\"versionStr\":\"1.0.2\"},\"41\":{\"summary\":\"Text input validated as a ProcessWire name field\",\"core\":true,\"versionStr\":\"1.0.0\"},\"39\":{\"summary\":\"Radio buttons for selection of a single item\",\"core\":true,\"versionStr\":\"1.0.6\"},\"155\":{\"summary\":\"TinyMCE rich text editor version 6.4.1.\",\"core\":true,\"versionStr\":\"6.1.6\"},\"40\":{\"summary\":\"Hidden value in a form\",\"core\":true,\"versionStr\":\"1.0.1\"},\"56\":{\"summary\":\"One or more image uploads (sortable)\",\"core\":true,\"versionStr\":\"1.2.7\"},\"55\":{\"summary\":\"One or more file uploads (sortable)\",\"core\":true,\"versionStr\":\"1.2.8\"},\"94\":{\"summary\":\"Inputfield that accepts date and optionally time\",\"core\":true,\"versionStr\":\"1.0.7\"},\"32\":{\"summary\":\"Form submit button\",\"core\":true,\"versionStr\":\"1.0.3\"},\"172\":{\"summary\":\"A toggle providing similar input capability to a checkbox but much more configurable.\",\"core\":true,\"versionStr\":\"0.0.1\"},\"60\":{\"summary\":\"Select one or more pages\",\"core\":true,\"versionStr\":\"1.0.8\"},\"36\":{\"summary\":\"Selection of a single value from a select pulldown\",\"core\":true,\"versionStr\":\"1.0.2\"},\"90\":{\"summary\":\"Floating point number with precision\",\"core\":true,\"versionStr\":\"1.0.5\"},\"168\":{\"summary\":\"Select an icon\",\"core\":true,\"versionStr\":\"0.0.3\"},\"43\":{\"summary\":\"Select multiple items from a list\",\"core\":true,\"versionStr\":\"1.0.1\"},\"149\":{\"summary\":\"Build a page finding selector visually.\",\"author\":\"Avoine + ProcessWire\",\"core\":true,\"versionStr\":\"0.2.8\"},\"85\":{\"summary\":\"Integer (positive or negative)\",\"core\":true,\"versionStr\":\"1.0.5\"},\"114\":{\"summary\":\"Adds various permission methods to Page objects that are used by Process modules.\",\"core\":true,\"versionStr\":\"1.0.5\"},\"173\":{\"summary\":\"ProcessWire multi-language support.\",\"author\":\"Ryan Cramer\",\"core\":true,\"versionStr\":\"1.0.3\"},\"174\":{\"summary\":\"Manage system languages\",\"author\":\"Ryan Cramer\",\"core\":true,\"versionStr\":\"1.0.3\",\"permissions\":{\"lang-edit\":\"Administer languages and static translation files\"}},\"175\":{\"summary\":\"Provides language translation capabilities for ProcessWire core and modules.\",\"author\":\"Ryan Cramer\",\"core\":true,\"versionStr\":\"1.0.3\"},\"87\":{\"summary\":\"Acts as a placeholder Process for the admin root. Ensures proper flow control after login.\",\"core\":true,\"versionStr\":\"1.0.1\"},\"76\":{\"summary\":\"Lists the Process assigned to each child page of the current\",\"core\":true,\"versionStr\":\"1.0.1\"},\"12\":{\"summary\":\"List pages in a hierarchical tree structure\",\"core\":true,\"versionStr\":\"1.2.4\"},\"136\":{\"summary\":\"Manage system permissions\",\"core\":true,\"versionStr\":\"1.0.1\"},\"48\":{\"summary\":\"Edit individual fields that hold page data\",\"core\":true,\"versionStr\":\"1.1.4\",\"searchable\":\"fields\"},\"109\":{\"summary\":\"Handles emptying of Page trash\",\"core\":true,\"versionStr\":\"1.0.3\"},\"129\":{\"summary\":\"Provides image manipulation functions for image fields and rich text editors.\",\"core\":true,\"versionStr\":\"1.2.1\"},\"47\":{\"summary\":\"List and edit the templates that control page output\",\"core\":true,\"versionStr\":\"1.1.4\",\"searchable\":\"templates\"},\"68\":{\"summary\":\"Manage user roles and what permissions are attached\",\"core\":true,\"versionStr\":\"1.0.4\"},\"104\":{\"summary\":\"Provides a page search engine for admin use.\",\"core\":true,\"versionStr\":\"1.0.8\"},\"138\":{\"summary\":\"Enables user to change their password, email address and other settings that you define.\",\"core\":true,\"versionStr\":\"1.0.5\"},\"7\":{\"summary\":\"Edit a Page\",\"core\":true,\"versionStr\":\"1.1.2\"},\"14\":{\"summary\":\"Handles page sorting and moving for PageList\",\"core\":true,\"versionStr\":\"1.0.0\"},\"10\":{\"summary\":\"Login to ProcessWire\",\"core\":true,\"versionStr\":\"1.0.9\"},\"17\":{\"summary\":\"Add a new page\",\"core\":true,\"versionStr\":\"1.0.9\"},\"134\":{\"summary\":\"List, Edit and Add pages of a specific type\",\"core\":true,\"versionStr\":\"1.0.1\"},\"165\":{\"summary\":\"Shows a list of recently edited pages in your admin.\",\"author\":\"Ryan Cramer\",\"href\":\"http:\\/\\/modules.processwire.com\\/\",\"core\":true,\"versionStr\":\"0.0.2\",\"permissions\":{\"page-edit-recent\":\"Can see recently edited pages\"},\"page\":{\"name\":\"recent-pages\",\"parent\":\"page\",\"title\":\"Recent\"}},\"150\":{\"summary\":\"Admin tool for finding and listing pages by any property.\",\"author\":\"Ryan Cramer\",\"core\":true,\"versionStr\":\"0.2.6\",\"permissions\":{\"page-lister\":\"Use Page Lister\"}},\"121\":{\"summary\":\"Provides a link capability as used by some Fieldtype modules (like rich text editors).\",\"core\":true,\"versionStr\":\"1.1.2\"},\"167\":{\"summary\":\"View and manage system logs.\",\"author\":\"Ryan Cramer\",\"core\":true,\"versionStr\":\"0.0.2\",\"permissions\":{\"logs-view\":\"Can view system logs\",\"logs-edit\":\"Can manage system logs\"},\"page\":{\"name\":\"logs\",\"parent\":\"setup\",\"title\":\"Logs\"}},\"50\":{\"summary\":\"List, edit or install\\/uninstall modules\",\"core\":true,\"versionStr\":\"1.2.0\"},\"83\":{\"summary\":\"All page views are routed through this Process\",\"core\":true,\"versionStr\":\"1.0.6\"},\"66\":{\"summary\":\"Manage system users\",\"core\":true,\"versionStr\":\"1.0.7\",\"searchable\":\"users\"},\"6\":{\"summary\":\"Field that stores one or more files\",\"core\":true,\"versionStr\":\"1.0.7\"},\"107\":{\"summary\":\"Open a fieldset to group fields. Same as Fieldset (Open) except that it displays in a tab instead.\",\"core\":true,\"versionStr\":\"1.0.0\"},\"111\":{\"summary\":\"Field that stores a page title\",\"core\":true,\"versionStr\":\"1.0.0\"},\"4\":{\"summary\":\"Field that stores one or more references to ProcessWire pages\",\"core\":true,\"versionStr\":\"1.0.7\"},\"105\":{\"summary\":\"Open a fieldset to group fields. Should be followed by a Fieldset (Close) after one or more fields.\",\"core\":true,\"versionStr\":\"1.0.1\"},\"3\":{\"summary\":\"Field that stores a single line of text\",\"core\":true,\"versionStr\":\"1.0.2\"},\"84\":{\"summary\":\"Field that stores an integer\",\"core\":true,\"versionStr\":\"1.0.2\"},\"133\":{\"summary\":\"Field that stores a hashed and salted password\",\"core\":true,\"versionStr\":\"1.0.1\"},\"135\":{\"summary\":\"Field that stores a URL\",\"core\":true,\"versionStr\":\"1.0.1\"},\"97\":{\"summary\":\"This Fieldtype stores an ON\\/OFF toggle via a single checkbox. The ON value is 1 and OFF value is 0.\",\"core\":true,\"versionStr\":\"1.0.1\"},\"89\":{\"summary\":\"Field that stores a floating point number\",\"core\":true,\"versionStr\":\"1.0.7\"},\"27\":{\"summary\":\"Field that stores a reference to another module\",\"core\":true,\"versionStr\":\"1.0.2\"},\"106\":{\"summary\":\"Close a fieldset opened by FieldsetOpen. \",\"core\":true,\"versionStr\":\"1.0.0\"},\"57\":{\"summary\":\"Field that stores one or more GIF, JPG, or PNG images\",\"core\":true,\"versionStr\":\"1.0.2\"},\"29\":{\"summary\":\"Field that stores an e-mail address\",\"core\":true,\"versionStr\":\"1.0.1\"},\"28\":{\"summary\":\"Field that stores a date and optionally time\",\"core\":true,\"versionStr\":\"1.0.5\"},\"1\":{\"summary\":\"Field that stores multiple lines of text\",\"core\":true,\"versionStr\":\"1.0.7\"},\"156\":{\"summary\":\"Front-end to the HTML Purifier library.\",\"core\":true,\"versionStr\":\"4.9.7\"},\"67\":{\"summary\":\"Generates markup for data tables used by ProcessWire admin\",\"core\":true,\"versionStr\":\"1.0.7\"},\"98\":{\"summary\":\"Generates markup for pagination navigation\",\"core\":true,\"versionStr\":\"1.0.5\"},\"113\":{\"summary\":\"Adds renderPager() method to all PaginatedArray types, for easy pagination output. Plus a render() method to PageArray instances.\",\"core\":true,\"versionStr\":\"1.0.0\"},\"125\":{\"summary\":\"Throttles login attempts to help prevent dictionary attacks.\",\"core\":true,\"versionStr\":\"1.0.3\"},\"177\":{\"summary\":\"Enables you to browse active database sessions.\",\"core\":true,\"versionStr\":\"0.0.5\",\"page\":{\"name\":\"sessions-db\",\"parent\":\"access\",\"title\":\"Sessions\"}},\"176\":{\"summary\":\"Installing this module makes ProcessWire store sessions in the database rather than the file system. Note that this module will log you out after install or uninstall.\",\"core\":true,\"versionStr\":\"0.0.6\"},\"103\":{\"summary\":\"Provides a jQuery plugin for sorting tables.\",\"href\":\"https:\\/\\/mottie.github.io\\/tablesorter\\/\",\"core\":true,\"versionStr\":\"2.31.3\"},\"117\":{\"summary\":\"jQuery UI as required by ProcessWire and plugins\",\"href\":\"https:\\/\\/ui.jquery.com\",\"core\":true,\"versionStr\":\"1.10.4\"},\"151\":{\"summary\":\"Provides lightbox capability for image galleries. Replacement for FancyBox. Uses Magnific Popup by @dimsemenov.\",\"href\":\"https:\\/\\/github.com\\/dimsemenov\\/Magnific-Popup\\/\",\"core\":true,\"versionStr\":\"1.1.0\"},\"116\":{\"summary\":\"jQuery Core as required by ProcessWire Admin and plugins\",\"href\":\"https:\\/\\/jquery.com\",\"core\":true,\"versionStr\":\"1.12.4\"},\"45\":{\"summary\":\"Provides a jQuery plugin for generating tabs in ProcessWire.\",\"core\":true,\"versionStr\":\"1.1.0\"},\"148\":{\"summary\":\"Minimal admin theme that supports all ProcessWire features.\",\"core\":true,\"versionStr\":\"0.1.4\"},\"166\":{\"summary\":\"Uikit v3 admin theme\",\"core\":true,\"versionStr\":\"0.3.3\"},\"178\":{\"summary\":\"Enter a full YouTube (or Vimeo) URL by itself in any paragraph (example: https:\\/\\/youtu.be\\/Wl4XiYadV_k) and this will automatically convert it to an embedded video. This formatter is intended to be run on trusted input. Recommended for use with CKEditor textarea fields.\",\"author\":\"Ryan Cramer\",\"href\":\"https:\\/\\/processwire.com\\/modules\\/textformatter-video-embed\\/\",\"versionStr\":\"2.0.2\"},\"179\":{\"summary\":\"Create or edit forms and manage submitted entries.\",\"versionStr\":\"0.2.2\"},\"180\":{\"summary\":\"Create or edit forms and manage submitted entries.\",\"versionStr\":\"0.2.2\"},\"181\":{\"summary\":\"Form Builder file upload \\\\ProcessWire\\\\input(alpha test)\",\"versionStr\":\"0.0.1\"}}', '2024-10-25 10:38:58');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES
(163, '.ModulesUninstalled.info', 8192, '{\"SystemNotifications\":{\"name\":\"SystemNotifications\",\"title\":\"System Notifications\",\"version\":12,\"versionStr\":\"0.1.2\",\"summary\":\"Adds support for notifications in ProcessWire (currently in development)\",\"icon\":\"bell\",\"installs\":[\"FieldtypeNotifications\"],\"autoload\":true,\"created\":1729852528,\"installed\":false,\"configurable\":\"SystemNotificationsConfig.php\",\"core\":true},\"FieldtypeNotifications\":{\"name\":\"FieldtypeNotifications\",\"title\":\"Notifications\",\"version\":4,\"versionStr\":\"0.0.4\",\"summary\":\"Field that stores user notifications.\",\"requiresVersions\":{\"SystemNotifications\":[\">=\",0]},\"created\":1729852528,\"installed\":false,\"core\":true},\"TextformatterNewlineBR\":{\"name\":\"TextformatterNewlineBR\",\"title\":\"Newlines to XHTML Line Breaks\",\"version\":100,\"versionStr\":\"1.0.0\",\"summary\":\"Converts newlines to XHTML line break <br \\/> tags. \",\"created\":1729852528,\"installed\":false,\"core\":true},\"TextformatterPstripper\":{\"name\":\"TextformatterPstripper\",\"title\":\"Paragraph Stripper\",\"version\":100,\"versionStr\":\"1.0.0\",\"summary\":\"Strips paragraph <p> tags that may have been applied by other text formatters before it. \",\"created\":1729852528,\"installed\":false,\"core\":true},\"TextformatterNewlineUL\":{\"name\":\"TextformatterNewlineUL\",\"title\":\"Newlines to Unordered List\",\"version\":100,\"versionStr\":\"1.0.0\",\"summary\":\"Converts newlines to <li> list items and surrounds in an <ul> unordered list. \",\"created\":1729852528,\"installed\":false,\"core\":true},\"TextformatterStripTags\":{\"name\":\"TextformatterStripTags\",\"title\":\"Strip Markup Tags\",\"version\":100,\"versionStr\":\"1.0.0\",\"summary\":\"Strips HTML\\/XHTML Markup Tags\",\"created\":1729852528,\"installed\":false,\"configurable\":3,\"core\":true},\"TextformatterSmartypants\":{\"name\":\"TextformatterSmartypants\",\"title\":\"SmartyPants Typographer\",\"version\":171,\"versionStr\":\"1.7.1\",\"summary\":\"Smart typography for web sites, by Michel Fortin based on SmartyPants by John Gruber. If combined with Markdown, it should be applied AFTER Markdown.\",\"created\":1729852528,\"installed\":false,\"configurable\":4,\"core\":true,\"url\":\"https:\\/\\/github.com\\/michelf\\/php-smartypants\"},\"TextformatterMarkdownExtra\":{\"name\":\"TextformatterMarkdownExtra\",\"title\":\"Markdown\\/Parsedown Extra\",\"version\":180,\"versionStr\":\"1.8.0\",\"summary\":\"Markdown\\/Parsedown extra lightweight markup language by Emanuil Rusev. Based on Markdown by John Gruber.\",\"created\":1729852528,\"installed\":false,\"configurable\":4,\"core\":true},\"PagePaths\":{\"name\":\"PagePaths\",\"title\":\"Page Paths\",\"version\":4,\"versionStr\":\"0.0.4\",\"summary\":\"Enables page paths\\/urls to be queryable by selectors. Also offers potential for improved load performance. Builds an index at install (may take time on a large site).\",\"autoload\":true,\"singular\":true,\"created\":1729852528,\"installed\":false,\"configurable\":4,\"core\":true},\"FileCompilerTags\":{\"name\":\"FileCompilerTags\",\"title\":\"Tags File Compiler\",\"version\":1,\"versionStr\":\"0.0.1\",\"summary\":\"Enables {var} or {var.property} variables in markup sections of a file. Can be used with any API variable.\",\"created\":1729852528,\"installed\":false,\"configurable\":4,\"core\":true},\"InputfieldPageAutocomplete\":{\"name\":\"InputfieldPageAutocomplete\",\"title\":\"Page Auto Complete\",\"version\":113,\"versionStr\":\"1.1.3\",\"summary\":\"Multiple Page selection using auto completion and sorting capability. Intended for use as an input field for Page reference fields.\",\"created\":1729852528,\"installed\":false,\"core\":true},\"InputfieldCKEditor\":{\"name\":\"InputfieldCKEditor\",\"title\":\"CKEditor\",\"version\":171,\"versionStr\":\"1.7.1\",\"summary\":\"CKEditor textarea rich text editor.\",\"installs\":[\"MarkupHTMLPurifier\"],\"created\":1729852528,\"installed\":false,\"core\":true},\"InputfieldTextTags\":{\"name\":\"InputfieldTextTags\",\"title\":\"Text Tags\",\"version\":6,\"versionStr\":\"0.0.6\",\"summary\":\"Enables input of user entered tags or selection of predefined tags.\",\"icon\":\"tags\",\"created\":1729852528,\"installed\":false,\"core\":true},\"InputfieldToggle\":{\"name\":\"InputfieldToggle\",\"title\":\"Toggle\",\"version\":1,\"versionStr\":\"0.0.1\",\"summary\":\"A toggle providing similar input capability to a checkbox but much more configurable.\",\"created\":1729852528,\"installed\":false,\"core\":true},\"InputfieldIcon\":{\"name\":\"InputfieldIcon\",\"title\":\"Icon\",\"version\":3,\"versionStr\":\"0.0.3\",\"summary\":\"Select an icon\",\"created\":1729852528,\"installed\":false,\"core\":true},\"InputfieldPageTable\":{\"name\":\"InputfieldPageTable\",\"title\":\"ProFields: Page Table\",\"version\":14,\"versionStr\":\"0.1.4\",\"summary\":\"Inputfield to accompany FieldtypePageTable\",\"requiresVersions\":{\"FieldtypePageTable\":[\">=\",0]},\"created\":1729852528,\"installed\":false,\"core\":true},\"LanguageSupport\":{\"name\":\"LanguageSupport\",\"title\":\"Languages Support\",\"version\":103,\"versionStr\":\"1.0.3\",\"author\":\"Ryan Cramer\",\"summary\":\"ProcessWire multi-language support.\",\"installs\":[\"ProcessLanguage\",\"ProcessLanguageTranslator\"],\"autoload\":true,\"singular\":true,\"created\":1729852528,\"installed\":false,\"configurable\":3,\"core\":true,\"addFlag\":32},\"FieldtypePageTitleLanguage\":{\"name\":\"FieldtypePageTitleLanguage\",\"title\":\"Page Title (Multi-Language)\",\"version\":100,\"versionStr\":\"1.0.0\",\"author\":\"Ryan Cramer\",\"summary\":\"Field that stores a page title in multiple languages. Use this only if you want title inputs created for ALL languages on ALL pages. Otherwise create separate languaged-named title fields, i.e. title_fr, title_es, title_fi, etc. \",\"requiresVersions\":{\"LanguageSupportFields\":[\">=\",0],\"FieldtypeTextLanguage\":[\">=\",0]},\"created\":1729852528,\"installed\":false,\"core\":true},\"LanguageSupportPageNames\":{\"name\":\"LanguageSupportPageNames\",\"title\":\"Languages Support - Page Names\",\"version\":13,\"versionStr\":\"0.1.3\",\"author\":\"Ryan Cramer\",\"summary\":\"Required to use multi-language page names.\",\"requiresVersions\":{\"LanguageSupport\":[\">=\",0],\"LanguageSupportFields\":[\">=\",0]},\"autoload\":true,\"singular\":true,\"created\":1729852528,\"installed\":false,\"configurable\":4,\"core\":true},\"FieldtypeTextLanguage\":{\"name\":\"FieldtypeTextLanguage\",\"title\":\"Text (Multi-language)\",\"version\":100,\"versionStr\":\"1.0.0\",\"summary\":\"Field that stores a single line of text in multiple languages\",\"requiresVersions\":{\"LanguageSupportFields\":[\">=\",0]},\"created\":1729852528,\"installed\":false,\"core\":true},\"ProcessLanguage\":{\"name\":\"ProcessLanguage\",\"title\":\"Languages\",\"version\":103,\"versionStr\":\"1.0.3\",\"author\":\"Ryan Cramer\",\"summary\":\"Manage system languages\",\"icon\":\"language\",\"requiresVersions\":{\"LanguageSupport\":[\">=\",0]},\"permission\":\"lang-edit\",\"permissions\":{\"lang-edit\":\"Administer languages and static translation files\"},\"created\":1729852528,\"installed\":false,\"configurable\":3,\"core\":true,\"useNavJSON\":true},\"LanguageTabs\":{\"name\":\"LanguageTabs\",\"title\":\"Languages Support - Tabs\",\"version\":117,\"versionStr\":\"1.1.7\",\"author\":\"adamspruijt, ryan, flipzoom\",\"summary\":\"Organizes multi-language fields into tabs for a cleaner easier to use interface.\",\"requiresVersions\":{\"LanguageSupport\":[\">=\",0]},\"autoload\":\"template=admin\",\"singular\":true,\"created\":1729852528,\"installed\":false,\"configurable\":4,\"core\":true},\"FieldtypeTextareaLanguage\":{\"name\":\"FieldtypeTextareaLanguage\",\"title\":\"Textarea (Multi-language)\",\"version\":100,\"versionStr\":\"1.0.0\",\"summary\":\"Field that stores a multiple lines of text in multiple languages\",\"requiresVersions\":{\"LanguageSupportFields\":[\">=\",0]},\"created\":1729852528,\"installed\":false,\"core\":true},\"ProcessLanguageTranslator\":{\"name\":\"ProcessLanguageTranslator\",\"title\":\"Language Translator\",\"version\":103,\"versionStr\":\"1.0.3\",\"author\":\"Ryan Cramer\",\"summary\":\"Provides language translation capabilities for ProcessWire core and modules.\",\"requiresVersions\":{\"LanguageSupport\":[\">=\",0]},\"permission\":\"lang-edit\",\"created\":1729852528,\"installed\":false,\"configurable\":4,\"core\":true},\"LanguageSupportFields\":{\"name\":\"LanguageSupportFields\",\"title\":\"Languages Support - Fields\",\"version\":101,\"versionStr\":\"1.0.1\",\"author\":\"Ryan Cramer\",\"summary\":\"Required to use multi-language fields.\",\"requiresVersions\":{\"LanguageSupport\":[\">=\",0]},\"installs\":[\"FieldtypePageTitleLanguage\",\"FieldtypeTextareaLanguage\",\"FieldtypeTextLanguage\"],\"autoload\":true,\"singular\":true,\"created\":1729852528,\"installed\":false,\"core\":true},\"ImageSizerEngineAnimatedGif\":{\"name\":\"ImageSizerEngineAnimatedGif\",\"title\":\"Animated GIF Image Sizer\",\"version\":1,\"versionStr\":\"0.0.1\",\"author\":\"Horst Nogajski\",\"summary\":\"Upgrades image manipulations for animated GIFs.\",\"created\":1729852528,\"installed\":false,\"configurable\":4,\"core\":true},\"ImageSizerEngineIMagick\":{\"name\":\"ImageSizerEngineIMagick\",\"title\":\"IMagick Image Sizer\",\"version\":3,\"versionStr\":\"0.0.3\",\"author\":\"Horst Nogajski\",\"summary\":\"Upgrades image manipulations to use PHP\'s ImageMagick library when possible.\",\"created\":1729852528,\"installed\":false,\"configurable\":4,\"core\":true},\"PageFrontEdit\":{\"name\":\"PageFrontEdit\",\"title\":\"Front-End Page Editor\",\"version\":6,\"versionStr\":\"0.0.6\",\"author\":\"Ryan Cramer\",\"summary\":\"Enables front-end editing of page fields.\",\"icon\":\"cube\",\"permissions\":{\"page-edit-front\":\"Use the front-end page editor\"},\"autoload\":true,\"created\":1729852528,\"installed\":false,\"configurable\":\"PageFrontEditConfig.php\",\"core\":true,\"license\":\"MPL 2.0\"},\"ProcessForgotPassword\":{\"name\":\"ProcessForgotPassword\",\"title\":\"Forgot Password\",\"version\":104,\"versionStr\":\"1.0.4\",\"summary\":\"Provides password reset\\/email capability for the Login process.\",\"permission\":\"page-view\",\"created\":1729852528,\"installed\":false,\"configurable\":4,\"core\":true},\"ProcessPagesExportImport\":{\"name\":\"ProcessPagesExportImport\",\"title\":\"Pages Export\\/Import\",\"version\":1,\"versionStr\":\"0.0.1\",\"author\":\"Ryan Cramer\",\"summary\":\"Enables exporting and importing of pages. Development version, not yet recommended for production use.\",\"icon\":\"paper-plane-o\",\"permission\":\"page-edit-export\",\"created\":1729852528,\"installed\":false,\"core\":true,\"page\":{\"name\":\"export-import\",\"parent\":\"page\",\"title\":\"Export\\/Import\"}},\"ProcessCommentsManager\":{\"name\":\"ProcessCommentsManager\",\"title\":\"Comments\",\"version\":12,\"versionStr\":\"0.1.2\",\"author\":\"Ryan Cramer\",\"summary\":\"Manage comments in your site outside of the page editor.\",\"icon\":\"comments\",\"requiresVersions\":{\"FieldtypeComments\":[\">=\",0]},\"permission\":\"comments-manager\",\"permissions\":{\"comments-manager\":\"Use the comments manager\"},\"created\":1729852528,\"installed\":false,\"searchable\":\"comments\",\"core\":true,\"page\":{\"name\":\"comments\",\"parent\":\"setup\",\"title\":\"Comments\"},\"nav\":[{\"url\":\"?go=approved\",\"label\":\"Approved\"},{\"url\":\"?go=pending\",\"label\":\"Pending\"},{\"url\":\"?go=spam\",\"label\":\"Spam\"},{\"url\":\"?go=all\",\"label\":\"All\"}]},\"ProcessRecentPages\":{\"name\":\"ProcessRecentPages\",\"title\":\"Recent Pages\",\"version\":2,\"versionStr\":\"0.0.2\",\"author\":\"Ryan Cramer\",\"summary\":\"Shows a list of recently edited pages in your admin.\",\"href\":\"http:\\/\\/modules.processwire.com\\/\",\"icon\":\"clock-o\",\"permission\":\"page-edit-recent\",\"permissions\":{\"page-edit-recent\":\"Can see recently edited pages\"},\"created\":1729852528,\"installed\":false,\"core\":true,\"page\":{\"name\":\"recent-pages\",\"parent\":\"page\",\"title\":\"Recent\"},\"useNavJSON\":true,\"nav\":[{\"url\":\"?edited=1\",\"label\":\"Edited\",\"icon\":\"users\",\"navJSON\":\"navJSON\\/?edited=1\"},{\"url\":\"?added=1\",\"label\":\"Created\",\"icon\":\"users\",\"navJSON\":\"navJSON\\/?added=1\"},{\"url\":\"?edited=1&me=1\",\"label\":\"Edited by me\",\"icon\":\"user\",\"navJSON\":\"navJSON\\/?edited=1&me=1\"},{\"url\":\"?added=1&me=1\",\"label\":\"Created by me\",\"icon\":\"user\",\"navJSON\":\"navJSON\\/?added=1&me=1\"},{\"url\":\"another\\/\",\"label\":\"Add another\",\"icon\":\"plus-circle\",\"navJSON\":\"anotherNavJSON\\/\"}]},\"ProcessLogger\":{\"name\":\"ProcessLogger\",\"title\":\"Logs\",\"version\":2,\"versionStr\":\"0.0.2\",\"author\":\"Ryan Cramer\",\"summary\":\"View and manage system logs.\",\"icon\":\"tree\",\"permission\":\"logs-view\",\"permissions\":{\"logs-view\":\"Can view system logs\",\"logs-edit\":\"Can manage system logs\"},\"created\":1729852528,\"installed\":false,\"core\":true,\"page\":{\"name\":\"logs\",\"parent\":\"setup\",\"title\":\"Logs\"},\"useNavJSON\":true},\"ProcessPageClone\":{\"name\":\"ProcessPageClone\",\"title\":\"Page Clone\",\"version\":104,\"versionStr\":\"1.0.4\",\"summary\":\"Provides ability to clone\\/copy\\/duplicate pages in the admin. Adds a &quot;copy&quot; option to all applicable pages in the PageList.\",\"permission\":\"page-clone\",\"permissions\":{\"page-clone\":\"Clone a page\",\"page-clone-tree\":\"Clone a tree of pages\"},\"autoload\":\"template=admin\",\"created\":1729852528,\"installed\":false,\"core\":true,\"page\":{\"name\":\"clone\",\"title\":\"Clone\",\"parent\":\"page\",\"status\":1024}},\"FieldtypeSelector\":{\"name\":\"FieldtypeSelector\",\"title\":\"Selector\",\"version\":13,\"versionStr\":\"0.1.3\",\"author\":\"Avoine + ProcessWire\",\"summary\":\"Build a page finding selector visually.\",\"created\":1729852528,\"installed\":false,\"core\":true},\"InputfieldRepeater\":{\"name\":\"InputfieldRepeater\",\"title\":\"Repeater\",\"version\":111,\"versionStr\":\"1.1.1\",\"summary\":\"Repeats fields from another template. Provides the input for FieldtypeRepeater.\",\"requiresVersions\":{\"FieldtypeRepeater\":[\">=\",0]},\"created\":1729852528,\"installed\":false,\"core\":true},\"FieldtypeRepeater\":{\"name\":\"FieldtypeRepeater\",\"title\":\"Repeater\",\"version\":112,\"versionStr\":\"1.1.2\",\"summary\":\"Maintains a collection of fields that are repeated for any number of times.\",\"installs\":[\"InputfieldRepeater\"],\"autoload\":true,\"created\":1729852528,\"installed\":false,\"configurable\":3,\"core\":true},\"FieldtypeFieldsetPage\":{\"name\":\"FieldtypeFieldsetPage\",\"title\":\"Fieldset (Page)\",\"version\":1,\"versionStr\":\"0.0.1\",\"summary\":\"Fieldset with fields isolated to separate namespace (page), enabling re-use of fields.\",\"requiresVersions\":{\"FieldtypeRepeater\":[\">=\",0]},\"autoload\":true,\"created\":1729852528,\"installed\":false,\"configurable\":3,\"core\":true},\"FieldtypeCache\":{\"name\":\"FieldtypeCache\",\"title\":\"Cache\",\"version\":102,\"versionStr\":\"1.0.2\",\"summary\":\"Caches the values of other fields for fewer runtime queries. Can also be used to combine multiple text fields and have them all be searchable under the cached field name.\",\"created\":1729852528,\"installed\":false,\"core\":true},\"FieldtypePageTable\":{\"name\":\"FieldtypePageTable\",\"title\":\"ProFields: Page Table\",\"version\":8,\"versionStr\":\"0.0.8\",\"summary\":\"A fieldtype containing a group of editable pages.\",\"installs\":[\"InputfieldPageTable\"],\"autoload\":true,\"created\":1729852528,\"installed\":false,\"core\":true},\"FieldtypeToggle\":{\"name\":\"FieldtypeToggle\",\"title\":\"Toggle (Yes\\/No)\",\"version\":1,\"versionStr\":\"0.0.1\",\"summary\":\"Configurable yes\\/no, on\\/off toggle alternative to a checkbox, plus optional \\u201cother\\u201d option.\",\"requiresVersions\":{\"InputfieldToggle\":[\">=\",0]},\"created\":1729852528,\"installed\":false,\"core\":true},\"FieldtypeOptions\":{\"name\":\"FieldtypeOptions\",\"title\":\"Select Options\",\"version\":2,\"versionStr\":\"0.0.2\",\"summary\":\"Field that stores single and multi select options.\",\"created\":1729852528,\"installed\":false,\"core\":true},\"FieldtypeDecimal\":{\"name\":\"FieldtypeDecimal\",\"title\":\"Decimal\",\"version\":1,\"versionStr\":\"0.0.1\",\"summary\":\"Field that stores a decimal number\",\"created\":1729852528,\"installed\":false,\"core\":true},\"CommentFilterAkismet\":{\"name\":\"CommentFilterAkismet\",\"title\":\"Comment Filter: Akismet\",\"version\":200,\"versionStr\":\"2.0.0\",\"summary\":\"Uses the Akismet service to identify comment spam. Module plugin for the Comments Fieldtype.\",\"requiresVersions\":{\"FieldtypeComments\":[\">=\",0]},\"created\":1729852528,\"installed\":false,\"configurable\":3,\"core\":true},\"InputfieldCommentsAdmin\":{\"name\":\"InputfieldCommentsAdmin\",\"title\":\"Comments Admin\",\"version\":104,\"versionStr\":\"1.0.4\",\"summary\":\"Provides an administrative interface for working with comments\",\"requiresVersions\":{\"FieldtypeComments\":[\">=\",0]},\"created\":1729852528,\"installed\":false,\"core\":true},\"FieldtypeComments\":{\"name\":\"FieldtypeComments\",\"title\":\"Comments\",\"version\":110,\"versionStr\":\"1.1.0\",\"summary\":\"Field that stores user posted comments for a single Page\",\"installs\":[\"InputfieldCommentsAdmin\"],\"created\":1729852528,\"installed\":false,\"core\":true},\"MarkupCache\":{\"name\":\"MarkupCache\",\"title\":\"Markup Cache\",\"version\":101,\"versionStr\":\"1.0.1\",\"summary\":\"A simple way to cache segments of markup in your templates. \",\"href\":\"https:\\/\\/processwire.com\\/api\\/modules\\/markupcache\\/\",\"autoload\":true,\"singular\":true,\"created\":1729852528,\"installed\":false,\"configurable\":3,\"core\":true},\"MarkupRSS\":{\"name\":\"MarkupRSS\",\"title\":\"Markup RSS Feed\",\"version\":105,\"versionStr\":\"1.0.5\",\"summary\":\"Renders an RSS feed. Given a PageArray, renders an RSS feed of them.\",\"icon\":\"rss-square\",\"created\":1729852528,\"installed\":false,\"configurable\":3,\"core\":true},\"MarkupPageFields\":{\"name\":\"MarkupPageFields\",\"title\":\"Markup Page Fields\",\"version\":100,\"versionStr\":\"1.0.0\",\"summary\":\"Adds $page->renderFields() and $page->images->render() methods that return basic markup for output during development and debugging.\",\"autoload\":true,\"singular\":true,\"created\":1729852528,\"installed\":false,\"core\":true,\"permanent\":true},\"ProcessSessionDB\":{\"name\":\"ProcessSessionDB\",\"title\":\"Sessions\",\"version\":5,\"versionStr\":\"0.0.5\",\"summary\":\"Enables you to browse active database sessions.\",\"icon\":\"dashboard\",\"requiresVersions\":{\"SessionHandlerDB\":[\">=\",0]},\"created\":1729852528,\"installed\":false,\"core\":true,\"page\":{\"name\":\"sessions-db\",\"parent\":\"access\",\"title\":\"Sessions\"}},\"SessionHandlerDB\":{\"name\":\"SessionHandlerDB\",\"title\":\"Session Handler Database\",\"version\":6,\"versionStr\":\"0.0.6\",\"summary\":\"Installing this module makes ProcessWire store sessions in the database rather than the file system. Note that this module will log you out after install or uninstall.\",\"installs\":[\"ProcessSessionDB\"],\"created\":1729852528,\"installed\":false,\"configurable\":3,\"core\":true},\"PagePathHistory\":{\"name\":\"PagePathHistory\",\"title\":\"Page Path History\",\"version\":8,\"versionStr\":\"0.0.8\",\"summary\":\"Keeps track of past URLs where pages have lived and automatically redirects (301 permanent) to the new location whenever the past URL is accessed.\",\"autoload\":true,\"singular\":true,\"created\":1729852528,\"installed\":false,\"configurable\":4,\"core\":true},\"LazyCron\":{\"name\":\"LazyCron\",\"title\":\"Lazy Cron\",\"version\":103,\"versionStr\":\"1.0.3\",\"summary\":\"Provides hooks that are automatically executed at various intervals. It is called \'lazy\' because it\'s triggered by a pageview, so the interval is guaranteed to be at least the time requested, rather than exactly the time requested. This is fine for most cases, but you can make it not lazy by connecting this to a real CRON job. See the module file for details. \",\"href\":\"https:\\/\\/processwire.com\\/api\\/modules\\/lazy-cron\\/\",\"autoload\":true,\"singular\":true,\"created\":1729852528,\"installed\":false,\"core\":true},\"AdminThemeReno\":{\"name\":\"AdminThemeReno\",\"title\":\"Reno\",\"version\":17,\"versionStr\":\"0.1.7\",\"author\":\"Tom Reno (Renobird)\",\"summary\":\"Admin theme for ProcessWire 2.5+ by Tom Reno (Renobird)\",\"requiresVersions\":{\"AdminThemeDefault\":[\">=\",0]},\"autoload\":\"template=admin\",\"created\":1729852528,\"installed\":false,\"configurable\":3,\"core\":true},\"AdminThemeUikit\":{\"name\":\"AdminThemeUikit\",\"title\":\"Uikit\",\"version\":33,\"versionStr\":\"0.3.3\",\"summary\":\"Uikit v3 admin theme\",\"autoload\":\"template=admin\",\"created\":1729852528,\"installed\":false,\"configurable\":4,\"core\":true}}', '2024-10-25 10:38:58'),
(164, '.ModulesVersions.info', 8192, '[]', '2024-10-25 10:38:58'),
(165, 'ProcessRecentPages', 1, '', '2024-10-25 10:38:58'),
(166, 'AdminThemeUikit', 10, '', '2024-10-25 10:38:58'),
(167, 'ProcessLogger', 1, '', '2024-10-25 10:39:01'),
(168, 'InputfieldIcon', 0, '', '2024-10-25 10:39:01'),
(169, 'InputfieldTextTags', 0, '', '2024-10-26 08:37:46'),
(170, 'InputfieldPageAutocomplete', 0, '', '2024-10-26 08:38:47'),
(171, 'TextformatterMarkdownExtra', 1, '', '2024-10-26 08:41:46'),
(172, 'InputfieldToggle', 0, '', '2024-10-26 13:58:50'),
(173, 'LanguageSupport', 35, '{\"languagesPageID\":1056,\"defaultLanguagePageID\":1057,\"otherLanguagePageIDs\":[],\"languageTranslatorPageID\":1058}', '2024-10-30 10:45:16'),
(174, 'ProcessLanguage', 1, '', '2024-10-30 10:45:16'),
(175, 'ProcessLanguageTranslator', 1, '', '2024-10-30 10:45:16'),
(176, 'SessionHandlerDB', 3, '', '2024-10-30 10:45:41'),
(177, 'ProcessSessionDB', 1, '', '2024-10-30 10:45:41'),
(178, 'TextformatterVideoEmbed', 1, '{\"maxSize\":\"720p\",\"aspectRatio\":\"0\",\"noCookies\":1,\"failAction\":\"0\",\"wrapStyles\":\"\",\"frameStyles\":\"width:100%;height:355px;\",\"refreshDays\":1,\"lastMaint\":1730749237}', '2024-11-01 12:55:02'),
(179, 'FormBuilder', 3, '{\"licenseKey\":\"samiulfaysal\",\"inputfieldClasses\":[\"AsmSelect\",\"Checkbox\",\"Checkboxes\",\"Datetime\",\"Email\",\"Fieldset\",\"Float\",\"FormBuilderFile\",\"Integer\",\"Hidden\",\"Page\",\"Radios\",\"Select\",\"SelectMultiple\",\"Text\",\"Textarea\",\"URL\"],\"embedFields\":[],\"embedTag\":\"form-builder\",\"markup_list\":\"<div {attrs}>{out}\\n<\\/div>\",\"markup_item\":\"<div {attrs}>{out}\\n<\\/div>\",\"markup_item_label\":\"<label class=\'ui-widget-header\' for=\'{for}\'>{out}<\\/label>\",\"markup_item_content\":\"<div class=\'ui-widget-content\'>{out}<\\/div>\",\"markup_item_error\":\"<p><span class=\'ui-state-error\'>{out}<\\/span><\\/p>\",\"markup_item_description\":\"<p class=\'description\'>{out}<\\/p>\",\"markup_success\":\"<p class=\'ui-state-highlight\'>{out}<\\/p>\",\"markup_error\":\"<p class=\'ui-state-error\'>{out}<\\/p>\",\"classes_list\":\"Inputfields\",\"classes_list_clearfix\":\"ui-helper-clearfix\",\"classes_item\":\"Inputfield Inputfield_{name} ui-widget {class}\",\"classes_item_required\":\"InputfieldStateRequired\",\"classes_item_error\":\"InputfieldStateError ui-state-error\",\"classes_item_collapsed\":\"InputfieldStateCollapsed\",\"classes_item_column_width\":\"InputfieldColumnWidth\",\"classes_item_column_width_first\":\"InputfieldColumnWidthFirst\",\"akismetKey\":\"\",\"csvDelimiter\":\",\",\"filesPath\":\"{config.paths.cache}form-builder\\/\",\"useRoles\":\"\"}', '2024-11-03 10:10:40'),
(180, 'ProcessFormBuilder', 1, '', '2024-11-03 10:10:41'),
(181, 'InputfieldFormBuilderFile', 0, '', '2024-11-03 10:10:41');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `templates_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(128) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `status` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_users_id` int(10) UNSIGNED NOT NULL DEFAULT 2,
  `created` timestamp NOT NULL DEFAULT '2015-12-18 06:09:00',
  `created_users_id` int(10) UNSIGNED NOT NULL DEFAULT 2,
  `published` datetime DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`) VALUES
(1, 0, 1, 'home', 9, '2024-11-02 17:23:29', 41, '2024-10-25 10:38:33', 41, '2024-10-25 10:38:33', 0),
(2, 1, 2, 'processwire', 1035, '2024-10-25 10:38:58', 40, '2024-10-25 10:38:33', 41, '2024-10-25 10:38:33', 15),
(3, 2, 2, 'page', 21, '2024-10-25 10:38:33', 41, '2024-10-25 10:38:33', 41, '2024-10-25 10:38:33', 0),
(6, 3, 2, 'add', 21, '2024-10-25 10:39:06', 40, '2024-10-25 10:38:33', 41, '2024-10-25 10:38:33', 1),
(7, 1, 2, 'trash', 1039, '2024-10-25 10:38:33', 41, '2024-10-25 10:38:33', 41, '2024-10-25 10:38:33', 16),
(8, 3, 2, 'list', 21, '2024-10-25 10:39:08', 41, '2024-10-25 10:38:33', 41, '2024-10-25 10:38:33', 0),
(9, 3, 2, 'sort', 1047, '2024-10-25 10:38:33', 41, '2024-10-25 10:38:33', 41, '2024-10-25 10:38:33', 3),
(10, 3, 2, 'edit', 1045, '2024-10-25 10:39:07', 41, '2024-10-25 10:38:33', 41, '2024-10-25 10:38:33', 4),
(11, 22, 2, 'template', 21, '2024-10-25 10:38:33', 41, '2024-10-25 10:38:33', 41, '2024-10-25 10:38:33', 0),
(16, 22, 2, 'field', 21, '2024-10-25 10:38:33', 41, '2024-10-25 10:38:33', 41, '2024-10-25 10:38:33', 2),
(21, 2, 2, 'module', 21, '2024-10-25 10:38:33', 41, '2024-10-25 10:38:33', 41, '2024-10-25 10:38:33', 2),
(22, 2, 2, 'setup', 21, '2024-10-25 10:38:33', 41, '2024-10-25 10:38:33', 41, '2024-10-25 10:38:33', 1),
(23, 2, 2, 'login', 1035, '2024-10-25 10:38:33', 41, '2024-10-25 10:38:33', 41, '2024-10-25 10:38:33', 4),
(27, 1, 49, 'http404', 1035, '2024-11-02 04:25:56', 41, '2024-10-25 10:38:33', 3, '2024-10-25 10:38:33', 14),
(28, 2, 2, 'access', 13, '2024-10-25 10:38:33', 41, '2024-10-25 10:38:33', 41, '2024-10-25 10:38:33', 3),
(29, 28, 2, 'users', 29, '2024-10-25 10:38:33', 41, '2024-10-25 10:38:33', 41, '2024-10-25 10:38:33', 0),
(30, 28, 2, 'roles', 29, '2024-10-25 10:38:33', 41, '2024-10-25 10:38:33', 41, '2024-10-25 10:38:33', 1),
(31, 28, 2, 'permissions', 29, '2024-10-25 10:38:33', 41, '2024-10-25 10:38:33', 41, '2024-10-25 10:38:33', 2),
(32, 31, 5, 'page-edit', 25, '2024-10-25 10:38:33', 41, '2024-10-25 10:38:33', 41, '2024-10-25 10:38:33', 2),
(34, 31, 5, 'page-delete', 25, '2024-10-25 10:38:33', 41, '2024-10-25 10:38:33', 41, '2024-10-25 10:38:33', 3),
(35, 31, 5, 'page-move', 25, '2024-10-25 10:38:33', 41, '2024-10-25 10:38:33', 41, '2024-10-25 10:38:33', 4),
(36, 31, 5, 'page-view', 25, '2024-10-25 10:38:33', 41, '2024-10-25 10:38:33', 41, '2024-10-25 10:38:33', 0),
(37, 30, 4, 'guest', 25, '2024-10-25 10:38:33', 41, '2024-10-25 10:38:33', 41, '2024-10-25 10:38:33', 0),
(38, 30, 4, 'superuser', 25, '2024-10-25 10:38:33', 41, '2024-10-25 10:38:33', 41, '2024-10-25 10:38:33', 1),
(41, 29, 3, 'admin', 1, '2024-10-30 10:45:16', 41, '2024-10-25 10:38:33', 41, '2024-10-25 10:38:33', 0),
(40, 29, 3, 'guest', 25, '2024-10-30 10:45:16', 41, '2024-10-25 10:38:33', 41, '2024-10-25 10:38:33', 1),
(50, 31, 5, 'page-sort', 25, '2024-10-25 10:38:33', 41, '2024-10-25 10:38:33', 41, '2024-10-25 10:38:33', 5),
(51, 31, 5, 'page-template', 25, '2024-10-25 10:38:33', 41, '2024-10-25 10:38:33', 41, '2024-10-25 10:38:33', 6),
(52, 31, 5, 'user-admin', 25, '2024-10-25 10:38:33', 41, '2024-10-25 10:38:33', 41, '2024-10-25 10:38:33', 10),
(53, 31, 5, 'profile-edit', 1, '2024-10-25 10:38:33', 41, '2024-10-25 10:38:33', 41, '2024-10-25 10:38:33', 13),
(54, 31, 5, 'page-lock', 1, '2024-10-25 10:38:33', 41, '2024-10-25 10:38:33', 41, '2024-10-25 10:38:33', 8),
(300, 3, 2, 'search', 1045, '2024-10-25 10:38:33', 41, '2024-10-25 10:38:33', 41, '2024-10-25 10:38:33', 6),
(301, 3, 2, 'trash', 1047, '2024-10-25 10:38:33', 41, '2024-10-25 10:38:33', 41, '2024-10-25 10:38:33', 6),
(302, 3, 2, 'link', 1041, '2024-10-25 10:38:33', 41, '2024-10-25 10:38:33', 41, '2024-10-25 10:38:33', 7),
(303, 3, 2, 'image', 1041, '2024-10-25 10:38:33', 41, '2024-10-25 10:38:33', 41, '2024-10-25 10:38:33', 8),
(304, 2, 2, 'profile', 1025, '2024-10-25 10:38:33', 41, '2024-10-25 10:38:33', 41, '2024-10-25 10:38:33', 5),
(1006, 31, 5, 'page-lister', 1, '2024-10-25 10:38:33', 40, '2024-10-25 10:38:33', 40, '2024-10-25 10:38:33', 9),
(1007, 3, 2, 'lister', 1, '2024-10-25 10:38:33', 40, '2024-10-25 10:38:33', 40, '2024-10-25 10:38:33', 9),
(1010, 3, 2, 'recent-pages', 1, '2024-10-25 10:38:58', 40, '2024-10-25 10:38:58', 40, '2024-10-25 10:38:58', 10),
(1011, 31, 5, 'page-edit-recent', 1, '2024-10-25 10:38:58', 40, '2024-10-25 10:38:58', 40, '2024-10-25 10:38:58', 10),
(1012, 22, 2, 'logs', 1, '2024-10-25 10:39:01', 40, '2024-10-25 10:39:01', 40, '2024-10-25 10:39:01', 2),
(1013, 31, 5, 'logs-view', 1, '2024-10-25 10:39:01', 40, '2024-10-25 10:39:01', 40, '2024-10-25 10:39:01', 11),
(1014, 31, 5, 'logs-edit', 1, '2024-10-25 10:39:01', 40, '2024-10-25 10:39:01', 40, '2024-10-25 10:39:01', 12),
(1015, 1, 43, 'business-plan', 1, '2024-10-27 05:46:10', 41, '2024-10-26 08:44:21', 41, '2024-10-26 08:48:33', 3),
(1016, 1015, 43, 'ondernemingsplan-opstellen', 1, '2024-10-26 15:40:18', 41, '2024-10-26 15:39:11', 41, '2024-10-26 15:40:18', 0),
(1017, 1, 43, 'bedrijf-starten', 1, '2024-10-27 05:43:19', 41, '2024-10-27 05:41:04', 41, '2024-10-27 05:43:19', 4),
(1018, 1, 43, 'coaching', 1, '2024-10-27 06:20:11', 41, '2024-10-27 06:06:17', 41, '2024-10-27 06:09:39', 5),
(1019, 1, 43, 'aanpak', 1, '2024-10-27 06:32:22', 41, '2024-10-27 06:28:53', 41, '2024-10-27 06:31:42', 6),
(1020, 1, 43, 'tarieven', 1, '2024-10-27 06:37:16', 41, '2024-10-27 06:33:40', 41, '2024-10-27 06:37:13', 7),
(1021, 1, 43, 'tips', 1, '2024-10-27 06:37:06', 41, '2024-10-27 06:34:10', 41, '2024-10-27 06:36:58', 8),
(1022, 1, 43, 'hooggevoelig', 1, '2024-10-27 06:37:43', 41, '2024-10-27 06:34:28', 41, '2024-10-27 06:37:40', 9),
(1023, 1, 48, 'reviews', 1, '2024-11-01 15:23:44', 41, '2024-10-27 06:34:47', 41, '2024-10-27 06:38:47', 10),
(1024, 1015, 43, 'het-financiele-deel-van-het-o.p-opstellen', 1, '2024-10-27 08:49:31', 41, '2024-10-27 08:46:30', 41, '2024-10-27 08:47:33', 1),
(1025, 1015, 43, 'laat-je-ondernemingsplan-checken', 1, '2024-10-27 08:51:57', 41, '2024-10-27 08:49:40', 41, '2024-10-27 08:51:53', 2),
(1026, 1017, 43, 'bedrijf-starten-met-uwv-uitkering', 1, '2024-10-27 08:56:21', 41, '2024-10-27 08:52:29', 41, '2024-10-27 08:56:11', 0),
(1027, 1017, 43, 'bedrijf-starten-met-een-ww-uitkering', 1, '2024-10-27 16:09:27', 41, '2024-10-27 16:05:55', 41, '2024-10-27 16:09:21', 1),
(1028, 1017, 43, 'bedrijf-starten-met-wia-uitkering', 1, '2024-10-27 16:11:06', 41, '2024-10-27 16:10:48', 41, '2024-10-27 16:11:06', 2),
(1029, 1017, 43, 'bedrijf-starten-met-een-wajong-uitkering', 1, '2024-10-27 16:11:48', 41, '2024-10-27 16:11:22', 41, '2024-10-27 16:11:48', 3),
(1030, 1017, 43, 'bedrijf-starten-met-een-wao-uitkering', 1, '2024-10-27 16:12:31', 41, '2024-10-27 16:12:06', 41, '2024-10-27 16:12:31', 4),
(1031, 1017, 43, 'bedrijf-starten-met-een-zw-uitkering', 1, '2024-10-27 16:13:14', 41, '2024-10-27 16:12:46', 41, '2024-10-27 16:13:14', 5),
(1032, 1017, 43, 'van-loondienst-naar-ondernemerschap', 1, '2024-10-27 16:17:13', 41, '2024-10-27 16:13:30', 41, '2024-10-27 16:13:58', 6),
(1033, 1017, 43, 'bedrijf-starten-via-outplacement', 1, '2024-10-27 16:14:39', 41, '2024-10-27 16:14:17', 41, '2024-10-27 16:14:39', 7),
(1034, 1018, 43, 'coaching-voor-ondernemers', 1, '2024-10-27 16:19:42', 41, '2024-10-27 16:19:25', 41, '2024-10-27 16:19:42', 0),
(1035, 1018, 43, 'coaching-voor-startende-ondernemers', 1, '2024-10-27 16:20:57', 41, '2024-10-27 16:20:07', 41, '2024-10-27 16:20:57', 1),
(1036, 1019, 43, 'aanpak-starten-vanuit-uitkering-uwv', 1, '2024-10-27 16:32:10', 41, '2024-10-27 16:31:48', 41, '2024-10-27 16:32:10', 0),
(1037, 1019, 43, 'aanpak-financieel-deel-ondernemingsplan', 1, '2024-10-27 16:32:37', 41, '2024-10-27 16:32:19', 41, '2024-10-27 16:32:37', 1),
(1038, 1021, 43, 'stop-gebruik-van-je-gegevens-bij-de-kvk', 1, '2024-10-27 16:34:41', 41, '2024-10-27 16:34:12', 41, '2024-10-27 16:34:41', 0),
(1039, 1021, 43, 'belastingtips-voor-zzp-ers', 1, '2024-10-27 16:35:40', 41, '2024-10-27 16:35:10', 41, '2024-10-27 16:35:40', 1),
(1040, 1021, 43, 'zelf-juridisch-documenten-samenstellen', 1, '2024-10-27 16:36:20', 41, '2024-10-27 16:36:10', 41, '2024-10-27 16:36:20', 2),
(1041, 1021, 43, 'maak-je-eigen-logo', 1, '2024-10-27 16:37:01', 41, '2024-10-27 16:36:50', 41, '2024-10-27 16:37:01', 3),
(1042, 1021, 43, 'crowdfunding', 1, '2024-10-27 16:37:20', 41, '2024-10-27 16:37:12', 41, '2024-10-27 16:37:20', 4),
(1043, 1021, 43, 'formulieren-rekentools-belastingdienst', 1, '2024-10-27 16:37:41', 41, '2024-10-27 16:37:29', 41, '2024-10-27 16:37:41', 5),
(1044, 1021, 43, 'doehetzelf-website-voor-fotografen', 1, '2024-10-27 16:38:04', 41, '2024-10-27 16:37:55', 41, '2024-10-27 16:38:04', 6),
(1045, 1021, 43, 'gratis-online-facturen-maken', 1, '2024-10-27 16:38:30', 41, '2024-10-27 16:38:17', 41, '2024-10-27 16:38:30', 7),
(1046, 1021, 43, 'handige-uwv-paginas-eigen-bedrijf', 1, '2024-10-27 16:38:50', 41, '2024-10-27 16:38:40', 41, '2024-10-27 16:38:50', 8),
(1047, 1021, 43, 'gratis-stockfotos', 1, '2024-10-27 16:39:11', 41, '2024-10-27 16:39:05', 41, '2024-10-27 16:39:11', 9),
(1048, 1021, 43, 'geld-verdienen-met-fotos', 1, '2024-10-27 16:39:32', 41, '2024-10-27 16:39:23', 41, '2024-10-27 16:39:32', 10),
(1049, 1021, 43, 'marktonderzoek-met-de-locatiescan-van-de-kvk', 1, '2024-10-27 16:40:54', 41, '2024-10-27 16:39:44', 41, '2024-10-27 16:40:54', 11),
(1050, 1, 44, 'prive-inhoud', 1, '2024-11-01 08:54:20', 41, '2024-10-30 08:35:32', 41, '2024-10-30 08:35:32', 11),
(1062, 1050, 47, 'pdf-book-three', 1, '2024-11-01 08:54:14', 41, '2024-11-01 08:46:27', 41, '2024-11-01 08:49:00', 3),
(1061, 1050, 47, 'pdf-book-two', 1, '2024-11-01 08:54:20', 41, '2024-11-01 06:12:31', 41, '2024-11-01 06:13:20', 2),
(1053, 1, 45, 'inloggen-registreren', 1057, '2024-11-01 07:46:25', 41, '2024-10-30 09:15:55', 41, '2024-10-30 09:15:55', 13),
(1060, 1050, 47, 'pdf-book-one', 1, '2024-11-01 08:53:45', 41, '2024-11-01 05:53:48', 41, '2024-11-01 05:53:48', 1),
(1055, 31, 5, 'lang-edit', 1, '2024-10-30 10:45:16', 41, '2024-10-30 10:45:16', 41, '2024-10-30 10:45:16', 13),
(1056, 22, 2, 'languages', 16, '2024-10-30 10:45:16', 41, '2024-10-30 10:45:16', 41, '2024-10-30 10:45:16', 3),
(1057, 1056, 46, 'default', 16, '2024-10-30 10:45:16', 41, '2024-10-30 10:45:16', 41, '2024-10-30 10:45:16', 0),
(1058, 22, 2, 'language-translator', 1040, '2024-10-30 10:45:16', 41, '2024-10-30 10:45:16', 41, '2024-10-30 10:45:16', 4),
(1059, 28, 2, 'sessions-db', 1, '2024-10-30 10:45:41', 41, '2024-10-30 10:45:41', 41, '2024-10-30 10:45:41', 3),
(1063, 1022, 43, 'uwv-haalbaarheids-check', 1, '2024-11-01 10:51:48', 41, '2024-11-01 10:02:55', 41, '2024-11-01 10:03:48', 0),
(1064, 1063, 43, 'vragenlijst-bij-uwv-haalbaarheids-check', 1, '2024-11-01 10:53:16', 41, '2024-11-01 10:53:02', 41, '2024-11-01 10:53:16', 0),
(1065, 1023, 43, 'coachingspraktijk', 1, '2024-11-01 11:46:43', 41, '2024-11-01 11:45:58', 41, '2024-11-01 11:46:43', 0),
(1066, 1023, 43, 'overname-fotostudio', 1, '2024-11-01 13:04:33', 41, '2024-11-01 11:47:09', 41, '2024-11-01 11:48:14', 1),
(1067, 1023, 43, 'vrachtwagenchauffeuse', 1, '2024-11-01 13:23:18', 41, '2024-11-01 11:55:11', 41, '2024-11-01 11:56:16', 2),
(1068, 1023, 43, 'computerreparateur', 1, '2024-11-01 13:23:59', 41, '2024-11-01 11:57:52', 41, '2024-11-01 11:58:16', 3),
(1069, 1023, 43, 'huiswerkbegeleiding', 1, '2024-11-01 13:24:46', 41, '2024-11-01 12:00:55', 41, '2024-11-01 12:01:23', 4),
(1070, 1023, 43, 'dietiste', 1, '2024-11-01 13:25:28', 41, '2024-11-01 12:02:28', 41, '2024-11-01 12:03:13', 5),
(1071, 1023, 43, 'tennisleraar', 1, '2024-11-01 12:08:16', 41, '2024-11-01 12:05:53', 41, '2024-11-01 12:08:08', 6),
(1072, 1023, 43, 'ecologische-tuinderij', 1, '2024-11-01 12:09:14', 41, '2024-11-01 12:08:45', 41, '2024-11-01 12:09:09', 7),
(1073, 1023, 43, 'ademcoach', 1, '2024-11-01 12:10:17', 41, '2024-11-01 12:09:43', 41, '2024-11-01 12:10:13', 8),
(1074, 1023, 43, 'oprichter-waterpark', 1, '2024-11-01 12:11:36', 41, '2024-11-01 12:10:47', 41, '2024-11-01 12:11:31', 9),
(1075, 1, 50, 'form-builder', 1025, '2024-11-03 10:10:41', 41, '2024-11-03 10:10:41', 41, '2024-11-03 10:10:41', 13),
(1076, 31, 5, 'form-builder', 1, '2024-11-03 10:10:41', 41, '2024-11-03 10:10:41', 41, '2024-11-03 10:10:41', 14),
(1077, 31, 5, 'form-builder-add', 1, '2024-11-03 10:10:41', 41, '2024-11-03 10:10:41', 41, '2024-11-03 10:10:41', 15),
(1078, 22, 2, 'form-builder', 1, '2024-11-03 10:10:41', 41, '2024-11-03 10:10:41', 41, '2024-11-03 10:10:41', 5);

-- --------------------------------------------------------

--
-- Table structure for table `pages_access`
--

CREATE TABLE `pages_access` (
  `pages_id` int(11) NOT NULL,
  `templates_id` int(11) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `pages_access`
--

INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES
(37, 2, '2024-10-25 10:38:33'),
(38, 2, '2024-10-25 10:38:33'),
(32, 2, '2024-10-25 10:38:33'),
(34, 2, '2024-10-25 10:38:33'),
(35, 2, '2024-10-25 10:38:33'),
(36, 2, '2024-10-25 10:38:33'),
(50, 2, '2024-10-25 10:38:33'),
(51, 2, '2024-10-25 10:38:33'),
(52, 2, '2024-10-25 10:38:33'),
(53, 2, '2024-10-25 10:38:33'),
(54, 2, '2024-10-25 10:38:33'),
(1006, 2, '2024-10-25 10:38:33'),
(1011, 2, '2024-10-25 10:38:58'),
(1013, 2, '2024-10-25 10:39:01'),
(1014, 2, '2024-10-25 10:39:01'),
(1015, 1, '2024-10-26 08:44:21'),
(1016, 1, '2024-10-26 15:39:11'),
(1017, 1, '2024-10-27 05:41:04'),
(1018, 1, '2024-10-27 06:06:17'),
(1019, 1, '2024-10-27 06:28:53'),
(1020, 1, '2024-10-27 06:33:40'),
(1021, 1, '2024-10-27 06:34:10'),
(1022, 1, '2024-10-27 06:34:28'),
(1023, 1, '2024-10-27 06:34:47'),
(1024, 1, '2024-10-27 08:46:30'),
(1025, 1, '2024-10-27 08:49:40'),
(1026, 1, '2024-10-27 08:52:29'),
(1027, 1, '2024-10-27 16:05:55'),
(1028, 1, '2024-10-27 16:10:48'),
(1029, 1, '2024-10-27 16:11:22'),
(1030, 1, '2024-10-27 16:12:06'),
(1031, 1, '2024-10-27 16:12:46'),
(1032, 1, '2024-10-27 16:13:30'),
(1033, 1, '2024-10-27 16:14:17'),
(1034, 1, '2024-10-27 16:19:25'),
(1035, 1, '2024-10-27 16:20:07'),
(1036, 1, '2024-10-27 16:31:48'),
(1037, 1, '2024-10-27 16:32:19'),
(1038, 1, '2024-10-27 16:34:12'),
(1039, 1, '2024-10-27 16:35:10'),
(1040, 1, '2024-10-27 16:36:10'),
(1041, 1, '2024-10-27 16:36:50'),
(1042, 1, '2024-10-27 16:37:12'),
(1043, 1, '2024-10-27 16:37:29'),
(1044, 1, '2024-10-27 16:37:55'),
(1045, 1, '2024-10-27 16:38:17'),
(1046, 1, '2024-10-27 16:38:40'),
(1047, 1, '2024-10-27 16:39:05'),
(1048, 1, '2024-10-27 16:39:23'),
(1049, 1, '2024-10-27 16:39:44'),
(1050, 1, '2024-10-30 08:35:32'),
(1062, 1, '2024-11-01 08:46:27'),
(1061, 1, '2024-11-01 06:12:31'),
(1053, 1, '2024-10-30 09:15:55'),
(1060, 1, '2024-11-01 05:53:48'),
(1055, 2, '2024-10-30 10:45:16'),
(1057, 2, '2024-10-30 10:45:16'),
(1063, 1, '2024-11-01 10:02:55'),
(1064, 1, '2024-11-01 10:53:02'),
(1077, 2, '2024-11-03 10:10:41'),
(1076, 2, '2024-11-03 10:10:41'),
(1075, 1, '2024-11-03 10:10:41'),
(27, 1, '2024-11-02 04:25:56');

-- --------------------------------------------------------

--
-- Table structure for table `pages_parents`
--

CREATE TABLE `pages_parents` (
  `pages_id` int(10) UNSIGNED NOT NULL,
  `parents_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `pages_parents`
--

INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES
(2, 1),
(3, 1),
(3, 2),
(7, 1),
(22, 1),
(22, 2),
(28, 1),
(28, 2),
(29, 1),
(29, 2),
(29, 28),
(30, 1),
(30, 2),
(30, 28),
(31, 1),
(31, 2),
(31, 28),
(1053, 1),
(1056, 2),
(1056, 22),
(1062, 1050),
(1063, 1022);

-- --------------------------------------------------------

--
-- Table structure for table `pages_sortfields`
--

CREATE TABLE `pages_sortfields` (
  `pages_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sortfield` varchar(20) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` char(32) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `pages_id` int(10) UNSIGNED NOT NULL,
  `data` mediumtext NOT NULL,
  `ts` timestamp NOT NULL DEFAULT current_timestamp(),
  `ip` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ua` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `pages_id`, `data`, `ts`, `ip`, `ua`) VALUES
('6ls7cl4i1ict1mmtktbub2845s', 40, 1, 'Session|a:1:{s:16:\"SessionHandlerDB\";a:1:{s:2:\"ts\";i:1730794465;}}', '2024-11-05 08:14:25', 0, ''),
('7t39beteilfat0723b938snfo3', 41, 21, 'Session|a:16:{s:16:\"SessionHandlerDB\";a:1:{s:2:\"ts\";i:1730777556;}s:12:\"ProcessLogin\";a:0:{}s:5:\"_user\";a:4:{s:2:\"id\";i:41;s:2:\"ts\";i:1730777556;s:9:\"challenge\";s:32:\"8JnmJdl87dVj63SmBJr9On0Zz2zZnPwE\";s:11:\"fingerprint\";s:32:\"5d2b9494403bf95fcb2a80942fb837f5\";}s:5:\"hidpi\";b:0;s:5:\"touch\";b:0;s:11:\"clientWidth\";i:1920;s:11:\"SessionCSRF\";a:2:{s:4:\"name\";s:25:\"TOKEN439543525X1730515182\";s:25:\"TOKEN439543525X1730515182\";s:32:\"qrNopJ4QweKXElA6HtjOzPE7JAhKc7cN\";}s:15:\"AdminThemeUikit\";a:2:{s:5:\"prnav\";s:6328:\"<li class=\'page-3-\'><a href=\'/processwire/page/\' id=\'prnav-page-3\' data-from=\'prnav-page-2\' class=\'pw-dropdown-toggle\'>Pages</a><ul class=\'pw-dropdown-menu prnav\' data-my=\'left top\' data-at=\'left bottom\'><li class=\'page-8-\'><a class=\'pw-has-items pw-has-ajax-items\' data-from=\'prnav-page-3\' data-json=\'/processwire/page/list/navJSON/\' href=\'/processwire/page/list/\'><i class=\'fa fa-sitemap pw-nav-icon fa-fw\'></i>Tree</a><ul></ul><li class=\'page-6-\'><a class=\'pw-has-items pw-has-ajax-items\' data-from=\'prnav-page-3\' data-json=\'/processwire/page/add/navJSON/\' href=\'/processwire/page/add/\'><i class=\'fa fa-plus-circle pw-nav-icon fa-fw\'></i>Add New</a><ul></ul><li class=\'page-1007-\'><a class=\'pw-has-items pw-has-ajax-items\' data-from=\'prnav-page-3\' data-json=\'/processwire/page/lister/navJSON/\' href=\'/processwire/page/lister/\'><i class=\'fa fa-search pw-nav-icon fa-fw\'></i>Find</a><ul></ul><li class=\'page-1010-\'><a class=\'pw-has-items\' data-from=\'prnav-page-3\' href=\'/processwire/page/recent-pages/\'><i class=\'fa fa-clock-o pw-nav-icon fa-fw\'></i>Recent</a><ul><li class=\'page-0-\'><a class=\'pw-has-items pw-has-ajax-items\' data-from=\'prnav-page-1010\' data-json=\'/processwire/page/recent-pages/navJSON/?edited=1\' href=\'/processwire/page/recent-pages/?edited=1\'><i class=\'fa fa-users pw-nav-icon fa-fw\'></i>Edited</a><ul></ul><li class=\'page-0-\'><a class=\'pw-has-items pw-has-ajax-items\' data-from=\'prnav-page-1010\' data-json=\'/processwire/page/recent-pages/navJSON/?added=1\' href=\'/processwire/page/recent-pages/?added=1\'><i class=\'fa fa-users pw-nav-icon fa-fw\'></i>Created</a><ul></ul><li class=\'page-0-\'><a class=\'pw-has-items pw-has-ajax-items\' data-from=\'prnav-page-1010\' data-json=\'/processwire/page/recent-pages/navJSON/?edited=1&amp;me=1\' href=\'/processwire/page/recent-pages/?edited=1&me=1\'><i class=\'fa fa-user pw-nav-icon fa-fw\'></i>Edited by me</a><ul></ul><li class=\'page-0-\'><a class=\'pw-has-items pw-has-ajax-items\' data-from=\'prnav-page-1010\' data-json=\'/processwire/page/recent-pages/navJSON/?added=1&amp;me=1\' href=\'/processwire/page/recent-pages/?added=1&me=1\'><i class=\'fa fa-user pw-nav-icon fa-fw\'></i>Created by me</a><ul></ul><li class=\'page-0-\'><a class=\'pw-has-items pw-has-ajax-items\' data-from=\'prnav-page-1010\' data-json=\'/processwire/page/recent-pages/anotherNavJSON/\' href=\'/processwire/page/recent-pages/another/\'><i class=\'fa fa-plus-circle pw-nav-icon fa-fw\'></i>Add another</a><ul></ul></li></ul></li></ul></li><li class=\'page-22-\'><a href=\'/processwire/setup/\' id=\'prnav-page-22\' data-from=\'prnav-page-2\' class=\'pw-dropdown-toggle\'>Setup</a><ul class=\'pw-dropdown-menu prnav\' data-my=\'left-1 top\' data-at=\'left bottom\'><li class=\'page-11-\'><a class=\'pw-has-items pw-has-ajax-items\' data-from=\'prnav-page-22\' data-json=\'/processwire/setup/template/navJSON/\' href=\'/processwire/setup/template/\'><i class=\'fa fa-cubes pw-nav-icon fa-fw\'></i>Templates</a><ul></ul><li class=\'page-16-\'><a class=\'pw-has-items pw-has-ajax-items\' data-from=\'prnav-page-22\' data-json=\'/processwire/setup/field/navJSON/\' href=\'/processwire/setup/field/\'><i class=\'fa fa-cube pw-nav-icon fa-fw\'></i>Fields</a><ul></ul><li class=\'page-1012-\'><a class=\'pw-has-items pw-has-ajax-items\' data-from=\'prnav-page-22\' data-json=\'/processwire/setup/logs/navJSON/\' href=\'/processwire/setup/logs/\'><i class=\'fa fa-tree pw-nav-icon fa-fw\'></i>Logs</a><ul></ul><li class=\'page-1056-\'><a class=\'pw-has-items pw-has-ajax-items\' data-from=\'prnav-page-22\' data-json=\'/processwire/setup/languages/navJSON/\' href=\'/processwire/setup/languages/\'><i class=\'fa fa-language pw-nav-icon fa-fw\'></i>Languages</a><ul></ul><li class=\'page-1078-\'><a href=\'/processwire/setup/form-builder/\'><i class=\'fa fa-file-o ui-priority-secondary pw-nav-icon fa-fw\'></i>Forms</a></li></ul></li><li class=\'page-21-\'><a href=\'/processwire/module/\' id=\'prnav-page-21\' data-from=\'prnav-page-2\' class=\'pw-dropdown-toggle\'>Modules</a><ul class=\'pw-dropdown-menu prnav\' data-my=\'left top\' data-at=\'left bottom\'><li class=\'page-0-\'><a class=\'pw-has-items pw-has-ajax-items\' data-from=\'prnav-page-21\' data-json=\'/processwire/module/navJSON/?site=1\' href=\'/processwire/module/?site#tab_site_modules\'><i class=\'fa fa-plug pw-nav-icon fa-fw\'></i>Site</a><ul></ul><li class=\'page-0-\'><a class=\'pw-has-items pw-has-ajax-items\' data-from=\'prnav-page-21\' data-json=\'/processwire/module/navJSON/?core=1\' href=\'/processwire/module/?core#tab_core_modules\'><i class=\'fa fa-plug pw-nav-icon fa-fw\'></i>Core</a><ul></ul><li class=\'page-0-\'><a class=\'pw-has-items pw-has-ajax-items\' data-from=\'prnav-page-21\' data-json=\'/processwire/module/navJSON/?configurable=1\' href=\'/processwire/module/?configurable#tab_configurable_modules\'><i class=\'fa fa-gear pw-nav-icon fa-fw\'></i>Configure</a><ul></ul><li class=\'page-0-\'><a class=\'pw-has-items pw-has-ajax-items\' data-from=\'prnav-page-21\' data-json=\'/processwire/module/navJSON/?install=1\' href=\'/processwire/module/?install#tab_install_modules\'><i class=\'fa fa-sign-in pw-nav-icon fa-fw\'></i>Install</a><ul></ul><li class=\'page-0-\'><a href=\'/processwire/module/?new#tab_new_modules\'><i class=\'fa fa-plus pw-nav-icon fa-fw\'></i>New</a><li class=\'page-0-\'><a href=\'/processwire/module/?reset=1\'><i class=\'fa fa-refresh pw-nav-icon fa-fw\'></i>Refresh</a></li></ul></li><li class=\'page-28-\'><a href=\'/processwire/access/\' id=\'prnav-page-28\' data-from=\'prnav-page-2\' class=\'pw-dropdown-toggle\'>Access</a><ul class=\'pw-dropdown-menu prnav\' data-my=\'left top\' data-at=\'left bottom\'><li class=\'page-29-\'><a class=\'pw-has-items pw-has-ajax-items\' data-from=\'prnav-page-28\' data-json=\'/processwire/access/users/navJSON/\' href=\'/processwire/access/users/\'><i class=\'fa fa-group pw-nav-icon fa-fw\'></i>Users</a><ul></ul><li class=\'page-30-\'><a class=\'pw-has-items pw-has-ajax-items\' data-from=\'prnav-page-28\' data-json=\'/processwire/access/roles/navJSON/\' href=\'/processwire/access/roles/\'><i class=\'fa fa-gears pw-nav-icon fa-fw\'></i>Roles</a><ul></ul><li class=\'page-31-\'><a class=\'pw-has-items pw-has-ajax-items\' data-from=\'prnav-page-28\' data-json=\'/processwire/access/permissions/navJSON/\' href=\'/processwire/access/permissions/\'><i class=\'fa fa-gear pw-nav-icon fa-fw\'></i>Permissions</a><ul></ul><li class=\'page-1059-\'><a href=\'/processwire/access/sessions-db/\'><i class=\'fa fa-dashboard pw-nav-icon fa-fw\'></i>Sessions</a></li></ul></li>\";s:7:\"sidenav\";s:8687:\"<li class=\'page-3- uk-parent\'><a href=\'/processwire/page/\' id=\'sidenav-page-3\'>Pages</a><ul class=\'uk-nav-sub uk-nav-default uk-nav-parent-icon\' data-uk-nav=\'animation: false; multiple: true;\'><li class=\'pw-nav-dup\'><a href=\'/processwire/page/\'><i class=\'fa fa-sitemap pw-nav-icon fa-fw\'></i>Pages</a></li><li class=\'page-8- uk-parent\'><a class=\'pw-has-items pw-has-ajax-items\' data-json=\'/processwire/page/list/navJSON/\' href=\'/processwire/page/list/\'><i class=\'fa fa-sitemap pw-nav-icon fa-fw\'></i>Tree</a><ul class=\'uk-nav-sub uk-nav-default uk-nav-parent-icon\' data-uk-nav=\'animation: false; multiple: true;\'></ul></li><li class=\'page-6- uk-parent\'><a class=\'pw-has-items pw-has-ajax-items\' data-json=\'/processwire/page/add/navJSON/\' href=\'/processwire/page/add/\'><i class=\'fa fa-plus-circle pw-nav-icon fa-fw\'></i>Add New</a><ul class=\'uk-nav-sub uk-nav-default uk-nav-parent-icon\' data-uk-nav=\'animation: false; multiple: true;\'></ul></li><li class=\'page-1007- uk-parent\'><a class=\'pw-has-items pw-has-ajax-items\' data-json=\'/processwire/page/lister/navJSON/\' href=\'/processwire/page/lister/\'><i class=\'fa fa-search pw-nav-icon fa-fw\'></i>Find</a><ul class=\'uk-nav-sub uk-nav-default uk-nav-parent-icon\' data-uk-nav=\'animation: false; multiple: true;\'></ul></li><li class=\'page-1010- uk-parent\'><a href=\'/processwire/page/recent-pages/\'><i class=\'fa fa-clock-o pw-nav-icon fa-fw\'></i>Recent</a><ul class=\'uk-nav-sub uk-nav-default uk-nav-parent-icon\' data-uk-nav=\'animation: false; multiple: true;\'><li class=\'pw-nav-dup\'><a href=\'/processwire/page/recent-pages/\'><i class=\'fa fa-arrow-circle-right pw-nav-icon fa-fw\'></i>Recent</a></li><li class=\'page-0-\'><a class=\'pw-has-items pw-has-ajax-items\' data-from=\'prnav-page-1010\' data-json=\'/processwire/page/recent-pages/navJSON/?edited=1\' href=\'/processwire/page/recent-pages/?edited=1\'><i class=\'fa fa-users pw-nav-icon fa-fw\'></i>Edited</a><ul></ul><li class=\'page-0-\'><a class=\'pw-has-items pw-has-ajax-items\' data-from=\'prnav-page-1010\' data-json=\'/processwire/page/recent-pages/navJSON/?added=1\' href=\'/processwire/page/recent-pages/?added=1\'><i class=\'fa fa-users pw-nav-icon fa-fw\'></i>Created</a><ul></ul><li class=\'page-0-\'><a class=\'pw-has-items pw-has-ajax-items\' data-from=\'prnav-page-1010\' data-json=\'/processwire/page/recent-pages/navJSON/?edited=1&amp;me=1\' href=\'/processwire/page/recent-pages/?edited=1&me=1\'><i class=\'fa fa-user pw-nav-icon fa-fw\'></i>Edited by me</a><ul></ul><li class=\'page-0-\'><a class=\'pw-has-items pw-has-ajax-items\' data-from=\'prnav-page-1010\' data-json=\'/processwire/page/recent-pages/navJSON/?added=1&amp;me=1\' href=\'/processwire/page/recent-pages/?added=1&me=1\'><i class=\'fa fa-user pw-nav-icon fa-fw\'></i>Created by me</a><ul></ul><li class=\'page-0-\'><a class=\'pw-has-items pw-has-ajax-items\' data-from=\'prnav-page-1010\' data-json=\'/processwire/page/recent-pages/anotherNavJSON/\' href=\'/processwire/page/recent-pages/another/\'><i class=\'fa fa-plus-circle pw-nav-icon fa-fw\'></i>Add another</a><ul></ul></li></ul></li></ul></li><li class=\'page-22- uk-parent\'><a href=\'/processwire/setup/\' id=\'sidenav-page-22\'>Setup</a><ul class=\'uk-nav-sub uk-nav-default uk-nav-parent-icon\' data-uk-nav=\'animation: false; multiple: true;\'><li class=\'pw-nav-dup\'><a href=\'/processwire/setup/\'><i class=\'fa fa-gears pw-nav-icon fa-fw\'></i>Setup</a></li><li class=\'page-11- uk-parent\'><a class=\'pw-has-items pw-has-ajax-items\' data-json=\'/processwire/setup/template/navJSON/\' href=\'/processwire/setup/template/\'><i class=\'fa fa-cubes pw-nav-icon fa-fw\'></i>Templates</a><ul class=\'uk-nav-sub uk-nav-default uk-nav-parent-icon\' data-uk-nav=\'animation: false; multiple: true;\'></ul></li><li class=\'page-16- uk-parent\'><a class=\'pw-has-items pw-has-ajax-items\' data-json=\'/processwire/setup/field/navJSON/\' href=\'/processwire/setup/field/\'><i class=\'fa fa-cube pw-nav-icon fa-fw\'></i>Fields</a><ul class=\'uk-nav-sub uk-nav-default uk-nav-parent-icon\' data-uk-nav=\'animation: false; multiple: true;\'></ul></li><li class=\'page-1012- uk-parent\'><a class=\'pw-has-items pw-has-ajax-items\' data-json=\'/processwire/setup/logs/navJSON/\' href=\'/processwire/setup/logs/\'><i class=\'fa fa-tree pw-nav-icon fa-fw\'></i>Logs</a><ul class=\'uk-nav-sub uk-nav-default uk-nav-parent-icon\' data-uk-nav=\'animation: false; multiple: true;\'></ul></li><li class=\'page-1056- uk-parent\'><a class=\'pw-has-items pw-has-ajax-items\' data-json=\'/processwire/setup/languages/navJSON/\' href=\'/processwire/setup/languages/\'><i class=\'fa fa-language pw-nav-icon fa-fw\'></i>Languages</a><ul class=\'uk-nav-sub uk-nav-default uk-nav-parent-icon\' data-uk-nav=\'animation: false; multiple: true;\'></ul></li><li class=\'page-1078-\'><a href=\'/processwire/setup/form-builder/\'><i class=\'fa fa-file-o ui-priority-secondary pw-nav-icon fa-fw\'></i>Forms</a></li></ul></li><li class=\'page-21- uk-parent\'><a href=\'/processwire/module/\' id=\'sidenav-page-21\'>Modules</a><ul class=\'uk-nav-sub uk-nav-default uk-nav-parent-icon\' data-uk-nav=\'animation: false; multiple: true;\'><li class=\'pw-nav-dup\'><a href=\'/processwire/module/\'><i class=\'fa fa-plug pw-nav-icon fa-fw\'></i>Modules</a></li><li class=\'page-0- uk-parent\'><a class=\'pw-has-items pw-has-ajax-items\' data-json=\'/processwire/module/navJSON/?site=1\' href=\'/processwire/module/?site#tab_site_modules\'><i class=\'fa fa-plug pw-nav-icon fa-fw\'></i>Site</a><ul class=\'uk-nav-sub uk-nav-default uk-nav-parent-icon\' data-uk-nav=\'animation: false; multiple: true;\'></ul></li><li class=\'page-0- uk-parent\'><a class=\'pw-has-items pw-has-ajax-items\' data-json=\'/processwire/module/navJSON/?core=1\' href=\'/processwire/module/?core#tab_core_modules\'><i class=\'fa fa-plug pw-nav-icon fa-fw\'></i>Core</a><ul class=\'uk-nav-sub uk-nav-default uk-nav-parent-icon\' data-uk-nav=\'animation: false; multiple: true;\'></ul></li><li class=\'page-0- uk-parent\'><a class=\'pw-has-items pw-has-ajax-items\' data-json=\'/processwire/module/navJSON/?configurable=1\' href=\'/processwire/module/?configurable#tab_configurable_modules\'><i class=\'fa fa-gear pw-nav-icon fa-fw\'></i>Configure</a><ul class=\'uk-nav-sub uk-nav-default uk-nav-parent-icon\' data-uk-nav=\'animation: false; multiple: true;\'></ul></li><li class=\'page-0- uk-parent\'><a class=\'pw-has-items pw-has-ajax-items\' data-json=\'/processwire/module/navJSON/?install=1\' href=\'/processwire/module/?install#tab_install_modules\'><i class=\'fa fa-sign-in pw-nav-icon fa-fw\'></i>Install</a><ul class=\'uk-nav-sub uk-nav-default uk-nav-parent-icon\' data-uk-nav=\'animation: false; multiple: true;\'></ul></li><li class=\'page-0-\'><a href=\'/processwire/module/?new#tab_new_modules\'><i class=\'fa fa-plus pw-nav-icon fa-fw\'></i>New</a></li><li class=\'page-0-\'><a href=\'/processwire/module/?reset=1\'><i class=\'fa fa-refresh pw-nav-icon fa-fw\'></i>Refresh</a></li></ul></li><li class=\'page-28- uk-parent\'><a href=\'/processwire/access/\' id=\'sidenav-page-28\'>Access</a><ul class=\'uk-nav-sub uk-nav-default uk-nav-parent-icon\' data-uk-nav=\'animation: false; multiple: true;\'><li class=\'pw-nav-dup\'><a href=\'/processwire/access/\'><i class=\'fa fa-key pw-nav-icon fa-fw\'></i>Access</a></li><li class=\'page-29- uk-parent\'><a class=\'pw-has-items pw-has-ajax-items\' data-json=\'/processwire/access/users/navJSON/\' href=\'/processwire/access/users/\'><i class=\'fa fa-group pw-nav-icon fa-fw\'></i>Users</a><ul class=\'uk-nav-sub uk-nav-default uk-nav-parent-icon\' data-uk-nav=\'animation: false; multiple: true;\'></ul></li><li class=\'page-30- uk-parent\'><a class=\'pw-has-items pw-has-ajax-items\' data-json=\'/processwire/access/roles/navJSON/\' href=\'/processwire/access/roles/\'><i class=\'fa fa-gears pw-nav-icon fa-fw\'></i>Roles</a><ul class=\'uk-nav-sub uk-nav-default uk-nav-parent-icon\' data-uk-nav=\'animation: false; multiple: true;\'></ul></li><li class=\'page-31- uk-parent\'><a class=\'pw-has-items pw-has-ajax-items\' data-json=\'/processwire/access/permissions/navJSON/\' href=\'/processwire/access/permissions/\'><i class=\'fa fa-gear pw-nav-icon fa-fw\'></i>Permissions</a><ul class=\'uk-nav-sub uk-nav-default uk-nav-parent-icon\' data-uk-nav=\'animation: false; multiple: true;\'></ul></li><li class=\'page-1059-\'><a href=\'/processwire/access/sessions-db/\'><i class=\'fa fa-dashboard pw-nav-icon fa-fw\'></i>Sessions</a></li></ul></li><li class=\'uk-parent\'><a href=\'#\'><!--pw-user-nav-label--></a><ul class=\'uk-nav-sub uk-nav-default uk-nav-parent-icon\' data-uk-nav=\'animation: false; multiple: true;\'><li><a target=\'_top\' href=\'/\'><i class=\'fa fa-eye pw-nav-icon fa-fw\'></i>View site</a></li><li><a href=\'/processwire/profile/\'><i class=\'fa fa-user pw-nav-icon fa-fw\'></i>Profile</a></li><li><a target=\'_top\' href=\'/processwire/login/logout/\'><i class=\'fa fa-power-off pw-nav-icon fa-fw\'></i>Logout</a></li></ul></li>\";}s:14:\"ProcessPageAdd\";a:2:{s:3:\"nav\";a:6:{s:3:\"url\";s:22:\"/processwire/page/add/\";s:5:\"label\";s:5:\"Pages\";s:4:\"icon\";s:11:\"plus-circle\";s:3:\"add\";N;s:4:\"list\";a:0:{}s:8:\"modified\";i:1730568091;}s:10:\"numAddable\";i:0;}s:15:\"ProcessPageList\";a:4:{s:6:\"lastID\";i:1022;s:16:\"cacheExpirePages\";s:5:\"title\";s:9:\"parent_id\";s:5:\"title\";s:16:\"defaultValuePage\";s:5:\"title\";}s:18:\"ModulesUninstalled\";a:42:{i:0;s:14:\"AdminThemeReno\";i:1;s:20:\"CommentFilterAkismet\";i:2;s:14:\"FieldtypeCache\";i:3;s:17:\"FieldtypeComments\";i:4;s:16:\"FieldtypeDecimal\";i:5;s:21:\"FieldtypeFieldsetPage\";i:6;s:22:\"FieldtypeNotifications\";i:7;s:16:\"FieldtypeOptions\";i:8;s:18:\"FieldtypePageTable\";i:9;s:26:\"FieldtypePageTitleLanguage\";i:10;s:17:\"FieldtypeRepeater\";i:11;s:17:\"FieldtypeSelector\";i:12;s:21:\"FieldtypeTextLanguage\";i:13;s:25:\"FieldtypeTextareaLanguage\";i:14;s:15:\"FieldtypeToggle\";i:15;s:16:\"FileCompilerTags\";i:16;s:27:\"ImageSizerEngineAnimatedGif\";i:17;s:23:\"ImageSizerEngineIMagick\";i:18;s:18:\"InputfieldCKEditor\";i:19;s:23:\"InputfieldCommentsAdmin\";i:20;s:19:\"InputfieldPageTable\";i:21;s:18:\"InputfieldRepeater\";i:22;s:21:\"LanguageSupportFields\";i:23;s:24:\"LanguageSupportPageNames\";i:24;s:12:\"LanguageTabs\";i:25;s:8:\"LazyCron\";i:26;s:11:\"MarkupCache\";i:27;s:16:\"MarkupPageFields\";i:28;s:9:\"MarkupRSS\";i:29;s:13:\"PageFrontEdit\";i:30;s:15:\"PagePathHistory\";i:31;s:9:\"PagePaths\";i:32;s:22:\"ProcessCommentsManager\";i:33;s:21:\"ProcessForgotPassword\";i:34;s:16:\"ProcessPageClone\";i:35;s:24:\"ProcessPagesExportImport\";i:36;s:19:\"SystemNotifications\";i:37;s:22:\"TextformatterNewlineBR\";i:38;s:22:\"TextformatterNewlineUL\";i:39;s:22:\"TextformatterPstripper\";i:40;s:24:\"TextformatterSmartypants\";i:41;s:22:\"TextformatterStripTags\";}s:10:\"Pageimages\";a:0:{}s:21:\"lister_lister_pageNum\";i:1;s:18:\"InputfieldSelector\";a:1:{s:14:\"id1007_filters\";a:1:{s:13:\"lastTemplates\";a:0:{}}}s:13:\"ProcessModule\";a:1:{s:10:\"newModules\";a:0:{}}s:21:\"FormBuilderLicenseKey\";s:12:\"samiulfaysal\";}', '2024-11-05 03:32:36', 0, ''),
('bdr6fjovnlnl37djc0iuib2jbd', 40, 1, 'Session|a:1:{s:16:\"SessionHandlerDB\";a:1:{s:2:\"ts\";i:1730718442;}}', '2024-11-04 11:07:22', 0, ''),
('df61c9nqern9ahp9cv1iuo0h7b', 40, 1, 'Session|a:1:{s:16:\"SessionHandlerDB\";a:1:{s:2:\"ts\";i:1730700249;}}', '2024-11-04 06:04:09', 0, ''),
('grrhedpa6h236124fssf77atfd', 40, 1, 'Session|a:1:{s:16:\"SessionHandlerDB\";a:1:{s:2:\"ts\";i:1730794466;}}', '2024-11-05 08:14:26', 0, ''),
('hl3atgfp1fcdr8vbilclcvv4ep', 40, 1, 'Session|a:1:{s:16:\"SessionHandlerDB\";a:1:{s:2:\"ts\";i:1730794465;}}', '2024-11-05 08:14:25', 0, ''),
('j23l8cs5no523u0f1hshmugkaa', 40, 27, 'Session|a:1:{s:16:\"SessionHandlerDB\";a:1:{s:2:\"ts\";i:1730737965;}}', '2024-11-04 16:32:45', 0, ''),
('jijqau3em6af0hmrcbslkrht68', 40, 1, 'Session|a:1:{s:16:\"SessionHandlerDB\";a:1:{s:2:\"ts\";i:1730695673;}}', '2024-11-04 04:47:53', 0, ''),
('l17bksnasbn2oqvt1dugo7qf5t', 40, 27, 'Session|a:1:{s:16:\"SessionHandlerDB\";a:1:{s:2:\"ts\";i:1730749240;}}', '2024-11-04 19:40:40', 0, ''),
('mpr6hk75ro47lm2aqdnh1p4joi', 40, 1, 'Session|a:1:{s:16:\"SessionHandlerDB\";a:1:{s:2:\"ts\";i:1730686920;}}', '2024-11-04 02:22:00', 0, ''),
('nlfogc0ikngj1ge73jg0780nfp', 40, 27, 'Session|a:1:{s:16:\"SessionHandlerDB\";a:1:{s:2:\"ts\";i:1730782823;}}', '2024-11-05 05:00:23', 0, ''),
('peqq6996i6d5q9i04t2segko13', 40, 1, 'Session|a:1:{s:16:\"SessionHandlerDB\";a:1:{s:2:\"ts\";i:1730660514;}}', '2024-11-03 19:01:56', 0, ''),
('qrsg10bfq7edfenagunobqn5ks', 40, 1, 'Session|a:1:{s:16:\"SessionHandlerDB\";a:1:{s:2:\"ts\";i:1730794466;}}', '2024-11-05 08:14:26', 0, ''),
('ru6en72ri488dn4psv184f0g95', 40, 1, 'Session|a:1:{s:16:\"SessionHandlerDB\";a:1:{s:2:\"ts\";i:1730794465;}}', '2024-11-05 08:14:25', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `session_login_throttle`
--

CREATE TABLE `session_login_throttle` (
  `name` varchar(128) NOT NULL,
  `attempts` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `last_attempt` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `session_login_throttle`
--

INSERT INTO `session_login_throttle` (`name`, `attempts`, `last_attempt`) VALUES
('admin', 1, 1730515181);

-- --------------------------------------------------------

--
-- Table structure for table `templates`
--

CREATE TABLE `templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `fieldgroups_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `flags` int(11) NOT NULL DEFAULT 0,
  `cache_time` mediumint(9) NOT NULL DEFAULT 0,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `templates`
--

INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES
(2, 'admin', 2, 8, 0, '{\"useRoles\":1,\"parentTemplates\":[2],\"allowPageNum\":1,\"redirectLogin\":23,\"slashUrls\":1,\"noGlobal\":1,\"compile\":3,\"modified\":1729852528,\"ns\":\"ProcessWire\",\"_lazy\":1}'),
(3, 'user', 3, 8, 0, '{\"useRoles\":1,\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"User\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}'),
(4, 'role', 4, 8, 0, '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"Role\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}'),
(5, 'permission', 5, 8, 0, '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"guestSearchable\":1,\"pageClass\":\"Permission\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}'),
(1, 'home', 1, 0, 0, '{\"useRoles\":1,\"noParents\":1,\"slashUrls\":1,\"compile\":0,\"modified\":1730631530,\"ns\":\"\\\\\",\"_lazy\":1,\"roles\":[37]}'),
(29, 'basic-page', 83, 0, 0, '{\"slashUrls\":1,\"compile\":3,\"modified\":1729852528,\"ns\":\"ProcessWire\",\"_lazy\":\"*\"}'),
(43, 'createBusiness', 97, 0, 0, '{\"slashUrls\":1,\"compile\":0,\"modified\":1730466774,\"ns\":\"\\\\\",\"_lazy\":1}'),
(44, 'myaccount', 98, 0, 0, '{\"slashUrls\":1,\"compile\":0,\"modified\":1730453016,\"ns\":\"\\\\\",\"_lazy\":1}'),
(45, 'login', 99, 0, 0, '{\"slashUrls\":1,\"compile\":0,\"modified\":1730435450,\"ns\":\"\\\\\",\"_lazy\":1}'),
(47, 'singleService', 101, 0, 0, '{\"slashUrls\":1,\"compile\":0,\"modified\":1730441879,\"ns\":\"\\\\\"}'),
(46, 'language', 100, 8, 0, '{\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"Language\",\"pageLabelField\":\"name\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noChangeTemplate\":1,\"noUnpublish\":1,\"compile\":3,\"nameContentTab\":1,\"modified\":1730285116}'),
(48, 'reviews', 102, 0, 0, '{\"slashUrls\":1,\"compile\":0,\"modified\":1730519363,\"ns\":\"\\\\\"}'),
(49, 'error_page', 103, 0, 0, '{\"slashUrls\":1,\"compile\":0,\"modified\":1730522095,\"ns\":\"\\\\\"}'),
(50, 'form-builder', 104, 8, 0, '{\"urlSegments\":1,\"slashUrls\":1,\"noGlobal\":1,\"compile\":3,\"modified\":1730630072,\"ns\":\"\\\\\"}');

-- --------------------------------------------------------

--
-- Table structure for table `textformatter_video_embed`
--

CREATE TABLE `textformatter_video_embed` (
  `video_id` varchar(128) NOT NULL,
  `embed_code` varchar(1024) NOT NULL DEFAULT '',
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `data` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `textformatter_video_embed`
--

INSERT INTO `textformatter_video_embed` (`video_id`, `embed_code`, `created`, `data`) VALUES
('FjBzUnrpNbA', '<iframe width=\"960\" height=\"720\" src=\"https://www.youtube-nocookie.com/embed/FjBzUnrpNbA?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen title=\"Overname fotostudio voor Jacco de Hoog\"></iframe>', '2024-11-04 19:40:38', '{\"valid\":true,\"title\":\"Overname fotostudio voor Jacco de Hoog\",\"author_name\":\"Pro6 Advies | Startexpert | Re-integratie naar ondernemerschap\",\"author_url\":\"https:\\/\\/www.youtube.com\\/@pro6adviesstartexpertre-in890\",\"type\":\"video\",\"height\":720,\"width\":960,\"version\":\"1.0\",\"provider_name\":\"YouTube\",\"provider_url\":\"https:\\/\\/www.youtube.com\\/\",\"thumbnail_height\":360,\"thumbnail_width\":480,\"thumbnail_url\":\"https:\\/\\/i.ytimg.com\\/vi\\/FjBzUnrpNbA\\/hqdefault.jpg\",\"embed_code\":\"\",\"video_url\":\"https:\\/\\/youtu.be\\/FjBzUnrpNbA\",\"page_id\":1,\"field\":\"home_section_3_video_1\"}'),
('Jleufv4SBvY', '<iframe width=\"960\" height=\"720\" src=\"https://www.youtube-nocookie.com/embed/Jleufv4SBvY?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen title=\"Sia Vonk Transport\"></iframe>', '2024-11-04 19:40:38', '{\"valid\":true,\"title\":\"Sia Vonk Transport\",\"author_name\":\"Pro6 Advies | Startexpert | Re-integratie naar ondernemerschap\",\"author_url\":\"https:\\/\\/www.youtube.com\\/@pro6adviesstartexpertre-in890\",\"type\":\"video\",\"height\":720,\"width\":960,\"version\":\"1.0\",\"provider_name\":\"YouTube\",\"provider_url\":\"https:\\/\\/www.youtube.com\\/\",\"thumbnail_height\":360,\"thumbnail_width\":480,\"thumbnail_url\":\"https:\\/\\/i.ytimg.com\\/vi\\/Jleufv4SBvY\\/hqdefault.jpg\",\"embed_code\":\"\",\"video_url\":\"https:\\/\\/youtu.be\\/Jleufv4SBvY\",\"page_id\":1,\"field\":\"home_section_3_video_2\"}'),
('QydyrMAJLdg', '<iframe width=\"960\" height=\"720\" src=\"https://www.youtube-nocookie.com/embed/QydyrMAJLdg?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen title=\"Jelierse\"></iframe>', '2024-11-04 19:40:39', '{\"valid\":true,\"title\":\"Jelierse\",\"author_name\":\"Pro6 Advies | Startexpert | Re-integratie naar ondernemerschap\",\"author_url\":\"https:\\/\\/www.youtube.com\\/@pro6adviesstartexpertre-in890\",\"type\":\"video\",\"height\":720,\"width\":960,\"version\":\"1.0\",\"provider_name\":\"YouTube\",\"provider_url\":\"https:\\/\\/www.youtube.com\\/\",\"thumbnail_height\":360,\"thumbnail_width\":480,\"thumbnail_url\":\"https:\\/\\/i.ytimg.com\\/vi\\/QydyrMAJLdg\\/hqdefault.jpg\",\"embed_code\":\"\",\"video_url\":\"https:\\/\\/youtu.be\\/QydyrMAJLdg\",\"page_id\":1,\"field\":\"home_section_3_video_4\"}'),
('RbCbKrBD4cg', '<iframe width=\"960\" height=\"720\" src=\"https://www.youtube-nocookie.com/embed/RbCbKrBD4cg?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen title=\"Computerreparatie Ben Plazier\"></iframe>', '2024-11-04 19:40:38', '{\"valid\":true,\"title\":\"Computerreparatie Ben Plazier\",\"author_name\":\"Pro6 Advies | Startexpert | Re-integratie naar ondernemerschap\",\"author_url\":\"https:\\/\\/www.youtube.com\\/@pro6adviesstartexpertre-in890\",\"type\":\"video\",\"height\":720,\"width\":960,\"version\":\"1.0\",\"provider_name\":\"YouTube\",\"provider_url\":\"https:\\/\\/www.youtube.com\\/\",\"thumbnail_height\":360,\"thumbnail_width\":480,\"thumbnail_url\":\"https:\\/\\/i.ytimg.com\\/vi\\/RbCbKrBD4cg\\/hqdefault.jpg\",\"embed_code\":\"\",\"video_url\":\"https:\\/\\/youtu.be\\/RbCbKrBD4cg\",\"page_id\":1,\"field\":\"home_section_3_video_3\"}');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `timestamp` varchar(255) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `address`, `email`, `password`, `timestamp`) VALUES
(5, 'Lamu khanom', 'Barguna', 'ewssbd@gmail.com', '1234', '2024-10-31 03:59:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `caches`
--
ALTER TABLE `caches`
  ADD PRIMARY KEY (`name`),
  ADD KEY `expires` (`expires`);

--
-- Indexes for table `fieldgroups`
--
ALTER TABLE `fieldgroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `fieldgroups_fields`
--
ALTER TABLE `fieldgroups_fields`
  ADD PRIMARY KEY (`fieldgroups_id`,`fields_id`);

--
-- Indexes for table `fields`
--
ALTER TABLE `fields`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `field_admin_theme`
--
ALTER TABLE `field_admin_theme`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `data` (`data`);

--
-- Indexes for table `field_bizcontent`
--
ALTER TABLE `field_bizcontent`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `data_exact` (`data`(250));
ALTER TABLE `field_bizcontent` ADD FULLTEXT KEY `data` (`data`);

--
-- Indexes for table `field_email`
--
ALTER TABLE `field_email`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `data_exact` (`data`);
ALTER TABLE `field_email` ADD FULLTEXT KEY `data` (`data`);

--
-- Indexes for table `field_home_left_title_1`
--
ALTER TABLE `field_home_left_title_1`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `data_exact` (`data`(250));
ALTER TABLE `field_home_left_title_1` ADD FULLTEXT KEY `data` (`data`);

--
-- Indexes for table `field_home_right_image_1`
--
ALTER TABLE `field_home_right_image_1`
  ADD PRIMARY KEY (`pages_id`,`sort`),
  ADD KEY `data` (`data`),
  ADD KEY `modified` (`modified`),
  ADD KEY `created` (`created`),
  ADD KEY `filesize` (`filesize`),
  ADD KEY `width` (`width`),
  ADD KEY `height` (`height`),
  ADD KEY `ratio` (`ratio`);
ALTER TABLE `field_home_right_image_1` ADD FULLTEXT KEY `description` (`description`);
ALTER TABLE `field_home_right_image_1` ADD FULLTEXT KEY `filedata` (`filedata`);

--
-- Indexes for table `field_home_section_2_left_image_1`
--
ALTER TABLE `field_home_section_2_left_image_1`
  ADD PRIMARY KEY (`pages_id`,`sort`),
  ADD KEY `data` (`data`),
  ADD KEY `modified` (`modified`),
  ADD KEY `created` (`created`),
  ADD KEY `filesize` (`filesize`),
  ADD KEY `width` (`width`),
  ADD KEY `height` (`height`),
  ADD KEY `ratio` (`ratio`);
ALTER TABLE `field_home_section_2_left_image_1` ADD FULLTEXT KEY `description` (`description`);
ALTER TABLE `field_home_section_2_left_image_1` ADD FULLTEXT KEY `filedata` (`filedata`);

--
-- Indexes for table `field_home_section_2_right_subtitle`
--
ALTER TABLE `field_home_section_2_right_subtitle`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `data_exact` (`data`(250));
ALTER TABLE `field_home_section_2_right_subtitle` ADD FULLTEXT KEY `data` (`data`);

--
-- Indexes for table `field_home_section_2_right_title`
--
ALTER TABLE `field_home_section_2_right_title`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `data_exact` (`data`(250));
ALTER TABLE `field_home_section_2_right_title` ADD FULLTEXT KEY `data` (`data`);

--
-- Indexes for table `field_home_section_3_title`
--
ALTER TABLE `field_home_section_3_title`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `data_exact` (`data`(250));
ALTER TABLE `field_home_section_3_title` ADD FULLTEXT KEY `data` (`data`);

--
-- Indexes for table `field_home_section_3_video_1`
--
ALTER TABLE `field_home_section_3_video_1`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `data_exact` (`data`(250));
ALTER TABLE `field_home_section_3_video_1` ADD FULLTEXT KEY `data` (`data`);

--
-- Indexes for table `field_home_section_3_video_2`
--
ALTER TABLE `field_home_section_3_video_2`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `data_exact` (`data`(250));
ALTER TABLE `field_home_section_3_video_2` ADD FULLTEXT KEY `data` (`data`);

--
-- Indexes for table `field_home_section_3_video_3`
--
ALTER TABLE `field_home_section_3_video_3`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `data_exact` (`data`(250));
ALTER TABLE `field_home_section_3_video_3` ADD FULLTEXT KEY `data` (`data`);

--
-- Indexes for table `field_home_section_3_video_4`
--
ALTER TABLE `field_home_section_3_video_4`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `data_exact` (`data`(250));
ALTER TABLE `field_home_section_3_video_4` ADD FULLTEXT KEY `data` (`data`);

--
-- Indexes for table `field_home_section_4_left_title`
--
ALTER TABLE `field_home_section_4_left_title`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `data_exact` (`data`(250));
ALTER TABLE `field_home_section_4_left_title` ADD FULLTEXT KEY `data` (`data`);

--
-- Indexes for table `field_home_section_4_right_box_1_button_link`
--
ALTER TABLE `field_home_section_4_right_box_1_button_link`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `data_exact` (`data`(250));
ALTER TABLE `field_home_section_4_right_box_1_button_link` ADD FULLTEXT KEY `data` (`data`);

--
-- Indexes for table `field_home_section_4_right_box_1_button_text`
--
ALTER TABLE `field_home_section_4_right_box_1_button_text`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `data_exact` (`data`(250));
ALTER TABLE `field_home_section_4_right_box_1_button_text` ADD FULLTEXT KEY `data` (`data`);

--
-- Indexes for table `field_home_section_4_right_box_1_content`
--
ALTER TABLE `field_home_section_4_right_box_1_content`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `data_exact` (`data`(250));
ALTER TABLE `field_home_section_4_right_box_1_content` ADD FULLTEXT KEY `data` (`data`);

--
-- Indexes for table `field_home_section_4_right_box_1_title`
--
ALTER TABLE `field_home_section_4_right_box_1_title`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `data_exact` (`data`(250));
ALTER TABLE `field_home_section_4_right_box_1_title` ADD FULLTEXT KEY `data` (`data`);

--
-- Indexes for table `field_home_section_4_right_box_2_button_link`
--
ALTER TABLE `field_home_section_4_right_box_2_button_link`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `data_exact` (`data`(250));
ALTER TABLE `field_home_section_4_right_box_2_button_link` ADD FULLTEXT KEY `data` (`data`);

--
-- Indexes for table `field_home_section_4_right_box_2_button_text`
--
ALTER TABLE `field_home_section_4_right_box_2_button_text`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `data_exact` (`data`(250));
ALTER TABLE `field_home_section_4_right_box_2_button_text` ADD FULLTEXT KEY `data` (`data`);

--
-- Indexes for table `field_home_section_4_right_box_2_content`
--
ALTER TABLE `field_home_section_4_right_box_2_content`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `data_exact` (`data`(250));
ALTER TABLE `field_home_section_4_right_box_2_content` ADD FULLTEXT KEY `data` (`data`);

--
-- Indexes for table `field_home_section_4_right_box_2_title`
--
ALTER TABLE `field_home_section_4_right_box_2_title`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `data_exact` (`data`(250));
ALTER TABLE `field_home_section_4_right_box_2_title` ADD FULLTEXT KEY `data` (`data`);

--
-- Indexes for table `field_home_section_4_right_box_3_button_link`
--
ALTER TABLE `field_home_section_4_right_box_3_button_link`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `data_exact` (`data`(250));
ALTER TABLE `field_home_section_4_right_box_3_button_link` ADD FULLTEXT KEY `data` (`data`);

--
-- Indexes for table `field_home_section_4_right_box_3_button_text`
--
ALTER TABLE `field_home_section_4_right_box_3_button_text`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `data_exact` (`data`(250));
ALTER TABLE `field_home_section_4_right_box_3_button_text` ADD FULLTEXT KEY `data` (`data`);

--
-- Indexes for table `field_home_section_4_right_box_3_content`
--
ALTER TABLE `field_home_section_4_right_box_3_content`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `data_exact` (`data`(250));
ALTER TABLE `field_home_section_4_right_box_3_content` ADD FULLTEXT KEY `data` (`data`);

--
-- Indexes for table `field_home_section_4_right_box_3_title`
--
ALTER TABLE `field_home_section_4_right_box_3_title`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `data_exact` (`data`(250));
ALTER TABLE `field_home_section_4_right_box_3_title` ADD FULLTEXT KEY `data` (`data`);

--
-- Indexes for table `field_home_section_4_right_box_4_button_link`
--
ALTER TABLE `field_home_section_4_right_box_4_button_link`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `data_exact` (`data`(250));
ALTER TABLE `field_home_section_4_right_box_4_button_link` ADD FULLTEXT KEY `data` (`data`);

--
-- Indexes for table `field_home_section_4_right_box_4_button_text`
--
ALTER TABLE `field_home_section_4_right_box_4_button_text`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `data_exact` (`data`(250));
ALTER TABLE `field_home_section_4_right_box_4_button_text` ADD FULLTEXT KEY `data` (`data`);

--
-- Indexes for table `field_home_section_4_right_box_4_content`
--
ALTER TABLE `field_home_section_4_right_box_4_content`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `data_exact` (`data`(250));
ALTER TABLE `field_home_section_4_right_box_4_content` ADD FULLTEXT KEY `data` (`data`);

--
-- Indexes for table `field_home_section_4_right_box_4_title`
--
ALTER TABLE `field_home_section_4_right_box_4_title`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `data_exact` (`data`(250));
ALTER TABLE `field_home_section_4_right_box_4_title` ADD FULLTEXT KEY `data` (`data`);

--
-- Indexes for table `field_language`
--
ALTER TABLE `field_language`
  ADD PRIMARY KEY (`pages_id`,`sort`),
  ADD KEY `data` (`data`,`pages_id`,`sort`);

--
-- Indexes for table `field_language_files`
--
ALTER TABLE `field_language_files`
  ADD PRIMARY KEY (`pages_id`,`sort`),
  ADD KEY `data` (`data`),
  ADD KEY `modified` (`modified`),
  ADD KEY `created` (`created`),
  ADD KEY `filesize` (`filesize`);
ALTER TABLE `field_language_files` ADD FULLTEXT KEY `description` (`description`);
ALTER TABLE `field_language_files` ADD FULLTEXT KEY `filedata` (`filedata`);

--
-- Indexes for table `field_language_files_site`
--
ALTER TABLE `field_language_files_site`
  ADD PRIMARY KEY (`pages_id`,`sort`),
  ADD KEY `data` (`data`),
  ADD KEY `modified` (`modified`),
  ADD KEY `created` (`created`),
  ADD KEY `filesize` (`filesize`);
ALTER TABLE `field_language_files_site` ADD FULLTEXT KEY `description` (`description`);
ALTER TABLE `field_language_files_site` ADD FULLTEXT KEY `filedata` (`filedata`);

--
-- Indexes for table `field_pass`
--
ALTER TABLE `field_pass`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `data` (`data`);

--
-- Indexes for table `field_permissions`
--
ALTER TABLE `field_permissions`
  ADD PRIMARY KEY (`pages_id`,`sort`),
  ADD KEY `data` (`data`,`pages_id`,`sort`);

--
-- Indexes for table `field_process`
--
ALTER TABLE `field_process`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `data` (`data`);

--
-- Indexes for table `field_roles`
--
ALTER TABLE `field_roles`
  ADD PRIMARY KEY (`pages_id`,`sort`),
  ADD KEY `data` (`data`,`pages_id`,`sort`);

--
-- Indexes for table `field_sidebar_content`
--
ALTER TABLE `field_sidebar_content`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `data_exact` (`data`(250));
ALTER TABLE `field_sidebar_content` ADD FULLTEXT KEY `data` (`data`);

--
-- Indexes for table `field_sidebar_image_1`
--
ALTER TABLE `field_sidebar_image_1`
  ADD PRIMARY KEY (`pages_id`,`sort`),
  ADD KEY `data` (`data`),
  ADD KEY `modified` (`modified`),
  ADD KEY `created` (`created`),
  ADD KEY `filesize` (`filesize`),
  ADD KEY `width` (`width`),
  ADD KEY `height` (`height`),
  ADD KEY `ratio` (`ratio`);
ALTER TABLE `field_sidebar_image_1` ADD FULLTEXT KEY `description` (`description`);
ALTER TABLE `field_sidebar_image_1` ADD FULLTEXT KEY `filedata` (`filedata`);

--
-- Indexes for table `field_sidebar_image_2`
--
ALTER TABLE `field_sidebar_image_2`
  ADD PRIMARY KEY (`pages_id`,`sort`),
  ADD KEY `data` (`data`),
  ADD KEY `modified` (`modified`),
  ADD KEY `created` (`created`),
  ADD KEY `filesize` (`filesize`),
  ADD KEY `width` (`width`),
  ADD KEY `height` (`height`),
  ADD KEY `ratio` (`ratio`);
ALTER TABLE `field_sidebar_image_2` ADD FULLTEXT KEY `description` (`description`);
ALTER TABLE `field_sidebar_image_2` ADD FULLTEXT KEY `filedata` (`filedata`);

--
-- Indexes for table `field_single_image`
--
ALTER TABLE `field_single_image`
  ADD PRIMARY KEY (`pages_id`,`sort`),
  ADD KEY `data` (`data`),
  ADD KEY `modified` (`modified`),
  ADD KEY `created` (`created`),
  ADD KEY `filesize` (`filesize`),
  ADD KEY `width` (`width`),
  ADD KEY `height` (`height`),
  ADD KEY `ratio` (`ratio`);
ALTER TABLE `field_single_image` ADD FULLTEXT KEY `description` (`description`);
ALTER TABLE `field_single_image` ADD FULLTEXT KEY `filedata` (`filedata`);

--
-- Indexes for table `field_single_video`
--
ALTER TABLE `field_single_video`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `data_exact` (`data`(250));
ALTER TABLE `field_single_video` ADD FULLTEXT KEY `data` (`data`);

--
-- Indexes for table `field_title`
--
ALTER TABLE `field_title`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `data_exact` (`data`(255));
ALTER TABLE `field_title` ADD FULLTEXT KEY `data` (`data`);

--
-- Indexes for table `forms`
--
ALTER TABLE `forms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `forms_entries`
--
ALTER TABLE `forms_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `forms_id` (`forms_id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `class` (`class`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_parent_id` (`name`,`parent_id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `templates_id` (`templates_id`),
  ADD KEY `modified` (`modified`),
  ADD KEY `created` (`created`),
  ADD KEY `status` (`status`),
  ADD KEY `published` (`published`);

--
-- Indexes for table `pages_access`
--
ALTER TABLE `pages_access`
  ADD PRIMARY KEY (`pages_id`),
  ADD KEY `templates_id` (`templates_id`);

--
-- Indexes for table `pages_parents`
--
ALTER TABLE `pages_parents`
  ADD PRIMARY KEY (`pages_id`,`parents_id`);

--
-- Indexes for table `pages_sortfields`
--
ALTER TABLE `pages_sortfields`
  ADD PRIMARY KEY (`pages_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_id` (`pages_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `ts` (`ts`);

--
-- Indexes for table `session_login_throttle`
--
ALTER TABLE `session_login_throttle`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `fieldgroups_id` (`fieldgroups_id`);

--
-- Indexes for table `textformatter_video_embed`
--
ALTER TABLE `textformatter_video_embed`
  ADD PRIMARY KEY (`video_id`),
  ADD KEY `created` (`created`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fieldgroups`
--
ALTER TABLE `fieldgroups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `fields`
--
ALTER TABLE `fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `forms`
--
ALTER TABLE `forms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `forms_entries`
--
ALTER TABLE `forms_entries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1079;

--
-- AUTO_INCREMENT for table `templates`
--
ALTER TABLE `templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
