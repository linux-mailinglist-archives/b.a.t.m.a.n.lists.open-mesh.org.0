Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EBjnDmWJ+mm1PgMAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 06 May 2026 02:20:53 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id D23844D4F52
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 06 May 2026 02:20:52 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 2C2FD80BCA
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 06 May 2026 02:20:52 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1778026852;
 b=PUtA3nlTlcv5VHegujca0Cfst9I37VUHu7HRNTftEyLknbwCBF991OPOKxcp1pKZah9HH
 rEpQf5sxsSZdcOu5rfFBYGRcc3/T4ThJJur5y02NyArRKfx6leaOAaI2xn4pZ++4iUleZXa
 WisF5vxiPELD9avYB51PPU1PjU1aebI=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1778026852; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=E2NFx2jQ1Z0U8+1i8TRf9c2ntA2Yo8yOzbYfTfdNQJM=;
 b=bUzygbaeGpYB96QczmIS9ZZxQUizqV9Wf0MjsDlUsGpCxSf6SB93MkuLnr352O/gVps+N
 7TT9eyeFxxHEWqqX55KGXEPtBQzbzNg6vm3H9SRtnCbsvnbxfVSBRxCrAtJprv9O4dKylkK
 SKHT3DUG48DS9ToDdGPmEyZeR3S8COA=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=kernel.org;
 arc=pass;
 dmarc=pass header.from=kernel.org policy.dmarc=quarantine
Authentication-Results: open-mesh.org; dkim=pass header.d=kernel.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=kernel.org policy.dmarc=quarantine
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 27723805A5
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 06 May 2026 02:20:20 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1778026831;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=E2NFx2jQ1Z0U8+1i8TRf9c2ntA2Yo8yOzbYfTfdNQJM=;
	b=di2pfHcmsM1fjntEXioegT2//b1WBh9lfonlmR8mGac+yKjuYaujPAobD8tvsfTSORDKBk
	yKfPuCQYIBTFhUwuPcwdaDxWlKsPonVSP4PevBB1E+FF6Tgl57YpfThOzOLzxEoXVqwe8E
	TsHL1HjJOIahw2vI7nS2olnp9AtmFFM=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=YhP8M1a+;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (diktynna.open-mesh.org: domain of kuba@kernel.org designates
 172.105.4.254 as permitted sender) smtp.mailfrom=kuba@kernel.org
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1778026831;
	b=HPNiaqqM4pQzs3ME/nYPFBGP9NKLt5VEOfOQp2VQNWkDXXnZRMVfBc6fEntROWBcoUtAvf
	oiw2wQcqF6Lmwuhs4pjX/q1U71LmnVuqmTWTkZZ+6AE4Tn0IDRgl4XBSDcxa2C070nNcLR
	+RpdLu5O4//l0vxuXyatWcZSdoq+u6E=
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 8690E60123;
	Wed,  6 May 2026 00:20:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 669EAC2BCB4;
	Wed,  6 May 2026 00:20:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778026819;
	bh=vYax8JSZ0er4C7oSsAtrxOvM9sWuGJ0NNDFrdh9Hbq4=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=YhP8M1a+9928xQWiO3gXJPrLYm1pVeIm8DDYtGoQ5ASM2eo6NKiow1lTV/0wiEmx8
	 VZz5MPes/YaBH3ocnwoygvkFPL8aYKLlOmNgF0r4TyVsjOH+bvxE2Ivp4hPF+jEj6k
	 g68a4S2L6kvAC24YZfsq1wrz1keViHAipbOmf+BKxRAP7G8b/5hPceWPVs/G97L13V
	 EbdPHN6oG0PpHwiWYlftk1A9xQEDHx8sss6Qjev8DCo3FN5rcj75S56hXVBUC8UMN9
	 0H+pCH7NCNnCeTYlDnr7A5yk07GCqdpe4ikABvD2/iz5uxbsbsSms468z9X1/L/1K+
	 +HuzmhVNllnbQ==
Date: Tue, 5 May 2026 17:20:17 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Sven Eckelmann <sven@narfation.org>
Cc: Marek Lindner <marek.lindner@mailbox.org>, Simon Wunderlich
 <sw@simonwunderlich.de>, Antonio Quartulli <antonio@mandelbit.com>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo
 Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Ao Zhou <n05ec@lzu.edu.cn>, Haoze Xie
 <royenheart@gmail.com>, Jiexun Wang <wangjiexun2025@gmail.com>, Juefei Pu
 <tomapufckgml@gmail.com>, Luxing Yin <tr0jan@lzu.edu.cn>, Ruide Cao
 <caoruide123@gmail.com>, Xin Liu <bird@lzu.edu.cn>, Yifan Wu
 <yifanwucs@gmail.com>, Yuan Tan <yuantan098@gmail.com>, stable@kernel.org
Subject: Re: [PATCH batadv 0/8] batman-adv: follow up fixes
Message-ID: <20260505172017.6caf7347@kernel.org>
In-Reply-To: <5990011.DvuYhMxLoT@sven-l14>
References: <20260503-fixes-followup-v1-0-4313278918d3@narfation.org>
	<20260504171051.2b3e47ef@kernel.org>
	<5990011.DvuYhMxLoT@sven-l14>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Message-ID-Hash: BPDGVYFP7QYZKU4SCJSN37IIHCAUCD7P
X-Message-ID-Hash: BPDGVYFP7QYZKU4SCJSN37IIHCAUCD7P
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/BPDGVYFP7QYZKU4SCJSN37IIHCAUCD7P/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Queue-Id: D23844D4F52
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.01 / 15.00];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[mailbox.org,simonwunderlich.de,mandelbit.com,davemloft.net,google.com,redhat.com,kernel.org,lists.open-mesh.org,vger.kernel.org,lzu.edu.cn,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[kuba@kernel.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:24940, ipnet:2a01:4f8::/32, country:DE];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url]

On Tue, 05 May 2026 06:46:11 +0200 Sven Eckelmann wrote:
> On Tuesday, 5 May 2026 02:10:51 CEST Jakub Kicinski wrote:
> > On Sun, 03 May 2026 14:22:33 +0200 Sven Eckelmann wrote:  
> > > While reviewing the fixes submitted to batman-adv in the recent weeks,
> > > further problems in similar or adjecent code was identified. This was either
> > > noticed in the manual review or reported by sashiko.dev.  
> > 
> > Are you CCing netdev to get this reviewed by Sashiko?
> > Please don't..
> > We delegate code to sub-sub-systems to lower the patch volume :(
> 
> Because of `b4 prep --auto-to-cc`. Will now manually remove you.

Ah, I see. I was asking because I don't recall us getting much batadv
patches CCed to netdev. Maybe it's simply because there wasn't that
many of them to begin with.

If the rate keeps up let's add an X: to MAINTAINERS to avoid
netdev@ being CCed. IDK if that's what X is supposed to be used for 
but we use it for wireless and bluetooth already. The PRs still
flow thru networking tree, but there's no need for netdev to be CCed
on 99% of the patch submissions.
