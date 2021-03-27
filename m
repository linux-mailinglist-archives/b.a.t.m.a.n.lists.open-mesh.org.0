Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DF3834B617
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 27 Mar 2021 11:25:27 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id D633E83DE7;
	Sat, 27 Mar 2021 11:25:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1616840725;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=lAqdXxJPigDLIdZoTmoXQqix6E46F9CwXBHKZHZIa78=;
	b=dFK1oyBwPdeDrrmWew/ze3j3B19/JRvmvN4Lz4Nl+z0p7v/QZkl5E/1uqyKRQmBclMKhyk
	WDewkLf5XR4Gs+GjAIRjLWP2jejJA+fsnn4jUXzpaT82lns3ldqMCNL9+zw9hLtOTeIlh8
	qoqP6CRwFKs2mQeVtBtkIBaKXKaM0l8=
Subject: Re: Problem with batman-adv and wifi adhoc in OpenWrt 19.07
To: b.a.t.m.a.n@lists.open-mesh.org
Date: Sat, 27 Mar 2021 10:25:23 -0000
In-Reply-To: <12440149.KDPBelFpPj@sven-l14>
References: <12440149.KDPBelFpPj@sven-l14>
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/PU7KV7MX2M5VTNOHQEOONVAH63NGTK3W/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
MIME-Version: 1.0
Message-ID: <161684072526.1283.10489530309130114505@diktynna.open-mesh.org>
From: "spiccinini--- via B.A.T.M.A.N" <b.a.t.m.a.n@lists.open-mesh.org>
Cc: spiccinini@altermundi.net
Content-Type: multipart/mixed; boundary="===============6601206774899900289=="

--===============6601206774899900289==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============6601206774899900289==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 850858029D
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 27 Mar 2021 11:25:23 +0100 (CET)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Re: Problem with batman-adv and wifi adhoc in OpenWrt 19.07
From: spiccinini@altermundi.net
To: b.a.t.m.a.n@lists.open-mesh.org
Date: Sat, 27 Mar 2021 10:25:23 -0000
Message-ID: <20210327102523.1205.82481@diktynna.open-mesh.org>
In-Reply-To: <12440149.KDPBelFpPj@sven-l14>
References: <12440149.KDPBelFpPj@sven-l14>
User-Agent: HyperKitty on https://lists.open-mesh.org/
Message-ID-Hash: PU7KV7MX2M5VTNOHQEOONVAH63NGTK3W
X-Message-ID-Hash: PU7KV7MX2M5VTNOHQEOONVAH63NGTK3W
X-MailFrom: spiccinini@altermundi.net
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/PU7KV7MX2M5VTNOHQEOONVAH63NGTK3W/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi Sven, thanks for your quick answer :)

Sven Eckelmann wrote:
> On Saturday, 27 March 2021 01:36:54 CET spiccinini(a)altermundi.net wrote:
> >  Libremesh based on OpenWrt 19.07 + ad-hoc: not working
> >  Libremesh based on OpenWrt 19.07 + 802.11s: working
> >  Libremesh based on OpenWrt 18.06 + ad-hoc: working
> >  Libremesh based on OpenWrt 18.06 + 802.11s: working 
> Sounds like your wifi stack/driver is failing. batman-adv doesn't know or care 
> about whether the wifi layer is using IBSS or a non-fwding meshpoint 
> interface.

ipv6 link local is working, I can ssh to and from both nodes using fe80::xxxxxx%wlan1-adhoc

> 
> batman-adv is needing:
> 
> * working broadcast in both directions
> 
>   - you can see in `batctl n` whether some OGMs were received from a neighbor
>   - you can see in `batctl o` if both directions work(ed)

Ok batctl n output seems right in both nodes:

root@nodocable:~# batctl n
[B.A.T.M.A.N. adv openwrt-2019.2-10, MainIF/MAC: eth0_202/02:95:39:1e:fa:0a (bat0/d6:27:7c:88:a9:e2 BATMAN_IV)]
IF             Neighbor              last-seen
   wlan2-adhoc_202	  nodopoe_wlan2_adhoc_202    0.650s
   wlan1-adhoc_202	  nodopoe_wlan1_adhoc_202    0.570s

root@nodopoe:~# batctl n
[B.A.T.M.A.N. adv openwrt-2019.2-10, MainIF/MAC: eth1-2_202/02:29:0f:1e:fa:02 (bat0/1e:d6:7b:93:1b:6c BATMAN_IV)]
IF             Neighbor              last-seen
   wlan2-adhoc_202	  nodocable_wlan2_adhoc_202    0.910s
   wlan1-adhoc_202	  nodocable_wlan1_adhoc_202    0.110s


> 
> * working unicast in both directions
> 
>   - just use something like `batctl ping` or some other kind of `ping` 
>     directly on the lower interface (wlan*-adhoc)
>   - you might also use something like `tcpdump`/`batctl td` to check if the 
>     peer can receive your unicast packets on the lower device (wlan*-adhoc)

This is what it seems is not working.

> 
> You should also configure a third device in wifi monitor mode to figure out 
> whether the transmission of the unicast/broadcast packets is working or not. 
> This should make it easier for you to figure out whether the sending or 
> receiving part is not working in your wifi stack/driver.

Thanks, I will recreate the setup and report back. 

Another thing, the setup involves a vlan, both are configured with the same vlan (and in 802.11s it is working as expected). I will try withut the vlan.

Best,
SAn
--===============6601206774899900289==--
