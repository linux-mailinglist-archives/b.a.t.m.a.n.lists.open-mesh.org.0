Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 708D8280FFF
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri,  2 Oct 2020 11:40:19 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 3524B802F4;
	Fri,  2 Oct 2020 11:40:18 +0200 (CEST)
Received: from mailout03.agenturserver.de (mailout03.agenturserver.de [153.92.196.166])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 05230802F3
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri,  2 Oct 2020 11:40:11 +0200 (CEST)
Received: from mail01.agenturserver.de (mail01.internal [192.168.51.30])
	by mailout03.agenturserver.de (Postfix) with ESMTP id B843E1011EE;
	Fri,  2 Oct 2020 11:40:11 +0200 (CEST)
Received: from XXX.XXX.XXX.XXX (XXXXX.XX [XXX.XXX.XXX.XXX])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: p381503p13)
	by mail.agenturserver.de (Postfix) with ESMTPSA id 03E92617D2;
	Fri,  2 Oct 2020 11:40:09 +0200 (CEST)
Date: Fri, 2 Oct 2020 09:40:07 +0000 (UTC)
From: MK <mailing.m1@kkk-web.de>
To: Sven Eckelmann <sven@narfation.org>, b.a.t.m.a.n@lists.open-mesh.org
Message-ID: <958cd34d-3e84-4e7e-8349-15513a1eba0b@kkk-web.de>
In-Reply-To: <1713150.I2ok1Jj7fX@ripper>
References: <5e4c619d-bdb1-2fa7-57cc-e5d71ea13f08@kkk-web.de> <5095353.evS3lK4dNX@sven-edge> <4fc7de29-7692-58b1-994b-4a3d623c075a@kkk-web.de> <1713150.I2ok1Jj7fX@ripper>
Subject: Re: Does batman choose DHCP server by random?
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Correlation-ID: <958cd34d-3e84-4e7e-8349-15513a1eba0b@kkk-web.de>
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1601631612;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=4TD+7XYx7Fc8dSvzU1LKbBTU5xW/YeMJOqWP665jIIg=;
	b=cSGzpUCP+yrIiqsbs4S0EBEGpwYYSNLzyzzrkTENJbewx9SuzR4EhKzX/NFk40jyr3lzPM
	qYEyJOwfyoKHzrawU35homDEWfkE3TmVXhWeegH+g4UE42al95c7c8IFYZWLbSX87DDGJg
	rvwWS5SECCz3jif4apu8jCGLpekbhCk=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1601631612; a=rsa-sha256;
	cv=none;
	b=WeXEv3zKlj2mAScJGyqaRr5eNWhllPswN+gWOH86xTJ3TVNCvpYP5tQUtUIXsnUDzjCbou
	dfat9wJ1hvSY01S8DuK0yVKJqDVM84AqMZDIbIY9YA5TV6x6K0PgNUEYg6SVprsaFgkuzp
	Swxl/ZEfeJtKjr6W9AYL3idZOGphxfE=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of mailing.m1@kkk-web.de designates 153.92.196.166 as permitted sender) smtp.mailfrom=mailing.m1@kkk-web.de
Message-ID-Hash: 2XX5IBDDDH3XB7TYFSDUNTV4DX6YWN24
X-Message-ID-Hash: 2XX5IBDDDH3XB7TYFSDUNTV4DX6YWN24
X-MailFrom: mailing.m1@kkk-web.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/2XX5IBDDDH3XB7TYFSDUNTV4DX6YWN24/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi Sven.

Thanks for the hints!
I deleted MACs manually. So this is not a bug ;)

Regards
Martin

02.10.2020 11:25:43 Sven Eckelmann <sven@narfation.org>:

> On Friday, 2 October 2020 10:29:16 CEST MK wrote:
> [...]
>> $ batctl gwl
>> [B.A.T.M.A.N. adv openwrt-2019.2-4, MainIF/MAC: fastd_mesh/ (bat0/
>> BATMAN_V)]
>> Router=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 ( throughput) Next Hop=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 [outgoingIf]=C2=A0 Bandwidth
>> (=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1.0)=C2=A0 [fastd_mesh]: 10.=
0/10.0 MBit
>> (=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1.0)=C2=A0 [fastd_mesh]: 10.=
0/10.0 MBit
>> (=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1.0)=C2=A0 [fastd_mesh]: 10.=
0/10.0 MBit
>> (=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1.0)=C2=A0 [fastd_mesh]: 10.=
0/10.0 MBit
>> (=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1.0)=C2=A0 [fastd_mesh]: 10.=
0/10.0 MBit
>> *=C2=A0 (=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1.0)=C2=A0 [fastd_me=
sh]: 10.0/10.0 MBit
>>=20
>> Star means choosen gateway?
>=20
> Yes, this is the chosen gateway. And the "1.0" here means most likely tha=
t the
> throughput to this gateway is for some reason always the same - so it has=
 no
> good way to figure out the best gateway.
>=20
> Please make sure that you either only use links that provide an expected
> throughput for its peers - OR use the throughput_override [1] on interfac=
es
> which cannot provide an automated expected throughput for its peers. Also
> make sure that you don't forget this setting on one side of the connectio=
n.
>=20
> And can you please explain how you were able to get this output without t=
he
> router mac address? Because this is a bug and I cannot reproduce it at th=
e
> moment.
>=20
> Kind regards,
> Sven
>=20
> [1] https://www.open-mesh.org/projects/batman-adv/wiki/Tweaking#throughpu=
t_override
>=20
