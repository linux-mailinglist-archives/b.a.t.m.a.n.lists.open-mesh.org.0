Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id EE0012613BE
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  8 Sep 2020 17:47:43 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id C483D80799;
	Tue,  8 Sep 2020 17:47:42 +0200 (CEST)
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id CEEA3802C6
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  8 Sep 2020 17:47:39 +0200 (CEST)
Received: by mail-ej1-x62b.google.com with SMTP id r7so9890666ejs.11
        for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 08 Sep 2020 08:47:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=Z8PLb9WikKozSUCM7lvoIwqrMhgY4/AsNx8G+f8j0+k=;
        b=X7ZqePZdrFTix5zAyZGqMPKxzX0qlyB0AoVD+/+LM1NfDRgPfdaUF6OXylkz+L0MAK
         tTm9EZXL+Tt8WLxC06zZ7LrlA0SQ1D34KpdthroKj6AVvzUl1ahOd2ZwpGMJfFtHTAMP
         J2xuIMI59N+f+p+pgFIujm9nBb2ENJzUY1Jd+c5KFLuJRpN1cew+asZR6pF12mMfzsRf
         WahDfkU52camfpqABvuY1l0AXiwzM/0g4iND1ssPpGW8rgHsIQ0r4lQbsyvA+rIErAOF
         slLBUZ9qGIY7o3GXUhl+IGLpRo5VDSSAbF3yZ7LWNow3b6y8ytGntOJZfG8Kcyp94xLo
         hnbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=Z8PLb9WikKozSUCM7lvoIwqrMhgY4/AsNx8G+f8j0+k=;
        b=B1YqUl/7fnfGXI5Ptv6HTaCNczlmlSN+vbVUKkvve33NBoUjYaU22y2rb8X8OJuWJ6
         WOTKOhiLzhNVx/rQpmJogpjAfb65sY3/POJqgj5jGOCaVbgkh1mAFuj6lTN/vyR72KiS
         jyGTTK2/XDo+hKR+3RDJj+QEUZG//9K/iVQC30HlsM5EKyQa0hVDtQLyGGXO3m8w2E3P
         nfhCvqu+s8cMhNixv3PJHZaQte21lCN83M7BFovAsprI4fL6QabpxpR9bOburpkXBfyJ
         3tDOkMeZjkvFDbiGuLfVvkmSHaYg4MMeYFWVwVEw+VL+SUqGZFxYxKxbzKh3/KAfAnBr
         DnjQ==
X-Gm-Message-State: AOAM530DsSv3jgCC825B6a7F5ZP0fXyUCao7u3QG7pJ86Z5kXo3ZXz/v
	y5egSpKhiDrvX2+3UgXbRVmdDXWasAg+LCEoZ7EkmtJgDbtPuQ==
X-Google-Smtp-Source: ABdhPJxr61cUT+Yjkh0bRxeJuNkjSbb05U1OtONnFlCSN17By+4mUNdYl+9RlWiP050EzwlUDLdjml6jGdrCd1aJj9E=
X-Received: by 2002:a17:906:1106:: with SMTP id h6mr26266785eja.200.1599580058898;
 Tue, 08 Sep 2020 08:47:38 -0700 (PDT)
MIME-Version: 1.0
References: <CA+RexfHNV+HY28OiuHKNy4Rn=MM4gxOU0xCiVG0z56dfnv_z6g@mail.gmail.com>
 <20200904184403.GA2391@otheros> <c746bd54-37d3-cb62-a647-a07176289733@fsck.co.uk>
In-Reply-To: <c746bd54-37d3-cb62-a647-a07176289733@fsck.co.uk>
From: Chuck Ritola <cjritola@gmail.com>
Date: Tue, 8 Sep 2020 11:47:02 -0400
Message-ID: <CA+RexfFSc=Vbx01utuo4gLqDKrYmU8yykGD7qR8p0XC7-V5+gQ@mail.gmail.com>
Subject: Re: Is it possible to send all batman-adv traffic through http proxy cache?
To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1599580059;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=Z8PLb9WikKozSUCM7lvoIwqrMhgY4/AsNx8G+f8j0+k=;
	b=g4nqNvw9Ll1QtoeWyLnN5aRlctzIwLAVwy/RF0otr0gPOvZ3vyI//xuoX2/WbEMvmSowtg
	YQYWHw/M2NS4/wiWD2uXZUOL0MD3zGUUfVSndT/2pj7CiDNIVWvfkN4p6kN8rleLv5ROXQ
	N/QK3uDtx1qQOXkAj/YD3kjiGyglfEI=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1599580059; a=rsa-sha256;
	cv=none;
	b=CRBl6eXF5tviaHE/jHuMV/X8XCicuFsLbCedb2kgQmmlh8cobnUNuB1Ooh3Bs5AM675x7S
	PALQns0DTeBurNA1GkNYe5uuNtMEllcdYzeZL1n8jewKM2T1FH0wLJV1OVhKg+g7LwLgg4
	9hM33gZobObeLG8XoYx/7UxFL+AZprk=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20161025 header.b=X7ZqePZd;
	spf=pass (diktynna.open-mesh.org: domain of cjritola@gmail.com designates 2a00:1450:4864:20::62b as permitted sender) smtp.mailfrom=cjritola@gmail.com
Message-ID-Hash: ALPO6RD67PR3KDJ5FMSNKPZNV5B2CJZJ
X-Message-ID-Hash: ALPO6RD67PR3KDJ5FMSNKPZNV5B2CJZJ
X-MailFrom: cjritola@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/ALPO6RD67PR3KDJ5FMSNKPZNV5B2CJZJ/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

> I'm wondering, are HTTP caching proxies actually still useful these
days where all major sides have switched to HTTPS?
(Linus)
>You could set up a transparent proxy, in the route to the batman
gateway,,, you've have to look at the exact details of how the
routing/NAT is set up, but I'd bet you could do some pretty clever stuff:-
(James)

This would be mostly-mesh hosting with almost no uplink. We are
allowed to carefully gateway some internet content such as 44-block
IPs and maybe sites with 'safe' content such as NOAA. The choke point
is not the internet gateways like it would for a traditional 802.x
mesh but the speed of the hops themselves, as this involves VHF/UHF
with 20-1000 kilobit speeds to get 20-100mi hop lengths. Sometimes ghz
802.xx is used for last-mile, cities, etc. AREDN does a bit of this on
ghz but I wanted to go layer-2.

Amateur radio in the US is governed by FCC Part 97, which forbids
encrypted communications (the wording is 'intent to obscure its
meaning') so it pretty much has to be HTTP with no 'S'. A sidenote:
Authentication hashing is still ok. Sniffing traffic is encouraged.

The idea was to keep things simple by staying browser-based where
practical. Cacheable HTTP would be passively cached at every hop with
the storage for it. Even if part of the network got cratered there
would still be a 'ghost' of the content in the cache, and so long as
it was frequently accessed and had an unlimited age, said ghost could
propagate through the caches indefinitely.

I considered BitTorrent but it requires a tracking host, which means
centralization. Freenet looked interesting but by the time I remove
all of the encryption and obfuscation to make it legal for amateur
radio it ends up having similar functionality as per-hop cache proxy.

On Fri, Sep 4, 2020 at 3:04 PM A. James Lewis <james@fsck.co.uk> wrote:
>
> You could set up a transparent proxy, in the route to the batman
> gateway,,, you've have to look at the exact details of how the
> routing/NAT is set up, but I'd bet you could do some pretty clever stuff:=
-
>
> https://tldp.org/HOWTO/TransparentProxy.html
>
> James
>
>
> On 04/09/2020 19:44, Linus L=C3=BCssing wrote:
> > Hi,
> >
> > On Fri, Aug 28, 2020 at 06:00:59PM -0400, Chuck Ritola wrote:
> >> Is it possible to send all batman-adv ethernet traffic through an HTTP
> >> proxy cache such as Squid?
> > Not really, there are a bunch of headers too many for an HTTP
> > caching proxy to work with batman-adv.
> >
> > I'm wondering, are HTTP caching proxies actually still useful these
> > days where all major sides have switched to HTTPS?
> >
> >> Another consideration was ALFRED but it doesn't appear to be easily
> >> integratable with existing software.
> > Alfred is more useful for little bits of information, not really
> > for complete packet streams.
> >
> >
> > The "best" solution I could think of right now for limited uplink
> > bandwidths is hosting content within your mesh network instead.
> > Like setting up a Seafile or MediaGoblin, for instance.
> >
> > Or using P2P technologies, like Bittorrent. Although you might
> > need to be careful with this particular one that it won't greedly
> > occupy the rest of the bandwidth your uplink has left, if content is
> > still mainly shared over the uplink and not within the mesh.
> >
> > Regards, Linus
> --
> *=E0=B8=84. =EF=BB=9D=E0=B8=84=E0=B9=93=D1=94=E0=B8=A3 =C9=AD=D1=94=E0=B8=
=AC=E0=B9=80=E0=B8=A3* (james@fsck.co.uk)
> "Engineering does not require science. Science helps a lot but people
> built perfectly good brick walls long before they knew why cement works."
