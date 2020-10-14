Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id A08A328ED10
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 15 Oct 2020 08:27:44 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 6420F803FF;
	Thu, 15 Oct 2020 08:27:43 +0200 (CEST)
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id D49EF80122
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 14 Oct 2020 21:55:05 +0200 (CEST)
Received: by mail-wm1-x32e.google.com with SMTP id d81so716929wmc.1
        for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 14 Oct 2020 12:55:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gateworks-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to:cc
         :content-transfer-encoding;
        bh=YVeJ7T9F2pRtgLtD06H3qcU9vi9tRRs8qkIEHTxgEvA=;
        b=TaVvZNYsjVFve990vusgYteOLTJkPTZtd0iwp0PYxwJupZCCxjloltQxg6mQnQhk1s
         tsNMgPbahbL+TeNjwE3+qS2wIBjyIoyOpXL3oNlcg1RqgLKx17HTKjBPdqmY/10h6Xjw
         v6fj7GFdiB7aGQzacS137RHixZZ3+FRQ/pK6M29vzO/LSZ2+ai/KWs9Di2XZULvD0wOr
         ecYJtBzeijmijYR4tDv/ErG4Z8KbZ2OEsq/OaykJJPe7J7kVgC+fgWaEnLR9SMTf4pXD
         Ru4SHDaT917/lGFEiRPhZYbcuS8IOCjVtI6fCAFJmLVqka6A1V6QL9e1mbOCQHewAxqB
         jWhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :content-transfer-encoding;
        bh=YVeJ7T9F2pRtgLtD06H3qcU9vi9tRRs8qkIEHTxgEvA=;
        b=KjxDmYLAKb15iv9NKrjL3RkSHY5t0YOJctowC6kKd1EKsUTh18HrwLUfhqEoqXCt9q
         +RM/GS/SbCuNfeqCEhxdQD+fBvuQIffnxWSrypK9dGnHi+mT29Vz3PAuYm8kQuYwOMsR
         NmXtW/jaujpOBBApATB/HbzoxpngMYEzGhkEbF9PnBP/WuiWqfaFE9WVcEzqADFN0u3i
         nQfnSy7hJx41rYGUlMq/FQS3/JqqFxP1RO0xvmz7vINGoYtz4WlOAyG5B/rwcpiOUpNe
         bkHszW8rvJYO9LOoiZCmYrmsBax4gBQCq5rx3VhJbhUG34vrPdR+gMr84n96pftBxi8I
         HYLw==
X-Gm-Message-State: AOAM5330shliV+12mfP/i6xIBuyr8jjsETCRUBtd8bHGDkfiFJURSony
	hbK/dFidD6TNYk/caciDQQmtPzmEMSlsgkfrmcWo8GXXSwWU
X-Google-Smtp-Source: ABdhPJzEKgKI/fnKPUTeXjSo2gwh+RYeWIjvGvEl/GHzTcAFVt/LVzcLbt7R3ii8kOKErz9ttIdmcA3q77C7g4uFCFQ=
X-Received: by 2002:a1c:8057:: with SMTP id b84mr467012wmd.116.1602705305042;
 Wed, 14 Oct 2020 12:55:05 -0700 (PDT)
MIME-Version: 1.0
From: Cale Collins <ccollins@gateworks.com>
Date: Wed, 14 Oct 2020 12:54:29 -0700
Message-ID: <CAG2Q2vWC7H5j6uVRFyKCmjyjG3zoH9L0JwnhmRFxiji=puhrfA@mail.gmail.com>
Subject: =?UTF-8?B?aW1wbGljaXQgZGVjbGFyYXRpb24gb2YgZnVuY3Rpb24g4oCYbmZfcmVzZXTigJk7IGRpZA==?=
	=?UTF-8?B?IHlvdSBtZWFuIOKAmGRxbF9yZXNldOKAmT8=?=
To: b.a.t.m.a.n@lists.open-mesh.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1602705306; a=rsa-sha256;
	cv=none;
	b=KLavXCbk67XX2B2wNp1DcyJbE75p2JYV70hZYOMJwQEJz13B/DzEXVC6musVZmrQjTu8Ob
	Qzeec/ooPrFvSxJYbixcX4DJGNUbhO6ZslkK+gzOSb8w8duaBIVV3m3ho2xw54l++qAxcE
	+c6AfU5658XHT5GbpmI+fLnrs0u12f0=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gateworks-com.20150623.gappssmtp.com header.s=20150623 header.b=TaVvZNYs;
	spf=pass (diktynna.open-mesh.org: domain of ccollins@gateworks.com designates 2a00:1450:4864:20::32e as permitted sender) smtp.mailfrom=ccollins@gateworks.com
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1602705306;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=YVeJ7T9F2pRtgLtD06H3qcU9vi9tRRs8qkIEHTxgEvA=;
	b=RTLZU+HTzISkoDJlUpMwhDN7roAfvJJwlyqWaPJlcMSqhjs13MLTWnSnDWZLwT6F5U6lXf
	OK0Vh1FZvrbnwc7jPNhSd6ZagYUFLJD5IUDL4nTPY0EGbyvQPeGPE3nAToc7pjwv0Pw+DQ
	kbtZcJ/O+P7bc8SMZI0VD1gEG2X0We8=
X-MailFrom: ccollins@gateworks.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: 2DO2BR6KGWSBEI6TSDWVMO4WY5R6QHRJ
X-Message-ID-Hash: 2DO2BR6KGWSBEI6TSDWVMO4WY5R6QHRJ
X-Mailman-Approved-At: Thu, 15 Oct 2020 06:27:41 +0200
CC: Rick Winscot <Rwinscot@kcftech.com>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/2DO2BR6KGWSBEI6TSDWVMO4WY5R6QHRJ/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hello,

I'm building Buildroot using a 5.45 kernel kernel, when I add the
"batman-adv" package and compile I receive this error:

/buildroot/output/build/batman-adv-2019.3/net/batman-adv/soft-interface.c:4=
39:2:
error: implicit declaration of function =E2=80=98nf_reset=E2=80=99; did you=
 mean
=E2=80=98dql_reset=E2=80=99? [-Werror=3Dimplicit-function-declaration]
  439 |  nf_reset(skb);
      |  ^~~~~~~~
      |  dql_reset

Is there a patch to correct this?  Any insight would be greatly appreciated=
.

Best regards,

Cale Collins
