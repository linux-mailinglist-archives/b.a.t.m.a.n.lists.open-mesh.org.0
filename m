Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KHGYI70O92mQbgIAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 03 May 2026 11:00:45 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 403B44B507C
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 03 May 2026 11:00:45 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 1589085ABF
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 03 May 2026 11:00:45 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1777798845;
 b=gaZ2e7eVsX2F8cm+FFlRrVaYGvx08r2+RJr0Eg7XJB3E1l7fP6qDXjM29i7Sbyt1YzPoY
 O5Wf2I1Jph+hFz53twsI5YiMMzppPkBKnC8uZUQrMainRs7UeISMOSpYWqAgavzi9MzFZW4
 EUqZLEcNss/7jI/dlC0AQNyoMxchGMo=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1777798845; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=yAgBGauhItVyr5yyb1nDYByVFoSZhHduED1fEoG570g=;
 b=O5ex8dIZiJwUGQus71uQdAuIrHCz+YUNM+VoQ7nmsh/5PCTrJKymsOQdvK9RK/39czJ5L
 bAM1DMEMSoNHONnimV2aDpNNiPHiQ+PlCPIZHuHcGPXCZEkkEytqTPPylP6qbpugEgbyNAw
 klvWXCbJgaDcFOiT+djM5xil8x3vuF8=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=linux.dev;
 arc=pass;
 dmarc=pass header.from=linux.dev policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=linux.dev; arc=pass;
 dmarc=pass (Used From Domain Record) header.from=linux.dev policy.dmarc=none
Received: from out-187.mta1.migadu.com (out-187.mta1.migadu.com
 [95.215.58.187])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 9211085327
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 03 May 2026 10:53:52 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1777798442;
	b=q+ceyPxCsgQSo4wQDog0f895TXyKy6H/CD7vG+0WpCf4pyieCXnsZyPvCsZJbOuUnyEGej
	GLPkLqYcNJ+FeifojXAkYjJK36vjpfEROcGd8q3RSbqTVT3rGI9uUO8bZKktxW55utF+sZ
	RXpJGPvWETZZLXrWuY+zbi6GDWP8+ms=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=linux.dev header.s=key1 header.b=ZUGLidhi;
	dmarc=pass (policy=none) header.from=linux.dev;
	spf=pass (diktynna.open-mesh.org: domain of roman.gushchin@linux.dev
 designates 95.215.58.187 as permitted sender)
 smtp.mailfrom=roman.gushchin@linux.dev
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1777798442;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:dkim-signature;
	bh=yAgBGauhItVyr5yyb1nDYByVFoSZhHduED1fEoG570g=;
	b=ctc+aPBFDRq7L4aeg7r97iYngKN90dqzGL8YOKQazIVIzyVy/Tg3/gXdnkq+lqWg7WIL9P
	MDZUjWTm9B9ztU7sJnAS4E3TUq+MLS/y4imW1Fp0mhhe5pifULy8xPBqoZAtwS5X71+uo1
	oQ3bxx5bcwwAmfVPm2PpME+y8YnrntU=
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1777798431;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to; bh=yAgBGauhItVyr5yyb1nDYByVFoSZhHduED1fEoG570g=;
	b=ZUGLidhijoJB69R8DH0HYnyFbQWMYPdpUXmJdWD8thkB428vt6ZEtg4soJzSO1TPW88Xnf
	+jh8HcHm5PpCQ8UcJbnLttsJ8ZJxwOF5/3Q9uQBL0+YvvSohIgASq88VS9uBYEplJiHKEG
	AXACJv1FNkjqqklcFerPYCHhpVYEI20=
From: Roman Gushchin <roman.gushchin@linux.dev>
To: Sven Eckelmann <sven@narfation.org>
Cc: b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org,
 marek.lindner@mailbox.org, sw@simonwunderlich.de, antonio@mandelbit.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, yuantan098@gmail.com, yifanwucs@gmail.com,
 tomapufckgml@gmail.com, bird@lzu.edu.cn, tr0jan@lzu.edu.cn,
 wangjiexun2025@gmail.com, Ren Wei <n05ec@lzu.edu.cn>, Simon Horman
 <horms@kernel.org>
Subject: Re: [PATCH net v2 1/2] batman-adv: reject new tp_meter sessions
 during teardown
In-reply-to: <14078459.uLZWGnKmhe@sven-desktop>
Date: Sun, 03 May 2026 08:53:29 +0000
Message-ID: <7ia41pfslvqu.fsf@castle.c.googlers.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Migadu-Flow: FLOW_OUT
X-MailFrom: roman.gushchin@linux.dev
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-3; emergency; member-moderation
Message-ID-Hash: SW27MD2N7GCCRZF5LCFVKAGX477SK3AW
X-Message-ID-Hash: SW27MD2N7GCCRZF5LCFVKAGX477SK3AW
X-Mailman-Approved-At: Sun, 03 May 2026 11:00:06 +0200
X-Mailman-Version: 3.3.10
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/SW27MD2N7GCCRZF5LCFVKAGX477SK3AW/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Queue-Id: 403B44B507C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.51 / 15.00];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linux.dev,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[linux.dev:s=key1];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FREEMAIL_CC(0.00)[lists.open-mesh.org,vger.kernel.org,mailbox.org,simonwunderlich.de,mandelbit.com,davemloft.net,google.com,kernel.org,redhat.com,gmail.com,lzu.edu.cn];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[linux.dev:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[roman.gushchin@linux.dev,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[castle.c.googlers.com:mid,linux.dev:dkim,diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:24940, ipnet:2a01:4f8::/32, country:DE];
	R_SPF_NA(0.00)[no SPF record]


Sashiko's author here:
Embargo as a feature was requested by Jakub to prevent people from
posting 10 versions of patch per day. Currently all netdev patches are
embargoed for 24h.

Re writing feedback for reviews: sashiko support sending reviews over
the email. It's an opt-in on per-mailing list basis.

Some details here:
https://github.com/sashiko-dev/sashiko/blob/main/MAINTAINERS_GUIDE.md

Thanks
