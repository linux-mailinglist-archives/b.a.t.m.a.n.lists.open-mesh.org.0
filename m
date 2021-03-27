Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F8A534B35B
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 27 Mar 2021 01:36:57 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 37A458083B;
	Sat, 27 Mar 2021 01:36:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1616805416;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 list-id:list-help:list-unsubscribe:list-subscribe:list-post;
	bh=Kbfhp5F0YvdWd/ISFr30ukiePZpt5w9dYe7JOT7jYkY=;
	b=1OY01eVgPpBGC4wqGlA279MJIy8FmBbX3cmKQwUHS8apqQUDj+O/zX3qaB3/aSWIilK147
	0G+nebJw5iBS5IX1dFGO6Dz5wtUxTLxVq4sRIU5bRWiJ2qBfLjrQZimIXD60vb2hXXxrm2
	58JXcn4KYtKuOu96c4vXi0bLcPfOISo=
Subject: Problem with batman-adv and wifi adhoc in OpenWrt 19.07
To: b.a.t.m.a.n@lists.open-mesh.org
Date: Sat, 27 Mar 2021 00:36:54 -0000
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/CKLOWMGWRGL25HPSSSROGYTUFIIMDPEC/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
MIME-Version: 1.0
Message-ID: <161680541577.1283.4306218525796785971@diktynna.open-mesh.org>
From: "spiccinini--- via B.A.T.M.A.N" <b.a.t.m.a.n@lists.open-mesh.org>
Cc: spiccinini@altermundi.net
Content-Type: multipart/mixed; boundary="===============7123882290907848531=="

--===============7123882290907848531==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============7123882290907848531==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 7A04D80B44
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 27 Mar 2021 01:36:54 +0100 (CET)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Problem with batman-adv and wifi adhoc in OpenWrt 19.07
From: spiccinini@altermundi.net
To: b.a.t.m.a.n@lists.open-mesh.org
Date: Sat, 27 Mar 2021 00:36:54 -0000
Message-ID: <20210327003654.1205.8819@diktynna.open-mesh.org>
User-Agent: HyperKitty on https://lists.open-mesh.org/
Message-ID-Hash: CKLOWMGWRGL25HPSSSROGYTUFIIMDPEC
X-Message-ID-Hash: CKLOWMGWRGL25HPSSSROGYTUFIIMDPEC
X-MailFrom: spiccinini@altermundi.net
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/CKLOWMGWRGL25HPSSSROGYTUFIIMDPEC/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi all! I need some help debugging a non working setup of batman-adv with wifi in adhoc mode in OpenWrt 19.07 (a LibreMesh setup).

Libremesh based on OpenWrt 19.07 + ad-hoc: not working
Libremesh based on OpenWrt 19.07 + 802.11s: working
Libremesh based on OpenWrt 18.06 + ad-hoc: working
Libremesh based on OpenWrt 18.06 + 802.11s: working

An issue with more info is here https://github.com/libremesh/lime-packages/issues/855

Thanks!
SAn
--===============7123882290907848531==--
