Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DA09A05D71
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed,  8 Jan 2025 14:51:18 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 2AD3984263
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed,  8 Jan 2025 14:51:18 +0100 (CET)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1736344278;
 b=vEALnVyXsOT4e+bS4Ec6w391Aia+SaM0c+rJHaLpFHFbu1XQZXyfBUckFX66ZH5grZKSw
 PAKE3IrtGZ/XrVsSdEz8pvsyfbIPZi/oODhx9fBSZHqjNQI/qTKIvwx2CD9UKzuKSCu29CQ
 x79xtfEPtSsZIhGdMONESlRrbjfb8uI=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1736344278; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=Jv0163UuzfzxySkU/r9sNxWVIdhyFCZzU7dsWtGmx9M=;
 b=itIRY267YbJZUZ/nnJkCaYuQUsmRtlM61nav0QVBRq35U036Y5fon+n65t/sw0TXC3sfG
 O9+CFT/t/2V9zTskRYv+GApfiC7rVpjTrxOFYGhLEN+BBNTIssVeaZ1Wzvhid0uv80LlIeG
 ej2Pot5LIUF98bkymEh0xVUHk3jQSlQ=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=fail;
  arc=pass;
  dmarc=none
Authentication-Results: open-mesh.org; dkim=fail; arc=pass; dmarc=none
Received: from mail.aperture-lab.de (mail.aperture-lab.de [116.203.183.178])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 3DE318207F
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed,  8 Jan 2025 14:50:47 +0100 (CET)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1736344247;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Jv0163UuzfzxySkU/r9sNxWVIdhyFCZzU7dsWtGmx9M=;
	b=mhjxkBbKScs4vYNf5yDUKeiPBsBWFrifGYeAHkBlFy1lP63+FKL8dbpJO9GxTz9erBnB3C
	zobIkyweSVcyDpazaU8qSf2sjpu/CFh3IIfRZI70eKC9YkMFq8kuz152xaSKb91/GMWIhn
	cLjJj//LSWCfiUFIFDgJGYMMHh/zz5A=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	dmarc=none;
	spf=pass (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue
 designates 116.203.183.178 as permitted sender)
 smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1736344247; a=rsa-sha256;
	cv=none;
	b=s2XuMkMne7bCrdtwzaDdLAdGZr1Ijfa5JLC/oKEslEv8esq000KU9GJ4Q17GaiodWIXlaY
	0YK4G6lsUQPcgc4aoHpsL03BReFs1ap1uQFYqKtOPBuNbRWESmEmw0mNflb7uMTA5FBR5r
	DSZymJvRK+mDIxGpSUFYx6hFGKZ8AYk=
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id 30348540FD2;
	Wed,  8 Jan 2025 14:50:46 +0100 (CET)
Date: Wed, 8 Jan 2025 14:50:45 +0100
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: Sven Eckelmann <sven@narfation.org>
Cc: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: [PATCH v2] batman-adv: Use mailmap to fix old e-mail addresses
Message-ID: <Z36CtUlH-_1GLts_@sellars>
References: <20250107-mailmap-v2-1-12d85da0b8e7@narfation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250107-mailmap-v2-1-12d85da0b8e7@narfation.org>
X-Last-TLS-Session-Version: TLSv1.3
Message-ID-Hash: V7ZOIEO4U3YZ2C3GX7FDSCGJMTKKCZR3
X-Message-ID-Hash: V7ZOIEO4U3YZ2C3GX7FDSCGJMTKKCZR3
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/V7ZOIEO4U3YZ2C3GX7FDSCGJMTKKCZR3/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Tue, Jan 07, 2025 at 05:18:40PM +0100, Sven Eckelmann wrote:
> The .mailmap is used by git-(short)log to fix some botchered names and to
> map contributions from old e-mail addresses to new ones. It is also used by
> some tools to get the correct e-mail address for reviewers based on old
> contributions.
> 
> The list was generated using old e-mail address changes in the source code.
> Also relevant entries for other contributors from the v6.13-rc5 release
> were added.
> 
> Signed-off-by: Sven Eckelmann <sven@narfation.org>
> ---
> [...]
> +Linus Lüssing <linus.luessing@c0d3.blue> <linus.luessing@acsom.ch>
> +Linus Lüssing <linus.luessing@c0d3.blue> <linus.luessing@ascom.ch>
> +Linus Lüssing <linus.luessing@c0d3.blue> <linus.luessing@web.de>
> +Linus Lüssing <linus.luessing@c0d3.blue> <ll@simonwunderlich.de>
> +Linus Lüssing <linus.luessing@c0d3.blue> <linus.luessing@web.de>
> [...]

There seem to be duplicate entries for me in there, both for the
@ascom.ch and @web.de addresses?

I've also submitted a patch to the Linux kernel for my old
ll@simonwunderlich.de address here now, thanks for notifying:

https://lore.kernel.org/linux-kernel/20250108035840.25194-1-linus.luessing@c0d3.blue/

Regards, Linus
