Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 4422950B1EE
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 22 Apr 2022 09:44:48 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 9588582E4A;
	Fri, 22 Apr 2022 09:44:42 +0200 (CEST)
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 8CE0280724
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 22 Apr 2022 04:41:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1650595301; x=1682131301;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=ziHABANE59wRolQJClZuDMbt1HuNA/mx2V8HeNMrpkM=;
  b=l8S3/4jCQLu7dOUiVVDwHoT0Ihis2M7+yfvQAh0yX4wqs6dBZc4ZKUee
   /6W1ZPecXBZpWJHiPiDBTAfkryu+1A/i7Iw2iuz9bcd83mzs4lcFTc+M2
   dFrRNWPLcDlQc9crAu9xxbIAKnahKqzhrNys46DqEV/45pYwoyl1Gmmx1
   l5sH8VJzXcY0NXd20srSmSSeMlScFXoNerx35mQOmMYO6JLSE4WLwyJ5M
   xG8TdJXWCe8TQB2l2wrcrw+q1QuY+h9CNFYRtXEiysBytpmSh9oiBz/2O
   MDo0eNdasH3mPN0PGJ8L9RqHfinCa6FOh/mE+C/44on8HOXY4+zIEIXVS
   A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10324"; a="327460586"
X-IronPort-AV: E=Sophos;i="5.90,280,1643702400";
   d="scan'208";a="327460586"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Apr 2022 19:41:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,280,1643702400";
   d="scan'208";a="511375279"
Received: from lkp-server01.sh.intel.com (HELO 3abc53900bec) ([10.239.97.150])
  by orsmga003.jf.intel.com with ESMTP; 21 Apr 2022 19:41:35 -0700
Received: from kbuild by 3abc53900bec with local (Exim 4.95)
	(envelope-from <lkp@intel.com>)
	id 1nhjEl-00097y-7D;
	Fri, 22 Apr 2022 02:41:35 +0000
Date: Fri, 22 Apr 2022 10:41:00 +0800
From: kernel test robot <lkp@intel.com>
To: Yu Zhe <yuzhe@nfschina.com>, mareklindner@neomailbox.ch,
	sw@simonwunderlich.de, a@unstable.cc, sven@narfation.org,
	davem@davemloft.net, kuba@kernel.org, pabeni@redhat.com
Subject: Re: [PATCH] batman-adv: remove unnecessary type castings
Message-ID: <202204221051.PRtLc0f7-lkp@intel.com>
References: <20220421154829.9775-1-yuzhe@nfschina.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220421154829.9775-1-yuzhe@nfschina.com>
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1650595302; a=rsa-sha256;
	cv=none;
	b=oqFsEeP3jk+dtZzSjA1qwhwtJYfUFvfLKFr1iEMQdDllbI+E0NFAtMsZ+KrHsMhhIc5QO8
	Q2L0p+pjSFJ9yUuBbhA8gaTj99/UvzEjd8zdo8i42tRT/6TyT6YltTmIwcVJznPXJV9Yly
	U89zHU6fe15CZGv3Mx5Ijtd3IAm0MNk=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none ("invalid DKIM record") header.d=intel.com header.s=Intel header.b="l8S3/4jC";
	spf=pass (diktynna.open-mesh.org: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
	dmarc=pass (policy=none) header.from=intel.com
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1650595302;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=NU+Fe0Q1Gnm/F+2251Mznqx7SYZUn17Qp8qY4OFD7K0=;
	b=MEm+hbuPubDo8zgSOoyP/UxA8hfoNM4hiqIlFafEBMfsqC3it7jk0+T+r3ozqa5Nd6/4J8
	HPtz0xfDTlSuF4R4qET8ocU2UgaLyqUb8S2GSls2+ov7hPkm8a3i5dXIgHIIRQKp/1yDmj
	ObebhowxmMmPOP7LcCoXEpd4+uY1RKk=
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: XNXFIDRY6XLOKKAEOZ6BRF7ITYLR5IMH
X-Message-ID-Hash: XNXFIDRY6XLOKKAEOZ6BRF7ITYLR5IMH
X-Mailman-Approved-At: Fri, 22 Apr 2022 07:44:38 +0200
CC: kbuild-all@lists.01.org, b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, liqiong@nfschina.com, kernel-janitors@vger.kernel.org, Yu Zhe <yuzhe@nfschina.com>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/XNXFIDRY6XLOKKAEOZ6BRF7ITYLR5IMH/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi Yu,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on linus/master]
[also build test WARNING on v5.18-rc3 next-20220421]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/intel-lab-lkp/linux/commits/Yu-Zhe/batman-adv-remove-unnecessary-type-castings/20220421-235254
base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git b253435746d9a4a701b5f09211b9c14d3370d0da
config: x86_64-randconfig-a013 (https://download.01.org/0day-ci/archive/20220422/202204221051.PRtLc0f7-lkp@intel.com/config)
compiler: gcc-11 (Debian 11.2.0-20) 11.2.0
reproduce (this is a W=1 build):
        # https://github.com/intel-lab-lkp/linux/commit/2474b41c585e849d3546e0aba8f3c862735a04ff
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Yu-Zhe/batman-adv-remove-unnecessary-type-castings/20220421-235254
        git checkout 2474b41c585e849d3546e0aba8f3c862735a04ff
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        make W=1 O=build_dir ARCH=x86_64 SHELL=/bin/bash net/batman-adv/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   net/batman-adv/bridge_loop_avoidance.c: In function 'batadv_choose_claim':
>> net/batman-adv/bridge_loop_avoidance.c:68:42: warning: initialization discards 'const' qualifier from pointer target type [-Wdiscarded-qualifiers]
      68 |         struct batadv_bla_claim *claim = data;
         |                                          ^~~~
--
   net/batman-adv/translation-table.c: In function 'batadv_choose_tt':
>> net/batman-adv/translation-table.c:109:12: warning: assignment discards 'const' qualifier from pointer target type [-Wdiscarded-qualifiers]
     109 |         tt = data;
         |            ^


vim +/const +68 net/batman-adv/bridge_loop_avoidance.c

    53	
    54	static void batadv_bla_periodic_work(struct work_struct *work);
    55	static void
    56	batadv_bla_send_announce(struct batadv_priv *bat_priv,
    57				 struct batadv_bla_backbone_gw *backbone_gw);
    58	
    59	/**
    60	 * batadv_choose_claim() - choose the right bucket for a claim.
    61	 * @data: data to hash
    62	 * @size: size of the hash table
    63	 *
    64	 * Return: the hash index of the claim
    65	 */
    66	static inline u32 batadv_choose_claim(const void *data, u32 size)
    67	{
  > 68		struct batadv_bla_claim *claim = data;
    69		u32 hash = 0;
    70	
    71		hash = jhash(&claim->addr, sizeof(claim->addr), hash);
    72		hash = jhash(&claim->vid, sizeof(claim->vid), hash);
    73	
    74		return hash % size;
    75	}
    76	

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
