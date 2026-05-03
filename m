Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 7CMYBGC092lDlQIAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 03 May 2026 22:47:28 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id A9C5A4B75F4
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 03 May 2026 22:47:27 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 6DE7F85ADD
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 03 May 2026 22:47:27 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1777841247;
 b=fgw3hGLMbRMA82f3qc51e5zqkqmBiTTCE1hVOMrHpf3DJwRPq+LV3VdhbXGn4KcFYUCHf
 4uSubL9AGi7+Uf2AA9st6+4MuZPvPewzXAZ13cazHLoVwok1A9yqNn9suYZyGCjyq6b0dNz
 5SUVjShTSMJqGgGSd35E2cBzChprIbg=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1777841247; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=2akAyu476DYSvCMGTegf/7PngWzy4rf2uSUoD3iLa/w=;
 b=bzms6u7EXeJKXCDW9n0mG3UgBl87861CprCxTL5iD9D3XlUyBosy3eBSy9Uu+6yhDzSPl
 hBiD+ZGpqb2Y3TKeWcClkeZSRkeDiENNnKGczAfljVb8rPL9KWRG2tPqB2htzfrWbjQkL9m
 mSk4CQaM/4NSMQClx6S8xz5V9K5E4OY=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 04E1882444
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 03 May 2026 22:46:47 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1777841208;
	b=KatM8ZZbzIR5N5CjHHOv8dh7WEudUiA3Ypp1kOFYh0kIuSkCDrE+d//0zmVgUkPAOn95Ve
	9HmYYQzHOiIleYYepNu5oMKydVBz2NOMcw5L6Oghr+8oH9YTEjSzEZWrITp4YAR9yfntDD
	BMvWbpLGMlL1fbguHxOd3pEPtXqn3Dc=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=FLLavlkq;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1777841208;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=2akAyu476DYSvCMGTegf/7PngWzy4rf2uSUoD3iLa/w=;
	b=MRgezbEHtlWtDxjnj1bLrk/tRKSY9jUkpqR8orJXYpDFs9QoPVnACB96wk64IYbKml3s2s
	N1OAlFg7GiaHW3ETp+B8MUx1tVsNU7Uvkku+qC23rulsZBlrjBPseOdJNRg5z6vGepErXe
	BGjlyHuosrNt3XHQey/7kQk8KGzCpHY=
Received: by dvalin.narfation.org (Postfix) id 01AD01FDD3;
	Sun, 03 May 2026 20:46:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1777841206;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=2akAyu476DYSvCMGTegf/7PngWzy4rf2uSUoD3iLa/w=;
	b=FLLavlkqOlzh99EoWLzh+NDkWX//t1OyPFygTlcOd3y0L9+ZPldOD/UF/Ux3CwOj0OrQWT
	ma0Ui3DR9Zaq0njtmlMmZmELhDv7NypyEP8/YaNmGszWLf6HTYPsbVVh66lRl5/AEGUY08
	d8g6koKugFfdJKht6SbF0P6Mu6wEB6A=
From: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH batadv-next 0/2] batman-adv: post-fixes cleanup
Date: Sun, 03 May 2026 22:46:13 +0200
Message-Id: <20260503-post-fixes-cleanup-v1-0-9c5c0ff0fcb4@narfation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIABW092kC/yWMSwrDMAwFrxK0rsCNUQu9SunCH6VVKY6xnBAIu
 XucZjnMm7eCchFWeHQrFJ5FZUwNrpcOwselN6PExtCb/mbIWMyjVhxkYcXwY5emjAN5tmTNnSh
 CC3Ph/6B1T/Cuujhj4qXC65Q6+S+HetzCtu3FpF28gwAAAA==
X-Change-ID: 20260503-post-fixes-cleanup-f5be3530755d
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1017; i=sven@narfation.org;
 h=from:subject:message-id; bh=5AaVjDs8EZZnCBNAn8BVXeou0Ybt7Mv9SfEVhplyLQA=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDJnft0g0uhjI3RH20z6Uv/HSm0k2NR+9Gc/95igX39u74
 feDZKPzHaUsDGJcDLJiiix7ruSf38z+Vv7ztI9HYeawMoEMYeDiFICJvKpg+Gfr+3z2ZdlO3c2F
 W/tO3TspsVzZs/XK/v7LVlkf/nJa60xl+F+V5h14pz9ewc/dRH3K8efLPIVCP7K8f/5LxioysOV
 KNzsA
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: THZI2WX5AFF4MNZKWVIZ6DNH5M45CA4M
X-Message-ID-Hash: THZI2WX5AFF4MNZKWVIZ6DNH5M45CA4M
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/THZI2WX5AFF4MNZKWVIZ6DNH5M45CA4M/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Queue-Id: A9C5A4B75F4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.01 / 15.00];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	DMARC_POLICY_ALLOW(-0.50)[narfation.org,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[narfation.org:s=20121];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	R_SPF_NA(0.00)[no SPF record];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	RCPT_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[narfation.org:+]

In some of the recent fixes, we got a couple of unclean changes which are
either reported by the daily builds or were noticed during the "follow up
fixes" preparations.

It is nothing spectacular and no reason to add it to the stable branch. Let
us just handle them as part of main/next.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
Sven Eckelmann (2):
      batman-adv: add missing includes
      batman-adv: tt: replace open-coded overflow check with helper

 net/batman-adv/bat_v_ogm.c         | 1 +
 net/batman-adv/fragmentation.c     | 1 +
 net/batman-adv/gateway_client.c    | 1 +
 net/batman-adv/hard-interface.c    | 1 +
 net/batman-adv/tp_meter.c          | 1 +
 net/batman-adv/translation-table.c | 8 +++-----
 net/batman-adv/tvlv.c              | 1 +
 7 files changed, 9 insertions(+), 5 deletions(-)
---
base-commit: 3158b1f3ce2a4fe0a07d2a9544dd4b72e2f2670f
change-id: 20260503-post-fixes-cleanup-f5be3530755d

Best regards,
--  
Sven Eckelmann <sven@narfation.org>

