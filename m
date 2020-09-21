Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id CB7D22725EC
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 21 Sep 2020 15:42:49 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id A861A80767;
	Mon, 21 Sep 2020 15:42:48 +0200 (CEST)
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id C2E7D806FD
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 21 Sep 2020 15:33:59 +0200 (CEST)
Received: by mail-wm1-x341.google.com with SMTP id s13so12148581wmh.4
        for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 21 Sep 2020 06:33:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blackwall-org.20150623.gappssmtp.com; s=20150623;
        h=message-id:subject:from:reply-to:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=wPdlIs18KI5U0+lJGti5z8sy4m97lLcsvfJKYU71Zb4=;
        b=TJTi4cNhDBklHXlnU2BhmlFoP17GtWhHnpSTpszs6yBgkG0PNYcRp92G+rh3wR2wMB
         6wTDZy/tUFdfXBpBkaVMoX0+xPQifCnlheP0zbjLbul6t11emSIvi2IFXuJgJUAuhYif
         DAxKt1XmBh3zpBwP9Vf2PvxP8aeQJf1ut36EMeKkKcbRhmJdPrB9adJMPTFw0rloMKKB
         YfWBswgn5hTnD9AM3KzR01u1zNONJ7HjbNyCcZ53ZfymCCnNWz0wzMirDCFBBS6O0t/5
         q7YZA729DmydWYGDV4LZW24yTJdhFuMiH6b/9odBjqo7KtQvE/iDl2bNP+zunNrqsTpk
         8GWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:reply-to:to:cc:date
         :in-reply-to:references:user-agent:mime-version
         :content-transfer-encoding;
        bh=wPdlIs18KI5U0+lJGti5z8sy4m97lLcsvfJKYU71Zb4=;
        b=Xp2dxI7IvVFzRi0WDl76Dtrhcqzv1ap+a6DZv5hwZFEIJyNB+gD2tUiq19bunVt4iZ
         Oe6nH8udxvym1umSWNdZkRIkJCC3aONx8YSvGNyyjh0YAeXiDrNwh8Td55NhtTCP/FZc
         jDpV+J5pzQAyfx2zx4iCxmvG8RZq2ozujxVUr7YUURE8oVz5ZvzvMtE1QyITXWKfgJlp
         tQ2M4Gt6OFb5BUBeJbrT+Q39vwWmcMoY9vMFXbdnWsiXVBqCL5osvsq4MlW0fW1rf91w
         nExIViuQul+JsQrIaYTOFE2p6skEJZY43BCPZ5+AJrm8TqsArV3wVa0pC9W3bsIussLj
         28Xw==
X-Gm-Message-State: AOAM531EezD0D092V/TFN+ddCFYcJlVGCmIMIA3uqVL+3vLoIJYdJ3n0
	03Mi69P4Qzun9hMxcSjTogvqRJ3kAFzS3YoI+4xkig==
X-Google-Smtp-Source: ABdhPJyOeMeACUunRhRyjQIarEzN5hQ5urTAIhwVTrIJKh+bb2lP9AAskI9HmHAzneGJWBAlNKrgOg==
X-Received: by 2002:a7b:c925:: with SMTP id h5mr29570930wml.28.1600695238916;
        Mon, 21 Sep 2020 06:33:58 -0700 (PDT)
Received: from debil (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
        by smtp.gmail.com with ESMTPSA id d18sm21301938wrm.10.2020.09.21.06.33.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Sep 2020 06:33:58 -0700 (PDT)
Message-ID: <79bea5b909046ae1259481d172c2eb2a6c62aabb.camel@blackwall.org>
Subject: Re: [PATCH net-next 06/16] net: bridge: mcast: rename br_ip's u
 member to dst
From: Nikolay Aleksandrov <razor@blackwall.org>
To: kernel test robot <lkp@intel.com>, netdev@vger.kernel.org
Date: Mon, 21 Sep 2020 16:33:56 +0300
In-Reply-To: <202009212146.1IVUIG6Z%lkp@intel.com>
References: <20200921105526.1056983-7-razor@blackwall.org>
	 <202009212146.1IVUIG6Z%lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31) 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1600695239;
	h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=wPdlIs18KI5U0+lJGti5z8sy4m97lLcsvfJKYU71Zb4=;
	b=OlYlUlQRlajLojOvTSI9aNkIh2iRjEilNNmmu01t8g6NKAIpHaV6FbXiG0EfcS84y90l7t
	muEsekMa6MsMxs+hxOmFXYKtIwoWQ+JkkPH8PezPhHnWH9BLVHJf92B/A78LYZ8zCSyGnN
	OJUV95hJ/Zk/JFR5ES+/4jU2ky8W6hw=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1600695239; a=rsa-sha256;
	cv=none;
	b=nOSwZS9NK/4QVSdUfLDCUKa/gfooKZIVWFGY1vmHYOmo90GrbhiRB6Ktl6KtdFYZxNSZtc
	JGKsD5fsMFrc1inCirTKaGL96tNSTlgDoUacHNZxoSJuKpLJaa1w+esy8ZlFfo4Zsjtb6/
	sJN9B3I/WAPHsP/MhxlIqpKfyGciWjw=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=blackwall-org.20150623.gappssmtp.com header.s=20150623 header.b=TJTi4cNh;
	spf=none (diktynna.open-mesh.org: domain of razor@blackwall.org has no SPF policy when checking 2a00:1450:4864:20::341) smtp.mailfrom=razor@blackwall.org
X-MailFrom: razor@blackwall.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: FCTHHOFC4LHXCQINTTIJ7JHVV53SIPQP
X-Message-ID-Hash: FCTHHOFC4LHXCQINTTIJ7JHVV53SIPQP
X-Mailman-Approved-At: Mon, 21 Sep 2020 13:42:46 +0200
CC: kbuild-all@lists.01.org, roopa@nvidia.com, davem@davemloft.net, bridge@lists.linux-foundation.org, Marek Lindner <mareklindner@neomailbox.ch>, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: razor@blackwall.org, The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/FCTHHOFC4LHXCQINTTIJ7JHVV53SIPQP/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Mon, 2020-09-21 at 21:30 +0800, kernel test robot wrote:
> Hi Nikolay,
> 
> I love your patch! Yet something to improve:
> 
> [auto build test ERROR on net-next/master]
> 
> url:    https://github.com/0day-ci/linux/commits/Nikolay-Aleksandrov/net-bridge-mcast-IGMPv3-MLDv2-fast-path-part-2/20200921-185933
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/davem/net-next.git 3cec0369905d086a56a7515f3449982403057599
> config: riscv-allyesconfig (attached as .config)
> compiler: riscv64-linux-gcc (GCC) 9.3.0
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-9.3.0 make.cross ARCH=riscv 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
>    net/batman-adv/multicast.c: In function 'batadv_mcast_mla_br_addr_cpy':
> > > net/batman-adv/multicast.c:564:20: error: 'const struct br_ip' has no member named 'u'
>      564 |   ip_eth_mc_map(src->u.ip4, dst);
>          |                    ^~
>    net/batman-adv/multicast.c:567:23: error: 'const struct br_ip' has no member named 'u'
>      567 |   ipv6_eth_mc_map(&src->u.ip6, dst);
>          |                       ^~
> 

Hrm, I'm pretty sure I tested batman, but apparently I missed
CONFIG_BATMAN_ADV_MCAST. I'll fix it up and send v2 after some
time to give people the chance to comment on the rest of the set.

Thanks!

