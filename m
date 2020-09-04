Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 3124225E1B3
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri,  4 Sep 2020 21:04:00 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id EF10480606;
	Fri,  4 Sep 2020 21:03:58 +0200 (CEST)
Received: from tinder.fsck.co.uk (kindle.default.co.uk [139.59.163.49])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 288C780038
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri,  4 Sep 2020 21:03:56 +0200 (CEST)
Received: from [192.168.0.50] (unknown [213.205.194.168])
	by tinder.fsck.co.uk (Postfix) with ESMTPSA id 8BFF417F305
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri,  4 Sep 2020 19:03:25 +0000 (UTC)
Subject: Re: Is it possible to send all batman-adv traffic through http proxy
 cache?
To: b.a.t.m.a.n@lists.open-mesh.org
References: <CA+RexfHNV+HY28OiuHKNy4Rn=MM4gxOU0xCiVG0z56dfnv_z6g@mail.gmail.com>
 <20200904184403.GA2391@otheros>
From: "A. James Lewis" <james@fsck.co.uk>
Message-ID: <c746bd54-37d3-cb62-a647-a07176289733@fsck.co.uk>
Date: Fri, 4 Sep 2020 20:03:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200904184403.GA2391@otheros>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1599246236;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=y6YKiO1W9VnQnqt5jBv0UzVS0kYLbIBVJk7CKsIhETk=;
	b=iqPTDa1Wahv+AomNjRXdfyp5QtsjRLyCCKZYBD3CQsfMuf/rv4C9myiO1hFdUgePZJt96r
	vXdf7wrFzTvl/BoPhPM5ezO1frzYvLH2dtGshECbmsUgrCOIfhSQSfZFFuz0hb8w2hMqle
	7zPj2BbPVHzZ3fkN+ilYFisyXNeJYFs=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1599246236; a=rsa-sha256;
	cv=none;
	b=yALv3BpAyvK81Ie+JlFcnC0nVfk82eJHbmfdtV/OR+AWEStunJ1QvQBMLRslbZbb0VYBYN
	8VGh+9GM87TM8rIrH9C8lLV7aimsbYXSLWOWHh57Id+TbTsuoXizgBQ6UGkWUz2VJGrUkh
	jb+xp83zf2wOEeFGWGfoneRZ5Jf68ZM=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of james@fsck.co.uk designates 139.59.163.49 as permitted sender) smtp.mailfrom=james@fsck.co.uk
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: 4GSBJGLHSLWPLJFX4IYFGC5ZPIPH273K
X-Message-ID-Hash: 4GSBJGLHSLWPLJFX4IYFGC5ZPIPH273K
X-MailFrom: james@fsck.co.uk
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/4GSBJGLHSLWPLJFX4IYFGC5ZPIPH273K/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

You could set up a transparent proxy, in the route to the batman=20
gateway,,, you've have to look at the exact details of how the=20
routing/NAT is set up, but I'd bet you could do some pretty clever stuff:=
-

https://tldp.org/HOWTO/TransparentProxy.html

James


On 04/09/2020 19:44, Linus L=C3=BCssing wrote:
> Hi,
>
> On Fri, Aug 28, 2020 at 06:00:59PM -0400, Chuck Ritola wrote:
>> Is it possible to send all batman-adv ethernet traffic through an HTTP
>> proxy cache such as Squid?
> Not really, there are a bunch of headers too many for an HTTP
> caching proxy to work with batman-adv.
>
> I'm wondering, are HTTP caching proxies actually still useful these
> days where all major sides have switched to HTTPS?
>
>> Another consideration was ALFRED but it doesn't appear to be easily
>> integratable with existing software.
> Alfred is more useful for little bits of information, not really
> for complete packet streams.
>
>
> The "best" solution I could think of right now for limited uplink
> bandwidths is hosting content within your mesh network instead.
> Like setting up a Seafile or MediaGoblin, for instance.
>
> Or using P2P technologies, like Bittorrent. Although you might
> need to be careful with this particular one that it won't greedly
> occupy the rest of the bandwidth your uplink has left, if content is
> still mainly shared over the uplink and not within the mesh.
>
> Regards, Linus
--=20
*=E0=B8=84. =EF=BB=9D=E0=B8=84=E0=B9=93=D1=94=E0=B8=A3 =C9=AD=D1=94=E0=B8=
=AC=E0=B9=80=E0=B8=A3* (james@fsck.co.uk)
"Engineering does not require science. Science helps a lot but people
built perfectly good brick walls long before they knew why cement works."
