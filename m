Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0AqjBLI1+WkG6gIAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 05 May 2026 02:11:30 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CAA44C525D
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 05 May 2026 02:11:29 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 5DED385AE5
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 05 May 2026 02:11:29 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1777939889;
 b=NhIfb9PF9qJi8kYx+lSsm892+ZZnzncBFugOOpH0mHkqq5k0+C/MpIWdYlh3Exh/YU6/N
 zuT8E75489mhcU6LcfU6UEJm93WK0rVVMdSquoBrxpW1upV4YXItLhbEu2Vf9QG2hrr0FIJ
 9qOH1ht4lFMRDmgMZ1kaJOfyCrk76jQ=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1777939889; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=/ylHvhECoQmKS/mVvR8TDKSZanF19cxrk2pYpMeYbKA=;
 b=R7y5Gma+s8I9eeMYr9bMj0rRPvhGb5mHHoR6orfvg/2VX+crboNnKLhTULpstuX8PGiNz
 USdT2A3Fdk+nBWT5xE94D5dIGIQp9898t+XJnpcUA5by127IVcMoKXWXKVtTrosdx9ahqhy
 b5PgygQUr9aSeHHMc6Y1//sDr4jpoyY=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=kernel.org;
 arc=pass;
 dmarc=pass header.from=kernel.org policy.dmarc=quarantine
Authentication-Results: open-mesh.org; dkim=pass header.d=kernel.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=kernel.org policy.dmarc=quarantine
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 7712D84B00
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 05 May 2026 02:10:59 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1777939869;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=/ylHvhECoQmKS/mVvR8TDKSZanF19cxrk2pYpMeYbKA=;
	b=fFCsowqyRqKzwEySXjdTh3YY5FJWqGJtruodkp+9xygK+QGV7KPOTEwCVTLmnI13JYILJo
	c3gFjQx/ZOkJbsP9rPCvnvmJMRfTx8k41AaRJ/gx3HpW6gI5AY84OZ6I+1q0cwr2VTSrl3
	YfUchv/p+yCJxvNYxH2nTL7D0XtJlBs=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=tB+Kd711;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (diktynna.open-mesh.org: domain of kuba@kernel.org designates
 172.105.4.254 as permitted sender) smtp.mailfrom=kuba@kernel.org
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1777939869;
	b=rx8WUhrxZkPSAlefp+Tzu1OvT5gR/siRkZVg7zyOe1IMt4iIFJld2PP5eBEaAvb6ZCAq5a
	kzgPHmMHeFWxgRbU1ffeZUx0yzewJ7qzUndGLnJmgewhag5tpKGFa+P2+Me6Bo3dJIMzDi
	Df5q40vgEvByKkGPi0sv2Kq3Ed0rhWQ=
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 6ACA2600C3;
	Tue,  5 May 2026 00:10:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CF437C2BCB8;
	Tue,  5 May 2026 00:10:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777939858;
	bh=/ylHvhECoQmKS/mVvR8TDKSZanF19cxrk2pYpMeYbKA=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=tB+Kd711ScTkE9PbrY/UmMfbYhujRX8TBUgK8prEwdxpxPDvI6knQjFVzENFXDpwJ
	 vQDBYu1BE7R846ogETFlpaktEUBPPUK0vIhWY68nK9at3le9TJw+sIQdMIaiD4d8sl
	 g9QXfuH71HKKXTo8/diK9BrsLNsH5p4435N7NvyfW0qt6tB65EtvjaY1KgDJV2RfTq
	 t34QJD3Le2d7seygeEHdUvest3OTcXySrDDpVVs1itSu2aUYT90WyVCl1qIWhu+7Ak
	 d+TwOIVyj65rXS0wskPIgO8LTKd3lqmhN7RojU3qc1tZNNmPO75YHvWt36bbOnB7Ds
	 xt4u89+qqhaLQ==
Date: Mon, 4 May 2026 17:10:51 -0700
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
Message-ID: <20260504171051.2b3e47ef@kernel.org>
In-Reply-To: <20260503-fixes-followup-v1-0-4313278918d3@narfation.org>
References: <20260503-fixes-followup-v1-0-4313278918d3@narfation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Message-ID-Hash: HLYUU4B62FSE3DVZBZO6WKCEDH4N5ONK
X-Message-ID-Hash: HLYUU4B62FSE3DVZBZO6WKCEDH4N5ONK
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/HLYUU4B62FSE3DVZBZO6WKCEDH4N5ONK/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Queue-Id: 9CAA44C525D
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
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns]

On Sun, 03 May 2026 14:22:33 +0200 Sven Eckelmann wrote:
> While reviewing the fixes submitted to batman-adv in the recent weeks,
> further problems in similar or adjecent code was identified. This was either
> noticed in the manual review or reported by sashiko.dev.

Are you CCing netdev to get this reviewed by Sashiko?
Please don't..
We delegate code to sub-sub-systems to lower the patch volume :(
