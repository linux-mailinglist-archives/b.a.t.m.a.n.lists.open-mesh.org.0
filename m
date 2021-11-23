Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 5161545A2F3
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 23 Nov 2021 13:43:27 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 16115844DD;
	Tue, 23 Nov 2021 13:43:20 +0100 (CET)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 8454B844DD
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 23 Nov 2021 13:43:16 +0100 (CET)
Received: by mail.kernel.org (Postfix) with ESMTPSA id AFC3160F50;
	Tue, 23 Nov 2021 12:43:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1637671395;
	bh=/ME4mcoAnxnQ03LtMmAn8diQF6mCRq6fzZu9/X+5wfQ=;
	h=Subject:To:Cc:From:Date:In-Reply-To:From;
	b=vj/i/IeBXaIW9yMF7LQ3HcdU2ar56sg50SpaUn8rYvKcRCFw5FD1cF7BF2QX3YTfL
	 Re2YCOLe1kLVHPZQw6GL6HLGf+BmCWo034WThxJrY6skeQFBohnP1nuBtdGqX0GEmH
	 HqA0dhrnF8pfU60cctNTReVBQRtkKTHGAD5Tyx6g=
Subject: Patch "batman-adv: set .owner to THIS_MODULE" has been added to the 4.4-stable tree
To: ap420073@gmail.com,b.a.t.m.a.n@lists.open-mesh.org,gregkh@linuxfoundation.org,sven@narfation.org,sw@simonwunderlich.de
From: <gregkh@linuxfoundation.org>
Date: Tue, 23 Nov 2021 13:42:44 +0100
In-Reply-To: <20211120123939.260723-8-sven@narfation.org>
Message-ID: <163767136412366@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ANSI_X3.4-1968
X-stable: commit
X-Patchwork-Hint: ignore 
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1637671396; a=rsa-sha256;
	cv=none;
	b=pdxEpJihDzwtzpu9Mn9h12TJ/iAvnhA9Z6ZibwCbP07wtXgoWnbN8koRRT0FmmkPFZJd7X
	wRvAgpkinjXFK3ea88roJwKniQgBQvQ3GNDEJ1G3xrzLTx3doGfZyg10Gzv/iBrFcRkTx0
	eCUd/D1/6msra3t277DDEZ17FP6dz0g=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1637671396;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:dkim-signature;
	bh=33SbOpu3yS+yvMlznkIsmixhqAreXkDrjKUW0t5xs5g=;
	b=wFnP4MlZF7p1glB8q/np7XkA3awV0Qu3hwvi9vEOBcF26EwTE0PnYsk/B2o/iSV6Cxugxs
	wbHM1n1apWSha/wzLzzDieZgO+kC/Q4XB/u+0ayikqdXzpwTOIYG6a1/HEQjnVI/1c6uyY
	ptY93MSff90g6ylrwUVaYjPl6qP2SRQ=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=linuxfoundation.org header.s=korg header.b="vj/i/IeB";
	spf=pass (diktynna.open-mesh.org: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
	dmarc=pass (policy=none) header.from=linuxfoundation.org
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: QERLES2Z6MCUYQKPMLBLZUC3FGWDEDKI
X-Message-ID-Hash: QERLES2Z6MCUYQKPMLBLZUC3FGWDEDKI
X-MailFrom: gregkh@linuxfoundation.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
CC: stable-commits@vger.kernel.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/QERLES2Z6MCUYQKPMLBLZUC3FGWDEDKI/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>


This is a note to let you know that I've just added the patch titled

    batman-adv: set .owner to THIS_MODULE

to the 4.4-stable tree which can be found at:
    http://www.kernel.org/git/?p=3Dlinux/kernel/git/stable/stable-queue.g=
it;a=3Dsummary

The filename of the patch is:
     batman-adv-set-.owner-to-this_module.patch
and it can be found in the queue-4.4 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From foo@baz Tue Nov 23 01:39:02 PM CET 2021
From: Sven Eckelmann <sven@narfation.org>
Date: Sat, 20 Nov 2021 13:39:35 +0100
Subject: batman-adv: set .owner to THIS_MODULE
To: stable@vger.kernel.org
Cc: b.a.t.m.a.n@lists.open-mesh.org, Taehee Yoo <ap420073@gmail.com>, Sim=
on Wunderlich <sw@simonwunderlich.de>, Sven Eckelmann <sven@narfation.org=
>
Message-ID: <20211120123939.260723-8-sven@narfation.org>

From: Taehee Yoo <ap420073@gmail.com>

commit 14a2e551faea53d45bc11629a9dac88f88950ca7 upstream.

If THIS_MODULE is not set, the module would be removed while debugfs is
being used.
It eventually makes kernel panic.

Fixes: c6c8fea29769 ("net: Add batman-adv meshing protocol")
Signed-off-by: Taehee Yoo <ap420073@gmail.com>
Signed-off-by: Simon Wunderlich <sw@simonwunderlich.de>
[ bp: 4.4 backported: switch to old filename. ]
Signed-off-by: Sven Eckelmann <sven@narfation.org>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 net/batman-adv/debugfs.c |    1 +
 1 file changed, 1 insertion(+)

--- a/net/batman-adv/debugfs.c
+++ b/net/batman-adv/debugfs.c
@@ -214,6 +214,7 @@ static const struct file_operations bata
 	.read           =3D batadv_log_read,
 	.poll           =3D batadv_log_poll,
 	.llseek         =3D no_llseek,
+	.owner          =3D THIS_MODULE,
 };
=20
 static int batadv_debug_log_setup(struct batadv_priv *bat_priv)


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
