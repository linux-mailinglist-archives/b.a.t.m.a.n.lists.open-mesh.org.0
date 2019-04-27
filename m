Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 95153B27C
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 27 Apr 2019 04:38:56 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id B7EA0826C1;
	Sat, 27 Apr 2019 04:38:53 +0200 (CEST)
Authentication-Results: open-mesh.org;
	dkim=fail reason="key not found in DNS" (0-bit key; unprotected) header.d=c0d3.blue header.i=@c0d3.blue header.b="VVEGlGAr";
	dkim-atps=neutral
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a01:4f8:171:314c::100:a1; helo=mail.aperture-lab.de;
 envelope-from=linus.luessing@c0d3.blue; receiver=<UNKNOWN> 
Received: from mail.aperture-lab.de (mail.aperture-lab.de
 [IPv6:2a01:4f8:171:314c::100:a1])
 by open-mesh.org (Postfix) with ESMTPS id 88A7580990
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 27 Apr 2019 04:38:51 +0200 (CEST)
Date: Sat, 27 Apr 2019 04:38:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
 t=1556332731; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=1NHwe7HrI3p7UNha+xhxpLFSGqLgiaqtpP8S+ouwENc=;
 b=VVEGlGAr3jdcJgT8r3I4GPGhF3xBYh9glAXGdpN2uE+fGpQuAsMZ/LY0klVdKskgmWsA2F
 S7D9f2maM5a/QX67NwYrP2AoTT8d0wL+LWaf2tMsfmOWLTx1crf203C0/u5YC+scJsj0cU
 BBh48pxhNh/Mf2t33D7bGPO9GFpUvNs84OvZM3CDqZDPur/iu9bvgb3gNrKd9k1QdKAQ3O
 DWDXiFmGexoEi27YTQ+N27LpdhjMcvwftoQk/clVMOhS3Rr6Jm+03/HZIXdkwTKPT4J7iI
 ZddBRDFAv8qbrPrGHrriy2WdOpD7Agc3r7lCRGyUIuxIR8CtJs7UVmxWeo4ZXQ==
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: Marek Lindner <mareklindner@neomailbox.ch>
Message-ID: <20190427023848.GK6201@otheros>
References: <20190426171231.18156-1-linus.luessing@c0d3.blue>
 <1906609.VMlLDzDynG@rousseau>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1906609.VMlLDzDynG@rousseau>
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue;
 s=2018; t=1556332731; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=1NHwe7HrI3p7UNha+xhxpLFSGqLgiaqtpP8S+ouwENc=;
 b=TiSnSokA7+836NQ7L06wyuOo5axiAavd9e75uLNCdJClpGoUGuoBtGR/CLYmHVSl1IvCpr
 UoKMi9xo3w7UisACRxnqWj5ziaToyhBT7Jn0JYjIKSu4CLKpUvz0+1YvTb/Ah63WqFzmoR
 gp56Cp7pdiUQ0tV/mDhhQbcU6OsEw1j8oMgcKBeQaNTC0m5+hRLR08VWNG83LN0uX2TY3k
 DEMxmy3VVkooKhKACn8rmBs0fsoZcGCmjrKlmrCnR3TIqmHLUclwM4G8ZtCICwYxa+C/mX
 5KngVtD52gCC1x0SS1trZsng8t3poDfgrgXXS8VT72DH9QX2pGCXdkkrOm3/OQ==
ARC-Seal: i=1; s=2018; d=c0d3.blue; t=1556332731; a=rsa-sha256; cv=none;
 b=FUFmzgOzwLIkKT3lhH5QBB+czWv93x6HXAf5MPQlwekfsDv6W8jV9q4eKczk8vC+dU19xa
 Ry0R0x6XTGzWIG9u4KkIGUkhJFzDDmB+tkcj1Qge5vMR+tLcNGWpXwVNvdTPp+GnaJp2aA
 IUfeSvCP8XKZ+eIz/IMtVH1OJa/1xCZXgdpoNrKdEEwL0CfYqhaADeHj2Y/HvHuaXfgsAU
 TR4ZZ4u1b0lbZdzRXsJxhtGIaDBZPoF5Ho0dOGsGSpDCwE3oW2YcSrl/4GWxdDmaxiizs7
 rQtQtKCMjpQxbfddOIohWpyxy/mV1XbuWHRI16SWgrkk4ROOc3g41r6w0MhsqQ==
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=linus.luessing@c0d3.blue
 smtp.mailfrom=linus.luessing@c0d3.blue
Authentication-Results: ORIGINATING;
 auth=pass smtp.auth=linus.luessing@c0d3.blue
 smtp.mailfrom=linus.luessing@c0d3.blue
Subject: Re: [B.A.T.M.A.N.] [PATCH] batman-adv: introduce "noflood"
 broadcast flood prevention option
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
Cc: b.a.t.m.a.n@lists.open-mesh.org
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

On Sat, Apr 27, 2019 at 05:56:03AM +0800, Marek Lindner wrote:
> On Saturday, 27 April 2019 01:12:31 HKT Linus Lüssing wrote:
> > With DAT DHCP snooping, the gateway feature and multicast optimizations
> > in place in some scenarios broadcast flooding might not be strictly
> > necessary anymore to be able to establish IPv4/IPv6 communication.
> > Therefore this patch adds an option to disable broadcast flooding.
> > 
> > Larger mesh networks typically filter a variety of multicast packets via
> > ebtables/netfilter to clamp on overhead. With this option such firewall
> > rules can be relaxed so that such multicast packets are only dropped
> > if they cannot be handled by multicast-to-unicast, for instance.
> 
> Could you outline the use-case for this specific noflood option in more detail ?
> The description above is not entirely clear to me. Especially, the 'might not 
> be strictly necessary anymore' to 'firewall rules can be relaxed'. How are 
> these things connected ? Is this option implemented only, so that some firewall 
> rules don't need to be set anymore ?

The main use-case I currently have in mind is safely enabling multicast in
larger, public mesh networks:

Currently we have firewall rules in Gluon to drop most multicast.
With multicast-to-multi-unicast we could in theory use multicast
without creating broadcast overhead for the whole mesh. However
only until we hit the multicast_fanout threshold. Then things
would get flooded again.

The desired behaviour in this case would be to let multicast packets pass
unless they would be flooded. A firewall does not know which
mechanism batman-adv would choose. Hence this option within
batman-adv to create this desired behaviour.


With "might not be strictly necessary anymore" I ment that if
certain requirements are met that address assignments and address
resolution can now be achieved without needing broadcast flooding.


> What happens if a user enables 'noflood' but does not fall into the 'might not 
> be strictly necessary anymore' category ?

Well, broken connectivity. Typing "ip link set dev eth0 multicast off"
in a setup which still needs multicast to function would be an
analogy then :).

Regards, Linus
