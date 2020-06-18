Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 427F21FECC7
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 18 Jun 2020 09:47:26 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 1128980013;
	Thu, 18 Jun 2020 09:47:25 +0200 (CEST)
Received: from mail-qk1-x72c.google.com (mail-qk1-x72c.google.com [IPv6:2607:f8b0:4864:20::72c])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 9BABD80043
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 18 Jun 2020 09:47:22 +0200 (CEST)
Received: by mail-qk1-x72c.google.com with SMTP id w1so4677453qkw.5
        for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 18 Jun 2020 00:47:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=ssee6uJncc9pcNBr8Jf8tKJ6F8KZZ4ROFTMlUysPuBg=;
        b=fMPNL0BRRn1iPQIUC21lv3EChlY+YQ2xHZJ5O1MXe0UPNV1ZMOK4WOqcBx3HIHD/el
         VquJG25VIDyPGK4MYdjR/AiywUi76WeYMAQq/zCsQOFeGnPHvmAE+mQnf0D3Cv2wdvrU
         kxSOrzqRl63TB/7Rh+a3Cmu+yUQqAZlP0KYHtzV1BNl6+tzmDJqbfBtyN1KRvicN14vt
         BBTkzFtjkSBF2z/e24LevyyFqJCucU5XkaFHie4Xn/E9ZjQ60LfpMZg9P6A0LhS/OIbb
         3Exuwqk29/z2xwOncg8SvHJcdlXD8VZ6T9948pIeWzsU98fsNTw2jKfda/3egCcT+V8V
         uBUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=ssee6uJncc9pcNBr8Jf8tKJ6F8KZZ4ROFTMlUysPuBg=;
        b=cvv198D2REed3Zr9pHgpxbHjWHKgEWnKcb0q5OI97rupSexlujM+YpK03tQDGYu7XN
         NfLVMBPAhkS4lI+NSCnqJneab+ifMNY7sCtRlhTwpcbQ421j3LsYQnzX5gRYnhRf6+LB
         VLGbMs+w4aRqZOJd/TrcHdGov02UFMkKbLdrUqK7mC1dikE6ex6uCbAhv58KRtqqhKfo
         lRvbQ33nVE2ILFtV+8FP48X/WQzI63c/dlRaFXr2aWrkqVJebrEdhtoVnVOMrUZaywDJ
         AqOc26plCh2Egt3gU2YH0Hl0SyC6ToK/8oOUorGhgUAu9cW6rldQsLIFzjusa10ehvjy
         7akw==
X-Gm-Message-State: AOAM5319dQeTYRlGlqr53l4LF67PZTFHQteSnuCKJlwL1o2xv76Ug5es
	fGSDjgHW/VbWUKrL8EXAaMDnXqdTatjN4AFb4Kla2bHRYJ4=
X-Google-Smtp-Source: ABdhPJxDskhhHGHxmWThljDUaQ7fTdD4ZpfrQskbaYwa3uwpIPkMBRu3NVifLtf+M3DzL7ywX221Ttf67nTrQ3+xOn0=
X-Received: by 2002:a05:620a:ecf:: with SMTP id x15mr2350176qkm.465.1592466441129;
 Thu, 18 Jun 2020 00:47:21 -0700 (PDT)
MIME-Version: 1.0
From: Rahul Bothra <rrbothra@gmail.com>
Date: Thu, 18 Jun 2020 13:17:10 +0530
Message-ID: <CADhofF_OU+ZYnqqSCmfZocUFvipvWnmDXavRrzSX67SpFdgQig@mail.gmail.com>
Subject: NS-3 module for batman-adv
To: b.a.t.m.a.n@lists.open-mesh.org
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1592466442;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 dkim-signature; bh=ssee6uJncc9pcNBr8Jf8tKJ6F8KZZ4ROFTMlUysPuBg=;
	b=gl4cAh0tXDv52B0pwkKIQhjznwcPeiN+dphGZ7AVp8SZnqEoPoJ0HwBXD77IjP23jKLazW
	DpdIWOmxAyisXoZ1aM/Zkvu8m1KsOEs70tqLnMhHwPNsIQoecPLYHAGvrVv+/SG1kk7mBu
	gTkBl7TFlLp8k03oRnP1tyECtY4in9M=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1592466442; a=rsa-sha256;
	cv=none;
	b=BM0SosvwVOkb5eonRNDVtjk4aeL800gfV0s88i4pqFwDB4Gom5i25keWq4s5EJAIhYifjG
	2lwK/L5BAylfpou+RVSPlEhn5E3LX/FYjr3VhAeLs1hZM6Tf72ZGZNLiCDPbKYp0lrilL9
	fl2kj3Xdd1ITPPmfQspEz0W091fSNrY=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20161025 header.b=fMPNL0BR;
	spf=pass (diktynna.open-mesh.org: domain of rrbothra@gmail.com designates 2607:f8b0:4864:20::72c as permitted sender) smtp.mailfrom=rrbothra@gmail.com
Message-ID-Hash: JLBL2WMFBCGKMSHO33XKHG2J7DIBBY4Y
X-Message-ID-Hash: JLBL2WMFBCGKMSHO33XKHG2J7DIBBY4Y
X-MailFrom: rrbothra@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/JLBL2WMFBCGKMSHO33XKHG2J7DIBBY4Y/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi,

I'm working on developing an NS-3 module for batman-adv (and possibly
for batmand). Has some work been done on this before, so that I can
avoid re-writing the same?
Internet search results were incomplete or broken attempts for the same.

Thanks
Rahul Bothra
