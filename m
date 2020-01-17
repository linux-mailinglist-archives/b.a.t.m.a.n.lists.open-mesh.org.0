Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id B1AF8140C0E
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 17 Jan 2020 15:08:12 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id CA15980905;
	Fri, 17 Jan 2020 15:08:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1579270086;
	h=from:from:sender:sender:reply-to:reply-to:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:in-reply-to:in-reply-to:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=8KcHIh/SCQL/B6J1lgys9NSspY9sCLXj7qU+PAM2LyA=;
	b=ZUUUaZAxIWtyemOyaRbCPpXFs3OwmTWOvwzHQGsLiSni0WoEn12dmw+Z40wdhvmV74khOQ
	MKQzMd8GNKniqovwG0LM9LCGXgIJReym5yr6XmQoT57HycGhJh/kWLzt5vT1iQyd9LFD2R
	8/a1iINlbhiN9c1tK0LJ/6vGJrh4X9U=
To: Simon Wunderlich <sw@simonwunderlich.de>,
 "b.a.t.m.a.n@lists.open-mesh.org" <b.a.t.m.a.n@lists.open-mesh.org>
Date: Fri, 17 Jan 2020 14:07:33 +0000
References: <mailman.6.1579205674.8101.b.a.t.m.a.n@lists.open-mesh.org>
 <2587871.AsJD0l72uE@prime>
In-Reply-To: <2587871.AsJD0l72uE@prime>
MIME-Version: 1.0
Message-ID: <mailman.2.1579270084.32407.b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
From: "Martin, Jeremy J CIV USARMY CCDC C5ISR \(USA\) via B.A.T.M.A.N"
 <b.a.t.m.a.n@lists.open-mesh.org>
Precedence: list
Cc: "Martin,
 Jeremy J CIV USARMY CCDC C5ISR \(USA\)" <jeremy.j.martin33.civ@mail.mil>,
 "Martin, Jeremy J CIV USARMY CCDC C5ISR \(USA\) via B.A.T.M.A.N"
 <b.a.t.m.a.n@lists.open-mesh.org>
X-Mailman-Version: 2.1.29
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
List-Subscribe: <https://lists.open-mesh.org/mm/listinfo/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=subscribe>
List-Unsubscribe: <https://lists.open-mesh.org/mm/options/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=unsubscribe>
List-Archive: <http://lists.open-mesh.org/pipermail/b.a.t.m.a.n/>
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
Content-Type: multipart/mixed; boundary="===============3918423452337693968=="
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

--===============3918423452337693968==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============3918423452337693968==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Return-Path: <jeremy.j.martin33.civ@mail.mil>
Received: from USAT19PA20.eemsg.mail.mil (USAT19PA20.eemsg.mail.mil [214.24.22.194])
	by open-mesh.org (Postfix) with ESMTPS id 209B28001E
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 17 Jan 2020 15:08:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=mail.mil; i=@mail.mil; q=dns/txt; s=EEMSG2018v1a;
  t=1579270082; x=1610806082;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=8fRQqyLeBR5wbQzVTI3szB/Qi1v39He+z6abdKveWqk=;
  b=rkPq+zREVlc6ARsHSuZBXjAc60pTafFGOC8Ylyr1BrrsWgiZoa0vIU4P
   vXQQf6PSzcsqO/aKBTAvgBTjtXhUX2bApZd6pRg7r2c6trnTlKaJRzQeC
   /mDcqfDIUtcV8kMFs3DQOHFRX3pu6xhEtQSnjjHLS2r8gHaQjRARsJeV3
   D9zhN/D5KN0vpvJ3yNZg78zJqRGGuv+0PQ7ChdhKYao8jOZ97u8z5Aemp
   sHf7fOHxqxaWlaeLI7LmauXsxG2+D2Z9Nhzt1wq49UIYpeLZwp0LrtAaA
   y9l8APDApqJ29lrunQqe38vVzWauTGJMhQ2zps9LHibk6hxSVJoaUKw0H
   g==;
X-EEMSG-check-017: 70789400|USAT19PA20_ESA_OUT01.csd.disa.mil
X-IronPort-AV: E=Sophos;i="5.70,330,1574121600"; 
   d="scan'208";a="70789400"
Received: from edge-cols02.mail.mil ([131.64.104.102])
  by USAT19PA20.eemsg.mail.mil with ESMTP; 17 Jan 2020 14:07:58 +0000
Received: from UCOLHPMO.easf.csd.disa.mil (131.64.104.43) by
 edge-cols02.mail.mil (131.64.104.102) with Microsoft SMTP Server (TLS) id
 14.3.468.0; Fri, 17 Jan 2020 14:07:34 +0000
Received: from UCOLHPUH.easf.csd.disa.mil ([169.254.8.96]) by
 ucolhpmo.easf.csd.disa.mil ([131.64.104.43]) with mapi id 14.03.0468.000;
 Fri, 17 Jan 2020 14:07:34 +0000
From: "Martin, Jeremy J CIV USARMY CCDC C5ISR (USA)"
	<jeremy.j.martin33.civ@mail.mil>
To: Simon Wunderlich <sw@simonwunderlich.de>,
	"b.a.t.m.a.n@lists.open-mesh.org" <b.a.t.m.a.n@lists.open-mesh.org>
CC: "Martin, Jeremy J CIV USARMY CCDC C5ISR (USA) via B.A.T.M.A.N"
	<b.a.t.m.a.n@lists.open-mesh.org>
Subject: RE: [Non-DoD Source] Re:
Thread-Topic: [Non-DoD Source] Re:
Thread-Index: AQHVzQoSZxfhBEREXku3wMYM49if4Kfu5EiA
Date: Fri, 17 Jan 2020 14:07:33 +0000
Message-ID: <766B88D91EC93C4C8C7E844717CBB21F0DF4B39A@UCOLHPUH.easf.csd.disa.mil>
References: <mailman.6.1579205674.8101.b.a.t.m.a.n@lists.open-mesh.org>
 <2587871.AsJD0l72uE@prime>
In-Reply-To: <2587871.AsJD0l72uE@prime>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [131.64.22.15]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1579270082;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=8fRQqyLeBR5wbQzVTI3szB/Qi1v39He+z6abdKveWqk=;
	b=4D9Vwg85kxFOoJ3bQ+A58D7zf10Bk3YSxGH6MDXDnddy9inVwlzdL3ETZ6IlX5g5QNLrhb
	usTTXRpJGdHJtpB8rOtWZS6/tyA1kTIUmH0ypISyq2TJPl/rRfuKZV/6L55jeAhHr0Pst7
	VjaGkXDGeksmjUCM1EAw+E1wWiqyt6Q=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1579270082; a=rsa-sha256;
	cv=none;
	b=f8rReFO7WxdsV/YVXVdXHrQtnr28AIpvrvksGLDNH7Ws57GyQtKAweChEEFgQ3fW7gIB5M
	z6Q5ieJycCr74gvePBhu99Ss8CicNpU1dTbrMwZZAfv1gqs46BX3ro2NTqGLq3tdeG7/uR
	gkmoJ9oJv4692zB5JRbUEjrvaf0KpyQ=
ARC-Authentication-Results: i=1;
	open-mesh.org;
	dkim=pass header.d=mail.mil header.s=EEMSG2018v1a header.b=rkPq+zRE;
	spf=pass (open-mesh.org: domain of jeremy.j.martin33.civ@mail.mil designates 214.24.22.194 as permitted sender) smtp.mailfrom=jeremy.j.martin33.civ@mail.mil

Simon,

    Thank you very much for taking the time and answering my questions. Gre=
at work on Batman, the little I've seen of it, it seems to be a very well m=
ade routing protocol.=20

Best,

Jeremy Martin=20
Office: (443)-395-7475
Jeremy.j.martin33.civ@mail.mil
Radio Frequency Communications Division, RF Modeling and Simulation Branch
C5ISR Center, Space and Terrestrial Communications Directorate   =20



-----Original Message-----
From: Simon Wunderlich [mailto:sw@simonwunderlich.de]=20
Sent: Friday, January 17, 2020 2:45 AM
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Martin, Jeremy J CIV USARMY CCDC C5ISR (USA) via B.A.T.M.A.N <b.a.t.m.a=
.n@lists.open-mesh.org>; Martin, Jeremy J CIV USARMY CCDC C5ISR (USA) <jere=
my.j.martin33.civ@mail.mil>
Subject: [Non-DoD Source] Re:

Hi Jeremy,

On Thursday, January 16, 2020 9:06:50 PM CET Martin, Jeremy J CIV USARMY CC=
DC C5ISR (USA) via B.A.T.M.A.N wrote:
> My/My Teams intent is to have 4 radios in total, 2 on one pc and two=20
> on another. Our plan is to have Batman take care of the switching=20
> between which radio to use in order to transmit data between these two=20
> PC's. One radio is high frequency radio (60 Ghz) and the other would=20
> be a lower frequency radio and the idea is to have batman switch=20
> between these radios once the higher frequency radio is dropping between =
a certain TQ.

BATMAN will switch by default when one link has a better TQ (towards the fi=
nal
destination) than the other link, so I believe this should happen by defaul=
t.

> My
> primary questions regarding this scenario would be, 1) Are there=20
> specific standards the radio chipsets would need to support in order=20
> for them to work in this scenario?.

Normally you would want IBSS mode or 802.11s mode work. BATMAN can also wor=
k in AP/Sta mode, although the packet loss counting may be biased since bro=
adcast handling works a bit different than in IBSS/11s. But for point-to- p=
oint links it might just work.

> 2) Would Batman-adv be adequate enough to be able to handle a 1Gb/s=20
> data transmission and be able to swap accordingly to the lower=20
> frequency radio?

If your radio and CPU are powerful enough, batman-adv is able to handle it,=
 yes.

Cheers,
      Simon

--===============3918423452337693968==--
