Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C3683CE29
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 11 Jun 2019 16:12:24 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 5E79982722;
	Tue, 11 Jun 2019 16:12:20 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [138.201.29.205])
 by open-mesh.org (Postfix) with ESMTPS id 1FC4B80729
 for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 11 Jun 2019 16:12:17 +0200 (CEST)
Date: Tue, 11 Jun 2019 16:12:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
 t=1560262336;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=hYFMPW/tLADA5zDcEbXUu+KUT0MtjoTU1dtFEbPNvP8=;
 b=M+R52z12zVdURnMOfiNyVg/w0t7KqoUI7ENRE55c3Tyh4u5Dfbco85Tym6le4mppdn3IIF
 3wmz59pXH59q4OW/P15S+Zj+xRy+XKp3J9DkDy2B4epfdRaIZOqMfhBbhYqESl/pbNq3tc
 g1xUHdg3GdBxPOUJxlOjCQLox+sQzY1PStJJEyF2XmHSxeR5KcS1bOuZLSOnSPbKmAf5dn
 7ehfJGhiS3E4ZTm2HoSG5LU4PfHsj/ni3s1oLceO7ehVaJlcS/zVM0gJGy6+RUTc6rFwNw
 SPV+gTq6EeekgXC7Y5kjyvzOhxx1PectNvHgrJV1XY//YBlSWLdSAWOwFzjF2w==
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: Sven Eckelmann <sven@narfation.org>
Subject: Re: [PATCH v4 1/2] batman-adv: mcast: detect, distribute and
 maintain multicast router presence
Message-ID: <20190611141214.GA2877@otheros>
References: <20190610004535.13725-1-linus.luessing@c0d3.blue>
 <1984348.Q8u5oXqQmF@sven-edge> <20190610231414.GA10498@otheros>
 <1705254.clgQh6sisM@sven-edge>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1705254.clgQh6sisM@sven-edge>
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue;
 s=2018; t=1560262336;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=hYFMPW/tLADA5zDcEbXUu+KUT0MtjoTU1dtFEbPNvP8=;
 b=Ces+jlEyBtd8zPWLZNZUKFJ/Y9D3AiduJDt+mZ1aGpqGHtpi337v94rHmgDj9KYmejCV8j
 hyzAg9/nXDkLM+7hP3qkN2lUhP1Lpejpl3xcomZUYlhzseGNrcXNz91FKbWZNSDs00rxGK
 oAeHXq956AjS+BfF2VM1lXYS5YgpQy+7jG0uo8qoXo8/vpOeOiN2vDKslgxjw8n7p7vWaw
 SbbZpJSL6Ttum3QgiGyMWx8jv5UD0BA0mZTNAo5DjmNaDwoeUH2hiwQguEuPn74UIeDEOT
 gwMHt4FKgSKX3xdYd3GNqrmS9U72sIWG8yMKo60fgOIhrvyddzUXm4YQxjFprQ==
ARC-Seal: i=1; s=2018; d=c0d3.blue; t=1560262336; a=rsa-sha256; cv=none;
 b=HqwUo1ubBBDDKLttjkJZbd8VbjH4xnha8jzaPw9iz0pghbwoffBmpFzmGXZklErMYFzs2c
 r6RFnzgDnLk6yWnHMDeVe2CzZVPSJT+fWszIHNckYxIdBHtMQbIzssJvksO8BDWBPcNQyB
 5tMjnl75pHqwZNPFr3EwSePdi2e6uscoNxmB00Hy5H/JwU2fTOsJI2jRFLhGuUlg4Eq7ww
 5Jq2GFhTzsO7UqCBzDfyHDo+ZfwIw7wg1KeD9CstE97J3bT2Eb4HeQsFlp+9ZRJ3aP21Cl
 VLki/xYcBYvUv6KxzqUC7tsWHKBkobQHyxszetpfVZ55gJZSNNnLwBhBs/koeA==
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
Cc: b.a.t.m.a.n@lists.open-mesh.org
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

On Tue, Jun 11, 2019 at 07:44:12AM +0200, Sven Eckelmann wrote:
> On Tuesday, 11 June 2019 01:14:14 CEST Linus Lüssing wrote:
> > I'm currently unsure when we would need that. Are you suggesting
> > to interpret it that way, just in case we might need it some day?
> > 
> > Note that this would also be a "soft compatibility break". So old
> > nodes would still interpret 0x1f the same way as 0x07, meaning
> > they would send all multicast traffic to nodes announcing either
> > 0x1f or 0x07. It'd be a "soft break" because it wouldn't cause
> > packet loss, old nodes would just overestimate.
> 
> I am just unsure how we could/would interpret this in the future. Not that we 
> need support for it in the first version.

Ah, okay. Yes, then I think I would prefer to interpret WANT_ALL_IPV{4,6} +
WANT_NO_RTR{4,6} as WANT_ALL_LL{4,6} in the future (just, but all
link-local).

I'll change the code in PATCH 1/2 to always unset WANT_NO_RTR{4,6}
in the transmitted TVLV if WANT_ALL_IPV{4,6} is set for now, to allow to
reuse and interpret it that way in the future.


(An alternative would have been to keep it as is and adding
another flag in the future if the use case for all-link-local-only
came up. The advantage of transmitting WANT_NO_RTR{4,6} independent of
WANT_ALL_IPV{4,6} would have been some additional (debug) information.
But on the other hand, adding yet another flag in the future would just
get more messy/confusing.)
