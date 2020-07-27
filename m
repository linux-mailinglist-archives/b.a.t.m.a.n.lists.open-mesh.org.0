Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id AF0BC22E9DD
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 27 Jul 2020 12:18:23 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 7647A80669;
	Mon, 27 Jul 2020 12:18:22 +0200 (CEST)
Received: from mail193c50.megamailservers.eu (mail200c50.megamailservers.eu [91.136.10.210])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 2A0B48003C
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 27 Jul 2020 12:15:19 +0200 (CEST)
X-Authenticated-User: sagermail@sager.me.uk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megamailservers.eu;
	s=maildub; t=1595844918;
	bh=QHwdQmXxjcMP0MKVgPiYeOpzbCGonCVodvU/xpfHTak=;
	h=To:From:Subject:Date:From;
	b=HwndzhxwtGr7XRkR6vIYS4YMvsTnH44FT8czGxHgWqFkxxrJnkNQ6p2avgv2x+/3O
	 c15SB8ZIVn+Tt3XSHESYsX/wRTmKpHhdQSWoBiiuv7g4r4ebWwneuqV/eo5Lz/lT/T
	 XxkX6QZ/IZRCtxaBCLokXQhQ7B3kAUK1hIBg/8uI=
Feedback-ID: john@sager.me.u
Received: from mainserver.wc (97.83.2.81.in-addr.arpa [81.2.83.97])
	(authenticated bits=0)
	by mail193c50.megamailservers.eu (8.14.9/8.13.1) with ESMTP id 06RAFG1c028275
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NO)
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 27 Jul 2020 10:15:18 +0000
Received: from [2001:8b0:cbe3:0:7987:f1cd:3396:9cb6]
	by mainserver.wc with esmtp (Exim 4.86_2)
	(envelope-from <john@sager.me.uk>)
	id 1k00A7-000644-Tu
	for b.a.t.m.a.n@lists.open-mesh.org; Mon, 27 Jul 2020 11:15:15 +0100
To: Batman_adv list <b.a.t.m.a.n@lists.open-mesh.org>
From: John Sager <john@sager.me.uk>
Subject: Delay starting TCP connections across the mesh
Message-ID: <b2fd830e-1ffd-9575-a406-941d38d6cd7d@sager.me.uk>
Date: Mon, 27 Jul 2020 11:15:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
X-CTCH-RefID: str=0001.0A782F15.5F1EA936.0035,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-VOD: Unknown
X-CTCH-Spam: Unknown
X-CTCH-Score: 0.000
X-CTCH-Rules: 
X-CTCH-Flags: 0
X-CTCH-ScoreCust: 0.000
X-CSC: 0
X-CHA: v=2.3 cv=cM2eTWWN c=1 sm=1 tr=0 a=dws6IJh5fU+Ftmrx3Eq8JA==:117
	a=dws6IJh5fU+Ftmrx3Eq8JA==:17 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
	a=_RQrkK6FrEwA:10 a=3_3BVZT3fYrx7cDZxwkA:9 a=QEXdDO2ut3YA:10
	a=pHzHmUro8NiASowvMSCR:22 a=xoEH_sTeL_Rfw54TyV31:22
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1595844920;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=NDeanPYlJrD0Fb6yGn3qV9A4pTfzI15Wt0A61xeAPxY=;
	b=HFThmfEMAizB3HTKDtf9SkZ0H2Iy9nW8/O0LlYMG45VDOcwsXu39658pZG1FY36bFOrrkl
	UYQ8dKO5ujRDdaeGxwoouETeoCWb9F9J6D+cTkFn616rZm+a2xdq5KKfzXWXilt3QEJzaA
	Ux/QMishNVX01UqS/vfG6Rt4cRZI0hw=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1595844920; a=rsa-sha256;
	cv=none;
	b=D1vKxsCJAXjIKQPu8FmrFgsZgylpvKYTomNI01Ln1yPPQF1vTuXmhR7DtZwdxwD+4+ps88
	78IrD8gz/v9yDl/cQfxpurnhTUZcHQnOvovK0eY4yKSIKv0NEsVkczimx1dCd0NlSY/EpG
	MzpTrJwY/V420zMrE4n8hhSZKlL73eo=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=megamailservers.eu header.s=maildub header.b=Hwndzhxw;
	spf=none (diktynna.open-mesh.org: domain of john@sager.me.uk has no SPF policy when checking 91.136.10.210) smtp.mailfrom=john@sager.me.uk
X-MailFrom: john@sager.me.uk
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: WLJUYYW3IR7JLXHMYZRH7KIPVNVPZLAT
X-Message-ID-Hash: WLJUYYW3IR7JLXHMYZRH7KIPVNVPZLAT
X-Mailman-Approved-At: Mon, 27 Jul 2020 10:18:20 +0200
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/WLJUYYW3IR7JLXHMYZRH7KIPVNVPZLAT/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

I'm experimenting with a mesh network in the house. It has 4 nodes running 
batman_adv (BATMAN_IV) on stock OpenWrt 19.07.3 (i.e batman-adv-2019.2) on 
TP-Link WR902AC devices. The nodes mesh on 'mesh point' links on 2.4GHz and 
one node connects to the home wired network.

In the scenario, I have a laptop connected to the AP on one of the mesh 
nodes (not the gateway). I make a ssh connection from this to a host on the 
wired network. There is a consistent delay of about 8 seconds before the 
'password' prompt comes back from the remote host.

I rebuilt OpenWrt 19.07.3 for that device, and ticked all the debug options 
for batman-adv. Running tcpdump on both soft and hard interfaces, and 
trace-cmd to capture the debug info, I find the following:

The DNS request and response for the remote host name, and the consequent 
ARP request and response go through within milliseconds. However the TCP SYN 
is received by the bat0 interface but is not forwarded on the mesh0 
interface. SYN re-sends after 1 sec, then 2 sec are not forwarded either. 
Only the 3rd re-send (after another 4 sec) gets forwarded and then the ssh 
session proceeds normally.

Looking at the code, and after adding extra batadv_dbg() calls, I discover 
that the 'orig_node' returned by 'batadv_transtable_search()' on the dest 
address is NULL so the SYN gets thrown away by 'batadv_send_skb_unicast()'.

It is only after receiving an OGM message with a TT update for the remote 
host MAC from the gateway node that the local translation table gets 
populated with the remote host's MAC. I should say that I've set the 
'orig_interval' to 3000 to reduce batman traffic, so that probably has an 
effect on the delay.

I do wonder why the ARP response is not used to populate the translation 
table immediately, as an ARP response is always going to be followed 
immediately by returning IP packets. The ARPs are snooped for the 
distributed ARP table anyway so why not use that information for the 
translation table too?

regards,

John Sager

