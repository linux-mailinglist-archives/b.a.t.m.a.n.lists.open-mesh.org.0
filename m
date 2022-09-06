Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 38F8D5AEF92
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue,  6 Sep 2022 17:56:30 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 106828191E;
	Tue,  6 Sep 2022 17:56:29 +0200 (CEST)
Received: from mail-oa1-x2a.google.com (mail-oa1-x2a.google.com [IPv6:2001:4860:4864:20::2a])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 408AE8038E
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue,  6 Sep 2022 17:56:26 +0200 (CEST)
Received: by mail-oa1-x2a.google.com with SMTP id 586e51a60fabf-1225219ee46so29308148fac.2
        for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 06 Sep 2022 08:56:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date;
        bh=cgYStdbyKxPGHAXgRMexdkQwhE6R0mBrObKugfYn4hM=;
        b=Nr0o9ZsVShnnVrYOndZtEMNsZbK/zmEFEgRt9pw50kroDnAuhvXsbbQQMHJ+EL3HVl
         qIRB++EH96CITVPjVXAkMe87yzgyl6bZSDI6QKXL6Fm1bMfS4HNj6uTUC+bYrDfyzh3Z
         juSvbgE145eIXrOhV9Wob0uz94cdLa2b3w47ZZzkfj9y+ups9vyZ9t7C26wykmPsa8hn
         nwICMn//CLfzUd4Q6ShMpZ0ZQ/yDl5NnVlYlcjndAR5JhdvCmrw0Km2eBAlCr7tDOwn7
         o0uFLYfZGi0lNoo7yStSCkECurdIEXCTjfJ9JvYYwKxlNKTi3dTLfUgiUZAbjsANauB8
         jZ3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date;
        bh=cgYStdbyKxPGHAXgRMexdkQwhE6R0mBrObKugfYn4hM=;
        b=gj7FdEfqpJQUL6wO55yMFbMs1OS/FN3aRBTdfm++N5XVjsVDd/UrNr1nG1psWtLoWX
         d+0vaMS3bF7+Yl6P3VPvWbGstzanl7ZZpolM3FD+JDkOg+cccVchBH54eRIx0lDlfny6
         D+3cWmaYnuo8hevAQDlI4aYpJ33UCmfEAT7QNzkQzgfqdiEkA+LyquMWBRYc9TdaciQw
         3hkuZCdVnOL4lv5h5yhhYIh5JQjwbDVvLmWBiE8V29eXVNBhAyyYx362cB6RLpMa92qs
         HjmKMAds47wHuYxKLwePnRZAnvYF3knsMZjk2jhJQTxiQBli2DM5arQO3mCu9t7aUYMZ
         C/mw==
X-Gm-Message-State: ACgBeo0pV9eg4P8wuwyMJfwLMEI3GarBcsVAo2K+/JrlipbduOf07cwW
	Pxe5vQUbXN4jEzbVPzxFgypvTFImEHouO/ge1x6TmTMIIq0=
X-Google-Smtp-Source: AA6agR6cfJ2fj3jRZH97UaTn5pMDIsC3FqtQCtjogAH5keEyI+4xBTF8dtQ5/VYHK+rZdzYYFTssN0Hq1P6djj8fJGc=
X-Received: by 2002:a05:6808:16a0:b0:345:e7a9:7d68 with SMTP id
 bb32-20020a05680816a000b00345e7a97d68mr10684859oib.187.1662479784445; Tue, 06
 Sep 2022 08:56:24 -0700 (PDT)
MIME-Version: 1.0
From: dan <dandenson@gmail.com>
Date: Tue, 6 Sep 2022 09:56:15 -0600
Message-ID: <CAA_JP8Ucxq8=RZhxUfKtEDGs43wQTCd8UY_JJXGC=CWrM8Uofg@mail.gmail.com>
Subject: zero hop penalty interface?
To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
Content-Type: text/plain; charset="UTF-8"
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=Nr0o9ZsV;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (diktynna.open-mesh.org: domain of dandenson@gmail.com designates 2001:4860:4864:20::2a as permitted sender) smtp.mailfrom=dandenson@gmail.com
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1662479786; a=rsa-sha256;
	cv=none;
	b=1IYZSR/9yEWH92qyo77vXg25NLc2E5cc2kTfFdAd/M/VjEAiDFvKSRv86jKTfk+rfRxFNA
	UF3ChHq8TUqK3d1TiuMRMnGU/DhKX4W5x3DaNxLjmBc28w1w3yPVLfGfpmPIywC2hJiv0J
	BulQSneG2v0cOhjiW1uL1v0gBWrbLGc=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1662479786;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 dkim-signature; bh=cgYStdbyKxPGHAXgRMexdkQwhE6R0mBrObKugfYn4hM=;
	b=B2PsFu70F6B9YIDS6X8L5403LWeUD4MbxAPBVCbPfT3DLB+vQ/3ueoYmIc4h4cpujFL6sA
	7k3CVmoNxUroSOzjZULt2JtBnXaFq8XEIrT6tda7vEoc1+IMgpwhiLex2to64c5nYLrsX4
	/pSbNiW09+E0f7h7Oi+MUuEqZRIxgTo=
Message-ID-Hash: CKTLMKHK6AK3CHIHUSROFVTGQ6AU655G
X-Message-ID-Hash: CKTLMKHK6AK3CHIHUSROFVTGQ6AU655G
X-MailFrom: dandenson@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/CKTLMKHK6AK3CHIHUSROFVTGQ6AU655G/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi all.  I'm struggling to find an answer to this specific question
about path selection.

I'm looking at building a prototype mesh out of the banana pi BPI-R3.
That's a dual band wifi 6/6e router that runs open-wrt.  1x 2.4Ghz and
1x5-6Ghz.

I would build this as a quasi-dual radio mesh.  ie, I want to favor
the 5-6Ghz radio and add a large hop penalty to the 2.4Ghz so that
it's only used for backup.  The 2.4Ghz is a fraction the speed of the
5-6Ghz.

What I'm considering is that as I saturate the 'single radio mesh'
that the 5-6Ghz radios is essentially making since 2.4Ghz is purposely
high-cost, I may want to add a second unit starting from the main
uplink out as a secondary mesh, then linking both units together via
2.5-5GbE ports on the device.

The question is, can I make the hop penalty zero so the mesh treats
this pair of routers basically as one?  for instance data comes into
node10a's 5Ghz radio, I'd like that to try to go across the 'zero
cost' ethernet and exit via node10b's 5Ghz radio to make this
effectively a dual radio mesh.  Ultimately the same would be true of
the 2.4Ghz but again, that's ideally for backup meshing as it should
look like an expensive hop.
