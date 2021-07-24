Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id E26513D48B4
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 24 Jul 2021 19:03:45 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 98E3B81BF3;
	Sat, 24 Jul 2021 19:03:44 +0200 (CEST)
Received: from zeniv-ca.linux.org.uk (zeniv-ca.linux.org.uk [142.44.231.140])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id F13D3804B9
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 24 Jul 2021 19:03:37 +0200 (CEST)
Received: from viro by zeniv-ca.linux.org.uk with local (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m7L1d-003aTX-9q; Sat, 24 Jul 2021 17:01:21 +0000
Date: Sat, 24 Jul 2021 17:01:21 +0000
From: Al Viro <viro@zeniv.linux.org.uk>
To: Sven Eckelmann <sven@narfation.org>
Subject: Re: [PATCH] asm-generic: avoid sparse {get,put}_unaligned warning
Message-ID: <YPxHYW/HPI/LLMXx@zeniv-ca.linux.org.uk>
References: <20210724162429.394792-1-sven@narfation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210724162429.394792-1-sven@narfation.org>
Sender: Al Viro <viro@ftp.linux.org.uk>
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1627146220;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:in-reply-to:in-reply-to:  references:references;
	bh=NsvpMrRsmVjHfd7mGFpFwqsiS4IihGXj4Xez8fWQWVo=;
	b=lyufi4ZQNwSHBV60vLcDSPtfOyGdwcNgCzFBWT6J14ZoZuBwcKp5OY6TwWa2DbrAlKIFFv
	nQ07Rfne+MK9bVkCWbW4a8SIyNSbr2OgF2xXEX+ZrMZazENz4JEehGh+GOcNMt07WJmlGq
	hZkzvfYsC4Cu54+nwfYcgBBiK7polyA=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1627146220; a=rsa-sha256;
	cv=none;
	b=j2q7MUadMIgoFK7eN/nBae5o3BsuMM6sPeAluO8ukYyi7FIHnr/j84asfcmWj/dbQw78Tu
	0gHyf6BbiOAOxXcqr8NvOdGN85DYcvikEqZqjjMqTMUC2tFK+Gfl09fq9ViZ7r3D0BIA65
	3M9g8RJDITeJ4gInTdnT3gRGxt41TSs=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=none (diktynna.open-mesh.org: domain of viro@ftp.linux.org.uk has no SPF policy when checking 142.44.231.140) smtp.mailfrom=viro@ftp.linux.org.uk
Message-ID-Hash: 3BGACYBRIXGCFRIIHSM4AP2Q3QY6PBDN
X-Message-ID-Hash: 3BGACYBRIXGCFRIIHSM4AP2Q3QY6PBDN
X-MailFrom: viro@ftp.linux.org.uk
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
CC: Arnd Bergmann <arnd@arndb.de>, b.a.t.m.a.n@lists.open-mesh.org, linux-arch@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/3BGACYBRIXGCFRIIHSM4AP2Q3QY6PBDN/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Sat, Jul 24, 2021 at 06:24:29PM +0200, Sven Eckelmann wrote:

> The special attribute force must be used in such statements when the cast
> is known to be safe to avoid these warnings.

	How about container_of(ptr, typeof(*__pptr), x) instead of a cast?
Would be easier to follow...
