Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D17B207E3B
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 24 Jun 2020 23:14:05 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id E744D80BE7;
	Wed, 24 Jun 2020 23:14:04 +0200 (CEST)
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id B60F280BBC
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 24 Jun 2020 23:14:02 +0200 (CEST)
Received: by mail-lj1-x229.google.com with SMTP id x18so4191038lji.1
        for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 24 Jun 2020 14:14:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=OPBL8t9pvkV/K6WuZKZeCOWn1O7pkH3oALKFydICIpU=;
        b=SbTYoYW7xPbZcYgZoS/SLZ0TnvOTju+DZsA0Iaq5RqA058NiGY2Aryt8SEm6tM0hvk
         6LowvxJrkeTbf9NweNvhxYf/gVliXfLVDfFEEWi9s/+B5Cd+8hU1aG5tzJES4t4p9C42
         7ZjMN7fHCRvzpqIRZJEQAEmxE6Sdx/JcD0OgJuoYfAuF4UIDA3+65bZoCwHqC6q2kahv
         rUYSirv7sF2gErceH0zRdqbFp7ZBzgFo2ZRzX6STeSBJSA76f+a6S6+NLPgyBp97TVCM
         jkwC9VlSlOjNXjXKO1AaqVs35exrExpaBQFeA/LeyaEAF013LTjMmCnbLPe/7ujAtXsp
         GZ7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=OPBL8t9pvkV/K6WuZKZeCOWn1O7pkH3oALKFydICIpU=;
        b=WkolalWe9+8XpQK4Og8n4Wu9xq168fnkySmQRPNzVOTTY0eojkKUv+cr3THDncc+Td
         N1HGruSADcxzUJuQefaJ3GW8DwsT0mTHywVjc6XGm4mkdgHaZAgYJzNcIyj1QLLociH7
         iqI6nu+7furkJ7U1Ls4g4hR7fXfkNw6sEa0unRXLErxX5LlkZG0uEZqpwWWbmknglUTN
         TxTO8T+PWF5igKvo9oQXhWN35xnV7m/jGCJhfE5ZUvwTBpUkKDh8RTfQ4C24bt1zPyKy
         jAeiJMu75gbONnHqrRL1nzhk9ZhgtmvyqMpzwGswkA2/xgFNP8IyFqL7NifFI6Pg6fhR
         f98w==
X-Gm-Message-State: AOAM5338ctg+ZhyVfA7LbXZywTK18efLWj5FfSV8pC7/faTcfGTtX+rW
	aRpUJKWrifRP1CyOoKo4hUKFbx2dVU/j1FHraoHlZxDwVgg=
X-Google-Smtp-Source: ABdhPJwqsbNCjJlnHhMMifXT1c73eQKySL4WVC7h9SClsU8A4kwC7ke2QHrHXdSj69afCUAdvF1XmFQkH4cRgEGQIy0=
X-Received: by 2002:a2e:6c07:: with SMTP id h7mr15917991ljc.125.1593033241536;
 Wed, 24 Jun 2020 14:14:01 -0700 (PDT)
MIME-Version: 1.0
From: Mark Birss <markbirss@gmail.com>
Date: Wed, 24 Jun 2020 23:13:50 +0200
Message-ID: <CADg1mwL07UQqmUctQexAFCgFMrXBiF=rB1EdRqb3agveSEkckQ@mail.gmail.com>
Subject: BATMAN-adv Debug options
To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1593033242;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 dkim-signature; bh=OPBL8t9pvkV/K6WuZKZeCOWn1O7pkH3oALKFydICIpU=;
	b=wmdy/CLBDQRsqkZMGbIkU72fZ/RvnIknGrHwVbz0CoY96kX3w0B0BFTH2YmClANFWCgrVQ
	piVOyXosjAfIn2r1llsj3vHd/9gFfCR5JVtjhu/gqw5wCVvOMeQrOqORTg0NFT6NucqyhP
	7qIZ28DjBOoqBXfYe7x4ExwyQQTQm7w=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1593033242; a=rsa-sha256;
	cv=none;
	b=xUE3Bz8DeLZZgp91S+93U4xIfLluLF6XAUQ7KsA8TZ1dUZfkVZD9qJDhKYzRD0nvQmbJWK
	hPKTOIHDqotbCYOpTv+Tv7Tp/M+DvmQ3U0AKlpURU9AADE/m0bim+yK47lxSiufOuwcS5r
	3FEJz144W0h40RTiVvALY9yT+qN3h4w=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20161025 header.b=SbTYoYW7;
	spf=pass (diktynna.open-mesh.org: domain of markbirss@gmail.com designates 2a00:1450:4864:20::229 as permitted sender) smtp.mailfrom=markbirss@gmail.com
Message-ID-Hash: KDY2WGRK4GSQCYOZ55GL35HXO76N5HRG
X-Message-ID-Hash: KDY2WGRK4GSQCYOZ55GL35HXO76N5HRG
X-MailFrom: markbirss@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/KDY2WGRK4GSQCYOZ55GL35HXO76N5HRG/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi All

I just recently been using BATMAN-adv over ethernet

What other debug  information are available to troubleshoot connection issues?


I have enabled for OpenWRT
echo "CONFIG_BATMAN_ADV_DEBUG=y" >> .config
echo "CONFIG_BATMAN_ADV_DEBUGFS=y" >> .config
echo "CONFIG_BATMAN_ADV_BLA=y" >> .config
echo "CONFIG_BATMAN_ADV_DAT=y" >> .config
echo "CONFIG_BATMAN_ADV_MCAST=y" >> .config
echo "CONFIG_BATMAN_ADV_NC=n" >> .config
echo "CONFIG_BATMAN_ADV_BATMAN_V=y" >> .config
echo "CONFIG_BATMAN_ADV_SYSFS=y" >> .config
echo "CONFIG_BATMAN_ADV_TRACING=y" >> .config


echo 255 > /sys/class/net/bat0/mesh/log_level
cat /sys/kernel/debug/batman_adv/bat0/log


since i want to understand also why on wifi mesh seems to crash for me ath10k


Regards
