Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uFl7E3faGGpDoAgAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 29 May 2026 02:14:47 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 086D15FBA69
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 29 May 2026 02:14:46 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 41CBC83EC5
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 29 May 2026 02:14:46 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1780013686;
 b=khdHMWGtbGwPQyxTm5upSfwbe/d4lwTBIKfn/OR6b9uSrgOF8Rk7t/9k6RMfmpK+iygqP
 ni2xbFyz5ak0yyt4ckIHzfbugD2RRbrUySAPdbqABkHY4HbTzqkbOYHvFSnHq2KSjqa8v99
 K5toE74J7LepodOL4mVJDuKxTpahbSo=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1780013686; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=PZ80I4Q04V8uGwV2eqQomYAEzm5pmWHhpixyf6rW9JI=;
 b=PXKnZ/1xZBKuLEImlQ9KZJ0mKKBL8pdvVZ+h6do5t+e4gJggGylgaYeFGAXailHBNy2Cg
 z651Jnyfirr9BVVg5SyLAHLpvHxP1uzH9aEjFrEzqM4Ii8Lw0/ufplKV/RAnBguUWjlXR/T
 wy3bfYS7Px8Zas0WiktTgfEwLg5orOE=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=kernel.org;
 arc=pass;
 dmarc=pass header.from=kernel.org policy.dmarc=quarantine
Authentication-Results: open-mesh.org; dkim=pass header.d=kernel.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=kernel.org policy.dmarc=quarantine
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id E170280DF2
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 29 May 2026 02:14:14 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1780013665;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=PZ80I4Q04V8uGwV2eqQomYAEzm5pmWHhpixyf6rW9JI=;
	b=i+LCREOn9JYo2JippFhSAoicuWXX59zLphETDXPI4EcHGS5wd4oaZsgW5PzBDtnDxEYxnh
	k2JLUySU/YJ4zP/EEnL2y2tC0DE2RgUrmYWvrF1ore5bHu8RyQD7b3K1tyew1RQfMokGML
	mXCYDzO0Sv52+hOGFEyFcwFzuH3JmbM=
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1780013665;
	b=zn9+B1a4z0P3g2MbziAxAEo/SugY0EXtIbcc2BRwQsYjWDA3GAuRzfOi8wbPDiqU97+Hq4
	EKCwO/Kli06p4J3VH/H1m6f5INPwqEmZmsbvvBJRgnhM9K2gB2qzOq9c0+CS/2OieVuzfY
	Gmagb49dNeffpJny8FhP+M6LdSWeY8w=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=hQF0kBZ6;
	spf=pass (diktynna.open-mesh.org: domain of kuba@kernel.org designates
 172.105.4.254 as permitted sender) smtp.mailfrom=kuba@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id B6BA860213;
	Fri, 29 May 2026 00:14:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 137561F000E9;
	Fri, 29 May 2026 00:14:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780013653;
	bh=PZ80I4Q04V8uGwV2eqQomYAEzm5pmWHhpixyf6rW9JI=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=hQF0kBZ69s7CGcYpW8lZmNXXFoZ3kF6tBjGdGfBG74j1QpNh8VEsdvH17RQqKjnj0
	 aVGWopYfLG12cukp3Am1w475DutCx7etmP+4dlK1MH3/U25itBofX3gq5zzK76Xwpr
	 y+tHrCZUdh75q4TR7szGtOzVrkEMY8EWsI4TXu61oB1BMZuaP11Its48e3dEGw5oSN
	 5kZYzU31cpjqLCDOKJLYRmtvvdK12myX89zpCMucPIb0TjDcPgRVx402mcQ9jE92e0
	 JZ9te3VyEW55/XkhSUKvuOBrSvycmBj+BnTbnIzeAqtj7m/dLqb+vWmR9khQGyaK1g
	 9RQawecTXPyVQ==
Date: Thu, 28 May 2026 17:14:12 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Simon Wunderlich <sw@simonwunderlich.de>
Cc: netdev@vger.kernel.org, "David S. Miller" <davem@davemloft.net>, Eric
 Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Simon
 Horman <horms@kernel.org>, b.a.t.m.a.n@lists.open-mesh.org, Sven Eckelmann
 <sven@narfation.org>
Subject: Re: [PATCH net-next 01/15] batman-adv: drop batman-adv specific
 version
Message-ID: <20260528171412.7a60e8f7@kernel.org>
In-Reply-To: <20260528142924.329658-2-sw@simonwunderlich.de>
References: <20260528142924.329658-1-sw@simonwunderlich.de>
	<20260528142924.329658-2-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Message-ID-Hash: NB5PXWE25UWI36YYOHJZ5L2KTYN2JJCX
X-Message-ID-Hash: NB5PXWE25UWI36YYOHJZ5L2KTYN2JJCX
X-MailFrom: kuba@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-3; emergency; member-moderation
X-Mailman-Version: 3.3.10
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/NB5PXWE25UWI36YYOHJZ5L2KTYN2JJCX/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Spamd-Result: default: False [-2.01 / 15.00];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[kuba@kernel.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:24940, ipnet:2a01:4f8::/32, country:DE];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 086D15FBA69
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, 28 May 2026 16:29:10 +0200 Simon Wunderlich wrote:
> +#define BATADV_SOURCE_VERSION "linux-" UTS_RELEASE

What purpose that does "linux-" prefix serve?
The unwritten rule is that the OOT drivers have to append something 
to their version to distinguish themselves. In-tree version is just
the pure kernel version.

To be clear, definitely a move in the right direction. I hope we can
move _all the way_ in the right direction, tho, without still defining
OOT-feeling version.h file with a dedicated BATADV_SOURCE_VERSION
