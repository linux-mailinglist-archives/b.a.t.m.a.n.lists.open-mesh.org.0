Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C698BA6215
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 27 Sep 2025 19:22:54 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 0A75183BF0
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 27 Sep 2025 19:22:54 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1758993774;
 b=OYzJANpSrGIKsR8Q1wrVxf7HEu5oOA1MFV9GcyFPL+wuzcTztTMmAgWN1nRzdhTxgBXgy
 Gp12XjgABvfrA0FpbcKsvxqURQ8QrDPhI9lNRVemJm8vAYY0U6SqO9/vsudo/ldCAn9aPFC
 FNmSEcOQ64jZ49gPisrq3TJ4kSBtLus=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1758993774; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=LDurmd04BKVUELAoJuDk6KWuGDtTylZAERr3/9hXhOQ=;
 b=aOiQAwGh1BWp7Ym+7vsvk1Qxn+pif9dRcKMAfO/CJorO1CUhd+Olh7J2PMvJlr0IjI5r/
 lV0xbqQ8fPD/GJ8O2bPscLiKM0Ys4fYOkToftbiwrIAOSlg8jUJyrngb6tbWaCmuhZxtxCk
 Ku0rUnzApwow8XiPWIRflLbqoCa+gjM=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 148D180771
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 27 Sep 2025 19:22:07 +0200 (CEST)
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1758993738; a=rsa-sha256;
	cv=none;
	b=BHN3RZ9eEsYASXn4GQAfiaedUYoE4BDtRCBRLB31cm6C9h0QYb5VFiW9QtWpV3HG+LXquD
	8qdtNsHyel/pTJkt8iRH3sPnplWWHTRDikA+ayc1S5jVc9vpJ/xq92YD0Ok7HimXgTo/89
	KPOnxax/47BHAnIpgQqdXXT7fN562sM=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=Mx+uyaYx;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1758993738;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=LDurmd04BKVUELAoJuDk6KWuGDtTylZAERr3/9hXhOQ=;
	b=aRS/ero1jcTedvJy+tgutL77w6hmVj20n22ApXhvAVKLmjPvHRuiO42whLMjxBevEfogeN
	+tc6S7woN1bd2mx8uWHm6UWnQllfNCzG9aSyMcwreN3IISKhCrDaRHThVKSgJMlqDC2K/G
	CjozzfABbj51D6fTZvnRQKJuZh5gm2Y=
Received: by dvalin.narfation.org (Postfix) id A6A8D2054D;
	Sat, 27 Sep 2025 17:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1758993725;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=LDurmd04BKVUELAoJuDk6KWuGDtTylZAERr3/9hXhOQ=;
	b=Mx+uyaYxwcW7GV6l1B7U6KdFn0mUJz6B+XfHl/RbUsxkBSYDqFw+Qx7zOdBU2utgMfigpN
	DG1wT15MtmYmyHeyYyLiwAfX+T2LOTFgoO+qR7UKDMKCafKLBcGyxUUmtRZTzFNPlw5Kwi
	73lYtl8ZgEWEJBdhDZWte3EfyIPM5lc=
From: Sven Eckelmann <sven@narfation.org>
To: Marek Lindner <marek.lindner@mailbox.org>,
 Simon Wunderlich <sw@simonwunderlich.de>,
 Antonio Quartulli <antonio@mandelbit.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>, b.a.t.m.a.n@lists.open-mesh.org,
 Network Development <netdev@vger.kernel.org>,
 Linus =?UTF-8?B?TMO8c3Npbmc=?= <linus.luessing@c0d3.blue>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>
Subject: Re: unregister_netdevice: waiting for batadv_slave_0 to become free.
 Usage
 count = 2
Date: Sat, 27 Sep 2025 19:21:51 +0200
Message-ID: <2754825.KlZ2vcFHjT@sven-desktop>
In-Reply-To: <1731a084-79fb-4bc6-9e0b-9b17f3345c4b@I-love.SAKURA.ne.jp>
References: <e50546d9-f86f-426b-9cd3-d56a368d56a8@I-love.SAKURA.ne.jp>
 <1731a084-79fb-4bc6-9e0b-9b17f3345c4b@I-love.SAKURA.ne.jp>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart3312591.k3LOHGUjKi";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
Message-ID-Hash: JD6MMPHYWFY5JIBXQH2TXUO5M6DQ6CIX
X-Message-ID-Hash: JD6MMPHYWFY5JIBXQH2TXUO5M6DQ6CIX
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2; emergency; member-moderation;
 nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size;
 news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/JD6MMPHYWFY5JIBXQH2TXUO5M6DQ6CIX/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart3312591.k3LOHGUjKi
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
Date: Sat, 27 Sep 2025 19:21:51 +0200
Message-ID: <2754825.KlZ2vcFHjT@sven-desktop>
MIME-Version: 1.0

On Tuesday, 23 September 2025 16:45:48 CEST Tetsuo Handa wrote:
> On 2025/09/22 23:09, Tetsuo Handa wrote:
> > I suspect that batadv_hard_if_event_meshif() has something to do upon
> > NETDEV_UNREGISTER event because batadv_hard_if_event_meshif() receives
> > NETDEV_POST_INIT / NETDEV_REGISTER / NETDEV_UNREGISTER / NETDEV_PRE_UNINIT
> > events when this reproducer is executed, but I don't know what to do...
> 
> With a change show bottom, the reproducer no longer triggers this problem.
> But is this change correct?

Thanks for the writeup. Unfortunately, I tried to read this multiple times but 
you don't make it easy to figure out what the problem is.

Please don't take the following paragraphs the wrong way - I was just not able 
to really figure out what you meant. I have therefore just added my thoughts 
on each paragraph.

At the end of this mail, I tried to give a shorter summary about the interface 
states and what I think is the actual problem.

> Commit 9e6b5648bbc4 ("batman-adv: Fix duplicated OGMs on NETDEV_UP")
> replaced batadv_iv_iface_activate() (which is called via iface.activate()
>  from batadv_hardif_activate_interface()) with batadv_iv_iface_enabled()
> (which is called via iface.enabled() from batadv_hardif_enable_interface()).
> But that commit missed that batadv_hardif_activate_interface() is called from
> both batadv_hardif_enable_interface() and batadv_hard_if_event().

Why did it miss it? This is the plan in the mentioned commit.

What is the relevant effect which is creating the problem here?


> Since batadv_iv_ogm_schedule_buff() updates if_status to BATADV_IF_ACTIVE
> only when if_status was BATADV_IF_TO_BE_ACTIVATED, we need to call
> batadv_iv_ogm_schedule_buff() from batadv_iv_ogm_schedule() from
> batadv_iv_iface_enabled() via iface.enabled() with
> if_status == BATADV_IF_TO_BE_ACTIVATED if we want iface.enabled() from
> batadv_hardif_enable_interface() to update if_status to BATADV_IF_ACTIVE.

This basically says: Because of A <- B <- C, we need to have C to B to get A. 
But not really what effect this would have.

> But when IFF_UP is not set upon creation, batadv_hardif_enable_interface()
> does not call batadv_hardif_activate_interface(), which means that
> if_status remains BATADV_IF_INACTIVE despite
> batadv_iv_ogm_schedule_buff() is called via iface.enabled().

It must stay inactive when it is down. But the periodic OGM scheduling is 
still needed to have the OGM queued for active interfaces.


> And when IFF_UP is set after creation, batadv_hard_if_event() calls
> batadv_hardif_activate_interface(). But despite "Interface activated: %s\n"
> message being printed, if_status remains BATADV_IF_TO_BE_ACTIVATED because
> iface.activate == NULL due to above-mentioned commit.

This is not necessarily true. It will simply be switched to BATADV_IF_ACTIVATE 
with the next OGM because batadv_iv_ogm_schedule is rescheduled all the time.

> Since we need to call iface.enabled() instead of iface.activate() so that
> batadv_iv_ogm_schedule_buff() will update if_status to BATADV_IF_ACTIVE,
> move iface.enabled() from batadv_hardif_enable_interface() to
> batadv_hardif_activate_interface().

Why do we need to switch to this state in the first place? I didn't find this 
explanation here.

If I would add your change, we would suddenly have multiple scheduled OGMs 
again, right? Because it basically an oddly written revert of 
commit 9e6b5648bbc4 ("batman-adv: Fix duplicated OGMs on NETDEV_UP").


If this would actually the problem, why would the BATADV_CMD_GET_NEIGHBORS 
request be required? I would have expected that following would show the same 
problem when the switch of the state is the problem:

    rmmod batman-adv || true
    modprobe batman-adv
 
    ip link add batadv_slave_0 type veth peer name veth0_to_batadv
    
    ip link add batadv0 type batadv
    batctl meshif batadv0 it 1000000
    ip link set down master batadv0 dev batadv_slave_0
    ip link set up address 00a:a:aa:aa:aa:aa dev batadv_slave_0
    ip link del dev batadv_slave_0


Let me rephrase what happens with the state of an interface. Just so we are on 
the same page:

* an interface detected by batman-adv is starting with the state 
  BATADV_IF_NOT_IN_USE
* an active interface has the state BATADV_IF_ACTIVE
* when an interface is added to a batman-adv meshif, it is first set to the 
  state BATADV_IF_TO_BE_ACTIVATED
  - this is done by batadv_hardif_activate_interface()
  - there are some dependencies to the UP state of the netdev - see below
* the transition from BATADV_IF_TO_BE_ACTIVATED to BATADV_IF_ACTIVE is 
  algorithm specific
  - IV: scheduling of the OGM buffer
  - V: "directly" after BATADV_IF_TO_BE_ACTIVATED is set


The transition from state BATADV_IF_NOT_IN_USE to BATADV_IF_TO_BE_ACTIVATED 
only happens when the interface is actually UP when .ndo_add_slave is called. 
Otherwise, batman-adv postpones the call to batadv_hardif_activate_interface() 
until the NETDEV_UP event is received.

As mentioned earlier the B.A.T.M.A.N. IV algorithm implementation is (in your 
reproducer) responsible for switching the interface state from 
BATADV_IF_TO_BE_ACTIVATED to BATADV_IF_ACTIVE. And it will only do 
this when the interface was actually in the state BATADV_IF_TO_BE_ACTIVATED. 
There is a comment above the statement which explains the details.

And exactly this "delay" makes it more likely that operations are started 
while an interface is in the transition state of BATADV_IF_TO_BE_ACTIVATED. 
Simply because the periodic OGM scheduling isn't triggered immediately - it 
continues with its normal periodicity.
 

The question would now be: what is the actual problem? For example, with 
following change, the problem also seems to be gone:

diff --git i/net/batman-adv/originator.c w/net/batman-adv/originator.c
index c84420cb..f82dce20 100644
--- i/net/batman-adv/originator.c
+++ w/net/batman-adv/originator.c
@@ -763,7 +763,7 @@ int batadv_hardif_neigh_dump(struct sk_buff *msg, struct netlink_callback *cb)
 	bat_priv = netdev_priv(mesh_iface);
 
 	primary_if = batadv_primary_if_get_selected(bat_priv);
-	if (!primary_if || primary_if->if_status != BATADV_IF_ACTIVE) {
+	if (!primary_if) {
 		ret = -ENOENT;
 		goto out_put_mesh_iface;
 	}


And now we are most likely on the right path... primary_if is holding a 
reference to an hardif and therefore also a reference to the netdev. And the 
error handling is only taking care of releasing the reference to the meshif 
but not the primary_if.

I will later send a fix for this with you and 
syzbot+881d65229ca4f9ae8c84@syzkaller.appspotmail.com as Reported-by. Is this 
okay for you?



As said, earlier - I am really thankful that you worked on this. So please 
don't interpret this as a harsh criticism. I just had really big problems to 
figure out what you wanted to say in these paragraphs. I usually prefer 
something which is easier to consume.

Regards,
	Sven
--nextPart3312591.k3LOHGUjKi
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQS81G/PswftH/OW8cVND3cr0xT1ywUCaNgdLwAKCRBND3cr0xT1
y1/bAP9WR/IIecQQNCzjq7Q+Q6kHMUDV3XLmuRMILorEXz7eNwEAzO9erC22pv0F
GNR9W6TiWohnrKG3+DlV70zNZ0eQbw8=
=XxEI
-----END PGP SIGNATURE-----

--nextPart3312591.k3LOHGUjKi--



