Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FAFA22C2B6
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 24 Jul 2020 12:02:57 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 38416801AB;
	Fri, 24 Jul 2020 12:02:56 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [IPv6:2a01:4f8:171:314c::100:a1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id E1FA9800E3
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 24 Jul 2020 12:02:53 +0200 (CEST)
Date: Fri, 24 Jul 2020 12:02:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
	t=1595584973;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Qi1Xg7+lCDQ43oc8evrcUWvEWJ24bkXStMkwGb8Oxp4=;
	b=WKoMO3CbZ7n5NT19kic//AyQNwkz5WYyetFJa3jc8GH5BY8SNXF/LjuQfmUBTIkT8G1/E5
	aZIWcbubU+61amsX9I9FuMApreIYtWSoGM7ojUDBV2adgLEshJa8IgGv173KrolmLtrSR6
	gt8WkGxaEixGOrJe0atvvaRcq1cHnSkgKZGiHD469ZhFkFN6XxasVV4KO69JupxH8w4r7c
	53C7Kms6vfKvOiX46BALzQzl0N/m9fPzej5PuJm6xfmIOnxUBddgVCnFIGlqCalGXm+6FK
	JO4eBpZC+pQLtuCD2fmqyGOETMFULbfj9YvQdmngoCGJCYn/J/gCwNaLc59yUQ==
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: lavincent15@gmail.com
Subject: Re: Batman_V Originator Loop Issue
Message-ID: <20200724100249.GA2357@otheros>
References: <5716273.fDpRzsxG9E@prime>
 <20200708152649.1176.81859@diktynna.open-mesh.org>
 <20200709203344.GB2269@otheros>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20200709203344.GB2269@otheros>
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=linus.luessing@c0d3.blue smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1595584974;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=Qi1Xg7+lCDQ43oc8evrcUWvEWJ24bkXStMkwGb8Oxp4=;
	b=pf+1bviWy0LszmzmSkAxjjEd8aEsl1DhG5px0MHl5TDorXlv3ts+aekDVkJ5Ml9oIngW8a
	6xdQl1SisV0BzZkVjGG4pEof1ZK4mfIda1B1p0Z9PKGDNqxF84NvtXErapi8giQU2HGeR8
	UPFriC3L3XJ95s4KAIanVXDFNaeJZQg=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1595584974; a=rsa-sha256;
	cv=none;
	b=zAZsuDTZrwY2Oh+1nXpM4pWpIg1MyrOCcSp+6WPfmhG/R59kXbBPAKolRYW+jJtlJwbmT8
	6Gtkc3eQ46JpIQsiitkzMW/tJ1N9MGNwpwMkfXUBAFipH3/q4wHnHwhLyL2BW8VXSJge4B
	f/6fcWLvtz6CfoM713yUU6lJHU1A5rQ=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none (invalid DKIM record) header.d=c0d3.blue header.s=2018 header.b=WKoMO3Cb;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 2a01:4f8:171:314c::100:a1) smtp.mailfrom=linus.luessing@c0d3.blue
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: JX7EFIBUWFH2HRFUT3LN2CXO4DSGZ3WO
X-Message-ID-Hash: JX7EFIBUWFH2HRFUT3LN2CXO4DSGZ3WO
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/JX7EFIBUWFH2HRFUT3LN2CXO4DSGZ3WO/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Thu, Jul 09, 2020 at 10:33:44PM +0200, Linus L=C3=BCssing wrote:
> Hi Luke,
>=20
> On Wed, Jul 08, 2020 at 03:26:49PM -0000, lavincent15@gmail.com wrote:
> > Simon,
> >=20
> > When I enable DAT on all of my nodes, the network breaks down. With D=
AT disabled on all the nodes, the network works fine.
> >=20
> > As I develop my project, I would like to take advantage of the mesh w=
ide ARP caching feature DAT. Is there any way I can fix things to where D=
AT will work on my network?
> >=20
> > Thanks,
> > Luke
>=20
> Would it be possible for you to try an older version of
> batman-adv, like v2019.0? There were a few new feature additions
> for DAT after that one.
>=20
> Btw. did you also try disabling aggregation with your batman-adv
> 2020.1 version? That didn't make a difference, right?
>=20
> (disabling aggregation for BATMAN_V in v2019.0 won't make a difference
> as it wasn't implemented there yet, so if you could try that with
> 2020.1 would be great)
>=20
> Regards, Linus

Hi Luke,

Any news, especially regarding aggregation?

Some likely bug regarding the aggregation was found, a
description + potential patch can be found here:

https://www.open-mesh.org/issues/413

Would be great if you could check if this is related to your issue
or not.

Regards, Linus
