Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id A3E9B3272A5
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 28 Feb 2021 15:51:49 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 5035E8185E;
	Sun, 28 Feb 2021 15:51:48 +0100 (CET)
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com [IPv6:2607:f8b0:4864:20::531])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 84CD1803D5
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 28 Feb 2021 13:57:22 +0100 (CET)
Received: by mail-pg1-x531.google.com with SMTP id n10so9447043pgl.10
        for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 28 Feb 2021 04:57:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:reply-to:from:date:message-id:subject:to;
        bh=L+hGPJgXAtvQNHixAuCZx048WTryGrHlLWBLb4Pr3mo=;
        b=TknNH41TxE2CO2rrok0VGM2Rv3+zjwXxc5p+nLyvcKKmj8UKYdnDb7CaCgHz6i6mSd
         uFy8Eus5gfwbhabhm61nZXSlSz1EICOce5TrHgvs3ZB7NA9HB3MoMRS39llV++/TYFZZ
         9WGzxtXFQ7vz/t0tc6FLjFvw4RcEmarg+YA8x4ZsR1tirlSR/p7ctNWL4IxKyLTIkCXi
         2qRopOPN1oAnlW/lvIjRdk2R/3pmldpzOi3IuVGnsx263b4ETpSfF0TLdb5tmiOwhWFj
         XhBgzisQdnKk18zzi2s9VpbB+M0BKxj2/tfzY/yCW/SYvQuJ5G8tfbAgKsVPxOjgHYAI
         M4LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to;
        bh=L+hGPJgXAtvQNHixAuCZx048WTryGrHlLWBLb4Pr3mo=;
        b=e/H+1HTUgKxkFXmOR4lBzMMQIGI8/ZpqhkVcr79jyiRaCBteRbgffUtMaLFoT6rS41
         s96TCYg/Hs0Kk1v0rHCDse2G9dTJ/Wz0vgbzYK3cIPTpl2XMCGmop67P/DRR3ICflLdT
         q1+ICMnl1oI/lS0pACFQ5cKCK/+7OnqIl/cc1ywlqwAiuhoB6PKiHBhIYsj0X+0ipjbZ
         Ql60OWyZmZc/cu8a+tVFkqzvdz5hbXVztWUg54xQF9a2gAX3aQOMgEGqOEteA0PdzzjB
         jlR9ROPGPsXt+YDV6R9tGHP+WXBLR0FXl30lQalkN4CLafarc7xwPKUZDA0qDHJKPhfj
         nTnw==
X-Gm-Message-State: AOAM531W7N4LA4Lc3ci4S/TYxRwWxNki9Ou9MFftBnMOOlrsXtRUSFIE
	oaLT8dO4KqMqObiIl/AGkfW8qwSj+oky7E3oojZgsJo=
X-Google-Smtp-Source: ABdhPJxnZCUW5fBiZxQ2gY1AjxQtrkjHC76FymHQ9XfgE43sLrWCGaXoPOyTuKCI2c0+QjiNqacB4YugBuVjTxV84aM=
X-Received: by 2002:a05:6a00:15cc:b029:1ba:5282:3ab8 with SMTP id
 o12-20020a056a0015ccb02901ba52823ab8mr10864584pfu.77.1614517040704; Sun, 28
 Feb 2021 04:57:20 -0800 (PST)
MIME-Version: 1.0
From: "Kamal R. Prasad" <kamalpr@gmail.com>
Date: Sun, 28 Feb 2021 18:46:20 +0530
Message-ID: <CAK=yUG+9mOttJULTHVbGptFJc12ACO_V-ih15xXpNfWw7N0iuA@mail.gmail.com>
Subject: battle for yocto
To: b.a.t.m.a.n@lists.open-mesh.org
Content-Type: text/plain; charset="UTF-8"
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1614517042; a=rsa-sha256;
	cv=none;
	b=QsWZCcoRL5je4pvL/6uWUn9a71J9jHJiakTIKWspJSVEsCYq/sCf6U9ztvclfkOnoRJQ71
	kxDGZXXDbkruIZZzmOtc2hETL2gGg66bgRzgJVivQLkJACh3N8tQwpCUse2tvBNzTuOKbt
	xSgL98ZeBgpNB5w9NCq0Fz91HQRMhuU=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20161025 header.b=TknNH41T;
	spf=pass (diktynna.open-mesh.org: domain of kamalpr@gmail.com designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=kamalpr@gmail.com
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1614517042;
	h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:dkim-signature;
	bh=L+hGPJgXAtvQNHixAuCZx048WTryGrHlLWBLb4Pr3mo=;
	b=IkHpzU/3M09yyI4hL1k5vZuabgMKunvk2cRaqO0SLWPQZH/RAlDSwBsJpSlba7uwPh87ip
	3O2KXNvhFljMFuGsp/faya5umr33GXi2V6pl5hM3GedODIwxmsr5rDDd5fByWDVGyG8XtB
	Fz8Eo7fSwo4SX1N1rgkbbpcLamniq5Y=
X-MailFrom: kamalpr@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: RBJCCODXTW5G2ZR7J5O5JXZVBN2SVYMF
X-Message-ID-Hash: RBJCCODXTW5G2ZR7J5O5JXZVBN2SVYMF
X-Mailman-Approved-At: Sun, 28 Feb 2021 14:51:46 +0100
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: kamalp@acm.org, The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/RBJCCODXTW5G2ZR7J5O5JXZVBN2SVYMF/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

hello,

 can someone point me to some info on  how to plug in batctl into a
yocto build? the kernel provided by raspberry pi os already contains
batman-adv kernel module but not batctl.

thanks
-kamal
