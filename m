Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 57A3E50B1ED
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 22 Apr 2022 09:44:42 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 38EC680356;
	Fri, 22 Apr 2022 09:44:41 +0200 (CEST)
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id DB94880043
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 22 Apr 2022 04:20:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1650594041; x=1682130041;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=QY4+iCfT1Wy7jYCT0r02vdmfMy8p/eY4uf/pYw6auo0=;
  b=Dzy3i15nwNC3Vp/yzfpUgUYaRkuNrWPyxY4QgLmFRgYyd4HLUGhgbdZU
   hsuZV4H2mXRA/LqyfDmeeJMeYA3i3VN5yR8TrrSxnWlYKfufq1HX6CBu1
   k72+JG9QDIeUxrFJ1SOnji9Ain/wmWurmNzrHHcJfMeWaoueRtAnHuUWO
   z9WL5O7DbPQu+N5bUQqbhwkF5fy5TtRujhG3w4xljIF5GqJ1mNuy8qD98
   qjH++3V5YYhFX/W1tDdq37fvWzw6QEdlITeeMHsT87Fll6eg2mVkIZyVX
   CGNQCPUIIN9Lv/RihHVByDlNT2Hd4MX0kdg1/i2q38p7O02l6GnMqr5g0
   A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10324"; a="246446052"
X-IronPort-AV: E=Sophos;i="5.90,280,1643702400";
   d="scan'208";a="246446052"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Apr 2022 19:20:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,280,1643702400";
   d="scan'208";a="562849639"
Received: from lkp-server01.sh.intel.com (HELO 3abc53900bec) ([10.239.97.150])
  by fmsmga007.fm.intel.com with ESMTP; 21 Apr 2022 19:20:35 -0700
Received: from kbuild by 3abc53900bec with local (Exim 4.95)
	(envelope-from <lkp@intel.com>)
	id 1nhiuQ-00097C-Jl;
	Fri, 22 Apr 2022 02:20:34 +0000
Date: Fri, 22 Apr 2022 10:20:20 +0800
From: kernel test robot <lkp@intel.com>
To: Yu Zhe <yuzhe@nfschina.com>, mareklindner@neomailbox.ch,
	sw@simonwunderlich.de, a@unstable.cc, sven@narfation.org,
	davem@davemloft.net, kuba@kernel.org, pabeni@redhat.com
Subject: Re: [PATCH] batman-adv: remove unnecessary type castings
Message-ID: <202204221027.ETcMYyKP-lkp@intel.com>
References: <20220421154829.9775-1-yuzhe@nfschina.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220421154829.9775-1-yuzhe@nfschina.com>
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1650594041; a=rsa-sha256;
	cv=none;
	b=AlJOO16KT0OUFCXyd8iC4vBJ6vbUhsMbyPIOSi3EMiUQmX1GdmDMFeZ4zIGQHXxJONdMo9
	993CqhLbkvteVATmYdmZ25RfcUPfq8BdNYLpT1NUzMiKIvLOzCEyE+m4xGozNwum7/PDt8
	QJ/Ip+BXX3baNVxvxfEn12O493L4mZw=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none ("invalid DKIM record") header.d=intel.com header.s=Intel header.b=Dzy3i15n;
	spf=pass (diktynna.open-mesh.org: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
	dmarc=pass (policy=none) header.from=intel.com
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1650594041;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=qaEMBt+EW4bvAmvhJOtR9hPOmhCqtCtXzrfadNdGuwg=;
	b=ciqCfr+myxTaJ4inNRk2KYTdCWYPQgwR5BOhgD+Nqb638woh7ii9T8SvV+FE3i/Za5FhCR
	FwiVu+TIOJM1FIFG5KK/XFbmxSDn4SqYMVw8rxKv402T1g/0rqUTt78baIQcaqFZixYWYz
	BOWkvP1hZOfk6meWtyXnZlIvuwJSIOE=
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: 5FM6JJR2LO7YUZD2FBNKFUXR27LMZQAX
X-Message-ID-Hash: 5FM6JJR2LO7YUZD2FBNKFUXR27LMZQAX
X-Mailman-Approved-At: Fri, 22 Apr 2022 07:44:38 +0200
CC: kbuild-all@lists.01.org, b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, liqiong@nfschina.com, kernel-janitors@vger.kernel.org, Yu Zhe <yuzhe@nfschina.com>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/5FM6JJR2LO7YUZD2FBNKFUXR27LMZQAX/>
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
config: m68k-defconfig (https://download.01.org/0day-ci/archive/20220422/202204221027.ETcMYyKP-lkp@intel.com/config)
compiler: m68k-linux-gcc (GCC) 11.2.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/2474b41c585e849d3546e0aba8f3c862735a04ff
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Yu-Zhe/batman-adv-remove-unnecessary-type-castings/20220421-235254
        git checkout 2474b41c585e849d3546e0aba8f3c862735a04ff
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.2.0 make.cross W=1 O=build_dir ARCH=m68k SHELL=/bin/bash net/batman-adv/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   net/batman-adv/bridge_loop_avoidance.c: In function 'batadv_choose_claim':
>> net/batman-adv/bridge_loop_avoidance.c:68:42: warning: initialization discards 'const' qualifier from pointer target type [-Wdiscarded-qualifiers]
      68 |         struct batadv_bla_claim *claim = data;
         |                                          ^~~~


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
