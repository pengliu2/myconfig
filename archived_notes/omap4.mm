<map version="0.9.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="omap4" ID="ID_747894239" CREATED="1285012846472" MODIFIED="1285012850644">
<hook NAME="MapStyle" max_node_width="600"/>
<node TEXT="the source for omap_hwmod is in mainline:   arch/arm/mach-omap2/omap_hwmod.c  arch/arm/plat-omap/include/plat/omap_hwmod.h" POSITION="right" ID="ID_894758889" CREATED="1285012851617" MODIFIED="1285012853545"/>
<node POSITION="left" ID="ID_569035528" CREATED="1285015470594" MODIFIED="1285015496374">
<richcontent TYPE="NODE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      cpcap might have implemented an jtag interface: See uC debug
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="kernel source" POSITION="left" ID="ID_1339368323" CREATED="1291066144309" MODIFIED="1291066148727">
<node TEXT="commits" ID="ID_1937641122" CREATED="1287422505151" MODIFIED="1287422506950">
<node ID="ID_1143772273" CREATED="1287433310962" MODIFIED="1287433315811">
<richcontent TYPE="NODE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Author: Santosh Shilimkar
    </p>
    <p>
      Date: 2009-04-28 05:01 -500
    </p>
    <p>
      To: linux-arm-kernel
    </p>
    <p>
      CC: Santosh Shilimkar
    </p>
    <p>
      Subject: [PATCH 4/7] OMAP4: Update common omap platform common sources.
    </p>
    <p>
      This patch updates the common platform source files for OMAP4430.
    </p>
    <p>
      Few OMAP4 peripherals are common with OMAP3 architecture.
    </p>
  </body>
</html></richcontent>
<node ID="ID_1683747564" CREATED="1287434396095" MODIFIED="1287434482082">
<richcontent TYPE="NODE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      clk_get, clk_put,&#160;omap2_clk_prepare_for_reboot are all empty.
    </p>
  </body>
</html></richcontent>
</node>
<node ID="ID_620435328" CREATED="1287434519934" MODIFIED="1287434533609">
<richcontent TYPE="NODE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      defined&#160;omap44xx_io_desc[]
    </p>
  </body>
</html></richcontent>
</node>
<node ID="ID_1512957279" CREATED="1287434702652" MODIFIED="1287434713144">
<richcontent TYPE="NODE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      +#if defined(CONFIG_ARCH_OMAP4)
    </p>
    <p>
      +static struct omap_globals omap443x_globals = {
    </p>
    <p>
      +&#160;&#160;&#160;&#160;.class&#160;&#160;&#160;&#160;= OMAP443X_CLASS,
    </p>
    <p>
      +&#160;&#160;&#160;&#160;.tap&#160;&#160;&#160;&#160;= OMAP2_IO_ADDRESS(0x4830A000),
    </p>
    <p>
      +&#160;&#160;&#160;&#160;.ctrl&#160;&#160;&#160;&#160;= OMAP2_IO_ADDRESS(OMAP443X_CTRL_BASE),
    </p>
    <p>
      +&#160;&#160;&#160;&#160;.prm&#160;&#160;&#160;&#160;= OMAP2_IO_ADDRESS(OMAP4430_PRM_BASE),
    </p>
    <p>
      +&#160;&#160;&#160;&#160;.cm&#160;&#160;&#160;&#160;= OMAP2_IO_ADDRESS(OMAP4430_CM_BASE),
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="help"/>
</node>
<node ID="ID_239648260" CREATED="1287434840459" MODIFIED="1287434859297">
<richcontent TYPE="NODE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      defined address and basic operations for timer, gpio and&#160;sram
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node ID="ID_615338324" CREATED="1287434985244" MODIFIED="1287434988689">
<richcontent TYPE="NODE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Author: Shilimkar, Santosh
    </p>
    <p>
      Date: 2009-05-07 02:17 -500
    </p>
    <p>
      To: linux-arm-kernel@lists.arm.linux.org.uk
    </p>
    <p>
      CC: linux-omap@vger.kernel.org
    </p>
    <p>
      New-Topics: [PATCH 1/2][RFC] OMAP4: McBSP support for OMAP_4430SDP.
    </p>
    <p>
      Subject: [PATCH 0/3] OMAP4: SMP: Patch series
    </p>
  </body>
</html></richcontent>
</node>
<node ID="ID_1698728166" CREATED="1287435253814" MODIFIED="1287435255913">
<richcontent TYPE="NODE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Author: Shilimkar, Santosh
    </p>
    <p>
      Date: 2009-05-27 11:22 -500
    </p>
    <p>
      To: Russell King - ARM Linux
    </p>
    <p>
      CC: linux-arm-kernel@lists.arm.linux.org.uk, linux-omap@vger.kernel.org, Tony Lindgren
    </p>
    <p>
      Subject: [PATCH 0/4]ARM: OMAP4: SMP: Patch series
    </p>
  </body>
</html></richcontent>
<node TEXT="rebased everything onto arch SMP support" ID="ID_1147134956" CREATED="1287435287509" MODIFIED="1287435299654"/>
</node>
<node ID="ID_1805025764" CREATED="1287435435099" MODIFIED="1287435437674">
<richcontent TYPE="NODE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Author: Nayak, Rajendra
    </p>
    <p>
      Date: 2009-08-10 07:23 -500
    </p>
    <p>
      To: linux-arm-kernel@lists.arm.linux.org.uk
    </p>
    <p>
      Subject: [PATCH 0/6] Basic OMAP4 PRCM register def series
    </p>
  </body>
</html></richcontent>
<node TEXT="new CM2 base for OMAP4" ID="ID_354296732" CREATED="1287435506206" MODIFIED="1287435513837"/>
<node ID="ID_1822760210" CREATED="1287435694662" MODIFIED="1287435700646">
<richcontent TYPE="NODE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      void __init omap2_set_globals_443x(void)
    </p>
    <p>
      &#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;omap2_set_globals_tap(&amp;omap4_globals);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;omap2_set_globals_control(&amp;omap4_globals);
    </p>
    <p>
      +&#160;&#160;&#160;&#160;omap2_set_globals_prcm(&amp;omap4_globals);
    </p>
    <p>
      &#160;}
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="help"/>
</node>
<node ID="ID_33173944" CREATED="1287435795145" MODIFIED="1287435798351">
<richcontent TYPE="NODE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Author: Nayak, Rajendra
    </p>
    <p>
      Date: 2009-08-12 09:26 -500
    </p>
    <p>
      To: linux-arm-kernel@lists.arm.linux.org.uk
    </p>
    <p>
      CC: linux-omap@vger.kernel.org
    </p>
    <p>
      Subject: [PATCH v2 0/6] Basic OMAP4 PRCM register def series
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node ID="ID_651547510" CREATED="1287422679452" MODIFIED="1287422683578">
<richcontent TYPE="NODE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      From rnayak at ti.com&#160;&#160;Tue Dec&#160;&#160;8 13:15:42 2009
    </p>
    <p>
      From: rnayak at ti.com (Nayak, Rajendra)
    </p>
    <p>
      Date: Tue, 8 Dec 2009 23:45:42 +0530
    </p>
    <p>
      Subject: [PATCH v2 0/6] Basic OMAP4 PRCM register def series
    </p>
    <p>
      Message-ID: &lt;5A47E75E594F054BAF48C5E4FC4B92AB030ACBF80B@dbde02.ent.ti.com&gt;
    </p>
  </body>
</html></richcontent>
</node>
<node ID="ID_57950735" CREATED="1287422729801" MODIFIED="1287422732415">
<richcontent TYPE="NODE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      From rnayak at ti.com&#160;&#160;Tue Dec&#160;&#160;8 13:31:37 2009
    </p>
    <p>
      From: rnayak at ti.com (Nayak, Rajendra)
    </p>
    <p>
      Date: Wed, 9 Dec 2009 00:01:37 +0530
    </p>
    <p>
      Subject: [PATCH v2 0/5] OMAP4 clock framework support
    </p>
    <p>
      Message-ID: &lt;5A47E75E594F054BAF48C5E4FC4B92AB030ACBF80D@dbde02.ent.ti.com&gt;
    </p>
  </body>
</html></richcontent>
<node TEXT="for 2.6.32" ID="ID_612035860" CREATED="1287437521327" MODIFIED="1287437527848"/>
</node>
<node ID="ID_1225725739" CREATED="1287422888662" MODIFIED="1287437740701">
<richcontent TYPE="NODE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      From abhijitpagare at ti.com&#160;&#160;Fri Dec 11 05:45:59 2009
    </p>
    <p>
      From: abhijitpagare at ti.com (Pagare, Abhijit)
    </p>
    <p>
      Date: Fri, 11 Dec 2009 16:15:59 +0530
    </p>
    <p>
      Subject: [PATCH 0/5] OMAP4 Power Domain Framework Support
    </p>
    <p>
      Message-ID: &lt;EAF47CD23C76F840A9E7FCE10091EFAB02BC14194C@dbde02.ent.ti.com&gt;
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="yes"/>
</node>
<node ID="ID_1676894265" CREATED="1287423549673" MODIFIED="1287437734521">
<richcontent TYPE="NODE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      From abhijitpagare at ti.com&#160;&#160;Tue Dec 15 08:51:52 2009
    </p>
    <p>
      From: abhijitpagare at ti.com (Pagare, Abhijit)
    </p>
    <p>
      Date: Tue, 15 Dec 2009 19:21:52 +0530
    </p>
    <p>
      Subject: [v2 PATCH 0/5] OMAP4 Clock Domain Framework Support
    </p>
    <p>
      Message-ID: &lt;EAF47CD23C76F840A9E7FCE10091EFAB02BC240732@dbde02.ent.ti.com&gt;
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="yes"/>
<node ID="ID_794205130" CREATED="1287442909822" MODIFIED="1287443618113">
<richcontent TYPE="NODE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      add clkdm_init(clockdomains_omap, clkdm_pwrdm_autodeps); in void __init omap2_init_common_hw()
    </p>
    <p>
      
    </p>
    <p>
      and in clkdm_init, use the autodeps values in parameter list
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node ID="ID_884472735" CREATED="1287423694464" MODIFIED="1287423697248">
<richcontent TYPE="NODE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      From abhijitpagare at ti.com&#160;&#160;Wed Dec 23 10:47:18 2009
    </p>
    <p>
      From: abhijitpagare at ti.com (Abhijit Pagare)
    </p>
    <p>
      Date: Wed, 23 Dec 2009 21:17:18 +0530
    </p>
    <p>
      Subject: [PATCH 1/1] ARM: OMAP4: PM: Add check for avoiding dependency related
    </p>
    <p>
      update.
    </p>
  </body>
</html></richcontent>
</node>
<node ID="ID_1225816054" CREATED="1287423773557" MODIFIED="1287423775950">
<richcontent TYPE="NODE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      From paul at pwsan.com&#160;&#160;Tue Jan&#160;&#160;5 18:06:45 2010
    </p>
    <p>
      From: paul at pwsan.com (Paul Walmsley)
    </p>
    <p>
      Date: Tue, 5 Jan 2010 16:06:45 -0700 (MST)
    </p>
    <p>
      Subject: [PATCH] ARM: OMAP4 clock domains : Add the missing Clock Domain
    </p>
    <p>
      Structure
    </p>
  </body>
</html></richcontent>
</node>
<node ID="ID_380865407" CREATED="1287423813896" MODIFIED="1287423817870">
<richcontent TYPE="NODE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      From abhijitpagare at ti.com&#160;&#160;Fri Jan&#160;&#160;8 06:59:04 2010
    </p>
    <p>
      From: abhijitpagare at ti.com (Abhijit Pagare)
    </p>
    <p>
      Date: Fri,&#160;&#160;8 Jan 2010 17:29:04 +0530
    </p>
    <p>
      Subject: [PATCH] ARM: OMAP4: Power Domains: Remove the return as power domain
    </p>
    <p>
      framework is in place
    </p>
  </body>
</html></richcontent>
</node>
<node ID="ID_648706119" CREATED="1287423848438" MODIFIED="1287423850888">
<richcontent TYPE="NODE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      From rnayak at ti.com&#160;&#160;Mon Jan 11 01:05:52 2010
    </p>
    <p>
      From: rnayak at ti.com (Rajendra Nayak)
    </p>
    <p>
      Date: Mon, 11 Jan 2010 11:35:52 +0530
    </p>
    <p>
      Subject: [PATCH 3/3] OMAP4: clocks: Fix the clksel_rate struct DPLL divs
    </p>
    <p>
      In-Reply-To: &lt;1263189952-13448-2-git-send-email-rnayak@ti.com&gt;
    </p>
    <p>
      References: &lt;1263189952-13448-1-git-send-email-rnayak@ti.com&gt;
    </p>
    <p>
      &lt;1263189952-13448-2-git-send-email-rnayak@ti.com&gt;
    </p>
    <p>
      Message-ID: &lt;1263189952-13448-3-git-send-email-rnayak@ti.com&gt;
    </p>
  </body>
</html></richcontent>
</node>
<node ID="ID_12127420" CREATED="1287423931571" MODIFIED="1287423935137">
<richcontent TYPE="NODE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      From abhijitpagare at ti.com&#160;&#160;Thu Jan 21 01:21:32 2010
    </p>
    <p>
      From: abhijitpagare at ti.com (Pagare, Abhijit)
    </p>
    <p>
      Date: Thu, 21 Jan 2010 11:51:32 +0530
    </p>
    <p>
      Subject: [PATCH] OMAP CPU ID: fix OMAP4 build failure
    </p>
    <p>
      In-Reply-To: &lt;alpine.DEB.2.00.1001202008530.3977@utopia.booyaka.com&gt;
    </p>
    <p>
      References: &lt;alpine.DEB.2.00.1001191412130.3977@utopia.booyaka.com&gt;
    </p>
    <p>
      &lt;EAF47CD23C76F840A9E7FCE10091EFAB02C07CC987@dbde02.ent.ti.com&gt;
    </p>
    <p>
      &lt;alpine.DEB.2.00.1001202008530.3977@utopia.booyaka.com&gt;
    </p>
    <p>
      Message-ID: &lt;EAF47CD23C76F840A9E7FCE10091EFAB02C07CCF8B@dbde02.ent.ti.com&gt;
    </p>
  </body>
</html></richcontent>
</node>
<node ID="ID_485580459" CREATED="1287424017301" MODIFIED="1287424023140">
<richcontent TYPE="NODE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      From abhijitpagare at ti.com&#160;&#160;Wed Feb 10 03:12:03 2010
    </p>
    <p>
      From: abhijitpagare at ti.com (Abhijit Pagare)
    </p>
    <p>
      Date: Wed, 10 Feb 2010 13:42:03 +0530
    </p>
    <p>
      Subject: [PATCH] ARM: OMAP4 clock domain: Add check for avoiding dependency
    </p>
    <p>
      related update.
    </p>
    <p>
      Message-ID: &lt;1265789523-6413-1-git-send-email-abhijitpagare@ti.com&gt;
    </p>
  </body>
</html></richcontent>
</node>
<node ID="ID_1016307955" CREATED="1287424069579" MODIFIED="1287424072548">
<richcontent TYPE="NODE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      From santosh.shilimkar at ti.com&#160;&#160;Thu Feb 18 03:59:08 2010
    </p>
    <p>
      From: santosh.shilimkar at ti.com (Santosh Shilimkar)
    </p>
    <p>
      Date: Thu, 18 Feb 2010 14:29:08 +0530
    </p>
    <p>
      Subject: [PATCH 3/9] omap4: sdma: Enable the idle modes on omap4
    </p>
  </body>
</html></richcontent>
</node>
<node ID="ID_1100156729" CREATED="1287424125996" MODIFIED="1287424128739">
<richcontent TYPE="NODE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      &gt; From: Paul Walmsley [mailto:paul at pwsan.com]
    </p>
    <p>
      &gt; Sent: Thursday, February 18, 2010 11:06 PM
    </p>
    <p>
      &gt; To: Shilimkar, Santosh
    </p>
    <p>
      &gt; Cc: Tony Lindgren; linux-omap at vger.kernel.org; linux-arm-kernel
    </p>
    <p>
      &gt; Subject: Re: [PATCH 0/9] omap4 updates for 2.6.34
    </p>
  </body>
</html></richcontent>
</node>
<node ID="ID_1198941478" CREATED="1287424193573" MODIFIED="1287424196451">
<richcontent TYPE="NODE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      From paul at pwsan.com&#160;&#160;Mon Feb 22 23:50:58 2010
    </p>
    <p>
      From: paul at pwsan.com (Paul Walmsley)
    </p>
    <p>
      Date: Mon, 22 Feb 2010 21:50:58 -0700
    </p>
    <p>
      Subject: [PATCH 10/11] OMAP4: clock: Add dummy clock nodes for interface clocks
    </p>
  </body>
</html></richcontent>
</node>
<node ID="ID_878392399" CREATED="1287424684886" MODIFIED="1287424686802">
<richcontent TYPE="NODE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      From tony at atomide.com&#160;&#160;Mon May 17 22:42:56 2010
    </p>
    <p>
      From: tony at atomide.com (Tony Lindgren)
    </p>
    <p>
      Date: Mon, 17 May 2010 19:42:56 -0700
    </p>
    <p>
      Subject: [PATCH 05/13] omap4: Enable RTC and regulator support
    </p>
  </body>
</html></richcontent>
</node>
<node ID="ID_1205842408" CREATED="1287424699668" MODIFIED="1287424701764">
<richcontent TYPE="NODE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      From tony at atomide.com&#160;&#160;Mon May 17 22:42:59 2010
    </p>
    <p>
      From: tony at atomide.com (Tony Lindgren)
    </p>
    <p>
      Date: Mon, 17 May 2010 19:42:59 -0700
    </p>
    <p>
      Subject: [PATCH 06/13] omap4: Adds Dummy Interface clock's for MMC controllers
    </p>
  </body>
</html></richcontent>
</node>
<node ID="ID_1814242077" CREATED="1287424733576" MODIFIED="1287424735605">
<richcontent TYPE="NODE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      From paul at pwsan.com&#160;&#160;Tue May 18 22:18:42 2010
    </p>
    <p>
      From: paul at pwsan.com (Paul Walmsley)
    </p>
    <p>
      Date: Tue, 18 May 2010 20:18:42 -0600
    </p>
    <p>
      Subject: [PATCH 04/22] OMAP4: hwmod: Replace OCPIF_HAS_IDLEST by
    </p>
    <p>
      HWMOD_NO_IDLEST
    </p>
  </body>
</html></richcontent>
</node>
<node ID="ID_1257100922" CREATED="1287424883320" MODIFIED="1287424886449">
<richcontent TYPE="NODE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      From khilman at deeprootsystems.com&#160;&#160;Wed Sep 15 19:55:40 2010
    </p>
    <p>
      From: khilman at deeprootsystems.com (Kevin Hilman)
    </p>
    <p>
      Date: Wed, 15 Sep 2010 16:55:40 -0700
    </p>
    <p>
      Subject: [PATCH 04/10] OMAP4: pm.c extensions for OMAP4 support
    </p>
  </body>
</html></richcontent>
</node>
<node ID="ID_202713206" CREATED="1287424954757" MODIFIED="1287424956538">
<richcontent TYPE="NODE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      From govindraj.raja at ti.com&#160;&#160;Fri Sep 17 12:06:01 2010
    </p>
    <p>
      From: govindraj.raja at ti.com (Govindraj.R)
    </p>
    <p>
      Date: Fri, 17 Sep 2010 21:36:01 +0530 (IST)
    </p>
    <p>
      Subject: [PATCH 01/11] OMAP4: UART: Add uart1-4 hwmods data for omap4
    </p>
    <p>
      Message-ID: &lt;13974.10.24.255.18.1284739561.squirrel@dbdmail.itg.ti.com&gt;
    </p>
  </body>
</html></richcontent>
</node>
<node ID="ID_131628032" CREATED="1287424990772" MODIFIED="1287424992387">
<richcontent TYPE="NODE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      From charu at ti.com&#160;&#160;Tue Sep 21 09:37:06 2010
    </p>
    <p>
      From: charu at ti.com (Varadarajan, Charulatha)
    </p>
    <p>
      Date: Tue, 21 Sep 2010 19:07:06 +0530
    </p>
    <p>
      Subject: [PATCH v7 4/6] OMAP4: hwmod data: Add watchdog timer
    </p>
  </body>
</html></richcontent>
</node>
<node ID="ID_1872303271" CREATED="1287425015946" MODIFIED="1287425019435">
<richcontent TYPE="NODE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      From paul at pwsan.com&#160;&#160;Tue Sep 21 12:34:48 2010
    </p>
    <p>
      From: paul at pwsan.com (Paul Walmsley)
    </p>
    <p>
      Date: Tue, 21 Sep 2010 10:34:48 -0600
    </p>
    <p>
      Subject: [PATCH 06/11] OMAP4: prcm: Add temporarily helper functions for rmw
    </p>
    <p>
      and read inside the PRM
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node TEXT="omap4" ID="ID_1534342605" CREATED="1291066174109" MODIFIED="1291066180325">
<node TEXT="OMAP4&#xa;&#xa;    * Site: http://dev.omapzoom.org&#xa;    * git clone git://dev.omapzoom.org/pub/scm/integration/kernel-omap4.git &#xa;&#xa;OMAP3&#xa;&#xa;    * Site: http://dev.omapzoom.org&#xa;    * git clone git://dev.omapzoom.org/pub/scm/integration/kernel-omap3.git" ID="ID_1622187091" CREATED="1291066215276" MODIFIED="1291066217355"/>
<node TEXT="Android Kernel&#xa;&#xa;OMAP3/OMAP4&#xa;&#xa;    * Site: http://android.git.kernel.org/?p=kernel/omap.git&#xa;    * repo init -u git://android.git.kernel.org/platform/manifest.git" ID="ID_337203719" CREATED="1291066231219" MODIFIED="1291066233115"/>
</node>
<node TEXT="power management" ID="ID_1182060910" CREATED="1295806432542" MODIFIED="1295806436263">
<node TEXT="suspend" ID="ID_1101789063" CREATED="1295806437797" MODIFIED="1295806443864">
<node ID="ID_398612319" CREATED="1295806449075" MODIFIED="1295806709058">
<richcontent TYPE="NODE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      suspend.c:
    </p>
    <ul>
      <li>
        suspend_enter

        <ul>
          <li>
            sysdev_suspend
          </li>
          <li>
            suspend_ops-&gt;enter&#160;&#160;== omap4_pm_enter
          </li>
        </ul>
        <p>
          
        </p>
      </li>
    </ul>
    <p>
      pm44xx.c:
    </p>
    <ul>
      <li>
        omap4_pm_enter

        <ul>
          <li>
            omap4_pm_suspend&#160;&#160;FOR STANDBY and MEM
          </li>
        </ul>
        <p>
          
        </p>
      </li>
    </ul>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="cpuidle" ID="ID_575693252" CREATED="1295807287918" MODIFIED="1295807290334">
<node ID="ID_458958329" CREATED="1295807308409" MODIFIED="1295808201424">
<richcontent TYPE="NODE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      In cpuidle.c, calling enter enter for target_state.
    </p>
    <p>
      
    </p>
    <p>
      For omap4, the enter function for states are omap4_enter_idle_bm or omap4_enter_idle.
    </p>
    <p>
      
    </p>
    <p>
      They are finally calling omap4_enter_sleep in pm44xx.c
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
</node>
<node TEXT="audio" POSITION="right" ID="ID_746019209" CREATED="1290875426983" MODIFIED="1290875428443"/>
<node TEXT="power IC" POSITION="right" ID="ID_912453617" CREATED="1295140395208" MODIFIED="1295140397530">
<node TEXT="LDO and switches" ID="ID_789906208" CREATED="1295143212145" MODIFIED="1295143219826">
<node TEXT="&#xa;&#x5f88;&#x591a;&#x6709;&#x5173;&#x7535;&#x6e90;&#x7684;&#x4e66;&#x7c4d;&#x5728;&#x8fd9;&#x65b9;&#x9762;&#x90fd;&#x6709;&#x8be6;&#x5c3d;&#x7684;&#x8bba;&#x8ff0;&#x3002;&#x6982;&#x62ec;&#x5730;&#x8bb2;&#xff0c;linear regulator &#x7684;&#x8c03;&#x6574;&#x7ba1;&#x5de5;&#x4f5c;&#x5728;&#x7ebf;&#x6027;&#x72b6;&#x6001;&#xff0c;&#x6839;&#x636e;&#x8d1f;&#x8f7d;&#x7684;&#x53d8;&#x5316;&#x60c5;&#x51b5;&#x6765;&#x8c03;&#x8282;&#x81ea;&#x8eab;&#x7684;&#x5185;&#x7535;&#x963b;&#x4ece;&#x800c;&#x7a33;&#x5b9a;&#x8f93;&#x51fa;&#x7535;&#x538b;&#x3002;&#x5b83;&#x53ea;&#x80fd;&#x505a;&#x964d;&#x538b;&#x8f6c;&#x6362;&#xff0c;&#x7535;&#x8def;&#x7b80;&#x5355;&#xff0c;&#x566a;&#x58f0;&#x4f4e;&#xff0c;&#x8f6c;&#x6362;&#x6548;&#x7387;&#x53ef;&#x4ee5;&#x7b80;&#x5355;&#x5730;&#x770b;&#x4f5c;&#x8f93;&#x51fa;&#x4e0e;&#x8f93;&#x5165;&#x7535;&#x538b;&#x4e4b;&#x6bd4;&#xff0c;&#x4e00;&#x822c;&#x7528;&#x4e8e;&#x4f4e;&#x538b;&#x5dee;&#xff0c;&#x5c0f;&#x529f;&#x7387;&#x7684;&#x573a;&#x5408;&#x3002;switch regulator&#x8c03;&#x6574;&#x7ba1;&#x5de5;&#x4f5c;&#x5728;&#x5f00;&#x5173;&#x72b6;&#x6001;&#xff0c;&#x901a;&#x8fc7;&#x8c03;&#x8282;&#x5bfc;&#x901a;&#x548c;&#x5173;&#x65ad;&#x7684;&#x65f6;&#x95f4;&#x6bd4;&#x4f8b;&#x7a33;&#x5b9a;&#x8f93;&#x51fa;&#x7535;&#x538b;&#xff0c;&#x53ef;&#x7075;&#x6d3b;&#x5b9e;&#x73b0;&#x7535;&#x538b;&#x7684;&#x5927;&#x5c0f;&#x548c;&#x6781;&#x6027;&#x7684;&#x4e0d;&#x540c;&#x8f6c;&#x6362;&#x3002;&#x826f;&#x597d;&#x7684;&#x8bbe;&#x8ba1;&#x53ef;&#x5b9e;&#x73b0;&#x8f83;&#x9ad8;&#x7684;&#x8f6c;&#x6362;&#x6548;&#x7387;&#xff0c;&#x7535;&#x8def;&#x76f8;&#x5bf9;&#x590d;&#x6742;&#xff0c;&#x5b58;&#x5728;&#x5f00;&#x5173;&#x566a;&#x58f0;&#x3002;&#x5728;linear regulator&#x4e0d;&#x9002;&#x7528;&#x7684;&#x573a;&#x5408;&#x90fd;&#x53ef;&#x4ee5;&#x5e94;&#x7528;&#x3002;&#xa;&#xa; &#xa;&#xa;switch &#x65b9;&#x5f0f;&#x6700;&#x4e3b;&#x8981;&#x7684;&#x597d;&#x8655;&#x662f;&#x6548;&#x7387;(Po/Pi)&#x7684;&#x63d0;&#x5347;, &#x800c;&#x4e14;&#x53ef;&#x4ee5;&#x505a;&#x5347;&#x58d3;(boost), &#x964d;&#x58d3;(buck), &#x5347;&#x964d;&#x58d3;(boost-buck). &#x800c;Linear regulator &#x6548;&#x7387;&#x4f4e;&#x65bc;switch, &#x7531;&#x65bc;&#x8f38;&#x51fa;&#x96fb;&#x58d3;&#x5c0f;&#x65bc;&#x8f38;&#x5165;&#x96fb;&#x58d3;. &#x76ee;&#x524d;Power supply &#x9700;&#x6c42;&#x5927;&#x529f;&#x7387;(etc. 200W) &#x90fd;&#x662f;&#x63a1;&#x7528;switch. &#x800c;&#x5c0f;&#x96fb;&#x6d41;(mA)&#x7684;&#x5c31;&#x6bd4;&#x8f03;&#x5e38;&#x898b;&#x7528;regulator.&#xa;&#xa;&#x518d;&#x88dc;&#x5145;&#x4e00;&#x9ede;:&#xa;switching regulator&#x9700;&#x8981;&#x5916;&#x52a0;&#x96fb;&#x611f;,&#x96fb;&#x963b;&#x548c;&#x96fb;&#x5bb9;,&#x5982;&#x679c;&#x8981;&#x63d0;&#x4f9b;&#x8d85;&#x904e;500mA&#x7684;&#x60c5;&#x6cc1;,&#x901a;&#x5e38;&#x6703;&#x6bd4;&#x8f03;&#x5efa;&#x8b70;&#x63a1;&#x7528;&#x5916;&#x52a0;Power MOSFET&#xa;&#x5982;&#x679c;&#x662f;linear regulator,&#x4e00;&#x822c;&#x4f86;&#x8aaa;&#x5927;&#x90fd;&#x662f;on-chip build-in,&#x6240;&#x80fd;&#x63d0;&#x4f9b;&#x7684;&#x96fb;&#x6d41;&#x5927;&#x90fd;&#x4e0d;&#x6703;&#x8d85;&#x904e;100mA(&#x6cdb;&#x6307;&#x5728;SOC),&#x56e0;&#x70ba;&#x82e5;&#x8981;&#x63d0;&#x4f9b;&#x5927;&#x96fb;&#x6d41;,&#x5176;POWER MOSFET&#x7684;Size&#x5c31;&#x8981;&#x5f88;&#x5927;,&#x800c;&#x4e14;&#x6703;&#x6709;current density&#x7684;&#x554f;&#x984c;,&#x5982;&#x679c;&#x8981;linear regulator&#x4e14;&#x53c8;&#x8981;&#x8d85;&#x904e;100mA,&#x7d55;&#x5927;&#x90e8;&#x4efd;&#x662f;&#x63a1;&#x7528;&#x5916;&#x63a5;&#x7684;BJT&#xa;&#xa;&#x88dc;&#x5145;&#x4e00;&#x4e0b;&#x5728;&#x61c9;&#x7528;&#x65b9;&#x9762;&#xa;&#x7531;&#x65bc;ldo&#x7684;noise&#x8f03;&#x5c0f;,&#x6545;&#x5e38;&#x7528;&#x5728;RF&#x96fb;&#x8def;&#x4e0a;&#xa;&#xa;                            LDO                         switching converter&#xa;efficiency              poor                 Up to 95% and average about 90%&#xa;conversion ratio   step down only                 step down/up inverting&#xa;output ripple           small                            moderate&#xa;load capability        moderate                  Be able to above 500 mA&#xa;footprint area          small                             large&#xa;&#xa;http://tech.digitimes.com.tw/print.aspx?zNotesDocId=338461225499436548256F47001F5D07&#xa;&#xa;&#x5404;&#x7a2e;&#x76f4;&#x63a5;&#x96fb;&#x6e90;&#x8f49;&#x63db;&#x6280;&#x8853;&#x4e4b;&#x512a;&#x52a3;&#x6bd4;&#x8f03;&#xa;&#xa;&#x3000;&#x5728;&#x77ad;&#x89e3;&#x624b;&#x6301;&#x88dd;&#x7f6e;&#x5167;&#x6709;&#x54ea;&#x4e9b;&#x7528;&#x96fb;&#x7d44;&#x4ef6;&#xff0c;&#x4ee5;&#x53ca;&#x6709;&#x54ea;&#x4e9b;&#x53ef;&#x7528;&#x7684;&#x4f9b;&#x96fb;&#x4f86;&#x6e90;&#x5f8c;&#xff0c;&#x63a5;&#x8457;&#x6211;&#x5011;&#x5c07;&#x4f86;&#x8a0e;&#x8ad6;&#x4f9b;&#x96fb;&#x8207;&#x7528;&#x96fb;&#x9593;&#x7684;&#x96fb;&#x6e90;&#x8f49;&#x63db;&#x65b9;&#x5f0f;&#xff0c;&#x800c;&#x7d55;&#x5927;&#x591a;&#x6578;&#x90fd;&#x662f;DC/DC&#x7684;&#x76f4;&#x6d41;&#x9593;&#x8f49;&#x63db;&#xff0c;&#x539f;&#x56e0;&#x662f;AC/DC&#x7684;&#x4ea4;&#x76f4;&#x6d41;&#x8f49;&#x63db;&#x591a;&#x534a;&#x5728;&#x5916;&#x90e8;&#x8b8a;&#x58d3;&#x5668;&#x4e2d;&#x8f49;&#x63db;&#x5b8c;&#x6210;&#xff08;&#x900f;&#x904e;&#x6a4b;&#x5f0f;&#x6574;&#x6d41;&#x5668;&#x3001;&#x6ffe;&#x6ce2;&#x96fb;&#x5bb9;&#xff09;&#xff0c;&#x5230;&#x88dd;&#x7f6e;&#x5167;&#x5df2;&#x7121;&#x9700;&#x8003;&#x616e;&#x6b64;&#x6bb5;&#x904e;&#x7a0b;&#x3002;&#xa;&#xa;&#x3000;&#x76f4;&#x6d41;&#x8f49;&#x63db;&#x4e3b;&#x8981;&#x5206;&#x6210;&#x5169;&#x7a2e;&#x65b9;&#x5f0f;&#xff0c;&#x5373;&#x662f;&#x7dda;&#x6027;&#x8abf;&#x6574;&#xff08;Linear Regulator&#xff09;&#x8207;&#x5207;&#x63db;&#x5f0f;&#x8abf;&#x6574;&#xff08;Switch Regulator&#xff0c;&#x4ea6;&#x7a31;&#xff1a;&#x958b;&#x95dc;&#x5f0f;&#x3001;&#x4ea4;&#x63db;&#x5f0f;&#xff09;&#xff0c;&#x7dda;&#x6027;&#x8abf;&#x6574;&#x50c5;&#x80fd;&#x7528;&#x5728;&#x964d;&#x4f4e;&#x8f38;&#x51fa;&#x96fb;&#x58d3;&#xff0c;&#x56e0;&#x6b64;&#x4e5f;&#x7a31;&#x7dda;&#x6027;&#x964d;&#x58d3;&#xff1b;&#x800c;&#x5207;&#x63db;&#x5f0f;&#x8abf;&#x6574;&#x5247;&#x53ef;&#x4ee5;&#x5347;&#x58d3;&#xff08;Boost&#xff09;&#x3001;&#x964d;&#x58d3;&#xff08;Buck&#xff09;&#x3001;&#x751a;&#x81f3;&#x53cd;&#x76f8;&#xff08;Invert&#xff0c;&#x8f49;&#x6210;&#x8ca0;&#x5411;&#x96fb;&#x58d3;&#xff09;&#x3002;&#xa;&#xa;&#x3000;&#x9032;&#x4e00;&#x6b65;&#x7684;&#xff0c;&#x5207;&#x63db;&#x8abf;&#x6574;&#x53c8;&#x5206;&#x6210;&#x96fb;&#x5bb9;&#x5f0f;&#x5207;&#x63db;&#x8207;&#x96fb;&#x611f;&#x5f0f;&#x5207;&#x63db;&#xff0c;&#x96fb;&#x5bb9;&#x5f0f;&#x5207;&#x63db;&#x591a;&#x88ab;&#x53e6;&#x7a31;&#x6210;Charge Pump&#xff08;&#x96fb;&#x8377;&#x6cf5;&#x3001;&#x6216;&#x7a31;&#x96fb;&#x8377;&#x5e6b;&#x6d66;&#xff09;&#xff1b;&#x800c;&#x4e00;&#x822c;&#x82e5;&#x7121;&#x7279;&#x5225;&#x6307;&#x660e;&#xff0c;&#x5247;&#x63d0;&#x5230;&#x5207;&#x63db;&#x5f0f;&#x8abf;&#x6574;&#x5373;&#x662f;&#x6307;&#x96fb;&#x611f;&#x5f0f;&#x5207;&#x63db;&#x3002;&#xa;&#xa;&#x3000;&#x5f9e;&#x6027;&#x8cea;&#x800c;&#x8a00;&#x50c5;&#x6709;&#x4e0a;&#x8ff0;&#x7684;&#x5206;&#x985e;&#xff0c;&#x4f46;&#x7b46;&#x8005;&#x767c;&#x73fe;&#x5404;&#x5143;&#x4ef6;&#x4f9b;&#x61c9;&#x5546;&#x6703;&#x518d;&#x9032;&#x884c;&#x66f4;&#x591a;&#x7684;&#x5ef6;&#x4f38;&#x5340;&#x5225;&#xff0c;&#x5982;Linear Regulator&#x65b9;&#x9762;&#x591a;&#x51fa;&#x4e86;&#x4e00;&#x7a2e;LDO&#xff08;Low Drop Out&#xff0c;&#x4f4e;&#x6d88;&#x6563;&#xff09;&#x985e;&#x578b;&#xff0c;&#x5f37;&#x8abf;&#x8f38;&#x5165;&#x96fb;&#x58d3;&#x4e0d;&#x9700;&#x9ad8;&#x51fa;&#x8f38;&#x51fa;&#x96fb;&#x58d3;&#x592a;&#x591a;&#x5373;&#x53ef;&#x7a69;&#x58d3;&#x904b;&#x4f5c;&#xff0c;&#x4f46;&#x672c;&#x8cea;&#x4e0a;&#x4f9d;&#x7136;&#x662f;&#x7dda;&#x6027;&#x964d;&#x58d3;&#xff0c;&#x53ea;&#x662f;&#x96fb;&#x6c23;&#x8868;&#x73fe;&#x4e0a;&#x66f4;&#x70ba;&#x5353;&#x8d8a;&#x3002;&#xa;&#xa;&#x3000;&#x53e6;&#x5916;&#xff0c;Switch Regulator&#x4e5f;&#x5728;DC/DC Switch Controller&#x5916;&#x884d;&#x751f;&#x51fa;&#x4e00;&#x7a2e;DC/DC Switch Converter&#xff0c;&#x5dee;&#x5225;&#x53ea;&#x5728;&#x65bc;&#x628a;Controller&#x5916;&#x90e8;&#x642d;&#x914d;&#x7684;&#x4e09;&#x500b;&#x96e2;&#x6563;&#x5143;&#x4ef6;&#xff1a;P FET&#x3001;N FET&#x3001;&#x96fb;&#x611f;&#xff0c;&#x5176;&#x4e2d;P FET&#x3001;N FET&#x6539;&#x6210;&#x5167;&#x5efa;&#xff0c;&#x4f46;&#x4ecd;&#x9700;&#x8981;&#x5916;&#x63a5;&#x96fb;&#x611f;&#xff0c;&#x6b64;&#x4f5c;&#x6cd5;&#x4e3b;&#x8981;&#x662f;&#x8b93;&#x8a2d;&#x8a08;&#x6642;&#x66f4;&#x65b9;&#x4fbf;&#x3001;&#x88fd;&#x9020;&#x6642;&#x66f4;&#x7701;&#x7a7a;&#x9593;&#xff0c;&#x7136;&#x4e5f;&#x56e0;&#x70ba;&#x63a1;&#x5167;&#x5efa;&#x5f0f;&#x7684;FET&#x5207;&#x63db;&#x958b;&#x95dc;&#xff0c;&#x4f7f;&#x8f49;&#x63db;&#x80fd;&#x529b;&#x53d7;&#x5230;&#x9650;&#x5236;&#xff0c;&#x591a;&#x534a;&#x4f4e;&#x65bc; Controller&#x7684;&#x4f9b;&#x96fb;&#x529b;&#xff0c;&#x800c;&#x904b;&#x4f5c;&#x539f;&#x7406;&#x8207;&#x7279;&#x6027;&#x7686;&#x8207;Controller&#x76f8;&#x540c;&#x3002;&#x4e0d;&#x904e;&#x5373;&#x4fbf;&#x4f9b;&#x96fb;&#x529b;&#x8f03;DC/DC Controller&#x5c0f;&#xff0c;&#x4f46;&#x5c0d;&#x624b;&#x6301;&#x88dd;&#x7f6e;&#x800c;&#x8a00;&#x537b;&#x90fd;&#x5df2;&#x8db3;&#x5920;&#xff0c;&#x6240;&#x4ee5;&#x624b;&#x6301;&#x88dd;&#x7f6e;&#x5167;&#x5e7e;&#x4e4e;&#x90fd;&#x7528;DC/DC Converter&#xff0c;&#x5c11;&#x898b;DC/DC Controller&#xff0c;&#x4e14;&#x6709;&#x52a9;&#x65bc;&#x6e1b;&#x5c11;&#x6a5f;&#x5167;&#x7a7a;&#x9593;&#x7684;&#x4f54;&#x7528;&#x3002;&#xa;&#xa;&#x3000;&#x9664;&#x4e86;&#x8f49;&#x63db;&#x3001;&#x8abf;&#x6574;&#x65b9;&#x5f0f;&#x7684;&#x4e0d;&#x540c;&#xff0c;Linear Regulator&#x3001;Charge Pump&#x3001;Switch Regulator&#x4e09;&#x8005;&#x6240;&#x8f49;&#x63db;&#x51fa;&#x7684;&#x76f4;&#x6d41;&#x96fb;&#x6e90;&#x6f54;&#x6de8;&#x5ea6;&#x3001;&#x4ee5;&#x53ca;&#x8f49;&#x63db;&#x6548;&#x7387;&#x7b49;&#x4e5f;&#x5404;&#x6709;&#x4e0d;&#x540c;&#xff0c;&#x800c;&#x96fb;&#x8def;&#x7684;&#x8907;&#x96dc;&#x5ea6;&#x3001;&#x7d44;&#x4ef6;&#x7684;&#x6210;&#x672c;&#x4e5f;&#x6709;&#x5dee;&#x5225;&#x3002;&#xa;&#xa;&#x3000;&#x4ee5;Linear&#x800c;&#x8a00;&#xff0c;&#x5b83;&#x7684;&#x5be6;&#x73fe;&#x96fb;&#x8def;&#x6700;&#x70ba;&#x7c21;&#x6613;&#xff0c;&#x96fb;&#x6e90;&#x6f54;&#x6de8;&#x5ea6;&#x6700;&#x4f73;&#xff08;&#x5c11;&#x6f23;&#x6ce2;Ripple&#x3001;&#x96dc;&#x8a0a;Noise&#x3001;&#x5e72;&#x64fe;EMI&#xff09;&#xff0c;&#x4f46;&#x96fb;&#x6e90;&#x8f49;&#x63db;&#x7387;&#x4e5f;&#x6700;&#x5dee;&#xff0c;&#x5373;&#x662f;&#x6240;&#x6709;&#x8f38;&#x5165;&#x96fb;&#x58d3;&#x9ad8;&#x51fa;&#x8f38;&#x51fa;&#x96fb;&#x58d3;&#x7684;&#x6e96;&#x4f4d;&#x7d71;&#x7d71;&#x4ee5;&#x71b1;&#x80fd;&#x65b9;&#x5f0f;&#x6d88;&#x6563;&#xff0c;&#x7121;&#x6cd5;&#x4f9b;&#x8f38;&#x51fa;&#x96fb;&#x8def;&#x904b;&#x7528;&#x3002;&#x4e14;&#x9ad8;&#x529f;&#x7387;&#x578b;&#x7684;Linear Regulator&#x7d93;&#x5e38;&#x8981;&#x5916;&#x63a5;&#x6563;&#x71b1;&#x7247;&#xff0c;&#x624d;&#x80fd;&#x8b93;&#x6563;&#x71b1;&#x52a0;&#x901f;&#xff0c;&#x4e0d;&#x904e;&#x9ad8;&#x529f;&#x7387;&#x578b;&#x5728;&#x624b;&#x6301;&#x88dd;&#x7f6e;&#x5167;&#x4f7f;&#x7528;&#x7684;&#x6a5f;&#x6703;&#x4e0d;&#x591a;&#x3002;&#xa;&#xa;&#x3000;&#x81f3;&#x65bc;Charge Pump&#xff0c;&#x96d6;&#x80fd;&#x5920;&#x5347;&#x58d3;&#x3001;&#x964d;&#x58d3;&#x3001;&#x53cd;&#x76f8;&#xff0c;&#x4f46;&#x591a;&#x6578;&#x7684;&#x904b;&#x7528;&#x60c5;&#x6cc1;&#x7686;&#x5728;&#x5347;&#x58d3;&#xff0c;Charge Pump&#x7684;&#x96fb;&#x6e90;&#x8f49;&#x63db;&#x7387;&#x8f03;Linear&#x70ba;&#x9ad8;&#xff0c;&#x4f46;&#x7531;&#x65bc;&#x5207;&#x63db;&#x904e;&#x7a0b;&#x4e2d;&#x53ea;&#x7528;&#x4e0a;&#x5916;&#x63a5;&#x96fb;&#x5bb9;&#xff0c;&#x672a;&#x7528;&#x53ca;&#x96fb;&#x611f;&#xff0c;&#x4f7f;&#x5176;&#x8f49;&#x63db;&#x7387;&#x4ecd;&#x4e0d;&#x5982;&#x96fb;&#x611f;&#x5f0f;&#x5207;&#x63db;&#x7684;Switch Regulator&#xff0c;&#x4e14;&#x4f9b;&#x96fb;&#x529b;&#x4e5f;&#x5c0f;&#x65bc;Switch Regulator&#xff0c;&#x96fb;&#x6e90;&#x6f54;&#x6de8;&#x5ea6;&#x672a;&#x5982;Linear Regulator&#x4f86;&#x5f97;&#x7406;&#x60f3;&#x3002;&#xa;&#xa;&#x3000;&#x800c;Switch Regulator&#x65b9;&#x9762;&#xff0c;&#x5176;&#x96fb;&#x6e90;&#x8f49;&#x63db;&#x7387;&#x6700;&#x9ad8;&#xff0c;&#x4f46;&#x96fb;&#x6e90;&#x6f54;&#x6de8;&#x5ea6;&#x537b;&#x4e5f;&#x6700;&#x96e3;&#x638c;&#x63a7;&#xff0c;&#x5be6;&#x73fe;&#x4e0a;&#x7684;&#x96fb;&#x8def;&#x4f54;&#x7528;&#x9762;&#x7a4d;&#x4ea6;&#x6700;&#x5927;&#xff08;&#x6d89;&#x53ca;&#x96fb;&#x611f;&#x7dda;&#x5708;&#x7684;&#x914d;&#x7f6e;&#xff09;&#xff0c;&#x70ba;&#x8b93;&#x5916;&#x63a5;&#x96fb;&#x611f;&#x7e2e;&#x5c0f;&#xff0c;&#x591a;&#x534a;&#x662f;&#x5c07; Switch Regulator&#x7684;&#x5207;&#x63db;&#x983b;&#x7387;&#x62c9;&#x9ad8;&#xff08;&#x9054;MHz&#x4ee5;&#x4e0a;&#xff09;&#xff0c;&#x5728;&#x5be6;&#x969b;&#x904b;&#x7528;&#x4e0a;&#x5247;&#x662f;&#x5347;&#x58d3;&#x3001;&#x964d;&#x58d3;&#x3001;&#x53cd;&#x76f8;&#x7686;&#x6709;&#x53ef;&#x80fd;&#x3002;&#x540c;&#x6642;&#x524d;&#x8ff0;&#x4e09;&#x8005;&#x5728;&#x7d44;&#x4ef6;&#x50f9;&#x683c;&#x4e0a;&#xff0c;&#x4e5f;&#x4ee5;Linear&#x8f03;&#x5ec9;&#xff0c;Charge Pump&#x6b21;&#x4e4b;&#x3001;Switch Regulator&#x8f03;&#x9ad8;&#x3002;&#xff08;&#x898b;&#x8868;&#xff1a;&#x76f4;&#x6d41;&#x96fb;&#x6e90;&#x8abf;&#x6574;&#x3001;&#x8f49;&#x63db;&#x65b9;&#x5f0f;&#x6bd4;&#x8f03;&#x8868;&#xff09;&#xa;&#xa;&#x25a0;&#x56e0;&#x61c9;&#x5404;&#x90e8;&#x4ef6;&#x7684;&#x7528;&#x96fb;&#x7279;&#x6027;&#xff0c;&#x7d66;&#x4e88;&#x4e0d;&#x540c;&#x7684;&#x4f9b;&#x96fb;&#x65b9;&#x5f0f;&#xa;&#xa;&#x3000;&#x5c0d;&#x7528;&#x96fb;&#x3001;&#x4f9b;&#x96fb;&#x7b49;&#x90e8;&#x4ef6;&#x6709;&#x6240;&#x77ad;&#x89e3;&#xff0c;&#x4ee5;&#x53ca;&#x5c0d;&#x5404;&#x7a2e;&#x76f4;&#x63a5;&#x96fb;&#x6e90;&#x8f49;&#x63db;&#x7684;&#x5dee;&#x7570;&#x6709;&#x6240;&#x8a8d;&#x77e5;&#x5f8c;&#xff0c;&#x5373;&#x53ef;&#x4ee5;&#x9032;&#x884c;&#x5404;&#x81ea;&#x7684;&#x4f9b;&#x96fb;&#x5c0d;&#x61c9;&#x3002;&#xa;&#xa;&#x3000;&#x5728;MPU&#x4e0a;&#xff0c;&#x81f3;&#x5c11;&#x9700;&#x8981;&#x5169;&#x7a2e;&#x96fb;&#x58d3;&#xff1a;Vcore&#x8207;Vmain&#xff08;&#x6709;&#x6642;&#x4ea6;&#x7a31;Vi/o&#xff09;&#xff0c;&#x7531;&#x65bc;&#x8981;&#x6c42;&#x7684;&#x96fb;&#x6d41;&#x8f03;&#x5927;&#xff0c;&#x70ba;&#x4e86;&#x96fb;&#x6e90;&#x5229;&#x7528;&#x7387;&#x901a;&#x5e38;&#x6703;&#x7528;DC/DC Converter&#xff0c;&#x540c;&#x6642;&#x82e5;&#x6709;DVS/AVS&#x7684;&#x52d5;&#x614b;&#x8abf;&#x58d3;&#x9700;&#x8981;&#xff0c;&#x9084;&#x5fc5;&#x9808;&#x4f7f;&#x7528;&#x80fd;&#x5f48;&#x6027;&#x8f38;&#x51fa;&#x96fb;&#x58d3;&#x6e96;&#x4f4d;&#x7684;DC/DC Converter&#xff0c;&#x901a;&#x5e38;&#x662f;&#x7528;&#x5916;&#x90e8;&#x96fb;&#x963b;&#x7684;&#x5206;&#x58d3;&#x503c;&#x4f86;&#x64cd;&#x4f5c;&#x8f38;&#x51fa;&#x96fb;&#x58d3;&#xff0c;&#x6216;&#x4f9d;&#x5faa;&#x5404;MPU&#x7684;&#x7701;&#x96fb;&#x898f;&#x7bc4;&#x4f86;&#x8a2d;&#x8a08;&#x3002;&#xa;&#xa;&#x3000;&#x5728;DRAM&#x8a18;&#x61b6;&#x9ad4;&#x4e0a;&#xff0c;&#x5c11;&#x91cf;&#x7684;&#x8a18;&#x61b6;&#x9ad4;&#x4ecd;&#x53ef;&#x4f7f;&#x7528;Linear Regulator&#x4f86;&#x4f9b;&#x96fb;&#xff0c;&#x4e26;&#x6709;&#x4f4e;&#x96dc;&#x8a0a;&#xff08;Low Noise&#xff09;&#x3001;&#x4f4e;&#x6d88;&#x6563;&#xff08;Low Drop Out&#xff09;&#x3001;&#x9ad8;&#x6f23;&#x6ce2;&#x62d2;&#x65a5;&#x6bd4;&#xff08;PSSR&#xff09;&#x7b49;&#x8981;&#x6c42;&#xff0c;&#x7136;&#x8a18;&#x61b6;&#x9ad4;&#x5bb9;&#x91cf;&#x5927;&#x6642;&#x8017;&#x96fb;&#x4e5f;&#x6703;&#x589e;&#x52a0;&#xff0c;&#x5c46;&#x6642;&#x6539;&#x7528;DC/DC Converter&#x8f03;&#x70ba;&#x5408;&#x9069;&#x3002;&#xa;&#xa;&#x3000;&#x81f3;&#x65bc;&#x986f;&#x793a;&#x65b9;&#x9762;&#x5247;&#x8f03;&#x70ba;&#x8907;&#x96dc;&#xff0c;&#x7279;&#x5225;&#x662f;&#x80cc;&#x5149;&#x90e8;&#x5206;&#xff0c;STN&#x3001;TFT&#x9700;&#x8981;&#x80cc;&#x5149;&#xff0c;&#x7121;&#x8ad6;&#x63a1;&#x7528;EL&#x6216;CCFL&#xff0c;&#x90fd;&#x9700;&#x8981;&#x9032;&#x884c;&#x504f;&#x58d3;&#xff08;Bias&#xff09;&#x8655;&#x7406;&#xff0c;&#x5c07;&#x6578;&#x4f0f;&#x7279;&#x7684;&#x96fb;&#x58d3;&#x63d0;&#x5347;&#x81f3;&#x5341;&#x591a;&#x4f0f;&#x4ee5;&#x4e0a;&#xff0c;&#x4e26;&#x8981;&#x6709;&#x53cd;&#x76f8;&#x96fb;&#x58d3;&#xff0c;&#x7406;&#x7531;&#x662f;EL&#x3001;CCFL&#x9700;&#x8981;&#x4ea4;&#x6d41;&#x9a45;&#x52d5;&#xff08;&#x5982;+15V&#xff5e;-10V&#xff09;&#x3002;&#x4e0d;&#x904e;&#xff0c;EL&#x3001;CCFL&#x9a45;&#x52d5;&#x7684;&#x96fb;&#x58d3;&#x96d6;&#x9ad8;&#xff0c;&#x4f46;&#x96fb;&#x6d41;&#x8017;&#x7528;&#x537b;&#x5c0f;&#xff08;uA&#xff5e;&#x6578; mA&#xff09;&#xff0c;&#x56e0;&#x6b64;&#x4f7f;&#x7528;Charge Pump&#x9032;&#x884c;&#x5347;&#x58d3;&#x3001;&#x53cd;&#x76f8;&#x4f86;&#x4f9b;&#x96fb;&#x5373;&#x53ef;&#xff0c;&#x4e0d;&#x9700;&#x4f7f;&#x7528;&#x4f9b;&#x96fb;&#x529b;&#x8f03;&#x5927;&#x7684;DC/DC Converter&#x3002;&#xa;&#xa;&#x3000;&#x81f3;&#x65bc;&#x7528; LED&#x5145;&#x7576;Backlight&#xff0c;&#x73fe;&#x5728;&#x666e;&#x904d;&#x662f;&#x7528;&#x767d;&#x5149;&#x767c;&#x5149;&#x4e8c;&#x6975;&#x9ad4;&#xff08;White LED&#xff09;&#xff0c;&#x8a31;&#x591a;&#x696d;&#x8005;&#x5df2;&#x7d93;&#x63a8;&#x51fa;&#x5c08;&#x70ba;&#x9a45;&#x52d5;White LED&#x7684;&#x6676;&#x7247;&#xff0c;&#x8a2d;&#x8a08;&#x6642;&#x53ef;&#x76f4;&#x63a5;&#x6cbf;&#x7528;&#xff0c;&#x4e26;&#x4e14;&#x4e5f;&#x53ef;&#x652f;&#x63f4;&#x76f8;&#x6a5f;&#x9583;&#x5149;&#x71c8;&#x6240;&#x7528;&#x7684;White LED&#x3002;&#x7136;&#x800c;&#x5373;&#x4fbf;&#x4e0d;&#x4f7f;&#x7528;&#x9a45;&#x52d5;&#x6676;&#x7247;&#xff0c;&#x4e5f;&#x4e0d;&#x4e00;&#x5b9a;&#x8981;&#x9032;&#x884c;&#x5347;&#x58d3;&#x3001;&#x964d;&#x58d3;&#x624d;&#x80fd;&#x4f9b;&#x96fb;&#xff0c;&#x76f4;&#x63a5;&#x5c07;White LED&#x9032;&#x884c;&#x4e32;&#x4e26;&#x806f;&#x7d44;&#x5408;&#x5373;&#x53ef;&#xff0c;&#x4f8b;&#x5982;&#x5c07;White LED&#x4e32;&#x63a5;&#xff0c;&#x7528;&#x591a;&#x500b;White LED&#x7684;&#x5167;&#x963b;&#x4f86;&#x627f;&#x53d7;&#x8f03;&#x9ad8;&#x7684;&#x4f9b;&#x96fb;&#x96fb;&#x58d3;&#x3002;&#x6bd4;&#x8f03;&#x7279;&#x5225;&#x7684;&#x662f;&#xff0c;White LED&#x7684;&#x7528;&#x96fb;&#x8f03;EL&#x3001;CCFL&#x5147;&#xff0c;&#x6bcf;&#x4e00;&#x500b;&#x7d04;&#x8981;&#x6578;mA&#x4ee5;&#x4e0a;&#x624d;&#x80fd;&#x9a45;&#x52d5;&#xff0c;&#x56e0;&#x6b64;&#x5efa;&#x8b70;&#x5f9e;DC/DC Converter&#x53d6;&#x5f97;&#x4f9b;&#x96fb;&#x3002;&#xa;&#xa;&#x5716;&#x4e00;&#xff1a;ZETEX&#x534a;&#x5c0e;&#x9ad4;&#x516c;&#x53f8;&#x7684;DC/DC&#x8f49;&#x63db;&#x5668;&#xff1a;ZXSC100&#xff0c;&#x5916;&#x90e8;&#x53ea;&#x9700;&#x8981;&#x518d;&#x52a0;&#x88dd;&#x4e00;&#x500b;&#x96fb;&#x611f;&#x3001;&#x4e00;&#x500b;&#x958b;&#x95dc;&#x96fb;&#x6676;&#x9ad4;&#x3001;&#x4e00;&#x500b;&#x856d;&#x7279;&#x57fa;&#x4e8c;&#x6975;&#x9ad4;&#x3001;&#x53ca;&#x96fb;&#x963b;&#x3001;&#x96fb;&#x611f;&#x5143;&#x4ef6;&#xff0c;&#x5373;&#x53ef;&#x5c07;1.2V&#x7684;&#x8f38;&#x5165;&#x96fb;&#x58d3;&#x8f49;&#x63db;&#x6210;3.3V&#xff0c;&#x53ca;&#x6700;&#x9ad8;1A&#x7684;&#x8f38;&#x51fa;&#x3002;&#xff08;&#x5716;&#x7247;&#x4f86;&#x6e90;&#xff1a;ZETEX&#xff09;&#xa;&#xa;&#x5716;&#x4e8c;&#xff1a;&#x82e5;&#x4f7f;&#x7528;DC/DC Controller&#xff0c;&#x5247;&#x5728;&#x9032;&#x884c;&#x5207;&#x63db;&#x5f0f;&#x96fb;&#x6e90;&#x8f49;&#x63db;&#x6642;&#xff0c;&#x5916;&#x90e8;&#x4f9d;&#x7136;&#x8981;&#x6709;P/N FET&#x958b;&#x95dc;&#x642d;&#x914d;&#xff0c;&#x5716;&#x70ba;&#x591a;&#x6b3e;ZETEX&#x516c;&#x53f8;&#x7684;&#x8868;&#x9762;&#x9ecf;&#x8457;&#x5f0f;P&#x901a;&#x9053;MOSFET&#x3002;&#xff08;&#x5716;&#x7247;&#x4f86;&#x6e90;&#xff1a;ZETEX&#xff09;" ID="ID_729313863" CREATED="1295143220952" MODIFIED="1295143225455"/>
</node>
</node>
<node TEXT="power management" POSITION="left" ID="ID_1935482550" CREATED="1295289375257" MODIFIED="1295289378981">
<node TEXT="clock domain" ID="ID_640914777" CREATED="1295289382455" MODIFIED="1295289386347">
<node TEXT="Three CM dependencies: static, dynamic and wake-up" ID="ID_1485781976" CREATED="1295289282352" MODIFIED="1295289305443"/>
</node>
<node TEXT="power domain" ID="ID_855237226" CREATED="1295289778054" MODIFIED="1295289780611">
<node TEXT="a power domain is split into some logic area and some memory area" ID="ID_816770332" CREATED="1295289791553" MODIFIED="1295289822443">
<node TEXT="memory bank is powered by Varray" ID="ID_1993097288" CREATED="1295289843872" MODIFIED="1295289860196"/>
<node TEXT="memory logic is sharing the same power supply with logic area, but has its own power switch" ID="ID_1839010683" CREATED="1295289861523" MODIFIED="1295289913636"/>
<node ID="ID_1265950453" CREATED="1295289957011" MODIFIED="1295290136834">
<richcontent TYPE="NODE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      term:
    </p>
    <p>
      RTA - retention-till-access
    </p>
    <p>
      DFF - non-retention flip-flops, which's state is lost and reset in Open SWitch Retention
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node TEXT="voltage domain" ID="ID_956027551" CREATED="1295299625692" MODIFIED="1295299630878">
<node ID="ID_1580051262" CREATED="1295299631497" MODIFIED="1295299742358">
<richcontent TYPE="NODE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      term:
    </p>
    <p>
      SMPS - switch mode power supplier
    </p>
    <p>
      SCRM - system clock and reset manager
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="there&apos;s only three voltage domain can hit retention" ID="ID_872017023" CREATED="1295300731299" MODIFIED="1295300743807">
<node TEXT="CORE" ID="ID_1423874857" CREATED="1295300744564" MODIFIED="1295300747384"/>
<node TEXT="IVA" ID="ID_1380739869" CREATED="1295300750499" MODIFIED="1295300751766"/>
<node TEXT="MPU" ID="ID_1275817870" CREATED="1295300752120" MODIFIED="1295300753540"/>
</node>
</node>
<node TEXT="device low power state" ID="ID_1881406235" CREATED="1295298797197" MODIFIED="1295298801829">
<node TEXT="retention" ID="ID_1841277445" CREATED="1295299044776" MODIFIED="1295299047704">
<node TEXT="all the logic voltage domain (VDD_IVA_L and VDD_CORE_L) are in Retention state" ID="ID_634480800" CREATED="1295299051922" MODIFIED="1295299063546"/>
<node TEXT="how to determine the state of voltage domain?" ID="ID_1009731116" CREATED="1295299268515" MODIFIED="1295299291641">
<icon BUILTIN="help"/>
</node>
</node>
<node TEXT="how to determine if a power domain is in retention" ID="ID_202219903" CREATED="1295300700363" MODIFIED="1295300719008">
<icon BUILTIN="help"/>
</node>
</node>
</node>
<node TEXT="clock management" POSITION="left" ID="ID_186445935" CREATED="1295328011341" MODIFIED="1295328014639">
<node TEXT="32Khz and the system clock is the only source" ID="ID_1281264120" CREATED="1295328018218" MODIFIED="1295328039538"/>
<node TEXT="SCRM provides system clock and 32kHz to PRCM" ID="ID_685718380" CREATED="1295328067521" MODIFIED="1295328142967"/>
<node TEXT="PRCM provides clocks to the internal DPLLs for internal high-frequency clocks generation" ID="ID_1333208795" CREATED="1295328147424" MODIFIED="1295328214098"/>
<node TEXT="some clocks are not controlled by the PRCM" ID="ID_122958991" CREATED="1295802059535" MODIFIED="1295802085202"/>
</node>
<node TEXT="OPP" POSITION="right" ID="ID_1829391037" CREATED="1295330159959" MODIFIED="1295330161749">
<node TEXT="does mpu only support 3 OPP?" ID="ID_650902006" CREATED="1295330162433" MODIFIED="1295330182936">
<icon BUILTIN="help"/>
</node>
</node>
<node TEXT="off" POSITION="right" ID="ID_1063091138" CREATED="1295562573506" MODIFIED="1295562576302"/>
<node TEXT="motorola" POSITION="left" ID="ID_218459334" CREATED="1295628581136" MODIFIED="1295628585594">
<node TEXT="solana" ID="ID_1343805672" CREATED="1295628586296" MODIFIED="1295628587684">
<node TEXT="SYS_NRESWARM connected to SYS_RESTART_N" ID="ID_1028753303" CREATED="1295628591104" MODIFIED="1295628614752"/>
<node TEXT="SYS_NRESPWRON connected to RESET_MCU_N" ID="ID_302019547" CREATED="1295628620586" MODIFIED="1295628628790"/>
</node>
</node>
<node TEXT="debug" POSITION="right" ID="ID_522783714" CREATED="1295630028424" MODIFIED="1295630030550">
<node TEXT="etb: on-chip trace buffer" ID="ID_394455846" CREATED="1295630031149" MODIFIED="1295630045243">
<node TEXT="emulator power domain" ID="ID_815203483" CREATED="1295630160982" MODIFIED="1295630167523"/>
</node>
<node TEXT="CTT" ID="ID_1542713360" CREATED="1295756416730" MODIFIED="1295756418420"/>
</node>
</node>
</map>
