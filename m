Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id A334F1BA73F
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 27 Apr 2020 17:06:22 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 6AA9F80E25;
	Mon, 27 Apr 2020 17:06:18 +0200 (CEST)
ARC-Seal: i=2; cv=fail; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1587999973;
 b=KqxFkQReKD/EUuOoYylakvB2YJa4NOmQ8KWt7Tpvv3KOeIX+OYgZmNhSvESZ1QVt+U/ln
 xVPUM5e8bJ7VC+KRo2VD1avwRWsEXxNIryMr+AYvF5yVLf/pkW607FK1NEGKqbwd+gGyJqz
 xyMYDGRjJXyHtGg/SAGEI2+blDBBpnk=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1587999973; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=k1YqWiuf/fTl8oKNvBOOLBSVCJFBjamTSHQWaLels6g=;
 b=lDCwxvjqNaQrOhKtoOFAsnuyNbvGsUk0IIaY3JOdDmiNls34gqfWuZVAYm8g1NgI8B6Tw
 YkLbAg7s2EyuiPgdap+mbZfGQgW0JxA91Vbmq83bD3WJXGrUTFVBORHtOHIY1jIyODsfv2b
 fFXRavXYmk3s4+inxsSWCb3pW8m2RYE=
ARC-Authentication-Results: i=2; open-mesh.org; dkim=fail;
  arc=fail;
  dmarc=fail header.from=simonwunderlich.de
Authentication-Results: open-mesh.org; dkim=fail; arc=fail; dmarc=fail header.from=simonwunderlich.de
Received: from simonwunderlich.de (simonwunderlich.de [79.140.42.25])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id BDD8D80137
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 27 Apr 2020 17:06:10 +0200 (CEST)
Received: from kero.packetmixer.de (p4FD5799A.dip0.t-ipconnect.de [79.213.121.154])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id 816166206F;
	Mon, 27 Apr 2020 17:06:10 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: davem@davemloft.net
Subject: [PATCH 2/5] batman-adv: Fix spelling error in term buffer
Date: Mon, 27 Apr 2020 17:06:04 +0200
Message-Id: <20200427150607.31401-3-sw@simonwunderlich.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200427150607.31401-1-sw@simonwunderlich.de>
References: <20200427150607.31401-1-sw@simonwunderlich.de>
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1587999970;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=YoPVlrASzv1AW0pTq64vO9ZmYRZICd4VR1sc9YeBJMk=;
	b=1L/QXyIZttNdN5AhCtsCM6Lu0QlnWc1KJU2Co2e+LKzw+Ki1aygkREIbAuDsGh71c3FAI2
	8GxGLR5wk7MPihoiMBY9wLrjm7b5KQHDFf5Aq/qn4fr7D7YGdR+v/w6vD4AFiMyz1G61yf
	BhDpSRP2PtNpeF281TaktGhydkaJvhs=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1587999970; a=rsa-sha256;
	cv=none;
	b=XxmUZpFULQ9skpYKCWfLQXbTpjjtA9dTKi7EKV8G9BgTjaOQINXOYZZCBWyjSFNE4W3vEX
	sWI3v0O3g8UEP3iZKwxWPSe2xrrJN9LBx/ALwZcY2b+ZKMRdKmtiMQFQ46dILDQ9VBUZoh
	2SVvxJlP1NxxUeCQ9DSkrURgYzydd60=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 79.140.42.25 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: PJQHYFH3O4SFROVWPWMZ466ENOBFSDCT
X-Message-ID-Hash: PJQHYFH3O4SFROVWPWMZ466ENOBFSDCT
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/PJQHYFH3O4SFROVWPWMZ466ENOBFSDCT/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

From: Sven Eckelmann <sven@narfation.org>

checkpatch warns about a typo in the word bufFer which was introduced in
commit 2191c1bcbc64 ("batman-adv: kernel doc for types.h").

Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
---
 net/batman-adv/types.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/batman-adv/types.h b/net/batman-adv/types.h
index 4a17a66cc572..d152b8e81f61 100644
--- a/net/batman-adv/types.h
+++ b/net/batman-adv/types.h
@@ -1086,7 +1086,7 @@ struct batadv_priv_bla {
  * struct batadv_priv_debug_log - debug logging data
  */
 struct batadv_priv_debug_log {
-	/** @log_buff: buffer holding the logs (ring bufer) */
+	/** @log_buff: buffer holding the logs (ring buffer) */
 	char log_buff[BATADV_LOG_BUF_LEN];
=20
 	/** @log_start: index of next character to read */
--=20
2.20.1
