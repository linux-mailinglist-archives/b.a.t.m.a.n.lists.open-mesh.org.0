Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B8C0266166
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 11 Sep 2020 16:43:08 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 4D52A80411;
	Fri, 11 Sep 2020 16:43:07 +0200 (CEST)
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com [IPv6:2607:f8b0:4864:20::242])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 43F4E80411
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 11 Sep 2020 16:43:04 +0200 (CEST)
Received: by mail-oi1-x242.google.com with SMTP id a3so9675783oib.4
        for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 11 Sep 2020 07:43:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=netter-io.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=MiABjT1jZ4SExbk6/I/hQ0Ze3DsfhvEEIX9/+pTlPKw=;
        b=Xfvoy0Quq8s4zKAw6158qvfCQ/LqpwsXl1WGNIS4gG2/WaNNnLEiGbOPoZNTu9saHt
         CYP+eA/U8XEbNeeYqgcekPWMRpNsl4IXAZ6A1NwTGFCKmdr7SUC5s9j/B61oEChZFDml
         vLIKhkio96acshWiSzYjE3d9qTvG9BEUA12CKmS6fcs8ltKu6T/Dlln4J2vriIbjf+fG
         1UVPnkJAqWU9QKpq0qUvDlF0q+WZd/KyG4+tiwgSVrDtfEIZivxh9NM1Kq8U56Y0l/Y2
         QzBrs4MEjjEW3dB/dXJEUA5UF/8JZpzL20nRB92h9eKy2Uz9e3wPpVGPUwVOgwr8lDCB
         MVLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=MiABjT1jZ4SExbk6/I/hQ0Ze3DsfhvEEIX9/+pTlPKw=;
        b=fWfLWQqSuxzi17KUWdTXHmHd8QN5ENLrrgjJnZntTz8n3we+DcfgRuRXEcHWR7aHpA
         9Bo5S2XmdI6DS66OQSFZeZKIVTATiRjudu5K4DbtzTuUWNrjzWICsNI+yVLUEL/5/PwN
         Ekk1kpfswMJzgadOTNlZgA1+gI9TNlwMTizPdrk6TOL4WNNWELk3U1tNzO0xGjL0v8mr
         7ozfSFZaT1j9K6XoSCXGivEDqMO/AmWKlTbHgos18gd0qKaRiIPERMSNhiO9mv5QuBHi
         jepWaqQPIK9LLVqI8fmcqyTDym9q/pYeuZEg0jbDldaQ3aSI2+8clAkRCRLLJuQnV2so
         8ZAA==
X-Gm-Message-State: AOAM530SLM8J2/1ITZWx4j7Xlry54RwZzhM2lo9BgvX2KbXpFHsU161W
	Q6ueNnF2YJ4bXgL0MWWm7WRFqTBFN0dMx/6P2IpOWaZfPiiKHVVL
X-Google-Smtp-Source: ABdhPJzuQx4eIBOCg+u6zU0Y8J+vSr/xNOtQV31VkiiWbBHjhAdejpqlTLrvrVg5tRkSKmypZeQehpWfIgz1d1hZnFQ=
X-Received: by 2002:aca:af94:: with SMTP id y142mr1343245oie.141.1599835382868;
 Fri, 11 Sep 2020 07:43:02 -0700 (PDT)
MIME-Version: 1.0
References: <CADJ1cURtCsWdy6rovfgb_XPhbsTc5epCv3yLgRCLcOVjfNSFdw@mail.gmail.com>
 <38142483.hY40ij8To5@ripper> <CADJ1cUQZ2YqFSVj=SNhPcC_sOjy+AkrEr=dQ=8T_0HegFou=Hw@mail.gmail.com>
 <4337705.76P5Ur0oAU@sven-edge>
In-Reply-To: <4337705.76P5Ur0oAU@sven-edge>
From: Alessandro Bolletta <abolletta@netter.io>
Date: Fri, 11 Sep 2020 16:42:52 +0200
Message-ID: <CADJ1cURdGjW=q91qFw8vCBs38pAPnBp9=e5qS1WgzV7w06Onwg@mail.gmail.com>
Subject: Re: Passing VID-aware ethernet frames on plain batX interfaces
To: Sven Eckelmann <sven@narfation.org>
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1599835384;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=MiABjT1jZ4SExbk6/I/hQ0Ze3DsfhvEEIX9/+pTlPKw=;
	b=ncNh9UyV+kuBiheJw7VUMufNQae0QBldwG1ABtB5GVmZiHIEd/jlj8qeuj0WwwwjzZkhU3
	+V0ASQfSSOtmHufccXPb3MNtVRFGEx92YOhypv7ZjY5hGQ3bhRErukLiHhiyzBcLgMwWJq
	KHRnpycpXepUfWgj03y1ooo7Gdb54No=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1599835384; a=rsa-sha256;
	cv=none;
	b=Q7JdvzLKsBh9zMnIO7muMhUBHVGzxmTvyCXAAIrKpNO5LcLvHedwS8TUi3ZTSrQ/OsJ2m/
	MCpXnQIFgycJQ0H4OZxVh5e6ysQan27HI7uT22oUGPsu6Sr4D6Ue9VT6cJ7NX7GrKpYmFQ
	NBzAbD+IRK5WRAA/r/mHoS8sV/L3G1E=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=netter-io.20150623.gappssmtp.com header.s=20150623 header.b=Xfvoy0Qu;
	spf=fail (diktynna.open-mesh.org: domain of abolletta@netter.io does not designate 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=abolletta@netter.io
Message-ID-Hash: EUWQCTRMP5SPIWZY6JJP4THOD3V43CU3
X-Message-ID-Hash: EUWQCTRMP5SPIWZY6JJP4THOD3V43CU3
X-MailFrom: abolletta@netter.io
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org, Antonio Quartulli <a@unstable.cc>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/EUWQCTRMP5SPIWZY6JJP4THOD3V43CU3/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi Sven,

I'm sorry for being not so clear in my statements. You can read my
last "refactored" mail, which is easier to understand:

Should I must only rely to the related 802.1q interface (eg. bat0.1)
or can I receive the whole traffic (untagged and tagged) from the
plain bat0 interface, just listening for the incoming traffic on it?

If the answer is the first choice, is it possible to have an approach
where I can receive coming from bat0 leveraging on a single interface
anyway? Could a linux bridge br0 on the top of bat0 interface make it
possible?

For example, if I connect an openvswitch port, configured as trunk port, to a
linux bridge br0 that enslaves bat0, could I expect to see the whole
traffic inside the batman-adv mesh network (so I mean, both tagged and
untagged traffic) also "flowing" inside the other OvS switch ports
that are attached to that vlans?
Moreover, just out of curiosity, is there also another known way to
get rid of the linux bridge br0 in order to get this done (attaching
the bat0 directly to the OvS switch, for example)?

Il giorno ven 11 set 2020 alle ore 16:02 Sven Eckelmann
<sven@narfation.org> ha scritto:
>
> On Friday, 11 September 2020 15:03:13 CEST Alessandro Bolletta wrote:
> > I see. Ok for transmission purposes, but what if I have to receive a tagged
> > frame?
>
> It should not have been send to the other node when there is no TT entry for
> this mac + VID from the receiver.
>
> > Should I only rely to the 8021q interface (eg. bat0.1) or receive the whole
> > traffic (untagged and tagged) from the plain bat0 interface?
>
> Hm?
>
> > If this is not feasible, is it possible to handle in someway this?
>
> Hm?
>
> > A linux
> > bridge on the top of bat0 interface could make it possible?
>
> No, the bridge must also enable the vlan for this bat0 interface.
>
> See also
> https://www.open-mesh.org/projects/batman-adv/wiki/Faq#BATMAN-Advanced-VLAN-questions
>
> Maybe Antonio wants to add more things to this discussion.
>
> Kind regards,
>         Sven
