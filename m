Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 096A9308C2C
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 29 Jan 2021 19:13:21 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id AC59380421;
	Fri, 29 Jan 2021 19:13:19 +0100 (CET)
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 1FBFE83B0F
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 29 Jan 2021 02:43:38 +0100 (CET)
Received: by mail-ed1-x52f.google.com with SMTP id c6so8865960ede.0
        for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 28 Jan 2021 17:43:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=Cmat/4FW1/EroPJtq2RMhHCAoS5X+8jX01il7tvDXWo=;
        b=pFHF7+jtS6ORxknUTHxZ8lgng5wryvGEHQx8ztJrkrJQLL7tZElLFVkN+IYkg/x5fA
         CFup4qrNV4ItE3kojyCk3iGCVvx/wyWSV2NJ1bjfnbZ+9FjBfmawK1o+JaEuYO2cTjsL
         mH1CdAHquQv71Jv+FMuk7wXMVlL0FC7t4cRBbAX3Wj0oyXLx15QMVEAatF9lcwfax/RK
         njkGZW+1+Mf6asu9v5kBbXtnGxp0OVN6JMBxWvZPTkdQtvCWpRTtmZkyCqZGYlv6U5GE
         7cmuIVmOnBHAypEM7LcfUYMDDnFMroAHM6UHylyZ/whm14M9Jl4DVpJy3cEHdvZ2J4Ce
         xv0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=Cmat/4FW1/EroPJtq2RMhHCAoS5X+8jX01il7tvDXWo=;
        b=leM1piCZACCUrqxq6Qjvz7NQ8vpWo4UxBGmI1WYERlyY9LL/r4rgthVsKAZzo/V/sd
         OdMK0eJhSv5DZRAb170+jElm4y+lx5gv9cqeojtm/P4NgRDW3+uLpBiUg36M2vHoivmF
         +wkCBIEsd2/KyO/FSOH2T6YMZMzan2tPrKCveHWq+MIn3xr/eLYkhKv6jPFAkV0s+UAu
         nbR2RqGT3Z38uZANE8gjpp7HNFHpXSuPV1vnhWZXNqPfBw3G2sKMwarg7qP1zqScHzEO
         FzDH/M3IL9rDlyPHhtLUejeTd5y7+UNIfpi50c5rmPORLMaDmk7bpWUantq6aaNW5pPL
         5/tw==
X-Gm-Message-State: AOAM5300xp7wNfy9Mxisblaoq7js1UrCQUTMPYM+eibctEUm9KN4I+hF
	Kbqlv5cxJTc9lGsdCE5TJldctLWF9FEu+OdIDJ959Fnrs5I=
X-Google-Smtp-Source: ABdhPJxPKvjWDrmg6wkoGpvL8HRv+8ux93fPF4J3BIzQimNOyd4uueL1t52JqcnJ1M7EUHkLBkNUY2Y8MPj4ml9fumc=
X-Received: by 2002:a05:6402:3585:: with SMTP id y5mr2612537edc.97.1611884617208;
 Thu, 28 Jan 2021 17:43:37 -0800 (PST)
MIME-Version: 1.0
From: Scooter Willis <willishf@gmail.com>
Date: Fri, 29 Jan 2021 06:43:25 +0500
Message-ID: <CAMjFWEOpvMmedQw7sB-G1f9pMMo6ymhZemVy07Y0UeUN+EPU1w@mail.gmail.com>
Subject: Mobile Vehicle Mesh Network
To: b.a.t.m.a.n@lists.open-mesh.org
Content-Type: text/plain; charset="UTF-8"
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1611884618; a=rsa-sha256;
	cv=none;
	b=dHnEVbET/hhDtrWzNjacGD8H1k3O+yEoUkemirMkMmHQ9HmZsmW5gDkOb+RAvYYRamU8qE
	3goxkcag5BmeclpunSZ01AIALzf2KbI/zyiSaIlZb65NPjzRuRVNjv33zwU2841C5Bmi6N
	g7GMYT6vjNz/SgmdDLdDv6IwjOxGstU=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20161025 header.b=pFHF7+jt;
	spf=pass (diktynna.open-mesh.org: domain of willishf@gmail.com designates 2a00:1450:4864:20::52f as permitted sender) smtp.mailfrom=willishf@gmail.com
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1611884618;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 dkim-signature; bh=Cmat/4FW1/EroPJtq2RMhHCAoS5X+8jX01il7tvDXWo=;
	b=lTco6+jy+IeCHaXMssnLTKm1A5ClxCZ3kqu6JTc9M26B6sTqVAjh2J1heiaGVfVKWJd2bv
	koI0X1tXHCpKk6N6aDe78rG8ruaf5C/N2TjlWPvo3iydtpZIaLC4lODBIIKSTgEmCYaZpf
	oy95XQ9NCVo9bO/yvH9YIzFC6aQ/s1U=
X-MailFrom: willishf@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: Q5HODHAQHHUZJYK3D5W372JADLJLGKIC
X-Message-ID-Hash: Q5HODHAQHHUZJYK3D5W372JADLJLGKIC
X-Mailman-Approved-At: Fri, 29 Jan 2021 18:13:17 +0100
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/Q5HODHAQHHUZJYK3D5W372JADLJLGKIC/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Doing some research to see what options are available for a hybrid
mobile-mesh network.

The application would be a large warehouse with fixed nodes overhead
connected via ethernet/POE.

On the warehouse floor would be some number of robots that as they
travel would go in and out of range for an overhead access point. On
the robot would be 2-5 computer devices that would connect to the
access point on the robot via ethernet.

Would have one gateway for the entire warehouse in that all internet
traffic would be local.

If the robot which is moving has the equivalent access point mesh node
as the static access points overhead would want very quick handoff to
the next access point where signal strength of the wifi would be the
reason to pick a specific access point. The 2-5 computers on the robot
should see the minimal impact when the access point switches to
another overhead access point. For the 2-5 computers on the device
want to minimize cost/wifi noise and the reason to have them plugged
into a local switch.

For batman-adv wanted to see if you could provide any guidance that it
would work in this configuration where some number of mesh nodes are
dynamic and are moving. It may also be optimal for a robot not in
range of overhead wireless to connect to other moving robots that are
mesh nodes.
