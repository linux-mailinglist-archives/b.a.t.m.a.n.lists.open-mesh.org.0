Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C0E0B3D409
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 31 Aug 2025 17:09:18 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 66F1F81B0C
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 31 Aug 2025 17:09:18 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1756652958;
 b=Ek4Xllc1NUi9UwObD8fMQlVfsWOF+Uqw2bSA4t+wFWcW34xBEJ8lug7CZ9jScT9tNwQKb
 xPiqU+65GYMXKzxWAhjDff+m/SM7TB77ejaVDDmxN9g1AFkKxvHl3wDxHpk8XLoPL8jXFiD
 uEhPWIMB7KXUjQF/2SG1FoxQHQzD4sc=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1756652958; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=crdcp8etfaKPi7nRe4woJB6Vpl8jxEOkT9Rr52gb7aY=;
 b=h9RCB69CmRzCFxLchvLExD0SfU0Yq/c2hssW9Rarq+40oh/S/UykvDaXMBEnGQqYWBbl7
 MlcWdrb3d+mmFVJwzsPxCzNmHd/6e01NdDaUfy7orihlmgwO/Ts5Jley02QFXoRhvYhWoGp
 NTMCKopIhin/i4NZQucLyqq317iZ270=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with UTF8SMTPS id 1CA4C8211F
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 31 Aug 2025 17:09:12 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1756652952;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=crdcp8etfaKPi7nRe4woJB6Vpl8jxEOkT9Rr52gb7aY=;
	b=kqQqlhZV13Y3bXbyQ1WL3IzxOEMlCgxFVEtzphXv4oRRJgCt9dAXWuZJC5+MshNJKPIVM/
	7k5MSZzJ3r95nTUbeN9sEvHZ/jKT6yngDDuw0cqf9clx2Nm/Sp/CfrQNc2XnUzVSrvyOmm
	v7S5VXPx2b707rYQfHiIv6OVcrNbwJs=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=JisNLMvg;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1756652952; a=rsa-sha256;
	cv=none;
	b=iuxhN87vVddAJSl0colaDszj55QyQ53aYj2gdkKdjjtj7HWWJnGk8SmGzztLgTpcODxl2X
	3bLkz9Lzeqi263/NeAiGdSjbsrVTMz/nL29wb7f4laXYW7jW6NcDDbuhBfwJdH8mfN9gdQ
	Y5dABtvJRktR4joybdKN1DRHsK/e9Ww=
Received: by dvalin.narfation.org (Postfix) id 3072A20000;
	Sun, 31 Aug 2025 15:09:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1756652951;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=crdcp8etfaKPi7nRe4woJB6Vpl8jxEOkT9Rr52gb7aY=;
	b=JisNLMvgegqS02gjV+g9EXc8bgjlZdE9sARjfDMbMkT5xnm1AZEmM3wb1ykqFd2EWAAgCe
	LA+z4LE7cJcNmBrmR9OsJl5UNqrPxXoDWA97jYwvfu36QBm2heBXPc970cRTacnSS4vixJ
	ECF1b6HEhrLZeegFEBkB0D7GK4W2R08=
From: Sven Eckelmann <sven@narfation.org>
To: netdev@vger.kernel.org,
	Stanislav Fort <stanislav.fort@aisle.com>
Subject: Re: [PATCH net v2] batman-adv: fix OOB read/write in network-coding
 decode
Date: Sun, 31 Aug 2025 17:06:38 +0200
Message-ID: <175665260151.58639.6084959400627208281.b4-ty@narfation.org>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250831145623.63778-1-disclosure@aisle.com>
References: <20250831145623.63778-1-disclosure@aisle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-ID-Hash: ERAMZJT7QM5X3VWF6EYEFLHMEOQVPSJ7
X-Message-ID-Hash: ERAMZJT7QM5X3VWF6EYEFLHMEOQVPSJ7
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2; emergency; member-moderation;
 nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size;
 news-moderation; no-subject; digests; suspicious-header
CC: Marek Lindner <marek.lindner@mailbox.org>,
 Antonio Quartulli <antonio@mandelbit.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>, b.a.t.m.a.n@lists.open-mesh.org,
 linux-kernel@vger.kernel.org, disclosure@aisle.com, stable@vger.kernel.org
X-Mailman-Version: 3.3.10
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/ERAMZJT7QM5X3VWF6EYEFLHMEOQVPSJ7/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>


On Sun, 31 Aug 2025 16:56:23 +0200, Stanislav Fort wrote:
> batadv_nc_skb_decode_packet() trusts coded_len and checks only against
> skb->len. XOR starts at sizeof(struct batadv_unicast_packet), reducing
> payload headroom, and the source skb length is not verified, allowing an
> out-of-bounds read and a small out-of-bounds write.
> 
> Validate that coded_len fits within the payload area of both destination
> and source sk_buffs before XORing.
> 
> [...]

Applied, thanks!

[1/1] batman-adv: fix OOB read/write in network-coding decode
      https://git.open-mesh.org/linux-merge.git/commit/?h=batadv/net&id=d77b6ff0ce35a6d0b0b7b9581bc3f76d041d4087

Best regards,
-- 
Sven Eckelmann <sven@narfation.org>
