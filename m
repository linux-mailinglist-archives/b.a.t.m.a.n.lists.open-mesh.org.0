Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id C201A1BD9BD
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 29 Apr 2020 12:37:05 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 83DDF81041;
	Wed, 29 Apr 2020 12:37:04 +0200 (CEST)
ARC-Seal: i=2; cv=fail; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1588156624;
 b=UDUj+wc/qhPOS7mCNCZarHQuCReeDNfKZ3+at6gQLfA+e+LoUzhMmk+FFu2DVvHFbBodh
 EFeegX/MfbavIDRnJJRQIu9QYlfa0UrLauhaotxva7YyDzsWn6Ib0YPIEPjd5aZxBsHqiiY
 VeVZ+AsiE36edolzKyf2MgpVhsMjXik=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1588156624; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=sR1lwmrikKdZ6xeOwxGu75ibK5zXtO6AbEYbz8ogn+o=;
 b=uIgHVZhW4QjdbFZ175ijg3TiCf+DQbYvOgRVrI+u6wBwqJxaIP7t7ol8xzdGY36/HLjnZ
 qvNypl2cqLkHK6Q80CUu5b4sTJ0eqTjv+N+cuMy3i1hgaKfzKRaLtHiciIQMOwM1zYWnnU8
 qAzpbCkS73w1tqiaNlC6EyBDlOvCCdA=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=fail;
  arc=fail;
  dmarc=fail header.from=neomailbox.ch
Authentication-Results: open-mesh.org; dkim=fail; arc=fail; dmarc=fail header.from=neomailbox.ch
Received: from s2.neomailbox.net (s2.neomailbox.net [5.148.176.60])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 799508026C
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 29 Apr 2020 12:37:01 +0200 (CEST)
From: Marek Lindner <mareklindner@neomailbox.ch>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH] batctl: fix endianness when reading radiotap header
Date: Wed, 29 Apr 2020 12:09:44 +0200
Message-Id: <20200429100944.1163472-1-mareklindner@neomailbox.ch>
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1588156622;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=eJhHKq8f51B758GVWpmTutuSxJz7hdiB4zLQN1yW+AE=;
	b=3bMCORO/bhA7qm0NEIZmnzynl7xQCo3nQUgYGmSphaodE3RkEQhgPqTm0PQFQvpOAnpei1
	6wUSMFYuOLz7QPDxVq9Zslams/bRhclsx2rMD5tkY6jcRHL/Ak8+NsB00RIchv2S6f82mV
	yl/Kug1Ku1PYUNVhXJSjjU+Zf5y6ZbE=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1588156622; a=rsa-sha256;
	cv=none;
	b=XAbRW/MEWrtMdbdqNesdrY6QcG46gV0yac843nz4gElGiIvz2sUFUBPyXp/mksqEtd9tZ0
	bGsVDFbxmTDMebrqqxr9VhUa6ux09F2gv+YrFUKk+wChVQrSMpBDh3w6Wxfuxxby59m9Na
	rjJbdZ0VgJ1oj9jo6KYi2vJEBgCFAWg=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of mareklindner@neomailbox.ch designates 5.148.176.60 as permitted sender) smtp.mailfrom=mareklindner@neomailbox.ch
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: UE3WIWDP4KSEQQPH6SEITPNRQAZNLLMB
X-Message-ID-Hash: UE3WIWDP4KSEQQPH6SEITPNRQAZNLLMB
X-MailFrom: mareklindner@neomailbox.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Marek Lindner <mareklindner@neomailbox.ch>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/UE3WIWDP4KSEQQPH6SEITPNRQAZNLLMB/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

All radiotap header fields are specified in little endian byte-order.
Header length conversion is necessary on some platforms.

Signed-off-by: Marek Lindner <mareklindner@neomailbox.ch>
---
 tcpdump.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/tcpdump.c b/tcpdump.c
index 4b9e4f6..1beace1 100644
--- a/tcpdump.c
+++ b/tcpdump.c
@@ -1144,10 +1144,10 @@ static int monitor_header_length(unsigned char *p=
acket_buff, ssize_t buff_len, i
 			return -1;
=20
 		radiotap_hdr =3D (struct radiotap_header*)packet_buff;
-		if (buff_len <=3D radiotap_hdr->it_len)
+		if (buff_len <=3D le16toh(radiotap_hdr->it_len))
 			return -1;
 		else
-			return radiotap_hdr->it_len;
+			return le16toh(radiotap_hdr->it_len);
 	}
=20
 	return -1;
--=20
2.25.1
