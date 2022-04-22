Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id F278350B1EF
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 22 Apr 2022 09:44:53 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id D319382EB5;
	Fri, 22 Apr 2022 09:44:43 +0200 (CEST)
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 5F6B380724
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 22 Apr 2022 04:51:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1650595902; x=1682131902;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=/EP0iWdKOEiGzPNvILshoCXIoQqdE97BuNJKc07nAWo=;
  b=II/EWJE7v8Q6VqjuMxXSZwIC0UCFIHgLNBvGNqAySqSE8AYAy/WbGS9f
   qTcdXHQ7/rOJy1Ng5aiDAP9tyjzlFHzaa3f47F5H3OuAVIEsQnIQWg57B
   YpBKR4C5Ri34isWNyTK+MSn6I/PG1wRgJ1cxNHhFT64rgVpx59pPi6lJJ
   vcyf2BualWVwsBJVWj3Y70A433NK5C8oVDszrruIYFh0PYY4Y1SHg9VRY
   P2BB2CHEJf046gZE7bFBwFaZWRqk9xjhsWSiO9F5B2Y1ihXa6YlTxgUVD
   3e6rLXDvdnIk17jwCuN+0VzBXyaIX4nau8K48aqCBNtX/zPYaKtY9aUtj
   g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10324"; a="244476588"
X-IronPort-AV: E=Sophos;i="5.90,280,1643702400";
   d="scan'208";a="244476588"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Apr 2022 19:51:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,280,1643702400";
   d="scan'208";a="562856314"
Received: from lkp-server01.sh.intel.com (HELO 3abc53900bec) ([10.239.97.150])
  by fmsmga007.fm.intel.com with ESMTP; 21 Apr 2022 19:51:36 -0700
Received: from kbuild by 3abc53900bec with local (Exim 4.95)
	(envelope-from <lkp@intel.com>)
	id 1nhjOR-00098z-QD;
	Fri, 22 Apr 2022 02:51:35 +0000
Date: Fri, 22 Apr 2022 10:51:17 +0800
From: kernel test robot <lkp@intel.com>
To: Yu Zhe <yuzhe@nfschina.com>, mareklindner@neomailbox.ch,
	sw@simonwunderlich.de, a@unstable.cc, sven@narfation.org,
	davem@davemloft.net, kuba@kernel.org, pabeni@redhat.com
Subject: Re: [PATCH] batman-adv: remove unnecessary type castings
Message-ID: <202204221034.hfPA4RPW-lkp@intel.com>
References: <20220421154829.9775-1-yuzhe@nfschina.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220421154829.9775-1-yuzhe@nfschina.com>
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1650595903; a=rsa-sha256;
	cv=none;
	b=a8j64esZTp0z6krnYwsOGwh7IMvJCGxXydhfH87HsPZunCBQYWcqxxbvR6duKzlSnTHeoK
	VWD8c/IbokUUGga+myOQuFUokU6efMh6O6sNsCxFOfjkGRadMuXwrO2BPg3QDwRZRL658r
	bwNOhZ7vb7+PCU2MP5Eq8FgGkhSKuRo=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none ("invalid DKIM record") header.d=intel.com header.s=Intel header.b="II/EWJE7";
	spf=pass (diktynna.open-mesh.org: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
	dmarc=pass (policy=none) header.from=intel.com
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1650595903;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=yPFzfTMxVHI1xNiZeCRU0vOKVNXjVQZS0v0Ix1aKYTE=;
	b=pV6tXfYHhKkb9EVUsZMFFVj+0iiouKatgvTjFiE+UPsCEYCg56/SgFvdoDlATS8xbJhBvJ
	kIK8mPR5TAdXDrnKQTBNuzZU/Tv9QTGcj3WHFxUOZOaFmb8Vc0W9tbw5A6r9vX8jvnQozE
	M+sOBv5E0oLxgl5dS+V3MXNF4tlW1Dc=
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: 6KGB3DLUTXE2Y5LOGU6OTS5K5ANSCQVF
X-Message-ID-Hash: 6KGB3DLUTXE2Y5LOGU6OTS5K5ANSCQVF
X-Mailman-Approved-At: Fri, 22 Apr 2022 07:44:38 +0200
CC: llvm@lists.linux.dev, kbuild-all@lists.01.org, b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, liqiong@nfschina.com, kernel-janitors@vger.kernel.org, Yu Zhe <yuzhe@nfschina.com>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/6KGB3DLUTXE2Y5LOGU6OTS5K5ANSCQVF/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi Yu,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on linus/master]
[also build test ERROR on v5.18-rc3 next-20220421]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/intel-lab-lkp/linux/commits/Yu-Zhe/batman-adv-remove-unnecessary-type-castings/20220421-235254
base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git b253435746d9a4a701b5f09211b9c14d3370d0da
config: i386-randconfig-a013 (https://download.01.org/0day-ci/archive/20220422/202204221034.hfPA4RPW-lkp@intel.com/config)
compiler: clang version 15.0.0 (https://github.com/llvm/llvm-project 5bd87350a5ae429baf8f373cb226a57b62f87280)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/2474b41c585e849d3546e0aba8f3c862735a04ff
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Yu-Zhe/batman-adv-remove-unnecessary-type-castings/20220421-235254
        git checkout 2474b41c585e849d3546e0aba8f3c862735a04ff
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=i386 SHELL=/bin/bash net/batman-adv/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> net/batman-adv/bridge_loop_avoidance.c:68:27: error: initializing 'struct batadv_bla_claim *' with an expression of type 'const void *' discards qualifiers [-Werror,-Wincompatible-pointer-types-discards-qualifiers]
           struct batadv_bla_claim *claim = data;
                                    ^       ~~~~
   1 error generated.
--
>> net/batman-adv/translation-table.c:109:5: error: assigning to 'struct batadv_tt_common_entry *' from 'const void *' discards qualifiers [-Werror,-Wincompatible-pointer-types-discards-qualifiers]
           tt = data;
              ^ ~~~~
   1 error generated.


vim +68 net/batman-adv/bridge_loop_avoidance.c

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
