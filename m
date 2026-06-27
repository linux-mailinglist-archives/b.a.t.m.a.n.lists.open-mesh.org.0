Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id oJ5CGdh2P2q4TgkAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 27 Jun 2026 09:08:08 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id F217B6D161D
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 27 Jun 2026 09:08:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b="xU/S7FRM";
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=narfation.org;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id CD4F383CAD
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 27 Jun 2026 09:08:07 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1782544087;
 b=D5cRfGWojNFZQZhbjB9c7xyL0IsE8KA+EISKlsqACqwAp2mKIY1McJGuQ20h0XhRo9cIJ
 lpmCH2u6BLuXtRsOuiySuWf3h9pZdYyTwznOcyKzD2e6wNvCNHBFIasy1tXzT9LSwq0Ykue
 G0SjboEvTDzJ2OC/kOe5GYc7wxXtiSs=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1782544087; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=rNYYePDvpTYtK8SFepELEAwsSYVLkoYEB6ceWPvctuU=;
 b=2b/cMcZWpymubfeMsQJkiELfQ3U/xNnPJpXkcIxi7CCxLf4x3Vf+fCuzuygfVyCfqIKJh
 F69DUCgX4NpUSk5c7vSg7tdBzQ1dbUFi2W7pqm4qtcUiqCTOuX0cI1tFRxOH24po1hlKLzO
 9N5icnZXxkFHpNY3nEr4fuSdWVj9DuI=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 1E49981113
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 27 Jun 2026 09:07:51 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1782544071;
	b=00I82Zcym6qzaw3d5wlBcuxXkxeroI5l1Mdu1rH2zh0oqjDLPKyIz/BgEMbw8uymlY0Ban
	zJFlPoSmXu38Tl2uN7j/RSVtd2vV+D/0VwCHnMAb8HiTOLneEB0bouz9FO2ZHDJmVMIPDg
	M1zANeGojHnyztBvohmn1IDlrl8Oqhg=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1782544071;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=rNYYePDvpTYtK8SFepELEAwsSYVLkoYEB6ceWPvctuU=;
	b=b6jmQCZYwzSExfIQWqZ/4CNX/UaLXVBpA4eOmkvYSUn2178dAfz1k72/CwyGW6BhIVhUTU
	ceW9OLNYMf6tML9dXmAbuKMQhBcTLIBkSLZQtvxEJgDm1LsEDdvT0IAww/wIoa3ybD+GfG
	7S0geLbYfwKe2VoYk/CHHTeRn7Ak2pI=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b="xU/S7FRM";
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id E83341FECA;
	Sat, 27 Jun 2026 07:07:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1782544070;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=rNYYePDvpTYtK8SFepELEAwsSYVLkoYEB6ceWPvctuU=;
	b=xU/S7FRMIcBIxxOSODQ+3Ef91zyv84NTqUiec1VYqN2+CMkERDDQoGi3WYivN99W7HRPZN
	QxkhFp+L6S3pvtsxyM+xpNfo//17XYVPSjnjtPJzJa4FH1Vu3gNqTMsHoTcr66z8/4cG2w
	saVkbm+DCyQhztbSbUTvrOschb/O79o=
From: Sven Eckelmann <sven@narfation.org>
To: WenTao Liang <vulab@iscas.ac.cn>
Cc: marek.lindner@mailbox.org, sw@simonwunderlich.de, antonio@mandelbit.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 horms@kernel.org, b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
Subject: Re: [PATCH] fix: net/batman-adv: batadv_interface_kill_vid: extra
 batadv_meshif_vlan_put after destroy
Date: Sat, 27 Jun 2026 09:07:43 +0200
Message-ID: <2365693.iZASKD2KPV@sven-desktop>
In-Reply-To: <178254092045.4739.1497464106445743950.b4-review@b4>
References: <20260627034636.59693-1-vulab@iscas.ac.cn>
 <178254092045.4739.1497464106445743950.b4-review@b4>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2053576.PYKUYFuaPT";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
Message-ID-Hash: PXUW4BTGCL3INJK4N36U4QPFLPB44PU6
X-Message-ID-Hash: PXUW4BTGCL3INJK4N36U4QPFLPB44PU6
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-3; emergency; member-moderation;
 nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size;
 news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/PXUW4BTGCL3INJK4N36U4QPFLPB44PU6/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.61 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[narfation.org,none];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[narfation.org:s=20121];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:vulab@iscas.ac.cn,m:marek.lindner@mailbox.org,m:sw@simonwunderlich.de,m:antonio@mandelbit.com,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:b.a.t.m.a.n@lists.open-mesh.org,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:stable@vger.kernel.org,s:lists@lfdr.de];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[narfation.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	DBL_BLOCKED_OPENRESOLVER(0.00)[iscas.ac.cn:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F217B6D161D

--nextPart2053576.PYKUYFuaPT
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: WenTao Liang <vulab@iscas.ac.cn>
Date: Sat, 27 Jun 2026 09:07:43 +0200
Message-ID: <2365693.iZASKD2KPV@sven-desktop>
In-Reply-To: <178254092045.4739.1497464106445743950.b4-review@b4>
MIME-Version: 1.0

On Saturday, 27 June 2026 08:15:20 CEST Sven Eckelmann wrote:
> On Sat, 27 Jun 2026 11:46:36 +0800, WenTao Liang <vulab@iscas.ac.cn> wrote:
> 
> Hi,
> 
> not-acked

Just noticed that we already have another odd patch from you [1] (and you 
never answered after my reply). Could it be that you just try to spread AI/
LLM(?) generated patches in stable@vger.kernel.org and hope that something 
sticks?

I see a lot more patch bombs and complains all over the place when searching 
the whole lore.kernel.org [2] and only checking the last couple of days.

If this is really the case - please don't do this. We already stress them (and 
other maintainers) enough by dumping large amounts of legitimate patches on 
them. Sending patches shutgun-style all over the place without any 
recognizable QA or oversight might just cause an overload. And when you then 
don't even take the time to react to the review of the patches or apply the 
requests they had to you (and instead invent new things to annoy them)... At 
least I will not spend an hour writing a reply to you anymore but directly 
reject your patch.

Regards,
	Sven

[1] https://lore.kernel.org/batman/20250401083901.2261-1-vulab@iscas.ac.cn/
[2] https://lore.kernel.org/all/?q=vulab@iscas.ac.cn
--nextPart2053576.PYKUYFuaPT
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQS81G/PswftH/OW8cVND3cr0xT1ywUCaj92vwAKCRBND3cr0xT1
y5/WAP92yVp2I7/TSTgNIsYCekkMLPcxg+GxSX4T1259xtOaYQEA21CF2Gh1h5bk
Y9GzKjpEPYKSTb7JCwzHtF70D6c4WAk=
=hJlZ
-----END PGP SIGNATURE-----

--nextPart2053576.PYKUYFuaPT--



