Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C0201E136B
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 25 May 2020 19:33:52 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 4852482046;
	Mon, 25 May 2020 19:33:51 +0200 (CEST)
Received: from mail-io1-xd2c.google.com (mail-io1-xd2c.google.com [IPv6:2607:f8b0:4864:20::d2c])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 48C7281DD1
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 25 May 2020 19:33:49 +0200 (CEST)
Received: by mail-io1-xd2c.google.com with SMTP id d5so9761838ios.9
        for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 25 May 2020 10:33:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=RkMySdvSpS6gZeTq1b/m4P7OisZBdQ0b2gAJAzgbczM=;
        b=MWF2lmz7CXZlyOlLaxQBrf/olmD8gYXdh2YgMeUb4uTfWsAvx0QeKQQ3D8z0xSjBy/
         3PRMSM1Ez6CDhyhw5ldXUl5en6Ag6pfikNQ2jpkoyLHA2X0dgMP9D1jyfLKgVvrOjeGK
         bZPuJkgoHyOIq7HBaYyEADWDCbIJNyxd1KYZNwv2k0S1UjbhRap0BeUugcMqCQrCH1z6
         NLib4qlxnIRiDw338BgozlvleMfMeJA7GTy9acQiVcyKjdvRtt7ybgt0/8FHbosRv38Q
         dJZubmWGPsc0Cso4cNuh2UbvyzIwZlgE36CkTtyUv3MvmKklzBvM+nOTAKWU9rwRCOS0
         fa6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=RkMySdvSpS6gZeTq1b/m4P7OisZBdQ0b2gAJAzgbczM=;
        b=MP8w2jPK8eD5Z65DUzwH251QaSbt+vfeS/9vHKmBPsYBcocXlNH79FMhBH9sH3toss
         HXE5qiCu65R+udEUx8jtUAz5dZO+XDQA/r6k5TS0YwAc3FBuh+ikYYI0VGPpM155ZuNt
         9C1mPri+YtCKl5jXwn6fE1R2KtMLEFRcC+jcEi2Kt55uh+/pRJrSXTZlc07G4KCybvwZ
         aInVgDM7uywo7j4l31aIwAyVh8l6KqONCSXX53gSo8JooBALmaWc4HBYtJmrPtdm66x+
         wFJZJVh6k48/AAC0OPzCSbgYtZQcLEPKjsC7fze6xCnrbFURaQBTPFeLRbl2tH2s4XQn
         grNQ==
X-Gm-Message-State: AOAM531TGBwIY3zgQ4MbqxKi9pR5CFx0rELv6zYmbPFSBOEE0VLWHJSt
	4t93s/sqm2b99T2L0Sbe0cSsVzdSrO+9y8V2Y1Rrvi3SA2Y=
X-Google-Smtp-Source: ABdhPJzJTSlPxm1eie3p5BMBrVZlQTWcR6dfA/ltKIsud/pb3AFMBe3ECg1x9fq2pp7zfEvgIwBHwPqYWjUwinN7Jgo=
X-Received: by 2002:a02:82cd:: with SMTP id u13mr7034924jag.32.1590428027634;
 Mon, 25 May 2020 10:33:47 -0700 (PDT)
MIME-Version: 1.0
References: <CAOVt3fEEaLx8-58NjVXU0L6XToB5FPvGjFaEoZBeRCL+Eh-QWw@mail.gmail.com>
 <10714145.5AxrDinkzN@rousseau> <CAOVt3fGODcxuZAigHuHSgPED5Y67kB2NV2encCyDz4qMFy7gyQ@mail.gmail.com>
 <7073983.9WrHQ1J9Fu@rousseau>
In-Reply-To: <7073983.9WrHQ1J9Fu@rousseau>
From: Alexey Ermakov <axel101@gmail.com>
Date: Mon, 25 May 2020 20:33:35 +0300
Message-ID: <CAOVt3fFzfsnnv2Y_Z5R4Sz0VWNmiK7mzTKR3r6S2wPyqQqLimw@mail.gmail.com>
Subject: Re: Batman-adv packet retranslation
To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1590428029;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=RkMySdvSpS6gZeTq1b/m4P7OisZBdQ0b2gAJAzgbczM=;
	b=BmROlG7DA5Fe86hG+yryAGkRGrNJgVdS2DbbR482XpN7HAYjIxLbdsGnWwt3ofnHj4QveQ
	s/rfAoC4Gg2/bzxFjWBEFOkcoF9wDdc7uvfQ4mzn+sqmyVvOaLidagmw83GhZnGiLEPt2L
	GZhfnjeTUbyRNAwq3uxTUZNt5oKIfQY=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1590428029; a=rsa-sha256;
	cv=none;
	b=WVJsf7N6h+NqtpRRuNkGj65bcn1bHv5yVRTMPlJ++1MYIaOW60gvuRKexCySKtPpH8BgHg
	BUhSjiOto5DnO9zONHuPhZ2IFl8HohScfLvI2wf4tnD2tLJY/5VRBcbOAioPvGaPdxwj9r
	6FMKOBqDi2TDuLmHg7pzjkri4ZEYBxk=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20161025 header.b=MWF2lmz7;
	spf=pass (diktynna.open-mesh.org: domain of axel101@gmail.com designates 2607:f8b0:4864:20::d2c as permitted sender) smtp.mailfrom=axel101@gmail.com
Message-ID-Hash: TZ6JKM6G4C6CBA5HV4AAOTMWIG4DKQ2U
X-Message-ID-Hash: TZ6JKM6G4C6CBA5HV4AAOTMWIG4DKQ2U
X-MailFrom: axel101@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/TZ6JKM6G4C6CBA5HV4AAOTMWIG4DKQ2U/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

> If you have to configure the throughput manually why not configure the link with
> something like 5mbit/s instead of 100kbit/s ? Batman-adv does not care that
> this throughput is not exact. All that matters is provide input to the
> algorithm to allow batman-adv to make smart choices.

Yes, today I have changed throughput to 1mbit/s and it works as expected.
I just wanted to make sure it was the right way.
Thnks to all
