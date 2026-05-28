Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eCwGGeNRGGqwiwgAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 28 May 2026 16:32:03 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FB6F5F3B76
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 28 May 2026 16:32:03 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 012E684190
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 28 May 2026 16:32:03 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1779978722;
 b=xSEAR8kZNeHg1qWE19zMKLSYX+JDkR8Kz44rDpO+e6y/IrOx4w/a5wARrtOilYvFb4se1
 UAZbcuWaNtOk4FZ1ml38vOIDCtGL0pLphT2rgn6nHRA9VR9CDVkCTc5seQGj6ZVkYnqk/9i
 9r3HeTlvHVcigosj+UgVaJakl2hXXyc=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1779978722; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=/EL+qJ6WKHkjBQeLQM+rO68NQsJGkz6Soatl6PUjU/0=;
 b=OpIgNcl8IT5Xn4lZZsuXrF/RA4OBruSs1XSfw4intRhbWZDN30MD/rwuLywl7SujVWLLh
 U2/m1vozQwqHgNxb5rey2fr9x8vXnY2qRrTgNJc7NjQcutXlGnjQs73/VUz5v7hBCKpYtG8
 2m1USFSsO8v2AahJz2DFj9ARXnXuVMI=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=simonwunderlich.de;
 arc=pass;
 dmarc=pass header.from=simonwunderlich.de policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=simonwunderlich.de;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=simonwunderlich.de policy.dmarc=none
Received: from mail.simonwunderlich.de (mail.simonwunderlich.de [23.88.38.48])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 6AAFC83AAD
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 28 May 2026 16:29:29 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1779978569;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=/EL+qJ6WKHkjBQeLQM+rO68NQsJGkz6Soatl6PUjU/0=;
	b=jpkGyzNFrcuyB50+jj3GlMzyt7y8OZp8+JMWHsCaiFTaRBKsU32XHKke7iayFMLQ2zgtvM
	KN53XiytAb6pzomWrGExtohR6cC7J7/YHjA1s14JubsZnsvbCd4fGFRcSGDiLMYlBVTEzv
	2lkorlOuin8iKvt8n5TRKTRlznDbOaY=
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1779978569;
	b=bz7QCpwGiBYeRCUJHFYZTMQwyctPSei5jvRiXpI2FovPcgxmB2KaivIFZV4kiDknQ9nKXw
	OhLYBlDrY8DRwIVi7/ekLhVUU/3zM+Rz+KWSfYvLH3c4t566bThFbsjuJ/l+PEN43d132/
	ni6zUQL904IhHVJY0HTYy31Oxbbm4n8=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=simonwunderlich.de header.s=09092022 header.b="GbV+M//p";
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates
 23.88.38.48 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de;
	dmarc=pass (policy=none) header.from=simonwunderlich.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=simonwunderlich.de;
	s=09092022; t=1779978567;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/EL+qJ6WKHkjBQeLQM+rO68NQsJGkz6Soatl6PUjU/0=;
	b=GbV+M//plOyCZbdFTYeFCduu6jVDmB8mP3aNV8NYm0iuSXNehFN6ANwokhWrTfvX9rFenJ
	lFNcpXhZdEBql/ZRN8lhCXGfrxIPq1ze3Caq7e+KHkz/toc8WNHkGBeXB+9N63om33bX+U
	uRVQ7jfusZ50KVbfxAPMKyC+D9dvGAUJUrOIe/inYPECsqZ4636Ycaf8CnI09Q6ddbMX5Y
	PUDU9MUR9b4bkX2JP8xexqnrKMXZyrfVEcxuY4MnsZx9PS08vjqXRns+9ml6XA8BOjSFwU
	WRm8sarAFIhlo1lHDzWEuZhZaiPBVYXRimiKa+IFinfW+ycdMJzJSl5bpfkLNA==
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
Date: Thu, 28 May 2026 16:29:11 +0200
Message-ID: <20260528142924.329658-3-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260528142924.329658-1-sw@simonwunderlich.de>
References: <20260528142924.329658-1-sw@simonwunderlich.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Message-ID-Hash: TFEVQJHG3VFXRMX5ARJN27Y7TUIPZPSV
X-Message-ID-Hash: TFEVQJHG3VFXRMX5ARJN27Y7TUIPZPSV
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/TFEVQJHG3VFXRMX5ARJN27Y7TUIPZPSV/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:rdns,diktynna.open-mesh.org:helo,open-mesh.org:url,narfation.org:email,simonwunderlich.de:email,simonwunderlich.de:mid,simonwunderlich.de:dkim];
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
	ASN(0.00)[asn:24940, ipnet:2a01:4f8::/32, country:DE];
	TO_DN_SOME(0.00)[];
	R_SPF_NA(0.00)[no SPF record]
X-Rspamd-Queue-Id: 3FB6F5F3B76
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

