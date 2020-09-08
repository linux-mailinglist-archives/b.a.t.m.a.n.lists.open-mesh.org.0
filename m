Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 68765261099
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  8 Sep 2020 13:23:48 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 2B2AC8056C;
	Tue,  8 Sep 2020 13:23:47 +0200 (CEST)
Received: from mail-oi1-x234.google.com (mail-oi1-x234.google.com [IPv6:2607:f8b0:4864:20::234])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id D56528012C
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  8 Sep 2020 13:23:44 +0200 (CEST)
Received: by mail-oi1-x234.google.com with SMTP id 185so16053450oie.11
        for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 08 Sep 2020 04:23:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=netter-io.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=z9ch409TV+kQXnf2jNJqzqDjot4eMhRRSAlz/vR65mE=;
        b=L84smOEXJYv1GTx7GFTnNMVB6CY9DEuJROLNZEUYShYUmupsAKAspytenjltkjN+ki
         Etx0J9bm0F+cxslcgNvzPDmnWpD3CvD0tG1wKDuY0i+oqF4f76TJ3Cs2K5Bg2Ssh81WD
         VFG5IzKio9dbbk7Zqhyyo54tOCp2Xx9FAzXCmeTTkQslwGn6y7hIDxVeiR6p5F3JGhl0
         /T3M97GqmlnP302OtWf1sf57w20ptssiSmwXAhJV8CYE7k7vNBsBRlafkEzaNb54PxZP
         rleBduItkQ5Knwr5h2atz3CwkODNmVAmrR85YTMEY/IJU2bpxJ0KoIaFAOqMlrvnrRhB
         zZ5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=z9ch409TV+kQXnf2jNJqzqDjot4eMhRRSAlz/vR65mE=;
        b=lSSDTIY65eBfU+jgpiRMNRdg/1GYmmUvLOFOEQ6WYgOzcMa6iWVI/QD/51jf40N7YS
         Egv+LltVi3Xhbwtv3LrWRd6Q/olQTZbBkMFOJKth51ck6DpwxSbp+usrRXq1n+RfYDFt
         jIYoNgCkrTxhnI0y4W1ZX/H1Y5/eBnQty/EzQUd4fo7IIsc5h+UI4WqmgpU7F7E0dOWP
         CEWU6gyNH0VM8bsA+LpfzF82fLibmkeYJWStOGKkqrn79wBlt0+kvyJKJK8XJajN/3Wk
         JyN7DMXBQVjknaWN4JtNHx7FUc7ZyyvBuy93dlLn7kR9mj9+ZwwWoMTKdL708p6Zhc5j
         NGBw==
X-Gm-Message-State: AOAM530mtO6AHOYAsM/pdSPuXml1+qd7Tc8JuH6KjsgHXfKNht6yP9rd
	9NEFM4dRQDg8NpbftRwvegE5gcO8Odh7ofl1DMUwi7v0Gjws5w==
X-Google-Smtp-Source: ABdhPJxSCPc8cbbhnjGJcpld1VK2us6Zd6BENvmcOtrES7KUFrIGVQT3rjKpsLD4SQJUgp8l+6oZ8BhyBHuJyEIfEa8=
X-Received: by 2002:a05:6808:6cf:: with SMTP id m15mr2278415oih.178.1599564223271;
 Tue, 08 Sep 2020 04:23:43 -0700 (PDT)
MIME-Version: 1.0
From: Alessandro Bolletta <abolletta@netter.io>
Date: Tue, 8 Sep 2020 13:23:32 +0200
Message-ID: <CADJ1cUTq=Bpj9SQdS5Y6aXKcPR9XqkxKn_Sj5sRMmN1R=qX_2g@mail.gmail.com>
Subject: Running multiple batman-adv namespaces on the same broadcast domain
To: b.a.t.m.a.n@lists.open-mesh.org
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1599564224;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 dkim-signature; bh=z9ch409TV+kQXnf2jNJqzqDjot4eMhRRSAlz/vR65mE=;
	b=ZKg0YzzSLrTE4IHmT2ZuFUKUOVuE+lnYm/FKNlGJdyhWZWD1sBBVw+a+eqPe79Nb0MzXS5
	JhQOESAs62a8mj2b6/VOiCm6Y27bTYIE9PU1GnsyL0NLDoM7jg8GtSJ4X49+IgjX+cijFW
	NNdoE/ZWx7jULHuCgduZT3bUOSsKuXA=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1599564224; a=rsa-sha256;
	cv=none;
	b=ugTud8HE5MBTEE8Q5jd+o0m4FgKeKox+pgWeQP81UH+kyuzj1sLpvqwlV7CV+CP7El8bKd
	CSVAQbvW5+nLcm1k6nR4yaYJ1/grrFX7ecwzRhmOIp/1mD9gdhXN22tjI2P3k7hFTrzAIP
	TbwWs58KwL48hAx6sC11VhXwcBPlelE=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=netter-io.20150623.gappssmtp.com header.s=20150623 header.b=L84smOEX;
	spf=fail (diktynna.open-mesh.org: domain of abolletta@netter.io does not designate 2607:f8b0:4864:20::234 as permitted sender) smtp.mailfrom=abolletta@netter.io
Message-ID-Hash: O5CIAVCJ3WSVQ57KH6BSNTYOF2WDOPFT
X-Message-ID-Hash: O5CIAVCJ3WSVQ57KH6BSNTYOF2WDOPFT
X-MailFrom: abolletta@netter.io
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/O5CIAVCJ3WSVQ57KH6BSNTYOF2WDOPFT/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi everybody,

i'm trying to reproduce a PoC where i'm running multiple batman-adv
instances(eg. bat0, bat1, batX) on the same broadcast domain.

So the scenario is:

---

host 1, host 2, host 3 are connected through an ethernet switch,
leveraging on a single network card (eth0) each.

host 1 runs three batman-adv instances (bat0, bat1, bat2) and each of
these instances uses eth0 as member interface

Each batman-adv instance lives good on the respecting "namespace"
using the same broadcast domain to talk with neighbours.

---

Is this kind of scenario supported?

Thank you
