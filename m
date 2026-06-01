Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OK10HvR8HWrEbAkAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 01 Jun 2026 14:37:08 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 12A1061F5A0
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 01 Jun 2026 14:37:07 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 98BC880750
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 01 Jun 2026 14:37:07 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1780317427;
 b=LLo2AJiNvvYfuL8+PdxLJ2fOYv8zvN4kj0Buh/K6x9vH8vv+r+mRakScf60QN04sCsNuh
 LBvFOuWO+OiataAKldFiafp9jmsghTHbCjT+V4UicvWrYkzLp6AI3Y8MmV6fIK9UeMeFqCv
 84d57YshovRDmNKYA21eGXy2RIU+EAA=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1780317427; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=/EL+qJ6WKHkjBQeLQM+rO68NQsJGkz6Soatl6PUjU/0=;
 b=XPJC5X3a2+oUfbUTUuSIF8JMmyAKW2J/vU/++sZnqX1WPzEKCiBC535Pb49sZonzT6wUs
 fvURspvCR+u8P18n+fBgkbd/ooAVfKIPk5L9DvngnASsh/tb1BW8rWBzkVDYmBSS/sY4QVE
 61Mfx3V129rQqga1Ves5exh/AWa0tpk=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=simonwunderlich.de;
 arc=pass;
 dmarc=pass header.from=simonwunderlich.de policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=simonwunderlich.de;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=simonwunderlich.de policy.dmarc=none
Received: from mail.simonwunderlich.de (mail.simonwunderlich.de
 [IPv6:2a01:4f8:c17:e8c0::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 01FD080453
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 01 Jun 2026 14:36:45 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1780317406;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=/EL+qJ6WKHkjBQeLQM+rO68NQsJGkz6Soatl6PUjU/0=;
	b=QyAY9Uf8XUqGI/YSpuqFQxoBtbNYipt1lByHB/UtC35loe0jAOjA8Fa4RLom87FkLxPzsI
	3waNwUO8keyQ0xN8g/hKfAl6ydLuCEhVf6XIdxce6JOgRiHQILtn6y+2L8p5VS27n+JBgX
	PTZBltZlagYv/BSjA7uyX5NOQrc4lXA=
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1780317406;
	b=xbWjT2cD7t32vfBe0upO1Yj2awS4XC0ve5ka9AACAdAEjIHC4k00CdUH/mmNeSKkMctItn
	Z1YF15XEgEGW86/wKkPALYaviQFS5L2ijyWLf30wLcEWf6tEIW4O+N5bGDET/A9jNajQuV
	6XBifsksVQwzVxpz4X0pmUC9vLtikW4=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=simonwunderlich.de header.s=09092022 header.b=Z1ZFqRCf;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates
 2a01:4f8:c17:e8c0::1 as permitted sender)
 smtp.mailfrom=sw@simonwunderlich.de;
	dmarc=pass (policy=none) header.from=simonwunderlich.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=simonwunderlich.de;
	s=09092022; t=1780317404;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/EL+qJ6WKHkjBQeLQM+rO68NQsJGkz6Soatl6PUjU/0=;
	b=Z1ZFqRCfm3iRNubQWgFchAw3a+Q4BDDbE6kxXMJRWgHDFmbuEnA0mEdLEEgqBDGQvd/aob
	gVVirkCIPaZ8c2gkIN6HbsxmvdQw1olmag2PIB8j+h9gmgAtzLANfpNgDOwH/N6wdtd4i4
	j1tcRpLqvojUQZaD//y2arZ6Yikk59pjRfGZwhqgs4BcIaF8bSFRiXI+db8pdmqDZKUSsl
	WTgcX8uWFQjhO/FvkPTHSeMgexx6kcYfIRzCLA+EIsMM8EVCBf6jeEyDJzVrogNhGpj9Nr
	lQWqLQyi+2M9IiOi4Th872bguTKMMjT2+Pl4XrSN+boT/witeFD4taAf3sZDKw==
From: Simon Wunderlich <sw@simonwunderlich.de>
To: netdev@vger.kernel.org
Cc: "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Simon Horman <horms@kernel.org>,
	b.a.t.m.a.n@lists.open-mesh.org,
	Sven Eckelmann <sven@narfation.org>,
	Simon Wunderlich <sw@simonwunderlich.de>
Subject: [PATCH net-next 02/15] MAINTAINERS: Rename batman-adv T(ree)
Date: Mon,  1 Jun 2026 14:36:16 +0200
Message-ID: <20260601123629.707089-3-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260601123629.707089-1-sw@simonwunderlich.de>
References: <20260601123629.707089-1-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Message-ID-Hash: PWGE6ND2IDFOESB4PSFLZ35JBMVFMURS
X-Message-ID-Hash: PWGE6ND2IDFOESB4PSFLZ35JBMVFMURS
X-MailFrom: sw@simonwunderlich.de
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/PWGE6ND2IDFOESB4PSFLZ35JBMVFMURS/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Spamd-Result: default: False [-0.51 / 15.00];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[simonwunderlich.de,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[simonwunderlich.de:s=09092022];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[open-mesh.org:url,simonwunderlich.de:email,simonwunderlich.de:mid,simonwunderlich.de:dkim,diktynna.open-mesh.org:rdns,diktynna.open-mesh.org:helo,narfation.org:email];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sw@simonwunderlich.de,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[simonwunderlich.de:+];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	TO_DN_SOME(0.00)[];
	R_SPF_NA(0.00)[no SPF record]
X-Rspamd-Queue-Id: 12A1061F5A0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Sven Eckelmann <sven@narfation.org>

Replace the batman-adv tree name "linux-merge" with "batadv" to match the
patch prefix convention used in subject lines (e.g. "[PATCH batadv 1/10]").
The previous name "linux-merge" was ambiguous and was not suitable as a
easy-to-recognize prefix. Routing of patches to net-next vs. net remains at
maintainer discretion.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 MAINTAINERS | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index f1d2a924d53dc..741fb4166aa2b 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -4440,7 +4440,7 @@ W:	https://www.open-mesh.org/
 Q:	https://patchwork.open-mesh.org/project/batman/list/
 B:	https://www.open-mesh.org/projects/batman-adv/issues
 C:	ircs://irc.hackint.org/batadv
-T:	git https://git.open-mesh.org/linux-merge.git
+T:	git https://git.open-mesh.org/batadv.git
 F:	Documentation/networking/batman-adv.rst
 F:	include/uapi/linux/batadv_packet.h
 F:	include/uapi/linux/batman_adv.h
-- 
2.47.3

