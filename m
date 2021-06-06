Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 14DF839CF8D
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  6 Jun 2021 16:34:40 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id CDC1F807AA;
	Sun,  6 Jun 2021 16:34:38 +0200 (CEST)
Received: from www262.sakura.ne.jp (www262.sakura.ne.jp [202.181.97.72])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 0018980613
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun,  6 Jun 2021 16:28:25 +0200 (CEST)
Received: from fsav109.sakura.ne.jp (fsav109.sakura.ne.jp [27.133.134.236])
	by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id 156ESLF3091944;
	Sun, 6 Jun 2021 23:28:21 +0900 (JST)
	(envelope-from penguin-kernel@i-love.sakura.ne.jp)
Received: from www262.sakura.ne.jp (202.181.97.72)
 by fsav109.sakura.ne.jp (F-Secure/fsigk_smtp/550/fsav109.sakura.ne.jp);
 Sun, 06 Jun 2021 23:28:21 +0900 (JST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/fsav109.sakura.ne.jp)
Received: from [192.168.1.9] (M106072142033.v4.enabler.ne.jp [106.72.142.33])
	(authenticated bits=0)
	by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTPSA id 156ESLoB091938
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NO);
	Sun, 6 Jun 2021 23:28:21 +0900 (JST)
	(envelope-from penguin-kernel@i-love.sakura.ne.jp)
Subject: [PATCH] batman-adv: don't warn when enslaving hard interface failed
From: Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>
To: Marek Lindner <mareklindner@neomailbox.ch>,
        Simon Wunderlich <sw@simonwunderlich.de>,
        Antonio Quartulli <a@unstable.cc>, Sven Eckelmann <sven@narfation.org>
References: <04896d08-4bc0-019b-966e-41064effdef6@i-love.sakura.ne.jp>
Message-ID: <99650324-734d-54ed-cd9a-e7b55b8f3630@i-love.sakura.ne.jp>
Date: Sun, 6 Jun 2021 23:28:17 +0900
User-Agent: Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <04896d08-4bc0-019b-966e-41064effdef6@i-love.sakura.ne.jp>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1622989707; a=rsa-sha256;
	cv=none;
	b=HzZuQ1TogNhFUnenAFtRMCbZd30LxHk2Mw/m5XSX/cA5AY2aQbu4OHYEOVt5NU4aPO9WbT
	4cqkZoDsehBKparENtS1gGkRp7l/3F/aHLV8y/07vtLVqKE39iFq/YqhlySCjqkQtMN3JH
	96Pvv1qpqcp2NMvBghpR5ftbSKs2kno=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=none (diktynna.open-mesh.org: domain of penguin-kernel@i-love.sakura.ne.jp has no SPF policy when checking 202.181.97.72) smtp.mailfrom=penguin-kernel@i-love.sakura.ne.jp
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1622989707;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=atCeOTQzY5+cFXJAxGIcACUHgekjVOtq1vX8KqLoYo8=;
	b=fAv1eukQMzFsHtAwClRBgYUw3oVikmt6NHRqYMBU3fCVcHpDhoXsL/U8n5NaUqD4muNHFB
	EKI2F5WMrDtLFGKNrziJoaH2I4RvfooAXwWuEYiiIlaPaxLjt2uUCuhy2rgWZk4Om1uMjV
	reOuAg1Nl6HGFz2Ld6aZGmTO1FvRgpA=
X-MailFrom: penguin-kernel@i-love.sakura.ne.jp
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: E57L3PWHGAFZ7YX53LAMACJAKHPPANYW
X-Message-ID-Hash: E57L3PWHGAFZ7YX53LAMACJAKHPPANYW
X-Mailman-Approved-At: Sun, 06 Jun 2021 14:34:36 +0200
CC: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/E57L3PWHGAFZ7YX53LAMACJAKHPPANYW/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

syzbot is hitting

  WARN_ON(forw_packet->if_outgoing->soft_iface != soft_iface)

at batadv_iv_ogm_emit() [1], for forw_packet->if_outgoing->soft_iface
can remain NULL if batadv_hardif_enable_interface() failed due to e.g.
memory allocation fault injection.

Link: https://syzkaller.appspot.com/bug?id=9dc0c4cd70ad72df352243e887fd7e18901e7cee [1]
Reported-by: syzbot <syzbot+c0b807de416427ff3dd1@syzkaller.appspotmail.com>
Tested-by: syzbot <syzbot+c0b807de416427ff3dd1@syzkaller.appspotmail.com>
Signed-off-by: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
Fixes: ef0a937f7a1450d3 ("batman-adv: consider outgoing interface in OGM sending")
---
 net/batman-adv/bat_iv_ogm.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/net/batman-adv/bat_iv_ogm.c b/net/batman-adv/bat_iv_ogm.c
index 789f257be24f..d24853c16ea5 100644
--- a/net/batman-adv/bat_iv_ogm.c
+++ b/net/batman-adv/bat_iv_ogm.c
@@ -409,6 +409,9 @@ static void batadv_iv_ogm_emit(struct batadv_forw_packet *forw_packet)
 	if (WARN_ON(!forw_packet->if_outgoing))
 		return;
 
+	if (!forw_packet->if_outgoing->soft_iface)
+		return;
+
 	if (WARN_ON(forw_packet->if_outgoing->soft_iface != soft_iface))
 		return;
 
-- 
2.18.4

