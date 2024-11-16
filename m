Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A9209D00FF
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 16 Nov 2024 22:34:24 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id BAF9184038
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 16 Nov 2024 22:34:23 +0100 (CET)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1731792863;
 b=bDZWfA12dZHJxYVYKo49qnsWmtvTuZ94k1C3BZYPJkUVYD6Asal+UejaPJ94KaZz8JB/A
 Iw6gV2S9nMCKJl/Why+yNT2YxLQXgLWQaExSY8OFW6xrT4bLir3SrC3GxG55Pr8Q7Lalt7c
 q12rFMllfkREMT4Zwrr2WVP5KiL2r2g=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1731792863; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=thPeEVDI8QS3u+4d3UTWbTSoR1U21OIU0XOKn+NLD78=;
 b=ivUszj5zjM+gXczpM+B4h/l536YcEH4SJfRZonZtltrWWD4NN+pgh0rfllb8CzYzFjihf
 9zc8MY5E3iLMvPdMVJCRXMyRDtG0eEuB0eRWZPwe8CaqXqELk6RrVWzLGGwE+U2Zjs6ssxV
 8M7B8Ja9QXMw0pMxO5KF1DFaRsMyGAA=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=fail header.d=smtpservice.net;
  arc=pass;
  dmarc=fail (Used From Domain Record) header.from=triplefau.lt
 policy.dmarc=quarantine
Authentication-Results: open-mesh.org; dkim=fail header.d=smtpservice.net;
 arc=pass;
 dmarc=fail (Used From Domain Record) header.from=triplefau.lt policy.dmarc=quarantine
Received: from e2i340.smtp2go.com (e2i340.smtp2go.com [103.2.141.84])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id D89E780F41
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 16 Nov 2024 22:33:13 +0100 (CET)
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1731792794; a=rsa-sha256;
	cv=none;
	b=QXybUAdizKhMotsTURLg00Y8sBqPFlI7hT//1HJIsW/9El+/Kyc0QIc1EgyKeRLtQjbP75
	irCgS9j4Cbz0fSbrbY+sulGS3DY83KBozqADkCYeh2Cgub5XgPNZmnd0wLqSB99UM4vviW
	LiIcfHc30HMqxEwYc8o78ehJhzmBH8o=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none ("invalid DKIM record") header.d=smtpservice.net
 header.s=maxzs0.a1-4.dyn header.b=Z0H7eKHf;
	dkim=pass header.d=triplefau.lt header.s=s510616 header.b=e6WUlwgm;
	dmarc=pass (policy=quarantine) header.from=triplefau.lt;
	spf=pass (diktynna.open-mesh.org: domain of
 "bT.tr15ljfs0ab7x62=9vye8tmgq5pv=bx38s0g0pi7bpw@em510616.triplefau.lt"
 designates 103.2.141.84 as permitted sender)
 smtp.mailfrom="bT.tr15ljfs0ab7x62=9vye8tmgq5pv=bx38s0g0pi7bpw@em510616.triplefau.lt"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1731792794;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=thPeEVDI8QS3u+4d3UTWbTSoR1U21OIU0XOKn+NLD78=;
	b=d2NSxAL+Pt3s0VmjVX5HFpbXcxPgmYC2uZZUNivUkAZ2QWblskPPP17lTzU3CwXT+uGtIJ
	ljK4onxyISNSLjAa7r+PR7QOs5m3ZtG5ZT2G4dqa1LV3fsfa/JnARm1A73fv5XZObkoli+
	WkV7spHiKQR2Ae1a8Ewq2OCppNcPLt8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=smtpservice.net; s=maxzs0.a1-4.dyn; x=1731793693; h=Feedback-ID:
	X-Smtpcorp-Track:Message-Id:Date:Subject:To:From:Reply-To:Sender:
	List-Unsubscribe:List-Unsubscribe-Post;
	bh=thPeEVDI8QS3u+4d3UTWbTSoR1U21OIU0XOKn+NLD78=; b=Z0H7eKHfLYqff2n0cmpJApbFD2
	ceXm0tMC8hMMwxmOUJWlQ752KSwrAk4GNeouEdp+YMHLEzAvE4t1kAdzoNT3QRsU7f/WhCEL0c/KA
	QTaQObdem3leaKwijqzoE/0K7kzKCxSlzAZpea1Q6RIh+0ePp+yVi0AfuXOZp9IX9fEwcJ2N2+MB3
	icehfLNpu3biA1aXsyVyRcq9LOA7DgESIicTJCghFS3NFP8qxbjo1qoaletH3I+9yc1L6MGxt5W+J
	f/8XCP5XYRKQT+TaNmksUZ5h9RTIQVE4hOfTGzc2gVOMEeDwsqVSdv8w6yVxHdFSrb+lczb+MelRy
	YhIYprpQ==;
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=triplefau.lt;
 i=@triplefau.lt; q=dns/txt; s=s510616; t=1731792793; h=from : subject
 : to : message-id : date;
 bh=thPeEVDI8QS3u+4d3UTWbTSoR1U21OIU0XOKn+NLD78=;
 b=e6WUlwgm0acUGLQcvxAfP+WbrI7WdCLOWL6+V1SIjD1p2QRw+hdLv537vc3b2blAQfs8/
 W7H9Kbi6i52LwpqAWUSh8PcTaWEy8znSKs8WRuc4CZIOZpGJQPsEDTDgSgngeoAELTOUIMO
 F6TEaDXsvwKi1K9ga3XZ+0cA8+Mh3vmsfed9ZpeeNTVjkBx7oiBCMew4+m+nN6K+XCLI7eL
 YBxjVuCRI3dQVjBKKbjdY++8PcyX5SW7ONPxENUVdEBFSt50Qths0SyS1MzlYOq+QOhBfsB
 sI2sPsSKacStA66qkJN2fX7B7BD6Azq79wvy554LoKeFqJnrxk1Hpmkp2W0w==
Received: from [10.172.233.58] (helo=SmtpCorp) by smtpcorp.com with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.94.2-S2G) (envelope-from <repk@triplefau.lt>)
 id 1tCQPn-TRk3fP-Lk; Sat, 16 Nov 2024 21:33:11 +0000
Received: from [10.12.239.196] (helo=localhost) by smtpcorp.com with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.97.1-S2G) (envelope-from <repk@triplefau.lt>)
 id 1tCQPn-FnQW0hPpSRb-lZ2f; Sat, 16 Nov 2024 21:33:11 +0000
From: Remi Pommarel <repk@triplefau.lt>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Marek Lindner <mareklindner@neomailbox.ch>,
 Simon Wunderlich <sw@simonwunderlich.de>,
 Antonio Quartulli <a@unstable.cc>, Sven Eckelmann <sven@narfation.org>,
 Remi Pommarel <repk@triplefau.lt>
Subject: [PATCH v2 0/5] batman-adv: TT change events fixes and improvements
Date: Sat, 16 Nov 2024 22:32:04 +0100
Message-Id: <cover.1731792497.git.repk@triplefau.lt>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Smtpcorp-Track: FF7iYQ-EWNfJ.ei4K9cJb4Ues.1LHpoQKnBjf
Feedback-ID: 510616m:510616apGKSTK:510616sjsZxgMfAk
X-Report-Abuse: Please forward a copy of this message, including all headers,
 to <abuse-report@smtp2go.com>
Message-ID-Hash: EHQ3UKI7ZKCDDIPGQH2DFNULPBZZ533K
X-Message-ID-Hash: EHQ3UKI7ZKCDDIPGQH2DFNULPBZZ533K
X-MailFrom: 
 bT.tr15ljfs0ab7x62=9vye8tmgq5pv=bx38s0g0pi7bpw@em510616.triplefau.lt
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/EHQ3UKI7ZKCDDIPGQH2DFNULPBZZ533K/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

The first three patches are actual fixes.

The first two try to avoid sending uninitialized data that could be
interpreted as invalid TT change events in both TT change response and
OGM.  Following invalid entries could be seen when that happen with
batctl o:

 * 00:00:00:00:00:00   -1 [....] (  0) 88:12:4e:ad:7e:ba (179) (0x45845380)
 * 00:00:00:00:78:79 4092 [.W..] (  0) 88:12:4e:ad:7e:3c (145) (0x8ebadb8b)

The third one fixes an issue that happened when a TT change event list
is too big for the MTU, the list was never actually sent nor free and
continued to grow indefinitely from this point. That also caused the
OGM TTVN to increase at each OGM interval without any changes being ever
visible to other nodes. This ever growing TT change event list could be
observed by looking at /sys/kernel/slab/batadv_tt_change_cache/objects
that sometimes showed unusal high value even after issuing a memcache
shrink.

The next two patches are more cleanup / potential slight improvements.
While patch 4 is mainly cosmetic (having negative tt.local_changes
values is not exactly an issue), patch 5 is here to keep the TT changes
list as short as possible (reducing network overhead).

V2:
  - This has been tested enough to not be in RFC state anymore
  - Add one more uninitialize TT change fix for full table TT responses

Remi Pommarel (5):
  batman-adv: Do not send uninitialized TT changes
  batman-adv: Remove uninitialized data in full table TT response
  batman-adv: Do not let TT changes list grows indefinitely
  batman-adv: Remove atomic usage for tt.local_changes
  batman-adv: Don't keep redundant TT change events

 net/batman-adv/soft-interface.c    |  2 +-
 net/batman-adv/translation-table.c | 85 +++++++++++++++++++-----------
 net/batman-adv/types.h             |  4 +-
 3 files changed, 56 insertions(+), 35 deletions(-)

-- 
2.40.0

