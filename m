Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sK01IQwH82lBwwEAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 30 Apr 2026 09:38:52 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FC3449EBBC
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 30 Apr 2026 09:38:52 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 06B7D859D5
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 30 Apr 2026 09:38:52 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1777534732;
 b=GP0vhU+Mml0lDjFPBoN/vn2uLeWUdPqFzrUR339zuszIVHNiIu9RKWfzPZF8HZ171SCO3
 C7HlmmvGoWWEG4xOe2mYODEC1sL1iJTuEx5h+BqYqxbMFBcJygQSozjZljd/3JO3PKiZ9Gb
 RH1kZGWqIH13DJO2yPC+cBlomVmIifY=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1777534732; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=lrWkfmosicCb3bXJFi7fcRxV+xZwfl91sGSlkgUQsYQ=;
 b=uCh9ukC7P1SQ8HpJZIEAPDIM8ajH54YrIl8e5sGwhByRrHxL9rv9qZNeK4bMEz0QTv7ii
 oFEmYjLFeKI3gDS6c0FXVuKJlHFe5FuSP1WPD28P0D+v+2DEuVnRjHi5lmu5pR+dhpOeEoQ
 h1HgVzWPgFBCAJiIxM+pjUGVzydyN5U=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 333EC82232
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 30 Apr 2026 09:38:10 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1777534690;
	b=IjZkh54BaPt+WSeXan/zISJ4n0NKRr24MAr6EVC1haDiun1mBfvnEH2/EYTtmaBE5mhFLa
	10ork2gu0ELX0/OvAfgBU/ff7wO0nYVTn5fz6RH+JaHdSYGauAgZKu6dGvsj7zwT97HYL7
	2bmdQMsp3A68BTR6VqE0nB6U09yo1G4=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=lIRYhsmR;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1777534690;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=lrWkfmosicCb3bXJFi7fcRxV+xZwfl91sGSlkgUQsYQ=;
	b=DiESkBRlUa0eEiA6WfyKwckBV+CsJCbaIJWIlvCXtZtoUEfIHYdN8CETW6BH+rSp/Le6AQ
	vHedOczoQN3Q4YWx+9Y/gJSdt5LhQ+Us8ZIceTbEZcxUZVzo0ExQhki+B5pbUOczxVoQbG
	Jt4g1wza4Q6NvoFkW+oG60YFuQg4i0Y=
Received: by dvalin.narfation.org (Postfix) id 8D1E21FF8D;
	Thu, 30 Apr 2026 07:38:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1777534689;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=lrWkfmosicCb3bXJFi7fcRxV+xZwfl91sGSlkgUQsYQ=;
	b=lIRYhsmRno4XToAYKY2FN2Yf2DHcu3M89tJ61RllITajpDHavnbrB9y/rvnvS4DO552Wd4
	uenZSsUW14sY/31l0lDlw+Qil/Gyx3SXQ31nHgZ1Abu7UiInN0kpvkOJ2X12xvEhugmWjy
	GQ5lU0m7EOMjfYFqSj9+poDsf0nd+tg=
From: Sven Eckelmann <sven@narfation.org>
To: stable@vger.kernel.org, Haoze Xie <royenheart@gmail.com>,
 Robert Garcia <rob_garcia@163.com>
Cc: Simon Wunderlich <sw@simonwunderlich.de>,
 Robert Garcia <rob_garcia@163.com>, Yifan Wu <yifanwucs@gmail.com>,
 Juefei Pu <tomapufckgml@gmail.com>, Yuan Tan <yuantan098@gmail.com>,
 Xin Liu <bird@lzu.edu.cn>, Ao Zhou <n05ec@lzu.edu.cn>,
 Marek Lindner <mareklindner@neomailbox.ch>,
 Antonio Quartulli <a@unstable.cc>, "David S . Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
 b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Sasha Levin <sashal@kernel.org>
Subject: Re: [PATCH 5.15.y] batman-adv: hold claim backbone gateways by
 reference
Date: Thu, 30 Apr 2026 09:38:05 +0200
Message-ID: <1857579.VLH7GnMWUR@ripper>
In-Reply-To: <20260430071645.3030702-1-rob_garcia@163.com>
References: <20260430071645.3030702-1-rob_garcia@163.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart8717455.NyiUUSuA9g";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
Message-ID-Hash: 53ZVCH3RD5NQATZEPMBTEY53WZYUJGHM
X-Message-ID-Hash: 53ZVCH3RD5NQATZEPMBTEY53WZYUJGHM
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/53ZVCH3RD5NQATZEPMBTEY53WZYUJGHM/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Queue-Id: 2FC3449EBBC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.61 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[narfation.org,none];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[narfation.org:s=20121];
	MAILLIST(-0.20)[mailman];
	HAS_LIST_UNSUB(-0.01)[];
	R_SPF_NA(0.00)[no SPF record];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FREEMAIL_TO(0.00)[vger.kernel.org,gmail.com,163.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	DKIM_TRACE(0.00)[narfation.org:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[simonwunderlich.de,163.com,gmail.com,lzu.edu.cn,neomailbox.ch,unstable.cc,davemloft.net,kernel.org,lunn.ch,lists.open-mesh.org,vger.kernel.org];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[simonwunderlich.de:email,narfation.org:dkim,narfation.org:email,lzu.edu.cn:email,diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns]

--nextPart8717455.NyiUUSuA9g
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
Date: Thu, 30 Apr 2026 09:38:05 +0200
Message-ID: <1857579.VLH7GnMWUR@ripper>
In-Reply-To: <20260430071645.3030702-1-rob_garcia@163.com>
References: <20260430071645.3030702-1-rob_garcia@163.com>
MIME-Version: 1.0

On Thursday, 30 April 2026 09:16:45 CEST Robert Garcia wrote:
> From: Haoze Xie <royenheart@gmail.com>
> 
> [ Upstream commit 82d8701b2c930d0e96b0dbc9115a218d791cb0d2 ]
> 
> batadv_bla_add_claim() can replace claim->backbone_gw and drop the old
> gateway's last reference while readers still follow the pointer.
> 
> The netlink claim dump path dereferences claim->backbone_gw->orig and
> takes claim->backbone_gw->crc_lock without pinning the underlying
> backbone gateway. batadv_bla_check_claim() still has the same naked
> pointer access pattern.
> 
> Reuse batadv_bla_claim_get_backbone_gw() in both readers so they operate
> on a stable gateway reference until the read-side work is complete.
> This keeps the dump and claim-check paths aligned with the lifetime
> rules introduced for the other BLA claim readers.
> 
> Fixes: 23721387c409 ("batman-adv: add basic bridge loop avoidance code")
> Fixes: 04f3f5bf1883 ("batman-adv: add B.A.T.M.A.N. Dump BLA claims via netlink")
> Cc: stable@vger.kernel.org
> Reported-by: Yifan Wu <yifanwucs@gmail.com>
> Reported-by: Juefei Pu <tomapufckgml@gmail.com>
> Co-developed-by: Yuan Tan <yuantan098@gmail.com>
> Signed-off-by: Yuan Tan <yuantan098@gmail.com>
> Suggested-by: Xin Liu <bird@lzu.edu.cn>
> Signed-off-by: Haoze Xie <royenheart@gmail.com>
> Signed-off-by: Ao Zhou <n05ec@lzu.edu.cn>
> Signed-off-by: Sven Eckelmann <sven@narfation.org>
> Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
> Signed-off-by: Robert Garcia <rob_garcia@163.com>

See https://lore.kernel.org/r/20260413125407.85603-1-sven@narfation.org for 
the original backport. Can you explain further why you send a new version?

Sasha Levin <sashal@kernel.org> picked it up for 5.15.y (on Sun, 19 Apr 2026 
21:13:58 -0400, MsgId 20260419195610.batman-adv-5.15@kernel.org). 
Yes, it was not yet published or 5.15 - so maybe fell through the cracks.

Regards,
	Sven
--nextPart8717455.NyiUUSuA9g
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQS81G/PswftH/OW8cVND3cr0xT1ywUCafMG3QAKCRBND3cr0xT1
y41NAQDcrtNDGgWALEYpUXSE0WJzqoMrzlHp9SPLAwNG0wQnAgD+KXx7wBA9AmQ5
m9xfCxUXBRwKccOO0RwYSOtd4QP3igY=
=5+3O
-----END PGP SIGNATURE-----

--nextPart8717455.NyiUUSuA9g--



