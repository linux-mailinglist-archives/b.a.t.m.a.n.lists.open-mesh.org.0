Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id E9DD6A3EDC4
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 21 Feb 2025 08:58:36 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id C0E03843E7
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 21 Feb 2025 08:58:36 +0100 (CET)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1740124716;
 b=izfnnVLGT6bzK/vOIl281l8lCrb5on4vlJIZSI/Ntd645lqERP80Rhw+S4pI+waQ3tida
 bAyCANTPtA47ToZNlTPurra/qfAfRRdnHZnGtGv0MKle8cQsdYYo3Qs1dXQ9h6W4FDgV5AH
 IKwArsiUGQd979wlFezduuTae6OSMus=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1740124716; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=YzTaMIXfTQW5u2lkanlpdTtaryhWFAt2zcKLntOoUF0=;
 b=XiKwYZp40o9EF7kIgDn8rggJgpAzSV02KVw1B7kTtY/AlRvgXjnRfiQYru80Pl+yhzl/o
 qu0cOdpXmqFHC2E3A3JtUfkh45slS0GL7DLvu7urNRK9EWCjGQ314eTIcqJ36IqM7P9zK6K
 e/TfExXUYkFMsgz8laOaX5NpmhBC8F4=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=amazon.com header.i=@amazon.com;
  arc=pass;
  dmarc=none
Authentication-Results: open-mesh.org;
 dkim=pass header.d=amazon.com header.i=@amazon.com; arc=pass; dmarc=none
Received: from smtp-fw-6001.amazon.com (smtp-fw-6001.amazon.com
 [52.95.48.154])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 4B5A083FAB
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 21 Feb 2025 05:12:25 +0100 (CET)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1740111145;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=YzTaMIXfTQW5u2lkanlpdTtaryhWFAt2zcKLntOoUF0=;
	b=P1gZyJw9O0C7leJpwzSBAdubj0yXWUq0BRt2F+a7AsR3aQLnplb1ZE403rKnErGyZqxYFn
	7cm7meeXHZohUPp41QERYpa34CekKF4zkJUT6u/sAOAUjfLxkleMVVmPnm3vsRifTv4bWi
	LgrbB8I8GiXD3vc9lTAJXcj48AbhyDI=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1740111145; a=rsa-sha256;
	cv=none;
	b=B4Vb9iGltRWmv9z+r9i5qcR1Nyz+DQPKmQnPDCzfD3+OoaZOziVCsN6vrZp5rVJPnHZwp1
	HErPAaWyDHAOJRU4pXkYw4UpQP/ya7Sj8XfwEfUrVHtVOZxFemR5EiloyJxc7yyMAzuXP8
	OQEseCjjWSKXykAMDbPE4SrExm6lczY=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=amazon.com header.s=amazon201209 header.b=b17h5X5T;
	spf=pass (diktynna.open-mesh.org: domain of
 "prvs=140266d62=kuniyu@amazon.co.jp" designates 52.95.48.154 as permitted
 sender) smtp.mailfrom="prvs=140266d62=kuniyu@amazon.co.jp";
	dmarc=pass (policy=quarantine) header.from=amazon.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
  t=1740111145; x=1771647145;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=YzTaMIXfTQW5u2lkanlpdTtaryhWFAt2zcKLntOoUF0=;
  b=b17h5X5TLTwN2CXvtMPce/YS6k+gvNeGb+R3MawOs1TZDvvPk++jDUoA
   jtCZmDqTqq1ahPDqfwSsIyXKTMcsG9/N4fcECrGwEBy4iJlvqE3TPrLSc
   C6R7KafF3xfjY0Fc47/13/72yhpO+2HpI4Xy0Ajt6BcHWCkkyjT15TDrG
   4=;
X-IronPort-AV: E=Sophos;i="6.13,303,1732579200";
   d="scan'208";a="464524007"
Received: from iad12-co-svc-p1-lb1-vlan2.amazon.com (HELO
 smtpout.prod.us-west-2.prod.farcaster.email.amazon.dev) ([10.43.8.2])
  by smtp-border-fw-6001.iad6.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Feb 2025 04:12:20 +0000
Received: from EX19MTAUWA002.ant.amazon.com [10.0.7.35:45617]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.6.186:2525]
 with esmtp (Farcaster)
 id f7b7ed86-b5d1-4be4-9e7b-55d4fb0bed97;
 Fri, 21 Feb 2025 04:12:14 +0000 (UTC)
X-Farcaster-Flow-ID: f7b7ed86-b5d1-4be4-9e7b-55d4fb0bed97
Received: from EX19D004ANA001.ant.amazon.com (10.37.240.138) by
 EX19MTAUWA002.ant.amazon.com (10.250.64.202) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1258.39;
 Fri, 21 Feb 2025 04:12:08 +0000
Received: from 6c7e67bfbae3.amazon.com (10.135.209.63) by
 EX19D004ANA001.ant.amazon.com (10.37.240.138) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1544.14;
 Fri, 21 Feb 2025 04:12:03 +0000
From: Kuniyuki Iwashima <kuniyu@amazon.com>
To: <shaw.leon@gmail.com>
CC: <alex.aring@gmail.com>, <andrew+netdev@lunn.ch>,
	<b.a.t.m.a.n@lists.open-mesh.org>, <bpf@vger.kernel.org>,
	<bridge@lists.linux.dev>, <davem@davemloft.net>, <donald.hunter@gmail.com>,
	<dsahern@kernel.org>, <edumazet@google.com>, <herbert@gondor.apana.org.au>,
	<horms@kernel.org>, <kuba@kernel.org>, <kuniyu@amazon.com>,
	<linux-can@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-kselftest@vger.kernel.org>, <linux-ppp@vger.kernel.org>,
	<linux-rdma@vger.kernel.org>, <linux-wireless@vger.kernel.org>,
	<linux-wpan@vger.kernel.org>, <miquel.raynal@bootlin.com>,
	<netdev@vger.kernel.org>, <osmocom-net-gprs@lists.osmocom.org>,
	<pabeni@redhat.com>, <shuah@kernel.org>, <stefan@datenfreihafen.org>,
	<steffen.klassert@secunet.com>, <wireguard@lists.zx2c4.com>
Subject: Re: [PATCH net-next v10 10/13] rtnetlink: Remove "net" from newlink
 params
Date: Thu, 20 Feb 2025 20:11:54 -0800
Message-ID: <20250221041155.78502-1-kuniyu@amazon.com>
X-Mailer: git-send-email 2.39.5 (Apple Git-154)
In-Reply-To: <20250219125039.18024-11-shaw.leon@gmail.com>
References: <20250219125039.18024-11-shaw.leon@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.135.209.63]
X-ClientProxiedBy: EX19D042UWA003.ant.amazon.com (10.13.139.44) To
 EX19D004ANA001.ant.amazon.com (10.37.240.138)
X-MailFrom: prvs=140266d62=kuniyu@amazon.co.jp
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency;
 loop; banned-address; member-moderation;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2
Message-ID-Hash: 5N3BJJZUQWM6JR5AO4MV4CQGA4LHLHGL
X-Message-ID-Hash: 5N3BJJZUQWM6JR5AO4MV4CQGA4LHLHGL
X-Mailman-Approved-At: Fri, 21 Feb 2025 08:53:56 +0100
X-Mailman-Version: 3.3.8
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/5N3BJJZUQWM6JR5AO4MV4CQGA4LHLHGL/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Xiao Liang <shaw.leon@gmail.com>
Date: Wed, 19 Feb 2025 20:50:36 +0800
> Now that devices have been converted to use the specific netns instead
> of ambiguous "net", let's remove it from newlink parameters.
> 
> Signed-off-by: Xiao Liang <shaw.leon@gmail.com>

Reviewed-by: Kuniyuki Iwashima <kuniyu@amazon.com>
