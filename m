Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id EEF408949D
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 12 Aug 2019 00:10:38 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id CF8608236E;
	Mon, 12 Aug 2019 00:10:25 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de
 [IPv6:2a01:4f8:171:314c::100:a1])
 by open-mesh.org (Postfix) with ESMTPS id 5FBA780777
 for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 12 Aug 2019 00:08:00 +0200 (CEST)
Date: Mon, 12 Aug 2019 00:07:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
 t=1565561280;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Eepxs/SD/+OW7pPbUU3HtiLgEujCTY7C+ZTpuCb62Fg=;
 b=roxWDyuO9mak0hK/vbcR2yNZbe58F5DiCdLb5tNphG7DYWetso/o1ArbaVRt97rjDWE+BD
 N1b+9ptwIw11LKw8q5gxqNvK5oZdQXM67FmjW3NbPtWJ/QYOMK+Rn1WNBFdNu7gfUArerQ
 YoeUZzsRbNZ5qxA/V0xudlPtTd9NSaXQf1pgFKdAodKhsTufWb/3Fj1BFFZH7MtDZwVRpS
 ByK/NADI6awZdLsnWuPcTQl8Gd6tcGCrOwANnm1sS2S73LHfZK6ZcUq2cf6eougGO6RlSv
 EcTAQ6dadVwPJsbM5cyqfmqX3fjOSmGGv1tzmP4Tx5vm0cWCTLeXGucRBtc17A==
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
Subject: Re: [RFC] batman-adv: ELP - use wifi tx bitrate as fallback throughput
Message-ID: <20190811220756.GL2407@otheros>
References: <20190811130705.4544-1-mareklindner@neomailbox.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20190811130705.4544-1-mareklindner@neomailbox.ch>
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue;
 s=2018; t=1565561280;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Eepxs/SD/+OW7pPbUU3HtiLgEujCTY7C+ZTpuCb62Fg=;
 b=E3kmkcp3FmtBJdq/Abz/CMePgqws6+aoCJVJXw7d+l1vM8e26UE5TQzjeNtSAIlf+6Zqwx
 6n8dyzGR/h3XFjAA/2qyA48P4l84Shfm5vlo2egSNykSTAAgJRP2szoR8we3sOoBmvwyNV
 6lwc7gIJuj3s42IgdC6yWbPdcHsAf8V0ti18YbMu+68bJqoc9tEK1NhTUlK10LFLgXhck3
 lqlcSBrpaBZuKc4xRRWOQrp01NmL79vArxMk7j7FhOCHNlJ8dmvtS+juUAr357t4I/5qdh
 8dFPpDbwF/zE4X0FZxPUIjkPP2ryfvof0hdZH4YZm05jCeNmWwWfkrKHSzOxOg==
ARC-Seal: i=1; s=2018; d=c0d3.blue; t=1565561280; a=rsa-sha256; cv=none;
 b=pMJTD3YeZ4av7EOC00mQg8Go9udta03WC18ldsuGWL22D4zjk6lYjD2RgU5GlIf+xyTXUw
 SjC9PYtmXqrhr0dLkJGnqgxXNCRi9s0wEmDeaztjDqHkZrZ2exd+ZXjuPMk9SfDoMO1e/Q
 zWIGIkx+FgKZ9+pjakMrCvBHEN3meQMwPC6GNSgOCNk/7xFgwJqFJ3ibPsEEHBpOzH4BPN
 xLomT1CO7fp+EM3Ak5bfJRhpORnfwrH0IOPyW6RJMP9CYdBec2P7H2eq3DkPgImEQAvbsa
 0KJJeLqtpvvPJ39v/H8XdoFf4TSRgj5dki8KZnI6Jvwbd0k4osTgRtb5xjTOQw==
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

On Sun, Aug 11, 2019 at 09:07:05PM +0800, Marek Lindner wrote:
> From: René Treffer <treffer@measite.de>
> 
> Some wifi drivers (e.g. ath10k) provide per-station rx/tx values but no
> estimated throughput. Setting a better estimate than the default 1 MBit
> makes these devices work well with B.A.T.M.A.N. V.
> 
> Signed-off-by: René Treffer <treffer@measite.de>
> Signed-off-by: Marek Lindner <mareklindner@neomailbox.ch>
> ---

In general, I like this approach. It's simple and roughly matches
our conservative assumptions we used for broadcast packets, too.
That is 3x transmissions per packet.

Lukonin's approach sounds more accurate in theory. But should
probably have a bit more testing and reviewable test results due to
it's slightly higher complexity.

Regards, Linus
