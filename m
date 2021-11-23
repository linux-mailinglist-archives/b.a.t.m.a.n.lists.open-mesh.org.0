Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E61545A2E9
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 23 Nov 2021 13:42:51 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id C68F683EE0;
	Tue, 23 Nov 2021 13:42:50 +0100 (CET)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 9CC4982FEE
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 23 Nov 2021 13:42:47 +0100 (CET)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9CBA360F6B;
	Tue, 23 Nov 2021 12:42:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1637671366;
	bh=CxiLSMYzQKyQR289icAZyIBtYO7GkhwK2LEqvXmHzjI=;
	h=Subject:To:Cc:From:Date:In-Reply-To:From;
	b=H8TAthHwy8L2DGkpCdB54SzPo4+LwzYPhG5S/Go7BRjE0cgumLQC5YM0yPAsPGEOd
	 PrJ0bSUg3snYiL5EXWFYEy3mdXbKq27Ju18nt0Q8MhK+oPJXuYC0BtNPqJwc2e9pXg
	 VIkf8J+z3TfsGjYEPwxJ2YMIaIOE/HOCd0MWsaC8=
Subject: Patch "batman-adv: Avoid WARN_ON timing related checks" has been added to the 4.4-stable tree
To: b.a.t.m.a.n@lists.open-mesh.org,gregkh@linuxfoundation.org,penguin-kernel@i-love.sakura.ne.jp,sven@narfation.org,sw@simonwunderlich.de,syzbot+c0b807de416427ff3dd1@syzkaller.appspotmail.com
From: <gregkh@linuxfoundation.org>
Date: Tue, 23 Nov 2021 13:42:43 +0100
In-Reply-To: <20211120123939.260723-12-sven@narfation.org>
Message-ID: <1637671363207187@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ANSI_X3.4-1968
X-stable: commit
X-Patchwork-Hint: ignore 
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1637671368; a=rsa-sha256;
	cv=none;
	b=J8Xs2WXpsQE5TJUcCNoVrMwMZ6qbvgK1ibaLGYFzvmJ3WWjwfGKMWIAv3W3TvGiCPDmIjH
	OpqtQgJB+aqv4X/yLNp9GRMjuwwSpjIu3WRWvMahwuwxG0bXBjT7f9P+ep4BACef3EEXfU
	cIlpJ1LWMm5G2tO/KFKTYAuPUEL/hVM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1637671368;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:dkim-signature;
	bh=Flqw/Al6zJSf4W1NrUym0uLW4gv/5LVr2gVI6+OExo0=;
	b=hwMc4pqJ8AsIIBc9K2Nqi4nz7aOrL+RripD8oLNcVKxc2eK01euRDu5+Knl47jwP1NxzRJ
	qu9KCm2hhDWQS3CNfIzdL5mXJrWOlSc703rLwnqMPo7N3hH3Ls7sRB3l/ZpvStqmH1Bvah
	vJLVC38eZldU6YB368TrGddvJYH6KbM=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=linuxfoundation.org header.s=korg header.b=H8TAthHw;
	spf=pass (diktynna.open-mesh.org: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
	dmarc=pass (policy=none) header.from=linuxfoundation.org
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: M2YR5EIXRATPCC2ZEHNT3ROOJSOO5RUY
X-Message-ID-Hash: M2YR5EIXRATPCC2ZEHNT3ROOJSOO5RUY
X-MailFrom: gregkh@linuxfoundation.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
CC: stable-commits@vger.kernel.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/M2YR5EIXRATPCC2ZEHNT3ROOJSOO5RUY/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>


This is a note to let you know that I've just added the patch titled

    batman-adv: Avoid WARN_ON timing related checks

to the 4.4-stable tree which can be found at:
    http://www.kernel.org/git/?p=3Dlinux/kernel/git/stable/stable-queue.g=
it;a=3Dsummary

The filename of the patch is:
     batman-adv-avoid-warn_on-timing-related-checks.patch
and it can be found in the queue-4.4 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From foo@baz Tue Nov 23 01:39:02 PM CET 2021
From: Sven Eckelmann <sven@narfation.org>
Date: Sat, 20 Nov 2021 13:39:39 +0100
Subject: batman-adv: Avoid WARN_ON timing related checks
To: stable@vger.kernel.org
Cc: b.a.t.m.a.n@lists.open-mesh.org, Sven Eckelmann <sven@narfation.org>,=
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>, syzbot+c0b807de416427=
ff3dd1@syzkaller.appspotmail.com, Simon Wunderlich <sw@simonwunderlich.de=
>
Message-ID: <20211120123939.260723-12-sven@narfation.org>

From: Sven Eckelmann <sven@narfation.org>

commit 9f460ae31c4435fd022c443a6029352217a16ac1 upstream.

The soft/batadv interface for a queued OGM can be changed during the time
the OGM was queued for transmission and when the OGM is actually
transmitted by the worker.

But WARN_ON must be used to denote kernel bugs and not to print simple
warnings. A warning can simply be printed using pr_warn.

Reported-by: Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>
Reported-by: syzbot+c0b807de416427ff3dd1@syzkaller.appspotmail.com
Fixes: ef0a937f7a14 ("batman-adv: consider outgoing interface in OGM send=
ing")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
[ bp: 4.4 backported: adjust context. ]
Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 net/batman-adv/bat_iv_ogm.c |    4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

--- a/net/batman-adv/bat_iv_ogm.c
+++ b/net/batman-adv/bat_iv_ogm.c
@@ -526,8 +526,10 @@ static void batadv_iv_ogm_emit(struct ba
 	if (WARN_ON(!forw_packet->if_outgoing))
 		goto out;
=20
-	if (WARN_ON(forw_packet->if_outgoing->soft_iface !=3D soft_iface))
+	if (forw_packet->if_outgoing->soft_iface !=3D soft_iface) {
+		pr_warn("%s: soft interface switch for queued OGM\n", __func__);
 		goto out;
+	}
=20
 	if (forw_packet->if_incoming->if_status !=3D BATADV_IF_ACTIVE)
 		goto out;


Patches currently in stable-queue which might be from sven@narfation.org =
are

queue-4.4/batman-adv-consider-fragmentation-for-needed_headroom.patch
queue-4.4/ath9k-fix-potential-interrupt-storm-on-queue-reset.patch
queue-4.4/batman-adv-set-.owner-to-this_module.patch
queue-4.4/batman-adv-mcast-fix-duplicate-mcast-packets-from-bla-backbone-=
to-mesh.patch
queue-4.4/batman-adv-fix-multicast-tt-issues-with-bogus-roam-flags.patch
queue-4.4/batman-adv-mcast-fix-duplicate-mcast-packets-in-bla-backbone-fr=
om-lan.patch
queue-4.4/batman-adv-reserve-needed_-room-for-fragments.patch
queue-4.4/net-batman-adv-fix-error-handling.patch
queue-4.4/batman-adv-keep-fragments-equally-sized.patch
queue-4.4/batman-adv-avoid-warn_on-timing-related-checks.patch
queue-4.4/batman-adv-prevent-duplicated-softif_vlan-entry.patch
queue-4.4/batman-adv-don-t-always-reallocate-the-fragmentation-skb-head.p=
atch
queue-4.4/batman-adv-mcast-fix-duplicate-mcast-packets-in-bla-backbone-fr=
om-mesh.patch
