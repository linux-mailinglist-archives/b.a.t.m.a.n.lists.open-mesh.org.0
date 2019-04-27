Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 629D8B27E
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 27 Apr 2019 04:53:14 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id B65BC826CE;
	Sat, 27 Apr 2019 04:53:10 +0200 (CEST)
Authentication-Results: open-mesh.org;
	dkim=fail reason="key not found in DNS" (0-bit key; unprotected) header.d=c0d3.blue header.i=@c0d3.blue header.b="HHr3oq4f";
	dkim-atps=neutral
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a01:4f8:171:314c::100:a1; helo=mail.aperture-lab.de;
 envelope-from=linus.luessing@c0d3.blue; receiver=<UNKNOWN> 
Received: from mail.aperture-lab.de (mail.aperture-lab.de
 [IPv6:2a01:4f8:171:314c::100:a1])
 by open-mesh.org (Postfix) with ESMTPS id D642780B56
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 27 Apr 2019 04:53:07 +0200 (CEST)
Date: Sat, 27 Apr 2019 04:53:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
 t=1556333587; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=vTjgvrm5cWiUUDq12ro/2pExd/v4Ed38eX2rdkj/5BM=;
 b=HHr3oq4fqXyDnM4N/TW0Sf42558Ojzl+tjNytCAxD6ru9yUyrWZLqLYuyuGVYTRqUUxO8J
 fpRqLcNBYLTxYnymsdgOBoIlBk8RapSd97JM2PGU6gtcqRw+dHUEyzjR5sFjIIJOOmv64W
 wiMlTpBN/lRs9QgDWLACOLWQcFKQElhmW+ni0UE2ypb3A58AZbYlbeG9ufWOydZV2cxmvr
 9G24JLdpLEfIZVvgvqFLnY1XEnOt7CXMjnPr971QdT0FF07jKxGjuln9rrANJ7/G1/4vW2
 wGz3b2uQZVwdEn2IfyHyPB4UAuP1TotfZn1t1R4Xp+TCR5XEUyRhllSK0IDk4A==
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: Marek Lindner <mareklindner@neomailbox.ch>
Message-ID: <20190427025302.GL6201@otheros>
References: <20190426171231.18156-1-linus.luessing@c0d3.blue>
 <1906609.VMlLDzDynG@rousseau> <20190427023848.GK6201@otheros>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20190427023848.GK6201@otheros>
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue;
 s=2018; t=1556333587; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=vTjgvrm5cWiUUDq12ro/2pExd/v4Ed38eX2rdkj/5BM=;
 b=mRegxHkqZsjCoHoX0TDTa7h3DAySF6NGcgEPgd+yzPLdzVMgSgQRP3OZi+iMHKh7QdZbv5
 Lt77vKO22m35SZ3l0sfeGfUYUq0OFTwUB8upgdz/eakJbvXOJgUnWCqt380zLDOsbCqRVf
 EoS9GqvEO5lMkmb4hNv+URxZ0ZZD/i0wQ2N5gGMZt83ND3DqJQucKtliRnatC5ULInsice
 eioVXgLnvQcRqLeo9klkSw3oP2OW6xjOeENwyW18TM7bBSl7eWbOkiPWmQu+khzunYwcfj
 qlehxjDDC+pXzll7/YU3wiQgMwLsetqFxol2LTwVL/2J5oQV9cTamPm3seTv+A==
ARC-Seal: i=1; s=2018; d=c0d3.blue; t=1556333587; a=rsa-sha256; cv=none;
 b=Jh4YXOdh5uMH1XXkbvxKFrEc47VGcd0+8dZLY++5AQj9+0HVX2E/VP0pqVPAu9/USshLGs
 uebg9U8uKNtBG53Q/vyNO1X0Y+ZMts7vlq25KEMpsbF8wX5GsOpsGcZHYlpN5IwYlb/OhH
 rSxPfDPuKi4O2zsdOoymVwBDP6Q+t2d2eBwY4tg6nTfxqM4accu1AQdDjzhF4Lq5TGQmCO
 Klaac95yPY+1NaJyiEZZPa75nRxd98LboMPqYAmQoN3ecOttPMf9MdYqoalGX7UrtBSFEd
 ewPcYtEAHfytFq5+dUN79tTWn7mudNxskF9q76DdQn7GEuuBLs7raP3Dq7ZpoA==
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

On Sat, Apr 27, 2019 at 04:38:49AM +0200, Linus Lüssing wrote:
> The desired behaviour in this case would be to let multicast packets pass
> unless they would be flooded. A firewall does not know which
> mechanism batman-adv would choose. Hence this option within
> batman-adv to create this desired behaviour.

Or in other words: I want to allow people to experiment with and use
multicast in a variety of undefined applications. But I don't want
them to break things for everyone else (which could happen with no
firewall rules, too many listeners and a broadcast flooding
fallback).
