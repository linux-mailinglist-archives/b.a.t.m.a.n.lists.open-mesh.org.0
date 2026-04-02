Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IFJXIkiOzmkbogYAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 02 Apr 2026 17:42:00 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id E617238B5BE
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 02 Apr 2026 17:41:59 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 863D8859BE
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 02 Apr 2026 17:41:59 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1775144519;
 b=eojlJbYf9AweaoAi9YQs/ZKcD/nGQ2uB8Y5JBZ/i2QEr8QLagkn7liz8JK3jctup87CQB
 OnU4civVQzRpS1umgFKBrBNQ950+9MeuMrV3MMdKZdhpwdNyV4KdsEJU7a4f7GMpjHWw303
 LNEyVrBzE6C8H4oq34XctV5X//BsQ0Q=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1775144519; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=HMLKN6+DFzl+KveR0ngqcK+e+QLEHyshk8tGIc9QbzQ=;
 b=PRoD9PDIWkHIWg1eHm4nYtliczapB2zP3+oMCbCM5vlUwrtSEYpP76T+WCJgjsMM0kZls
 Y2KhQt/z5ADakqgJHIxlTlZQ0IZGJLAK/xAfTpmgu5YXtQfyKONj9FY2DDeCFvMqQDNneBO
 cTEkEVqVpYBMolnrr7SVfyOzWB6cGmA=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 57FEE83AAD
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 02 Apr 2026 17:41:16 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1775144476;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=HMLKN6+DFzl+KveR0ngqcK+e+QLEHyshk8tGIc9QbzQ=;
	b=xGk1sb84Rc7+wU4Gq4/GOJin7fBlspYTmQC9y8/eixIJFILxzymYmokkd/fxfSqoFuENqW
	hyTRapjkPAAZxBC2fO7jnbB55OjF7qLTC/uTv0Fegc5tfohtfKOQCAXKBEQLESmm74ELSV
	p8MZzUSQwYgixMVhSQqTBdgPa6GNaiU=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=Dyb8LWcd;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1775144476;
	b=2Pyg4+ltUxor5kgQzg0BNLcGwNfH2lncrJtlvr6ugLVpYCnAgXqdtflS/coLqQziQ7w1Mh
	h5mxeU0MrXQFa2s2xlvcZtGQwFNO/mfGjgamu6wUYXrV77o92s3mDXIaFQxps6FraV//Z7
	gFEguE1LMmug3DOy/KSTXyWFY5+JJ90=
Received: by dvalin.narfation.org (Postfix) id 4C66020D7E;
	Thu, 02 Apr 2026 15:41:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1775144475;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=HMLKN6+DFzl+KveR0ngqcK+e+QLEHyshk8tGIc9QbzQ=;
	b=Dyb8LWcdbbOgiyhpzVg7petD/yM5XsqLAiNoyKpQuSeYN6jOApYKdwv1XZZQXA9kuDM2fj
	ZzzgXlpj89C/wOQI4k0Nc87Qkf5GynHJnG7RF/yVxnBhkUquB76M8WgjEM+ck87R7LDMX0
	bBuNWO+jt22t+JaRo5sVKSaqbYNRRVQ=
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
	yifanwucs@gmail.com,
	tomapufckgml@gmail.com,
	yuantan098@gmail.com,
	bird@lzu.edu.cn,
	enjou1224z@gmail.com,
	caoruide123@gmail.com
Subject: Re: [PATCH net 1/1] batman-adv: reject oversized global TT response
 buffers
Date: Thu,  2 Apr 2026 17:40:50 +0200
Message-ID: <177514407836.3993083.12834978230665818269.b4-ty@b4>
X-Mailer: git-send-email 2.47.3
In-Reply-To: 
 <f1ae21c92be31b48651378f1ceba0dbbb43c2847.1774947926.git.caoruide123@gmail.com>
References: 
 <f1ae21c92be31b48651378f1ceba0dbbb43c2847.1774947926.git.caoruide123@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-ID-Hash: GNT23CGP47OFQUQW2ANB6JVCI6EANW63
X-Message-ID-Hash: GNT23CGP47OFQUQW2ANB6JVCI6EANW63
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/GNT23CGP47OFQUQW2ANB6JVCI6EANW63/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
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
	NEURAL_HAM(-0.00)[-0.991];
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[open-mesh.org:url,narfation.org:dkim,narfation.org:email]
X-Rspamd-Queue-Id: E617238B5BE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On Thu, 02 Apr 2026 23:12:31 +0800, Ren Wei wrote:
> batman-adv: reject oversized global TT response buffers

Applied, thanks!

[1/1] batman-adv: reject oversized global TT response buffers
      https://git.open-mesh.org/linux-merge.git/commit/?h=batadv/net&id=3a359bf5c61d52e7f09754108309d637532164a6

Best regards,
-- 
Sven Eckelmann <sven@narfation.org>
