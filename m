Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D48CA4A43
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  1 Sep 2019 17:52:46 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 24D6A824BD;
	Sun,  1 Sep 2019 17:52:43 +0200 (CEST)
Received: from gourmet8.spamgourmet.com (gourmet.spamgourmet.com
 [216.75.62.102]) by open-mesh.org (Postfix) with ESMTPS id C12CF8070E
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun,  1 Sep 2019 17:52:39 +0200 (CEST)
Received: from spamgourmet by gourmet7.spamgourmet.com with local (Exim 4.80)
 (envelope-from <batman.mexon@spamgourmet.com>) id 1i4S9e-000381-8I
 for b.a.t.m.a.n@lists.open-mesh.org; Sun, 01 Sep 2019 15:52:38 +0000
Received: from exon.name ([209.97.141.204])
 by gourmet7.spamgourmet.com with esmtps
 (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256) (Exim 4.80)
 (envelope-from <batman.mexon@spamgourmet.com>) id 1i4S9d-00037p-Tc
 for b.a.t.m.a.n@lists.open-mesh.org; Sun, 01 Sep 2019 15:52:38 +0000
Received: from [IPv6:2003:fb:ef05:dd26:e7:6a8e:13de:35d8]
 (p200300FBEF05DD2600E76A8E13DE35D8.dip0.t-ipconnect.de
 [IPv6:2003:fb:ef05:dd26:e7:6a8e:13de:35d8])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: mat)
 by exon.name (Postfix) with ESMTPSA id 531C13F681
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun,  1 Sep 2019 16:52:36 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=exon.name; s=mail;
 t=1567353156; bh=GlLXZB3uTFBPpNbC7c2+PoSGEN4OxzBOvB2/Kdxe//g=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=UME9PeVPcCRJsfWMWok8aUowYnE3TEqYvlj+cCY1NeSB0xsd7ruoT2f0rjjUFEbZ4
 +lmeQANZm8hO5lMh0skPbeRF5muZKCff6hB5FTNdsOw7SBZ7vTvfSaeSR8OsQ/piPE
 IzWt2AsnCobWgOP1em/TcqUAQ/ca8ZAH81hfj+YdY7qfkaxm0U1Rais0/2XfW7gqs8
 oUfma+SyE388EenJAe7ZUyQ243dzFZ1T7IyXUtpdpczVbMvLxokplMh+1dON6EE27v
 r98Eyn/R3mqRvavH4sq5r1PddzOgnAsgSzbXwdCRKzRvqzvZ/P+w+erft2lFlrz2Hy
 oVB5afuGEouAQ==
Subject: Re: How to give stable MAC address to batman-adv device?
To: b.a.t.m.a.n@lists.open-mesh.org
References: <3af7c293-5b8c-535c-2049-eef51b36da81@exon.name>
 <2134316.j67oi4WX0K@sven-edge>
From: batman.mexon@spamgourmet.com
Message-ID: <67a3f347-0734-1a63-b858-1c80b0774322@exon.name>
Date: Sun, 1 Sep 2019 17:52:35 +0200
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <2134316.j67oi4WX0K@sven-edge>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US
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

On 2019-09-01 08:42 , Sven Eckelmann - sven@narfation.org wrote:
> On Saturday, 31 August 2019 21:33:09 CEST batman.mexon@spamgourmet.com wrote:
>> I'm trying to use batman-adv to fix wifi signal problems with a few
>> Raspberry Pis.
> batman-adv doesn't change your wifi signal. So I am assuming that your main 
> access point wasn't able to cover the whole area and so you use multiple 
> accesspoint and use mesh as a backbone between them.


Not quite.  It's just that the most distant raspberry pi can't reach the
main access point, so I want it to automatically find a closer raspberry
pi to act as a relay.  But yeah you're right I'm not trying to improve
the signal itself, just work around what I've got.

>
> [...]
>> Is there a way to force batman-adv to use a stable MAC address?
>     ip link set dev bat0 address XX:XX:XX:XX:XX:XX
>
> There might be a configuration option in whatever configuration interface you 
> use to bring up the interfaces.
>
Hey yeah, that's exactly what I'm after, thanks!  I'm not sure I've
quite got it working exactly right, I'll have to see if leases still get
renewed correctly.  But that command is definitely what I needed.

