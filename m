Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YHHIJAbaGWoAzggAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 29 May 2026 20:25:10 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 333EC60737C
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 29 May 2026 20:25:09 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 5F2BF82812
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 29 May 2026 20:25:09 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1780079109;
 b=2R3E0i5v3XtIhFFRt+HKjxCLzDqhvEOGBhBlFNPJZDIz1y8G3Zods1MKR1mldWouR5sQN
 dsyTyI+7uVOrd4KT76MZt1pjMpKmWovpajrddnkS9OYLrh1jK5OxY/TYe+1T1aRjiAMaYPQ
 +VgByUxwdoQu4qMI6M7TxeMAXoNdCw8=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1780079109; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=1sjeWKVlflwMhfQsa4hT1/XP4L2DOWkP9sxkSpmoiwo=;
 b=u3yKdixcQSDb4Q859FQLsWaLwlY0zZo84tU9WoyrFET6vsRoiLahYgDVktKGjmo5Z67eG
 hjkSKyWg59V8q8JBTOYVaLXuUklpXSfMB8wsYXQUTd3gf0gmaXE9Hp/eUseXKDf8AST8pSS
 uuB73I13FUxvdewjTMMHsbPj4TEPKA0=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=kernel.org;
 arc=pass;
 dmarc=pass header.from=kernel.org policy.dmarc=quarantine
Authentication-Results: open-mesh.org; dkim=pass header.d=kernel.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=kernel.org policy.dmarc=quarantine
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 0A291807F7
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 29 May 2026 20:24:34 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1780079086;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=1sjeWKVlflwMhfQsa4hT1/XP4L2DOWkP9sxkSpmoiwo=;
	b=DeDOR23f2JygVHdFHWrNlLJ7o0z384Bwmn4qQwJ6PHqzMAFUxqTR4z9+fn+PKXdOoUL7HG
	xsqZeeVtcPpRZSfxX5MLgJlBFyeS+NufdQQbroQzm+xavW4xcw9p5jfKgl+WzFotRzKFy2
	xeC8N4UHe2FAycMgR5h9avAQedu0FLs=
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1780079086;
	b=Lddos15YKzIrY08EfqlKO93GzSJOOdYjlPXNjMO4SURIy6Ufr8NVi1G0yA70Jb6LAa0ph9
	br+K9rFc5p+ptK6oHnOHgfnermd9PPRPrmTin3IF/ZtZcx/0WGYl0muBllLLTF5GTp7x1X
	EWtMtuwlfGQONQ67ISxZg8uXiKB3F00=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="S/uLafvG";
	spf=pass (diktynna.open-mesh.org: domain of kuba@kernel.org designates
 2600:3c0a:e001:78e:0:1991:8:25 as permitted sender)
 smtp.mailfrom=kuba@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id B51B2401A2;
	Fri, 29 May 2026 18:24:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 451521F00893;
	Fri, 29 May 2026 18:24:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780079071;
	bh=1sjeWKVlflwMhfQsa4hT1/XP4L2DOWkP9sxkSpmoiwo=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=S/uLafvGPP+MzTCzEVTAnr/zB5MenAak4E8xYpBW8ZtOqarDyEax+MTsH1cOvIwh6
	 qMitNDOsYq9Siyip9meHkKULmwA2t6V9YRuTcWfLpSE6QhoTV4ex+YLpboF0xxTcWl
	 30Jmz7WnVUYAAPGEByzcjf/KLovs9isztpCKWIugIHlRUm4syhPqnTDLPT+2SCWGQD
	 zQtcoWSCEStKui9jiUsio+ziu4+stWkHfHwYcZ9HwVwZFlwLoPraaXng9NDDZyW6JV
	 yLUnOFMWns7KUs4T5mb1SNF+RBEhWPz0nFNPVhP9hQRgzeELOxMN9jUSTi8Py7+r0I
	 nYswPRYMw59VQ==
Date: Fri, 29 May 2026 11:24:30 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Sven Eckelmann <sven@narfation.org>
Cc: Simon Wunderlich <sw@simonwunderlich.de>, netdev@vger.kernel.org, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo
 Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: [PATCH net-next 01/15] batman-adv: drop batman-adv specific
 version
Message-ID: <20260529112430.09c1a08e@kernel.org>
In-Reply-To: <5075322.GXAFRqVoOG@ripper>
References: <20260528142924.329658-1-sw@simonwunderlich.de>
	<20260528142924.329658-2-sw@simonwunderlich.de>
	<20260528171412.7a60e8f7@kernel.org>
	<5075322.GXAFRqVoOG@ripper>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Message-ID-Hash: PMYJSSKVXWCGPNDVSYB2XYXI7WW7QQBE
X-Message-ID-Hash: PMYJSSKVXWCGPNDVSYB2XYXI7WW7QQBE
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/PMYJSSKVXWCGPNDVSYB2XYXI7WW7QQBE/>
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
X-Rspamd-Queue-Id: 333EC60737C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 29 May 2026 09:06:56 +0200 Sven Eckelmann wrote:
> On Friday, 29 May 2026 02:14:12 CEST Jakub Kicinski wrote:
> > On Thu, 28 May 2026 16:29:10 +0200 Simon Wunderlich wrote:  
> > > +#define BATADV_SOURCE_VERSION "linux-" UTS_RELEASE  
> > 
> > What purpose that does "linux-" prefix serve?
> > The unwritten rule is that the OOT drivers have to append something 
> > to their version to distinguish themselves. In-tree version is just
> > the pure kernel version.  
> 
> We don't have a real preference here. If you prefer UTS_RELEASE only then I 
> get rid of BATADV_SOURCE_VERSION and just use it in both places in
> version.c
> 
> https://git.open-mesh.org/batadv.git/commit/?id=8cc63db2462ad7d3ee213059025bf5fffe2e7982
> 
> > To be clear, definitely a move in the right direction. I hope we can
> > move _all the way_ in the right direction, tho, without still defining
> > OOT-feeling version.h file with a dedicated BATADV_SOURCE_VERSION  
> 
> version.c and version.h are there to not recompile more parts of batman-adv 
> than necessary when the linux kernel version changes. Has nothing to do
> with OOT. If you consider this a no-go, I can also just place 
> generated/utsrelease.h + UTS_RELEASE in the three different files.

Ah! My bad, sorry for the accusation! :)

The re-compilation thing is annoying but it's solvable.
Please TAL at commit 3f9ed5f5aa9ecffd2 for inspiration.

Thank you!
