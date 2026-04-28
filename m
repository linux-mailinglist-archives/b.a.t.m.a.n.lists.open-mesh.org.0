Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gAmHJvSg8WlSjAEAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 29 Apr 2026 08:11:00 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BBBD48FA60
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 29 Apr 2026 08:11:00 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id D9D33859DD
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 29 Apr 2026 08:10:59 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1777443059;
 b=CXPbftW9mT9l1yjA+B0gCRN3WiL1nR1kffQogyX1frZaBTXk5TM/xPe5mrS1ppxhyxDZc
 HREb+FVMWtkLidtdwKlw/OPOhAztc+WCsniPCI+Yey2qPe0hMspyszL4Ib6F00TKqCpGr7/
 1rtolpze3tyKl6EFlum49VqS+wUUhzc=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1777443059; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=1g3jqWUMNf2kPSyUYwgIQAER1vxZ3edAIrtlbCrtFwE=;
 b=YWZUdjCxpjdAYeZG2eRmwP9xmzgFr/jPc/M5w7BW8IQ3M4ynA33fTWlShGYmMoaf38aqY
 SMzjMC62tBQsLDpUY5MVnXaw5IuGFhWxsbl4ye8ExWO16WKS3TecOD+CtREcsxqil0QhoHe
 brPXOJklai6w8HC5s07FzLeccIh4kOY=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=kernel.org;
 arc=pass;
 dmarc=pass header.from=kernel.org policy.dmarc=quarantine
Authentication-Results: open-mesh.org; dkim=pass header.d=kernel.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=kernel.org policy.dmarc=quarantine
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 0A7DA84684
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 28 Apr 2026 20:30:35 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1777401046;
	b=xWWiWYFfdt1CyFI6fjtH17EUJMAjGVJvRcTJfYi9SOIz3NiI2sKjlgGximlcUIt1Twzgqk
	drG9j0dJb1Wl3PziO3X6mJDfoiCrXYadJ5RNE7j1EedGbHJH/1r3bHT8Sf16yqZ+BbQrU6
	kHNUKXnz8WJYq1R6Yom9teStBwd9LrA=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=oZ6EVaz3;
	spf=pass (diktynna.open-mesh.org: domain of horms@kernel.org designates
 172.234.252.31 as permitted sender) smtp.mailfrom=horms@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1777401046;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=1g3jqWUMNf2kPSyUYwgIQAER1vxZ3edAIrtlbCrtFwE=;
	b=qIaGXx8NCGlCkHZu8wGN9ZwB/PGENduDFZuScJiGcZN7SAstUEkCiBXZ+TTfiD2I24ADpv
	EqanaXEpuv4dLwMClXx/AIQu0uo5WwCnExAN0ocXX6AQJqRiyT+zyQZ7GjVUxeZu3HoAA7
	EEMBdfzf9OOPi/jRBuSLCvQGupLt2IM=
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id C960740A08;
	Tue, 28 Apr 2026 18:30:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BD311C2BCAF;
	Tue, 28 Apr 2026 18:30:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777401033;
	bh=Wu1rPi/JdV1ncJyIF4Ch7km429IcExTfSCrhEs8W8Z0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oZ6EVaz3yviM37KAMMTNpZicruYnfKUMHrJj8SvzFlDOnUNiKRML/TxszMZo3DSM2
	 F5XBC7oJOdIPdAIyPzz6W/sUbfolUoVhw7b8pcheYc1a0MuO4IG90vPYRL+md6oNei
	 l4hmoneb4L6LFLE8kbXU91VUsxnqSjnnnJP0z1Em/phrzzmaUgJAMBQ/lCJWPsGrW8
	 dhJwXBoLsV/NLYyQBcFJXizp32OOairjonwzEClmSSEMxpCcWQqK5z+xSNkDU1/JqA
	 pWLizWs9VTjXrbCS/rUunuG9OMCXbr6KiZLQ9YXAuLxevEwAdiDALqaKkOrGPOTEA4
	 sDiq4zQ7owNIg==
Date: Tue, 28 Apr 2026 19:30:28 +0100
From: Simon Horman <horms@kernel.org>
To: Ren Wei <n05ec@lzu.edu.cn>
Cc: b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org,
	marek.lindner@mailbox.org, sw@simonwunderlich.de,
	antonio@mandelbit.com, sven@narfation.org, davem@davemloft.net,
	edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
	yuantan098@gmail.com, yifanwucs@gmail.com, tomapufckgml@gmail.com,
	bird@lzu.edu.cn, tr0jan@lzu.edu.cn, wangjiexun2025@gmail.com
Subject: Re: [PATCH net v2 1/2] batman-adv: reject new tp_meter sessions
 during teardown
Message-ID: <20260428183028.GW900403@horms.kernel.org>
References: <20260427064338.1526762-1-n05ec@lzu.edu.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260427064338.1526762-1-n05ec@lzu.edu.cn>
X-MailFrom: horms@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-3; emergency; member-moderation
Message-ID-Hash: YGAH6DFYUF66JSV42CARHJWCSYS5WZ5N
X-Message-ID-Hash: YGAH6DFYUF66JSV42CARHJWCSYS5WZ5N
X-Mailman-Approved-At: Wed, 29 Apr 2026 08:10:22 +0200
X-Mailman-Version: 3.3.10
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/YGAH6DFYUF66JSV42CARHJWCSYS5WZ5N/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Queue-Id: 2BBBD48FA60
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.01 / 15.00];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	R_SPF_NA(0.00)[no SPF record];
	FREEMAIL_CC(0.00)[lists.open-mesh.org,vger.kernel.org,mailbox.org,simonwunderlich.de,mandelbit.com,narfation.org,davemloft.net,google.com,kernel.org,redhat.com,gmail.com,lzu.edu.cn];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	ASN(0.00)[asn:24940, ipnet:2a01:4f8::/32, country:DE];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url]

On Mon, Apr 27, 2026 at 02:43:33PM +0800, Ren Wei wrote:
> From: Jiexun Wang <wangjiexun2025@gmail.com>
> 
> Prevent tp_meter from starting new sender or receiver sessions after
> mesh_state has left BATADV_MESH_ACTIVE.
> 
> Fixes: 33a3bb4a3345 ("batman-adv: throughput meter implementation")
> Cc: stable@kernel.org
> Reported-by: Yuan Tan <yuantan098@gmail.com>
> Reported-by: Yifan Wu <yifanwucs@gmail.com>
> Reported-by: Juefei Pu <tomapufckgml@gmail.com>
> Reported-by: Xin Liu <bird@lzu.edu.cn>
> Co-developed-by: Luxing Yin <tr0jan@lzu.edu.cn>
> Signed-off-by: Luxing Yin <tr0jan@lzu.edu.cn>
> Signed-off-by: Jiexun Wang <wangjiexun2025@gmail.com>
> Signed-off-by: Ren Wei <n05ec@lzu.edu.cn>
> ---
> Changes in v2:
> - Split the original fix into setup-side and teardown-side patches

Hi Ren,

An AI generated review of this patch-set is available on sashiko.dev.
Could you take a look over that. I expect that some follow-up patches
are warranted.
