Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id E994142B962
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 13 Oct 2021 09:41:57 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id B56EB8108A;
	Wed, 13 Oct 2021 09:41:56 +0200 (CEST)
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 48B1F8039C
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 13 Oct 2021 09:41:54 +0200 (CEST)
Received: by mail-ed1-x52c.google.com with SMTP id g10so6433150edj.1
        for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 13 Oct 2021 00:41:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=Rbvrnw0R6prxdvNVslDdWawuP2WwStoEf4aThfuAyQ0=;
        b=Rg3Gq5iuKM9kSSUvFpk8HC2d+rEaV5MpNtCCAfr5DhoB4h1V7HEU6NX2OaKp7zBPAM
         8BsCf+DSivkNVenwgPVO0UshM2vtimAZ0eyWmCXqsUhkFzKG/HQVNpGyRLn1xpd8Xj7A
         Lao/qQ5A3DqAhv9NcBB7rTcNizpTFIErmYgJX9Wg7SDRgCDA/ykk6x8L1qgI8T18VXFr
         xCIDowvTTLz0h8cU7UTlA2M92DJJkMmnOCWUERrJhBwZyuYcO1/TuiNF2WGyzGZfVWec
         CgmuCvNJaFbvRO2tsxacrwK2fZuET1XLLv9W2R5XekXEDhIUL9S+SpS/xb0ueCw3fFxd
         FzXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=Rbvrnw0R6prxdvNVslDdWawuP2WwStoEf4aThfuAyQ0=;
        b=snxrj0C3mBkAeCWnAywGwbzDexEQ9gqCgLeRIGOoHtOPXvd3wbk/WtIuPs7Y2aiuv7
         iX18M4D3Ybb8tPUeo8Qb2o6Q7Y7lOF7QD//VN6tBKJ6wrWeiNP4Tige9b9ZWLaZOXbBz
         vp4V2jF1u46JNOUGl3r1kXphXF49SwNDx1/g45PB/VvWwlmE659qQgY7/OStkRAnae6F
         a7OzsJ7iTgz3+abU1RGUPqju2lrfOogwoOeqfTUy824pc8b9jDJ7OCMVoHOXikph4Lu/
         MdXcfna/U53tCpYqhf4LomfU648K5ltc1ewvJA2hh9PU0ozgcAOP2rzqmxc8I2tS0ts4
         DinA==
X-Gm-Message-State: AOAM533ixDHtDF9l7a6BxACF9wapE9K2tYJo9YlFpoH2QfWLHbBnmY1O
	EeF3dffTGrsWhBwyDpHPpBnxUUtBm4VhDjwsUG0+TF1DFnk=
X-Google-Smtp-Source: ABdhPJyJrrecMNwGyNxI2iIV3Z9PxRe2O1TbIcQH5WWEEUidBAjfJNVATs1VGq9nG8jC5CTq2UP2ZHYkJ1R6nlm0a9A=
X-Received: by 2002:a05:6402:120b:: with SMTP id c11mr7230013edw.397.1634110913556;
 Wed, 13 Oct 2021 00:41:53 -0700 (PDT)
MIME-Version: 1.0
References: <20211012100335.1201.63878@diktynna.open-mesh.org> <20211012215304.1201.89784@diktynna.open-mesh.org>
In-Reply-To: <20211012215304.1201.89784@diktynna.open-mesh.org>
From: Baligh GASMI <gasmibal@gmail.com>
Date: Wed, 13 Oct 2021 09:41:43 +0200
Message-ID: <CALxDnQY=6dOBaoCFN2u1G-OT+6ObbLycOS4FCXkQ9A0-oAfkNw@mail.gmail.com>
Subject: Re: can B.A.T.M.A.N. force a path through the network?
To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1634110914;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=Rbvrnw0R6prxdvNVslDdWawuP2WwStoEf4aThfuAyQ0=;
	b=l0bH52osvesFwVyM2ISEOGeUcb1nQBk8geP0vDzylFX20BwEKdyldgsRmsE96b8TIl1ruo
	t40K3CvemhVV4JzBCDo2ZnWfSacN/VrgasqS2r+uiHzgEbQRKXZ4/gHfX7SYTx06yLRtgn
	Zc0yOCmjs4bcIDmJrCxML2h5leYfWsI=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=Rg3Gq5iu;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (diktynna.open-mesh.org: domain of gasmibal@gmail.com designates 2a00:1450:4864:20::52c as permitted sender) smtp.mailfrom=gasmibal@gmail.com
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1634110914; a=rsa-sha256;
	cv=none;
	b=qtqFtO2hSMiaiJWHfU5gpFXCvbtQlhLBU40k6nHRG3MypIxoI7zbx24CBQEmdFo8i0vuGn
	dxj9jhpCaaekeQbgW7R3beD0KpDe+6lPuAAq29+o6DHMNvbluhDABPp+lqqE0Tga0vJPib
	/u4wR+Dj2Jn7Ty5iTM4TetFfawBos1o=
Message-ID-Hash: HYDLM4KIAA3MOU63G2JH4PP3OHTLLIBS
X-Message-ID-Hash: HYDLM4KIAA3MOU63G2JH4PP3OHTLLIBS
X-MailFrom: gasmibal@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/HYDLM4KIAA3MOU63G2JH4PP3OHTLLIBS/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi,

Maybe forcing/changing throughput for each hardif under the bat
according to your needs can help !
Just remember that you should use BATMAN_V

Baligh

Le mar. 12 oct. 2021 =C3=A0 23:53, <giorgi.flavio.at@gmail.com> a =C3=A9cri=
t :
>
> Edit:
>
> For example, is it possible to discard frames coming from some devices? I=
 mean if device 1 must communicate only with device 2 is it possible to dro=
p frames coming from all the other devices?
