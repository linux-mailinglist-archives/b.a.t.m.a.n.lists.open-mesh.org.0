Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 36CFD8997D7
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri,  5 Apr 2024 10:31:38 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 0F4DA81A62
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri,  5 Apr 2024 10:31:38 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1712305898;
 b=EwjIft2rTWJPbk9RHsRmD5fyCBySD8wI+b2HzcF67ZmeN/VyBbt/8RVo0UzMVO2ji3FcH
 Ohz5iFzgic3keSmjSKWuHVLg7Cux0F2z5rzTytiU50/abI+JPHoJSVHrg9G5N7/5hAu31Ry
 IcS49ZM/RqPzA7XIwXYCji6wAvSx7Bo=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1712305898; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=7CN/jYVeIjjNPVg/+59GHBOU282xfz/frY09H/SgRk4=;
 b=IQ3lULMLks9o0+sNNMwNYsUsn2tX1tA2u2z2OfQGyBr4/uQKpM1jL7453a1Kj2pkA5wja
 qW6gBu/fzZ9/fHSTiYNcq8/bf5nULY7YnbGwIDEUj61n/wsAHkzGt/6rq5IsDl2xULU8we5
 gAe+ln9yE+GbcW5t7gkGlKKzgfEbCYo=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=fail;
  arc=pass;
  dmarc=fail (Used From Domain Record) header.from=simonwunderlich.de
 policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=fail; arc=pass;
 dmarc=fail (Used From Domain Record) header.from=simonwunderlich.de
 policy.dmarc=none
Received: from mail.simonwunderlich.de (mail.simonwunderlich.de
 [IPv6:2a01:4f8:c17:e8c0::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 5C10580C84
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri,  5 Apr 2024 10:31:29 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1712305890;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=7CN/jYVeIjjNPVg/+59GHBOU282xfz/frY09H/SgRk4=;
	b=EA70VcaIEAtwLoj6rGUxLWuN3eaIrSikDI3LeQ4gSZ9Fym0VROYVJpSZmhH62e8jXwLJvN
	JCvwlcsCSbt8CyDCBaY+gDAWCviH5qTrkBzxFItbOkJflhOgnKs3sLcMsSv259Uc8Q6dyk
	JIe4npScAH72Z8fpl513K1U4QvoijJg=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates
 2a01:4f8:c17:e8c0::1 as permitted sender)
 smtp.mailfrom=sw@simonwunderlich.de;
	dmarc=pass (policy=none) header.from=simonwunderlich.de
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1712305890; a=rsa-sha256;
	cv=none;
	b=oqt+ldXU0V93cH4d2MZtg3HlCBytPkeuLFu99W0YgvD88osmIMHXzpJaDC8otMtLW+PVHZ
	EZSiLZtxV7/NUKAKXmpZTRMM//f5kZT4/kCwBojekVUTT905c8YH2G5TYun/JqtuadCH92
	xCwbaS4cN0mlsj1VcfsBuxprGDmFDpk=
Received: from kero.packetmixer.de (p5de1fdf8.dip0.t-ipconnect.de
 [93.225.253.248])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits)
 server-digest SHA256)
	(No client certificate requested)
	by mail.simonwunderlich.de (Postfix) with ESMTPSA id CB7E1FA100;
	Fri,  5 Apr 2024 10:31:28 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net,
	kuba@kernel.org
Cc: netdev@vger.kernel.org,
	b.a.t.m.a.n@lists.open-mesh.org,
	Simon Wunderlich <sw@simonwunderlich.de>
Subject: [PATCH 0/1] pull request for net: batman-adv 2024-04-05
Date: Fri,  5 Apr 2024 10:31:24 +0200
Message-Id: <20240405083125.18528-1-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Message-ID-Hash: 5BHGNLC7HJCVRASCB6GT5AVA2INZWN3P
X-Message-ID-Hash: 5BHGNLC7HJCVRASCB6GT5AVA2INZWN3P
X-MailFrom: sw@simonwunderlich.de
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/5BHGNLC7HJCVRASCB6GT5AVA2INZWN3P/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi David, hi Jakub,

here is a bugfix for batman-adv which we would like to have integrated into net.

Please pull or let me know of any problem!

Thank you,
      Simon

The following changes since commit 4cece764965020c22cff7665b18a012006359095:

  Linux 6.9-rc1 (2024-03-24 14:10:05 -0700)

are available in the Git repository at:

  git://git.open-mesh.org/linux-merge.git tags/batadv-net-pullrequest-20240405

for you to fetch changes up to b1f532a3b1e6d2e5559c7ace49322922637a28aa:

  batman-adv: Avoid infinite loop trying to resize local TT (2024-03-29 20:18:43 +0100)

----------------------------------------------------------------
Here is a batman-adv bugfix:

 - void infinite loop trying to resize local TT, by Sven Eckelmann

----------------------------------------------------------------
Sven Eckelmann (1):
      batman-adv: Avoid infinite loop trying to resize local TT

 net/batman-adv/translation-table.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
