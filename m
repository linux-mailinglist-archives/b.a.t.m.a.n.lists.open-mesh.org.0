Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 78ABA930203
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 13 Jul 2024 00:14:02 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 2D47D8308E
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 13 Jul 2024 00:14:02 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1720822442;
 b=ahqVvFhLO342qDZsvW29hWuGuB+AGv5ORbiwCcCPau+zrPAIPDFTTE7ALiKLQRD/UW8K8
 ZHk9F51wnjcx9X2So4zXOCWZK2hupxJYsv9vXTk28zWKpXNfqAxmmsN8PCIE/4J0zDOM3lK
 QLTUy2wa5PBlx758trKPu6KNyNSfldw=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1720822442; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=2V1KFrs/HSb9wSr30r/z7tXhHMo5H2ISjZA5vIzDtqU=;
 b=oJ/XVhIZXZzwf9wmeQxkMvcwwrkOOjKMnuv2xIjWVO+9tzuu+jxCyqcKg2YaiQfB2nvPF
 1wOeGsEesmfVv20kCSb+wNlR2KAv4hV38cqGVQh2s7a45ZAK/OinYiZ9ERLV02CpAZ9GEqe
 fGHj724RVK40H3L0beOjRd20f5JzuRE=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=fail;
  arc=pass;
  dmarc=none
Authentication-Results: open-mesh.org; dkim=fail; arc=pass; dmarc=none
Received: from mail.aperture-lab.de (mail.aperture-lab.de
 [IPv6:2a01:4f8:c2c:665b::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 51BCA81B04
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 13 Jul 2024 00:13:56 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1720822436;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=2V1KFrs/HSb9wSr30r/z7tXhHMo5H2ISjZA5vIzDtqU=;
	b=vN+fEzLNXahBRjCz5ukBYqom/s8gugULMXX6hBaQ8+SaxuNnDqxZp3dc/oDt+iTmDlilYa
	U/ivHtJuy/6T5eS+gunoBqLMMyUbmPikb5oPRk7p78cEfSk3SdDOVI6U+BI2R0I9kWNKHv
	zKhgulspTKW2Ub1IEQDsqduWxhJ56HU=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue
 designates 2a01:4f8:c2c:665b::1 as permitted sender)
 smtp.mailfrom=linus.luessing@c0d3.blue;
	dmarc=none
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1720822436; a=rsa-sha256;
	cv=none;
	b=UhAIumF5lZYiIlj8aVz8gU+GHQKLdm0PqvhoIrKmhfzMV5BZ4cyiOInxFA+jSUs0pnDPBC
	7I2NTY5KMrd9YlVhAf68ZuBpmjg45lVZ729aUX3r8RJRuiOhiiY9wxjbPi84DRTd7lqqHA
	X5jWYRUnS4acCpoZSTF/OU9Rumzw66U=
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id 090DE3EE06
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 13 Jul 2024 00:12:07 +0200 (CEST)
Date: Sat, 13 Jul 2024 00:13:54 +0200
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: [PATCH v2] batman-adv: add dynamic, bridged-in TT VID detection
 support
Message-ID: <ZpGqot-13tFMWrQW@sellars>
References: <20240612213944.4169-1-linus.luessing@c0d3.blue>
 <Zm9NPkUOQuj93BQs@sellars>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <Zm9NPkUOQuj93BQs@sellars>
X-Last-TLS-Session-Version: TLSv1.3
Message-ID-Hash: W3QFULCF4UT2JEDMO5GTWZ5EPPNPFYX3
X-Message-ID-Hash: W3QFULCF4UT2JEDMO5GTWZ5EPPNPFYX3
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency;
 loop; banned-address; member-moderation;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.8
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/W3QFULCF4UT2JEDMO5GTWZ5EPPNPFYX3/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

And one more thought/idea that just came to my mind:

Maybe after adding dynamic VLAN detection from traffic we
could then also exclude the annoying, actually typically
unused VID 0 from the static addition? That way we would
save quite a bit of overhead as each VLAN currently quite
significantly increases the OGM size.

So basically thinking of simply adding a "if (!vid) return" to
(.ndo_vlan_rx_add_vid =) batadv_interface_add_vid().

One could still use VID 0 on bat0, it just wouldn't be detected as
quickly/immediately, would take an actual payload packet to be added.

Currently VID 0 is added because we set
"dev->features |= NETIF_F_HW_VLAN_CTAG_FILTER" in
batadv_softif_init_early(). Which in turn triggers:
net/8021q/vlan.c:vlan_device_event()->vlan_vid_add(dev, htons(ETH_P_8021Q), 0)
And triggers the message "adding VLAN 0 to HW filter on device bat0"
in dmesg.


But of course, first the BLA induced 30 seconds broadcast
filtering with each added VLAN would need to be solved. As that
might be a too easy DoS potential, I guess?
Could still need some feedback on how to best solve that
(bat_priv->bla.num_requests per VLAN?).

Regards, Linus
