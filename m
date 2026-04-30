Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QO2QBTNa82lfzwEAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 30 Apr 2026 15:33:39 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id E47E44A3824
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 30 Apr 2026 15:33:33 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 4268E85A4B
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 30 Apr 2026 15:33:33 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1777556013;
 b=c++H+Sm7bKOle1sJio32ema+MYiXKclgUaDYc6KQ8NDXTwwMHV+E1nIXFIXZHGmR+pJcp
 +UuvuDHf+vbhy1xE0GZL3uWzTlki2W153L8WXl0wDBniWoPjGlCgkGoWUFQzvoalm4H04A/
 ef2LNOh9a4l3i+8em6dUOtsfAT5T8cs=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1777556013; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=eef9yXm6XkyBRVRp1Tslp00310RuvOpdMSFBXBjo5j0=;
 b=C1JY7frsD5woFTUZHD40ngDuGYyiOmfAcGyCyqT2QVpfSwRAA10KfRZ/jyT5a3XMcnnE/
 HSfGeeOOCOxdWwNatLxLUNqd/2DJhz3nfopf8GdArMzaY3ZpiVsTld88Dm8nvyXv/t6DxM/
 Hg6wgeQ1rUrs86RBAvUCindc3mvd5l4=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=kernel.org;
 arc=pass;
 dmarc=pass header.from=kernel.org policy.dmarc=quarantine
Authentication-Results: open-mesh.org; dkim=pass header.d=kernel.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=kernel.org policy.dmarc=quarantine
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 300808068E
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 30 Apr 2026 15:32:06 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1777555926;
	b=xnHeD86MgdfPPzkYISwOcDnVGqXSDwxjWOQ6MtKZrYfqhXiw+P/0UQ76oiBetip01E2LXy
	rPWqfwRtEx4M0npwdFldPVI/hpHRnDHuFnDu1t8nQ6pi8LQroWlHWXa3H5zplW9eZ7AFsD
	FijzZYzI461VaVRWqtrjyCZPnhjJJuM=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=MLfLT3gY;
	spf=pass (diktynna.open-mesh.org: domain of sashal@kernel.org designates
 2600:3c04:e001:324:0:1991:8:25 as permitted sender)
 smtp.mailfrom=sashal@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1777555926;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=eef9yXm6XkyBRVRp1Tslp00310RuvOpdMSFBXBjo5j0=;
	b=jONzdsq+DmMHo+u1JNyxR2nh+Qjlqa/BzT9jLbyZkV9LgYeiE7DpkbpctLSa/zVfmDbi6Z
	TLOOjapGUWJAKxO5Elt8upO81MmlTYuXzYp0aO0I0s8LOw+63rGyCynoiLIIPo23NuRd4T
	ulQGDxF7G1M7DdNyzzWDNGpMR6Fl5Sw=
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 0F2D060142;
	Thu, 30 Apr 2026 13:32:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 90388C2BCB3;
	Thu, 30 Apr 2026 13:32:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777555924;
	bh=iN8DKEJJ1MqxD8Atz5WqGwwGI8zukpbk6ZFINC7U+H0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MLfLT3gYJYUrNlUUkxWDvsFI0GEOKhIELDpU30KfET7gp5dTZ9EY4yyMRczN4jZYE
	 kqXh+s5ibDaz4iOJHmi/9a3t5PdwUCMVIPhSyv19a35G0YWrCuHRJ68M2QfyfU6FzX
	 vbrFtrqv2nfcDGMpLeznkZGIaOVkMBBYgUR8RK+me3NEajH4Fm8l691ni6A/iw9Bzm
	 evViPymfOmZlY003vEz7sliSgQKwulQt5UV8/tFcpCN0UoX+Q7TUlnqDc9ttQ8+a5w
	 33Hchtzclp1IGnms+afkLKQSx0mG3M58jh1HGFCYfgOkMPwwuoI9aqhWUOf6Ic5shv
	 occY/ASH6fFqQ==
Date: Thu, 30 Apr 2026 09:32:03 -0400
From: Sasha Levin <sashal@kernel.org>
To: Sven Eckelmann <sven@narfation.org>
Cc: stable@vger.kernel.org, Haoze Xie <royenheart@gmail.com>,
	Robert Garcia <rob_garcia@163.com>, b.a.t.m.a.n@lists.open-mesh.org,
	Simon Wunderlich <sw@simonwunderlich.de>,
	Yifan Wu <yifanwucs@gmail.com>, Juefei Pu <tomapufckgml@gmail.com>,
	Yuan Tan <yuantan098@gmail.com>, Xin Liu <bird@lzu.edu.cn>,
	Ao Zhou <n05ec@lzu.edu.cn>,
	Marek Lindner <mareklindner@neomailbox.ch>,
	Antonio Quartulli <a@unstable.cc>,
	"David S . Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
	netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 5.15.y] batman-adv: hold claim backbone gateways by
 reference
Message-ID: <afNZ0zVdXkgj5hvA@laps>
References: <20260430071645.3030702-1-rob_garcia@163.com>
 <1857579.VLH7GnMWUR@ripper>
 <3609597.QJadu78ljV@ripper>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <3609597.QJadu78ljV@ripper>
Message-ID-Hash: LQAXJCI3ODGGP5WDH6PX2LCHOBK3QXUC
X-Message-ID-Hash: LQAXJCI3ODGGP5WDH6PX2LCHOBK3QXUC
X-MailFrom: sashal@kernel.org
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/LQAXJCI3ODGGP5WDH6PX2LCHOBK3QXUC/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Queue-Id: E47E44A3824
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.51 / 15.00];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com,163.com,lists.open-mesh.org,simonwunderlich.de,lzu.edu.cn,neomailbox.ch,unstable.cc,davemloft.net,kernel.org,lunn.ch];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RBL_SEM_FAIL(0.00)[136.243.236.17:query timed out];
	FROM_NEQ_ENVFROM(0.00)[sashal@kernel.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns]

On Thu, Apr 30, 2026 at 09:40:34AM +0200, Sven Eckelmann wrote:
>On Thursday, 30 April 2026 09:38:05 CEST Sven Eckelmann wrote:
>> Sasha Levin <sashal@kernel.org> picked it up for 5.15.y (on Sun, 19 Apr 2026
>> 21:13:58 -0400, MsgId 20260419195610.batman-adv-5.15@kernel.org).
>> Yes, it was not yet published or 5.15 - so maybe fell through the cracks.
>
>https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git/commit/?h=queue/5.15&id=6fd37208adf6771125b59e1ae0452561024be4e2

Yup, it's still in the queue.

-- 
Thanks,
Sasha
