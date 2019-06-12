Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D8EF4311F
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 12 Jun 2019 22:51:20 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 2CB5782738;
	Wed, 12 Jun 2019 22:51:16 +0200 (CEST)
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com
 [IPv6:2607:f8b0:4864:20::244])
 by open-mesh.org (Postfix) with ESMTPS id 8945680170
 for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 12 Jun 2019 22:51:12 +0200 (CEST)
Received: by mail-oi1-x244.google.com with SMTP id w196so12751777oie.7
 for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 12 Jun 2019 13:51:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=FfoWc8pTZFhsqGZ336HM4vszbOYBO4sNKNKV17QtewE=;
 b=pm7JT0MVrhQ3R/XM4jgHs0FYYnxRlmFKREEujXd6VKeBUGsJTh/m+gy9UCLmpZXYNe
 Hlwuf/cL4jQlDAJq1GxaohmubJzsFmPSMICHzSXMOeMXpl8XE9ghKerdXXbKIMK9mvWE
 oyU6t1ksbGsAvLoude7FO35stgtO03OUJeoptz6G6goskGg8/37sEwtFmujzipJyNYw1
 /qFUDdS5wPHZiFzRhzsptAZc1ZIaG95uEIZgACaWU8SGAsNTg2HhY22tW6bRLYhhCsTw
 uurGyHB/UUwrPr1tqvBioCeN3eyk4ScINTMsyM9O+/vHRbNkC4GQT3iA785NMOJPkXUE
 tuEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=FfoWc8pTZFhsqGZ336HM4vszbOYBO4sNKNKV17QtewE=;
 b=F+lSR0gSJRyTB022Ak7rE4uhSBW1H+sCyqtg4rCVGyuzwn9drwYllu74o9EKO1Mxc1
 OdSJ7u78EJv9PGRr9dIV98QGucVxaqMReLQZzfQ/wc5HUOiMvEyEa0wHTbBbvhPUFHef
 KBj1G1+dxp3IyX5W+p8vycB59yyFSa8niew6O8VeU5QwkMT5wyZlmxxILsE8A8C/PE/I
 +HdFu3P37c386Lx665Vq/2et+W/ETbnt9B5mzOdR3R3064iPIWhHhk67W6fYQEgfj/I1
 J6+7YJI/oGyYgECqcDctpzLBbAt7/qhwTudxThB13nC/9Iid0m9obLRCvR/YoVE8K68X
 7eEQ==
X-Gm-Message-State: APjAAAXauRQhmSrikEBinzzh1daeDR9Y5Acnpv+xooGQp69ihp65KJ2z
 QuiJkDHWNGTH8kstvD+iWqSpPJzMffDpj29kxclfk7j/3Ww=
X-Google-Smtp-Source: APXvYqxYmq/iMrJDtvFq9lhwwN8fTZecnoMXzv1mophKcTLqmfHSCimRpBfza3H8Rv0johM8ndLxKS9reFJ0ey5wUxE=
X-Received: by 2002:aca:36c5:: with SMTP id d188mr748445oia.39.1560372671182; 
 Wed, 12 Jun 2019 13:51:11 -0700 (PDT)
MIME-Version: 1.0
References: <20190609101922.2366-1-treffer@measite.de>
 <4907494.lMUJSmCnaO@rousseau>
 <CALYz8yoqh8X3hZcafrZAauFT4OZtQZ9r92G+9zW9__ir4m5How@mail.gmail.com>
 <3147211.nMDzSnZuI7@rousseau>
In-Reply-To: <3147211.nMDzSnZuI7@rousseau>
From: =?UTF-8?B?0JrQuNGA0LjQu9C7INCb0YPQutC+0L3QuNC9?= <klukonin@gmail.com>
Date: Thu, 13 Jun 2019 01:50:44 +0500
Message-ID: <CALYz8yoj0E1MDoh7ztThK_q_ew0EHa=2vbuwxQFNwUfDvsEGiA@mail.gmail.com>
Subject: Re: [PATCH] batman-adv: Use wifi rx/tx as fallback throughput
To: Marek Lindner <mareklindner@neomailbox.ch>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 2.1.23
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
List-Unsubscribe: <https://lists.open-mesh.org/mm/options/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=unsubscribe>
List-Archive: <http://lists.open-mesh.org/pipermail/b.a.t.m.a.n/>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Subscribe: <https://lists.open-mesh.org/mm/listinfo/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=subscribe>
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
Cc: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

=D1=81=D1=80, 12 =D0=B8=D1=8E=D0=BD. 2019 =D0=B3. =D0=B2 11:39, Marek Lindn=
er <mareklindner@neomailbox.ch>:
>
> Hi,
>
> > I have a working solution for this problem. It is not batman-related,
> > but I decided to share it with you right here.
> > Please let me clarify some  details.
> >
> > 1) Some ath10k firmwares (10.2) do not export tx bitrate. So we can't
> > rely on it.
> > 2) Throughput estimation is better to inject from userspace, rather
> > than make batman estimate it from unreliable sources.
> > 3) Here is the patch for mac80211 We made for ath10k and such drivers
> > that do not export expected throughput value.
>
> you are very right about those issues. However, your patch only provides =
a
> quick way to push an arbitrary throughput metric into the batman-adv kern=
el
> module. The current discussion is about how such metric could be best der=
ived
> in an automated fashion.
>
> Would you mind sharing your approach to obtaining such a metric that addr=
esses
> the problems mentioned above ?
>
> Thanks,
> Marek
>

Yes, sure.

I can't share a source code because it partially belongs to one
commercial company.
But I want and I can share my ideas with empirical evidence.
Also I will be very glad to help Batman-avd mesh community and become
a part of it.

So here is the algorithm. It has a structure we call matryoshka.
ET - Expected_throughput.

1) ET =3D TX_bitrate * Transmit_probability * Overhead_coefficient
Transmit_probability is always less than 1 so Expected throughput
can't be equal to the TX_bitrate. Overhead_coefficient is also should
be less than 1

2) Transmit_probability =3D 1 - Retry_probability - Error_probability

3) Retry_probability =3D TX_retries / TX_packets

4) Error_probability =3D TX_errors / TX_packets

5) Overhead_coefficient for 802.11 is fair enough to be 0.65, but can
be changed after additional testing.


ET =3D TX_bitrate * (1 - (TX_retries + TX_errors) / TX_packets) * 0.65
Such technique has very large hysteresis which is good to avoid
flapping between different nodes.
In my MESH lab this formula works quite well.
Please ask any questions and feel free to criticize.


Also please note that ath10k tx_bitrate can be fetched from ath10k
firmware debugfs statistics. Even with 10.2 firmware.


Best Regards,
Lukonin Kirill
