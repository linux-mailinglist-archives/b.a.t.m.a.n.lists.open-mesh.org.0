Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E9BA617BE
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  7 Jul 2019 23:47:53 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id AD76B817E1;
	Sun,  7 Jul 2019 23:47:48 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [138.201.29.205])
 by open-mesh.org (Postfix) with ESMTPS id D04AE80A39
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun,  7 Jul 2019 23:47:45 +0200 (CEST)
Date: Sun, 7 Jul 2019 23:47:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
 t=1562536065;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=WZPLpJi42xm9vnzi45SZ1zPvvpjKTa189YnVLxT4MLY=;
 b=OfWRL0z436TkJKOwWfb9GdY8pwL2eJNW0gKtJrIO8OD34WZ3h6iIiZTAnMOyrT7eD2fumU
 2Ncrx4qVC0wk7IdmO0A5PRxGV9tNm4bZaJ4kltWhkGWTEcoAcrSCHWaFygTXo3Et3+YwiE
 RO9z0gTGb/f2kP1jzdxbCFJUOMOnp9UCdhL+/SYkDevTCmWVD9//33nFhlLBlfueK3YwF2
 rDlyW9nazKM/xtef0SD5bixSSxJIKJh1L5NhEpLLDY6oWdKyznqTuNyIFjbTDDdFDsn5jz
 pxHfxmaHNDCY4kKMoC3WQipRf4gQpNdx3GVUhVJxxCJsX6dRbpZtdSXnWMbwMw==
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
Subject: Re: [PATCH] batman-adv: Fix deletion of RTR(4|6) mcast list entries
Message-ID: <20190707214743.GA2466@otheros>
References: <20190707210457.20892-1-sven@narfation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20190707210457.20892-1-sven@narfation.org>
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue;
 s=2018; t=1562536065;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=WZPLpJi42xm9vnzi45SZ1zPvvpjKTa189YnVLxT4MLY=;
 b=oxxr0Rs7EmuyvdIdeJJ/MVh7TLh+Uw5kTqQsM/goqxLIVAhIa3aXQJgEE51LkSMVym7TIy
 522bZ3iZIIc4FIV10u6oyJZ+pzM4/RpxOig08PlqQW8tuORXmYoCna3TN43lVfsjcoUMWW
 1Js1bGXGriPuynPdRZmFrpVZCsI+hFkz/G7hABiAW2GBTMm8Iv75nyqtUo3rTeQnxXfHu4
 wF/2MQIWfROwVkpG0ck2CDXkVWFAzQA8D0bXr2K3wt2sHI9bdnl60ooDIKEwIz47anHPKB
 Ary4gGJP936ql432Ye6NVCJxh00PYqVjlRutCzvc9fjeyoQWJd2Y5fw4idazDA==
ARC-Seal: i=1; s=2018; d=c0d3.blue; t=1562536065; a=rsa-sha256; cv=none;
 b=dKd4Y4ssVO5VlLJ4j+471E+W6XUQVV1vO/zuYGHMe5k1rxZ8g4uWflr16Lp2gxnMfeDbtK
 84KbddQaqA0zM3t2WVwQ4GbyupVGYEjxQ+Mawb04Umz6x2b/NxAGPbZDnsSks3deLSDWPG
 Eay1lyFYbMLm9SrgbrTLPdVSL5eRoctw0bXrjn4iLxFuntIXW7WvNBxuNrxWB4g/fyZhCC
 pgO0ViVupmQWWEw5Rio0xadDtC1abcng3WQK8BRJ4t43dPaJereEjAklYSY5yR2KeWgQwr
 wpvcLghL3VzoMYEug8Fs9j5fI1fIml3RtYRsbPxHmNE4S5lHj510o733DT/Ulg==
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=linus.luessing@c0d3.blue
 smtp.mailfrom=linus.luessing@c0d3.blue
Authentication-Results: ORIGINATING;
 auth=pass smtp.auth=linus.luessing@c0d3.blue
 smtp.mailfrom=linus.luessing@c0d3.blue
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 2.1.23
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
List-Unsubscribe: <https://lists.open-mesh.org/mm/options/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=unsubscribe>
List-Archive: <http://lists.open-mesh.org/pipermail/b.a.t.m.a.n/>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Subscribe: <https://lists.open-mesh.org/mm/listinfo/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=subscribe>
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

On Sun, Jul 07, 2019 at 11:04:57PM +0200, Sven Eckelmann wrote:
> The multicast code uses the lists bat_priv->mcast.want_all_rtr*_list to
> store all all originator nodes which don't have the flag no-RTR4 or no-RTR6
> set. When an originator is purged, it has to be removed from these lists.
> 
> Since all entries without the BATADV_MCAST_WANT_NO_RTR4/6 are stored in
> these lists, they have to be handled like entries which have these flags
> set to force the update routines to remove them from the lists when purging
> the originator.
> 
> Not doing so will leave a pointer to a freed memory region inside the list.
> Trying to operate on these lists will then cause an use-after-free error:
> 
>   BUG: KASAN: use-after-free in batadv_mcast_want_rtr4_update+0x335/0x3a0 [batman_adv]
>   Write of size 8 at addr ffff888007b41a38 by task swapper/0/0
> 
> Fixes: 0a7733468f95 ("batman-adv: mcast: detect, distribute and maintain multicast router presence")
> Signed-off-by: Sven Eckelmann <sven@narfation.org>
> ---
> Cc: Linus Lüssing <linus.luessing@c0d3.blue>
> 
> See https://www.open-mesh.org/issues/395
> ---

Acked-by: Linus Lüssing <linus.luessing@c0d3.blue>
