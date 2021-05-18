Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 533E8387FEB
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 18 May 2021 20:50:42 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 052C1809F3;
	Tue, 18 May 2021 20:50:41 +0200 (CEST)
Received: from www262.sakura.ne.jp (www262.sakura.ne.jp [202.181.97.72])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 9F31D8020F
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 18 May 2021 16:54:57 +0200 (CEST)
Received: from fsav109.sakura.ne.jp (fsav109.sakura.ne.jp [27.133.134.236])
	by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id 14IEssRm045406;
	Tue, 18 May 2021 23:54:54 +0900 (JST)
	(envelope-from penguin-kernel@i-love.sakura.ne.jp)
Received: from www262.sakura.ne.jp (202.181.97.72)
 by fsav109.sakura.ne.jp (F-Secure/fsigk_smtp/550/fsav109.sakura.ne.jp);
 Tue, 18 May 2021 23:54:54 +0900 (JST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/fsav109.sakura.ne.jp)
Received: from [192.168.1.9] (M106072142033.v4.enabler.ne.jp [106.72.142.33])
	(authenticated bits=0)
	by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTPSA id 14IEsrBd045401
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NO);
	Tue, 18 May 2021 23:54:53 +0900 (JST)
	(envelope-from penguin-kernel@i-love.sakura.ne.jp)
To: Marek Lindner <mareklindner@neomailbox.ch>,
        Simon Wunderlich <sw@simonwunderlich.de>,
        Antonio Quartulli <a@unstable.cc>, Sven Eckelmann <sven@narfation.org>
From: Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>
Subject: WARNING in batadv_iv_send_outstanding_bat_ogm_packet
Message-ID: <04896d08-4bc0-019b-966e-41064effdef6@i-love.sakura.ne.jp>
Date: Tue, 18 May 2021 23:54:48 +0900
User-Agent: Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1621349699; a=rsa-sha256;
	cv=none;
	b=2iqOvzMlNXE9qMWNYqd3w59WzdXftObfVP1id4ZwNKcNy/XHHKbFhj6VxoZXPVPnsfxqHZ
	Ygs/cio1lGzEnu/A826CqHQGiM2riyTR0RHilWyEfSGOZCf5h8zS5eZBnpT1QKOENYVO8E
	WR93BwPWDQvG7d6uwAMsdsMgt98i9+w=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=none (diktynna.open-mesh.org: domain of penguin-kernel@i-love.sakura.ne.jp has no SPF policy when checking 202.181.97.72) smtp.mailfrom=penguin-kernel@i-love.sakura.ne.jp
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1621349699;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=oKUiMy7eersB/5b524PuPxU855Pk2jYK1lIsJepcPck=;
	b=EwnD7dCk8HG2SoJORqCbclsbV/D1DfGFwmqA66CenW/29Cb0hFNV7hBvUVlEdNbfyziCyj
	7NKBWdwBkUHBMzfCmv+Qu9bK5hFmM/O/bEsSYRniWshE7uFXYEYd0pa35kWk2Owepqv69Q
	ySgYRejhq9ZHqFrfe2KCxxE8KT+QPME=
X-MailFrom: penguin-kernel@i-love.sakura.ne.jp
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: 5D73ZXWVG53LXFOGOBOA5DP3M2FF6G7O
X-Message-ID-Hash: 5D73ZXWVG53LXFOGOBOA5DP3M2FF6G7O
X-Mailman-Approved-At: Tue, 18 May 2021 18:50:38 +0200
CC: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/5D73ZXWVG53LXFOGOBOA5DP3M2FF6G7O/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

syzbot is hitting

  WARN_ON(forw_packet->if_outgoing->soft_iface != soft_iface)

at batadv_iv_ogm_emit() [1].

This WARN_ON() was added by commit ef0a937f7a1450d3 ("batman-adv: consider
outgoing interface in OGM sending") but it is unclear why it needs to use
WARN_ON(). Is this fatal error worth crashing the kernel?

Please consider replacing with pr_err() etc. like commit b4142fc4d52d051d
("drm/vkms: fix misuse of WARN_ON") does if this is not a kernel bug.

[1] https://syzkaller.appspot.com/bug?id=9dc0c4cd70ad72df352243e887fd7e18901e7cee
