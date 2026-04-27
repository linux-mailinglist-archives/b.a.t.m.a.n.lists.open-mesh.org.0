Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8AGKFa8N72kq4wAAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 27 Apr 2026 09:18:07 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 276D146E3A9
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 27 Apr 2026 09:18:06 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 9A37985A69
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 27 Apr 2026 09:18:06 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1777274286;
 b=3bRI0OVeqH/rYD26SFO+VfnJLeQa0NJoOB0QY7DfcNwERRle5bK8IAYNXVlcC3ov+TCk5
 flXGtDM//xPLBEzl9neP9BuHOat4erNyjoNYtyZVB0X+noOu2szm52yWVrOSJ4seK6gU1KT
 hEtyb0xKu5Ql41NSEQy1NEg84uSGUwk=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1777274286; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=0sD5b+k6/URUavnovOXdTKO2GszejptHQbyYMDz+Yyg=;
 b=A2Ay1k2BJFHyfb/xXg+4Xg524APV+Lo65S0HWewqED+uwlxD9umrdNSeMM0ErNhO48OUP
 2dCn93dl2EWjVpjCSZPU+mvtgF6IdUKtQY8gmuLZn6ttDPe3KlO6Bk+geaCBqV6ZbAw51fp
 vtGw+BVwoy4cYYTUgphoF2nzt1uO7B0=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 61B188166E
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 27 Apr 2026 09:17:18 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1777274248;
	b=OMEA0Fpg03T8YzoHpnZfXYZ/2Zq0LBHVizzUPjxAOICFULddbNRVWyWcyDupjlG6hm4JU/
	adMuKFr+Z6f5tucVlnRzQOzNKbIOL2UsnkSq4Zp71/RXXM4mxgrqnFdIA9dD4oOcmysY7u
	ulJ8yw8rxHneQWKafs8vW/q6ytc1YBk=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b="iTz1C/Wp";
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1777274248;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=0sD5b+k6/URUavnovOXdTKO2GszejptHQbyYMDz+Yyg=;
	b=Ro0LTj2Pw1Df7ImMX/1A469zENlpH8gPC87ux2cZG+EnUnBYmUvqy9yBweTx4yuXQferNK
	xTLcHIN2toc2bY7fd0BaNEqgmCZhpMGHb1CMPf6Fi4Gaq5Y+WZl2Tp2ZqunfqqeX4HCH/f
	nzVE/ybSq23FORHZXS2m82JRdkDz82I=
Received: by dvalin.narfation.org (Postfix) id 027501FD5A;
	Mon, 27 Apr 2026 07:17:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1777274237;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=0sD5b+k6/URUavnovOXdTKO2GszejptHQbyYMDz+Yyg=;
	b=iTz1C/Wpme1tB03wTfKST6w1JN1WbvCvcIu3mkLVG/dPwQkeARhepI6vdn9zjLALxo9Uld
	yIAEC682MUyFt5rCBU4mgRKtqgm1w0gngEtUTE+AtT665a5tsM8n38eCuSo9zpYtNXAQji
	vVbI575VKik1sDalNNo4UdGx5cPbtZs=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org,
	netdev@vger.kernel.org,
	Ren Wei <n05ec@lzu.edu.cn>
Cc: Sven Eckelmann <sven@narfation.org>,
	marek.lindner@mailbox.org,
	antonio@mandelbit.com,
	davem@davemloft.net,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com,
	horms@kernel.org,
	yuantan098@gmail.com,
	yifanwucs@gmail.com,
	tomapufckgml@gmail.com,
	bird@lzu.edu.cn,
	tr0jan@lzu.edu.cn,
	wangjiexun2025@gmail.com
Subject: Re: [PATCH net v2 1/2] batman-adv: reject new tp_meter sessions
 during teardown
Date: Mon, 27 Apr 2026 09:16:44 +0200
Message-ID: <177727301354.13864.1397859878214766047.b4-ty@b4>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260427064338.1526762-1-n05ec@lzu.edu.cn>
References: <20260427064338.1526762-1-n05ec@lzu.edu.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-ID-Hash: QTKBBASOFK6NAKLIZX6DWIVD43HHWAAT
X-Message-ID-Hash: QTKBBASOFK6NAKLIZX6DWIVD43HHWAAT
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/QTKBBASOFK6NAKLIZX6DWIVD43HHWAAT/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Queue-Id: 276D146E3A9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.51 / 15.00];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	DMARC_POLICY_ALLOW(-0.50)[narfation.org,none];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[narfation.org:s=20121];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[17];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	DKIM_TRACE(0.00)[narfation.org:+];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[narfation.org,mailbox.org,mandelbit.com,davemloft.net,google.com,kernel.org,redhat.com,gmail.com,lzu.edu.cn];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns,open-mesh.org:url,narfation.org:dkim,narfation.org:email]


On Mon, 27 Apr 2026 14:43:33 +0800, Ren Wei wrote:
> Prevent tp_meter from starting new sender or receiver sessions after
> mesh_state has left BATADV_MESH_ACTIVE.

Applied, thanks!

[1/2] batman-adv: reject new tp_meter sessions during teardown
      commit: https://git.open-mesh.org/linux-merge.git/commit/?h=base/net&id=f68c93519b3e59a8039bdab9f930681a8e64f97e
[2/2] batman-adv: stop tp_meter sessions during mesh teardown
      commit: https://git.open-mesh.org/linux-merge.git/commit/?h=base/net&id=bff1888c2c5d7453c40940fdbe3215746817f7d9

Best regards,
-- 
Sven Eckelmann <sven@narfation.org>
