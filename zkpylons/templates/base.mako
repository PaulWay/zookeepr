<%def name="title()">${ h.lca_info["event_byline"] }</%def>
<%def name="short_title()">
   ## Defined in children
</%def>
<%def name="extra_head()">
    ## Defined in children
</%def>
<%def name="extra_body()">
  <body>
</%def>
<%def name="big_promotion()">
    ## Defined in children
</%def>
<%def name="toolbox_extra()">
    ## Defined in children
</%def>
<%def name="toolbox_extra_admin()">
    ## Defined in children
</%def>
<%def name="toolbox_extra_reviewer()">
    ## Defined in children
</%def>
<%def name="toolbox_extra_funding_reviewer()">
    ## Defined in children
</%def>
<%def name="contents()">
    ## Defined in children
</%def>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html lang="en-us">
    <head>
        <title>${ self.title() }</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- <link rel="shortcut icon" href="/images/favicon.ico" type="image/x-icon"> -->
        <link rel="shortcut icon" href="/images/filledfoot-small.png" type="image/png">
        <link rel="stylesheet" media="screen" href="/screen.css" type="text/css">
        <link rel="stylesheet" media="screen" href="/css/lightbox.css" type="text/css">
        <link rel="stylesheet" media="print" href="/print.css" type="text/css">
        <script type="text/javascript" src="/jquery-1.7.1.min.js"></script>
        <script type="text/javascript" src="/js/jquery.cross-slide.min.js"></script>
        <link href="/media/news/rss" rel="alternate" type="application/rss+xml" title="LCA2012 News">
        <!--[if IE 6]><link rel="stylesheet" href="brisbanecity.ie6.css" type="text/css" media="screen" /><![endif]-->
        <!--[if IE 7]><link rel="stylesheet" href="brisbanecity.ie7.css" type="text/css" media="screen" /><![endif]-->

        <script type="text/javascript">

        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', 'UA-1446075-7']);
        _gaq.push(['_setDomainName', 'lcaunderthestars.org.au']);
        _gaq.push(['_setAllowLinker', true]);
        _gaq.push(['_trackPageview']);

        (function() {
        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
                ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
                var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
        })();
                            
        </script>


        ${self.extra_head()}
        <script type="text/javascript">
           jQuery(document).ready(function() {
             jQuery("#flash > div").hide().fadeIn(3500);
             jQuery("#flash > div").fadeTo(3000, 0.3);
             jQuery("#flash > div").hover(function() {
               jQuery(this).fadeTo(250, 1);
             },function(){
               jQuery(this).fadeTo(250, 0.3);
             });
           });

        </script>  
<script type="text/javascript"> 
//<!--
jQuery(function($) { 
 jQuery('#sponsorsother').crossSlide({
                                                      sleep: 5,
                                                      fade: 1,
                                                      shuffle: 1
                                                    }, [
{ src: '/images/sponsor_logos/fades/fifteen_trees_logo_RGB_full_colour-1.jpg' },
{ src: '/images/sponsor_logos/fades/sponsor-anchor_200px.png' },
{ src: '/images/sponsor_logos/fades/sponsor-brt.jpg' },
{ src: '/images/sponsor_logos/fades/sponsor-bulletproof.png' },
{ src: '/images/sponsor_logos/fades/sponsor-canonical_200px.png' },
{ src: '/images/sponsor_logos/fades/sponsor-catalyst-it.png' },
{ src: '/images/sponsor_logos/fades/sponsor-dsd.png' },
{ src: '/images/sponsor_logos/fades/sponsor-freetronics.png' },
{ src: '/images/sponsor_logos/fades/sponsor-google.gif' },
{ src: '/images/sponsor_logos/fades/sponsor-intel_200px.png' },
{ src: '/images/sponsor_logos/fades/sponsor-linuxmagazine.gif' },
{ src: '/images/sponsor_logos/fades/sponsor-lnm.png' },
{ src: '/images/sponsor_logos/fades/sponsor-xirrus.png' },
{ src: '/images/sponsor_logos/fades/sponsor-yum_200px.jpg' }
                                                ]);
});
// --> 
</script>
    </head>
    ${self.extra_body()}
        <div id="netv-main">
            <div class="netv-sheet">
                <div class="netv-sheet-tl"></div>
                <div class="netv-sheet-tr"></div>
                <div class="netv-sheet-bl"></div>
                <div class="netv-sheet-br"></div>
                <div class="netv-sheet-tc"></div>
                <div class="netv-sheet-bc"></div>
                <div class="netv-sheet-cl"></div>
                <div class="netv-sheet-cr"></div>
                <div class="netv-sheet-cc"></div>
                <div class="netv-sheet-body">
                    <div class="netv-header">
                        <div class="netv-header-jpeg"></div>
                    </div>
                        <%include file="/nav.mako" />
                        <%include file="/subnav.mako" />
                        <%include file="/subsubnav.mako" />
                </div>
                <div class="netv-content-layout">
                    <div class="netv-content-layout-row">
                        <div class="netv-layout-cell netv-sidebar1">
                           <div class="netv-vmenublock">
                                <div class="netv-vmenublock-tl"></div>
                                <div class="netv-vmenublock-tr"></div>
                                <div class="netv-vmenublock-bl"></div>
                                <div class="netv-vmenublock-br"></div>
                                <div class="netv-vmenublock-tc"></div>
                                <div class="netv-vmenublock-bc"></div>
                                <div class="netv-vmenublock-cl"></div>
                                <div class="netv-vmenublock-cr"></div>
                                <div class="netv-vmenublock-cc"></div>
                                <div class="netv-vmenublock-body">
                                    <div class="netv-vmenublockcontent">
                                        <div class="netv-vmenublockcontent-body">
                                            <!-- block-content -->
                                            <%include file="/leftcol/toolbox.mako" args="parent=self" />
                                            <div class="cleared"></div>
                                        </div>
                                    </div>
                                    <div class="cleared"></div>
                                </div>
                            </div>
## % if h.url_for() == '/': #Un/comment to enable/disable the sponsor box on the main page
                            <div class="netv-block">
                                <div class="netv-block-tl"></div>
                                <div class="netv-block-tr"></div>
                                <div class="netv-block-bl"></div>
                                <div class="netv-block-br"></div>
                                <div class="netv-block-tc"></div>
                                <div class="netv-block-bc"></div>
                                <div class="netv-block-cl"></div>
                                <div class="netv-block-cr"></div>
                                <div class="netv-block-cc"></div>
                                <div class="netv-block-body">
                                    <div class="netv-blockheader">
                                        <div class="l"></div>
                                        <div class="r"></div>
                                        <div class="t">News</div>
                                    </div>
                                    <div class="netv-blockcontent">
                                        <div class="netv-blockcontent-body">
                                            <!-- block-content -->
                                            <%include file="/leftcol/news.mako" />
                                            <!-- /block-content -->
                                            <div class="cleared"></div>
                                        </div>
                                    </div>
                                    <div class="cleared"></div>
                                </div>
                            </div>
                            <div class="netv-block">
                                <div class="netv-block-tl"></div>
                                <div class="netv-block-tr"></div>
                                <div class="netv-block-bl"></div>
                                <div class="netv-block-br"></div>
                                <div class="netv-block-tc"></div>
                                <div class="netv-block-bc"></div>
                                <div class="netv-block-cl"></div>
                                <div class="netv-block-cr"></div>
                                <div class="netv-block-cc"></div>
                                <div class="netv-block-body">
                                    <div class="netv-blockheader">
                                        <div class="l"></div>
                                        <div class="r"></div>
                                        <div class="t">Press</div>
                                    </div>
                                    <div class="netv-blockcontent">
                                        <div class="netv-blockcontent-body">
                                            <!-- block-content -->
                                            <%include file="/leftcol/in_the_press.mako" />
                                            <!-- /block-content -->
                                            <div class="cleared"></div>
                                        </div>
                                    </div>
                                    <div class="cleared"></div>
                                </div>
                            </div>
## % else:
                            <div class="netv-block">
                                <div class="netv-block-tl"></div>
                                <div class="netv-block-tr"></div>
                                <div class="netv-block-bl"></div>
                                <div class="netv-block-br"></div>
                                <div class="netv-block-tc"></div>
                                <div class="netv-block-bc"></div>
                                <div class="netv-block-cl"></div>
                                <div class="netv-block-cr"></div>
                                <div class="netv-block-cc"></div>
                                <div class="netv-block-body">
                                    <div class="netv-blockheader">
                                        <div class="l"></div>
                                        <div class="r"></div>
                                        <div class="t">Our Emperor Sponsors</div>
                                    </div>
                                    <div class="netv-blockcontent">
                                        <div class="netv-blockcontent-body">
                                            <!-- block-content -->
                                            <%include file="/leftcol/top_sponsors.mako" />
                                            <!-- /block-content -->
                                            <div class="cleared"></div>
                                        </div>
                                    </div>
                                    <div class="cleared"></div>
                                </div>
                            </div>
                            <div class="netv-block">
                                <div class="netv-block-tl"></div>
                                <div class="netv-block-tr"></div>
                                <div class="netv-block-bl"></div>
                                <div class="netv-block-br"></div>
                                <div class="netv-block-tc"></div>
                                <div class="netv-block-bc"></div>
                                <div class="netv-block-cl"></div>
                                <div class="netv-block-cr"></div>
                                <div class="netv-block-cc"></div>
                                <div class="netv-block-body">
                                    <div class="netv-blockheader">
                                        <div class="l"></div>
                                        <div class="r"></div>
                                        <div class="t">Other Sponsors</div>
                                    </div>
                                    <div class="netv-blockcontent">
                                        <div class="netv-blockcontent-body">
                                            <div id="sponsorsother" style="width: 200px; height:200px; margin:5px;">
                                                <img src="/images/sponsor_logos/fades/sponsor-catalyst-it.png">
                                            </div>
                                            <div class="cleared"></div>
                                        </div>
                                    </div>
                                    <div class="cleared"></div>
                                </div>
                            </div>

##% endif
                        </div>
                        <div class="netv-layout-cell netv-content">
                            <div class="netv-post">
                                <div class="netv-post-tl"></div>
                                <div class="netv-post-tr"></div>
                                <div class="netv-post-bl"></div>
                                <div class="netv-post-br"></div>
                                <div class="netv-post-tc"></div>
                                <div class="netv-post-bc"></div>
                                <div class="netv-post-cl"></div>
                                <div class="netv-post-cr"></div>
                                <div class="netv-post-cc"></div>
                                <div class="netv-post-body">
                                    <div class="netv-post-inner netv-article">
                                       <%include file="/flash.mako" />
                                        ${next.body()}
                                        <div class="netv-postcontent">
                                            <!-- article-content -->
                                            <div class="cleared"></div>
                                            <div class="netv-content-layout overview-table">
                                                <div class="netv-content-layout-row">
                                                    <div class="netv-layout-cell">
                                                    </div><!-- end cell -->
                                                </div><!-- end row -->
                                            </div><!-- end table -->
                                            <!-- /article-content -->
                                        </div>
                                        <div class="cleared"></div>
                                    </div>
                                    <div class="cleared"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="cleared"></div><div class="netv-footer">
                    <div class="netv-footer-inner">
                        <a href="/media/news/rss" class="netv-rss-tag-icon" title="RSS"></a>
                        <div class="netv-footer-text">
                            <p>&copy; 2011 <a href="http://linux.conf.au/">linux.conf.au 2012</a> and <a href="http://www.linux.org.au">Linux Australia</a> | Linux is a registered trademark of Linus Torvalds | <a href="http://validator.w3.org/check?uri=referer">Valid HTML 4.01</a> | <a href="/sitemap">Sitemap</a></p>
                        </div>
                        <div class="netv-footer-background"></div>
                        <div class="cleared"></div>
                    </div>
                </div>
                <div class="cleared"></div>
                <p class="netv-page-footer">&nbsp;</p>
            </div>
        </div>
        <script src="/js/prototype.js" type="text/javascript"></script>
        <script src="/js/scriptaculous.js?load=effects,builder" type="text/javascript"></script>
        <script src="/js/lightbox.js" type="text/javascript"></script>
    </body>
</html>
