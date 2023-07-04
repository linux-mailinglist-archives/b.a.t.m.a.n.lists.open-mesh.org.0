Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 33FE4746E5F
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  4 Jul 2023 12:17:02 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id C263A81A60
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  4 Jul 2023 12:17:01 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1688465821;
 b=zxzSzq669XibXvVwJnrk3PSwAludDpViFwubMQ9OvQ1OY9TR6djBeXYcVvfWeLg0g6zhR
 p0NPA+jS0HMCUuaMX1/KHQGUhl1UTPmZmCF6wP4o1Z9e1x1HMEE7t8MSEI1s0uwWFSWmU+K
 E27Tr1Lm5e9UAAxdmG2+6qAZypIgotw=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1688465821; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=zTYaJZpsHWVNT0HTxcQ38bqPtpzGQ/EOIuurb9z8VSM=;
 b=0gLPFTr4vitkdGHec6oMGbjik18FdC5DmVA+6urW0R++L4KNzFpojESjhIv6XdGb7o0n3
 hUFpzABB2WdMnw+Odr8T5gcqd4zdPB52DAuoR63RPInmztOES3Rym/5dXaJVA9ECDDjFIcB
 MQhB9gvb6sNVO9uSfIte224TGp/4VH8=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=fail;
  arc=pass;
  dmarc=none
Authentication-Results: open-mesh.org; dkim=fail; arc=pass; dmarc=none
Received: from mail.aperture-lab.de (mail.aperture-lab.de [116.203.183.178])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id B075C8046B
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  4 Jul 2023 12:16:37 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1688465798;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=zTYaJZpsHWVNT0HTxcQ38bqPtpzGQ/EOIuurb9z8VSM=;
	b=LnVUTEsh/MFzmU779FrN9E8hI3uLZaPA9dWPQi5wioUxNKwmdlAAdUbl9KJTKzb8YT7D0h
	hb6DCiytQ+7O2OJn+qcWzPRGqMnXrJAa7zK/8Vud/aDJNRDoqjnsHMSuRvhpp091pDI+XS
	ocdbyRSN1rOAfOdJn33a14OUOHaDh5k=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1688465798; a=rsa-sha256;
	cv=none;
	b=QTkg9INS1s/goMHpGLqmWhqHdwmsISiTPiKju1lvGBbZpXJQooXRl3orpnJdUdt4KhBhYw
	jXjELBKy5h8S2qE9dcu6XFsQ8WXMKFKzDC1NKlgRR8gK4sYS1LztUldbC4b/u4Tm807eed
	dx1rtroc4RXemX8Ad1vuqFUiKOWTL8M=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	dmarc=none;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no
 SPF policy when checking 116.203.183.178)
 smtp.mailfrom=linus.luessing@c0d3.blue
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id 957B84AF4F;
	Tue,  4 Jul 2023 12:16:36 +0200 (CEST)
Date: Tue, 4 Jul 2023 12:16:35 +0200
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: pony <pny@posteo.net>
Subject: Re: forwarding works fine with 802.1ad vlans
Message-ID: <ZKPxgykqMCU55s6X@sellars>
References: <2905628.e9J7NaK4W3@katze>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <2905628.e9J7NaK4W3@katze>
X-Last-TLS-Session-Version: TLSv1.3
Message-ID-Hash: WVIUEGKTH2CSROOC6G2E6LVI2IKC76BO
X-Message-ID-Hash: WVIUEGKTH2CSROOC6G2E6LVI2IKC76BO
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency;
 loop; banned-address; member-moderation;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.3.8
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/WVIUEGKTH2CSROOC6G2E6LVI2IKC76BO/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi pony,

Thanks for the feedback! I've added a comment to this Wiki entry,
that you should not rely on packets being filtered.

I'm not sure if this filtering is 100% intentional or just a
byproduct of the early VLAN awareness implementation. So far we
typically advertised batman-adv as "it just works/behaves like a
(virtual) switch", which usually helps people to understand what
to expect or not to expect from a layer 2 mesh routing protocol.
And typically, a switch in its default configuration would not
drop VLAN tagged frames.

There are/were plans to autodetect VLANs, I think, so that
you wouldn't need to add something like a bat0.23 manually. But so
far nobody has implemented it.

Regards, Linus


On Sun, Jul 02, 2023 at 04:33:55PM +0000, pony wrote:
> Hello,
> 
> In https://www.open-mesh.org/projects/batman-adv/wiki/Faq#VLAN-forwarding-doesnt-work it is stated that batman advanced will only forward vlan frames when it knows about the vlan. However this seems only to be true for 802.1q vlans. I was able to send 802.1ad tagged frames over the mesh without configuring any vlans on top of the soft interface. I am using batman-adv 2022.0-openwrt-6. When I try the same with 802.1q it behaves as described in the wiki page.
> This may be be problematic when people rely on batman advanced not forwarding vlan tagged frames.
> 
> Kind regards,
> pony
> 
> 
