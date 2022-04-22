Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C2D050B1F0
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 22 Apr 2022 09:44:59 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id D15E482EAC;
	Fri, 22 Apr 2022 09:44:44 +0200 (CEST)
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id BA89A807E1
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 22 Apr 2022 07:07:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1650604067; x=1682140067;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=zLyK1VfPZcWeTRL84aSwetNS1RsgGB8NmLFyPkDWGM0=;
  b=BWL7f7H0dU2ZqZkrzzHXccaHRhQ9NAEYnhCOJX/Ciss3tH9yXw89YNLZ
   TVf48IMXTyFmrtlfhbeW6CgRICniyO5/Q3PqHBnaIIDkgQ5jd0aOLHunC
   u0XrovKmEsbW7/Vx1uDxOC63f/HGx2XUKC1bMt0Do/Leq17rcBQhiG0IG
   Xxw8sGcTBRf5hlS0a4RtJy4fOOuARyONCDAUkxDR4F8/N8ROuBK+RD8rA
   TfQeUkx+b3mZkV/as3cCC9oYUL7JBXrAQVBfWSUus3ainVvOtONMHbiIx
   VoIdPqBo/HWaBVLUzqa5xWPgkvFtbfDIUqxagr+iLT5DGPdN2Y/BbMGv1
   A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10324"; a="251899423"
X-IronPort-AV: E=Sophos;i="5.90,280,1643702400";
   d="scan'208";a="251899423"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Apr 2022 22:07:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,280,1643702400";
   d="scan'208";a="593989379"
Received: from lkp-server01.sh.intel.com (HELO 3abc53900bec) ([10.239.97.150])
  by orsmga001.jf.intel.com with ESMTP; 21 Apr 2022 22:07:41 -0700
Received: from kbuild by 3abc53900bec with local (Exim 4.95)
	(envelope-from <lkp@intel.com>)
	id 1nhlW8-0009FA-Nd;
	Fri, 22 Apr 2022 05:07:40 +0000
Date: Fri, 22 Apr 2022 13:07:20 +0800
From: kernel test robot <lkp@intel.com>
To: Yu Zhe <yuzhe@nfschina.com>, mareklindner@neomailbox.ch,
	sw@simonwunderlich.de, a@unstable.cc, sven@narfation.org,
	davem@davemloft.net, kuba@kernel.org, pabeni@redhat.com
Subject: Re: [PATCH] batman-adv: remove unnecessary type castings
Message-ID: <202204221227.5z0xsJa9-lkp@intel.com>
References: <20220421154829.9775-1-yuzhe@nfschina.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220421154829.9775-1-yuzhe@nfschina.com>
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1650604068; a=rsa-sha256;
	cv=none;
	b=tw6HbFX9kgnh1s61SxAJJMB9SepkDjC4KtJk1oLXimnJqh8uBNnXK3FbzD2aXAJ+wwXa7i
	MZUaVlmf0mH6TrmubAJDrjP8GKQ1NLcGcMK7kOCYqphIvjtdtLorC+m0dU8pdPy5DlgVBk
	HmjlyUc2N/hEnuxILoycs2MOjqYGDYk=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none ("invalid DKIM record") header.d=intel.com header.s=Intel header.b=BWL7f7H0;
	spf=pass (diktynna.open-mesh.org: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
	dmarc=pass (policy=none) header.from=intel.com
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1650604068;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=nLj2Ip2sjDswYjYSgOERr70r7ssuqimlgia8xwoytKw=;
	b=c/0ISxLY9pAqFoYlQ+WE9pTFJ7l9ep2oj2oDVpsxSPy5jlFLUpswfZ3FrJLsEdD8M/q+qa
	yg59d0SBJbrgZ72xUMcYp3Z7Ks/Sx2ObwKtJPB5YLI93ADu/u6cCkci5Uhv3jSDKXWzpMW
	DkAU3ptrwPZA2nk5smX2z6du3vnfjvs=
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: XTTFLANTGHXFSSSNVARHSSKSCAFJPQB5
X-Message-ID-Hash: XTTFLANTGHXFSSSNVARHSSKSCAFJPQB5
X-Mailman-Approved-At: Fri, 22 Apr 2022 07:44:38 +0200
CC: kbuild-all@lists.01.org, b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, liqiong@nfschina.com, kernel-janitors@vger.kernel.org, Yu Zhe <yuzhe@nfschina.com>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/XTTFLANTGHXFSSSNVARHSSKSCAFJPQB5/>
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
config: parisc-randconfig-s031-20220421 (https://download.01.org/0day-ci/archive/20220422/202204221227.5z0xsJa9-lkp@intel.com/config)
compiler: hppa-linux-gcc (GCC) 11.2.0
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # apt-get install sparse
        # sparse version: v0.6.4-dirty
        # https://github.com/intel-lab-lkp/linux/commit/2474b41c585e849d3546e0aba8f3c862735a04ff
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Yu-Zhe/batman-adv-remove-unnecessary-type-castings/20220421-235254
        git checkout 2474b41c585e849d3546e0aba8f3c862735a04ff
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.2.0 make.cross C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__' O=build_dir ARCH=parisc SHELL=/bin/bash net/batman-adv/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>


sparse warnings: (new ones prefixed by >>)
>> net/batman-adv/bridge_loop_avoidance.c:68:42: sparse: sparse: incorrect type in initializer (different modifiers) @@     expected struct batadv_bla_claim *claim @@     got void const *data @@
   net/batman-adv/bridge_loop_avoidance.c:68:42: sparse:     expected struct batadv_bla_claim *claim
   net/batman-adv/bridge_loop_avoidance.c:68:42: sparse:     got void const *data
>> net/batman-adv/bridge_loop_avoidance.c:68:42: sparse: sparse: incorrect type in initializer (different modifiers) @@     expected struct batadv_bla_claim *claim @@     got void const *data @@
   net/batman-adv/bridge_loop_avoidance.c:68:42: sparse:     expected struct batadv_bla_claim *claim
   net/batman-adv/bridge_loop_avoidance.c:68:42: sparse:     got void const *data
--
>> net/batman-adv/translation-table.c:109:12: sparse: sparse: incorrect type in assignment (different modifiers) @@     expected struct batadv_tt_common_entry *tt @@     got void const *data @@
   net/batman-adv/translation-table.c:109:12: sparse:     expected struct batadv_tt_common_entry *tt
   net/batman-adv/translation-table.c:109:12: sparse:     got void const *data
>> net/batman-adv/translation-table.c:109:12: sparse: sparse: incorrect type in assignment (different modifiers) @@     expected struct batadv_tt_common_entry *tt @@     got void const *data @@
   net/batman-adv/translation-table.c:109:12: sparse:     expected struct batadv_tt_common_entry *tt
   net/batman-adv/translation-table.c:109:12: sparse:     got void const *data

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
