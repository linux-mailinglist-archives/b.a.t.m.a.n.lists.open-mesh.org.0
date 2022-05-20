Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id B8DC852E603
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 20 May 2022 09:15:25 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 7EFBC825DA;
	Fri, 20 May 2022 09:15:24 +0200 (CEST)
Received: from mail-qt1-x834.google.com (mail-qt1-x834.google.com [IPv6:2607:f8b0:4864:20::834])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id D7A3E80574
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 20 May 2022 08:18:57 +0200 (CEST)
Received: by mail-qt1-x834.google.com with SMTP id hh4so6309957qtb.10
        for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 19 May 2022 23:18:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=creonexsystems-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=qORqPzRb50My7Mb6YaFNrBiKliHL2ry2Si1Kr3SfS5E=;
        b=qmnNThXuHfHFDz+DTFMkul5NhuKz8vvzLQvQrEf6jldnSFMu7mCqqNlkHQusw+L927
         UrknZejokISvA/WeHAnPOZC06XTdr5H9RjAwFjI/VBeN8Wlx+QW5sX5HOT0bWMUQth9u
         HtutX7LUL8QBvKiFYSy1DcboIWIiQ3CCQKvTdDsxVvIuMs9ZyeoD65AFeVESEDv5eV6u
         W79k3PEPB1zKc5oIKFeQdZpMqBJ2ZhG8td+FiKIrgMBI+L6RNlywbjuHRZ1L1+qqLdIF
         JQZdFUrqe3RbOKTw+R/yk42XGKSyFa/T385LiI2qB8/64BVVpBZ+zr7Uw4rYTrCwNRr/
         pBTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=qORqPzRb50My7Mb6YaFNrBiKliHL2ry2Si1Kr3SfS5E=;
        b=L/fI4SNlF0vGdP5TZRJTQpixHv/m169O1pnRZ331dLr40ak+YOtaf7U6tQPVRcZ0o+
         FSG4VKWl3v4ABKaru1sB42Rb9wy/OnBa8zOM6MZs7LM4rsk1GWEUw4/hqaOht48jOI8J
         HDfm8AsKv6QXv2Vk0nRG1nfwh0bVMU3cHt5lzzAe4ALIsok4QhGtO6c5GVMTXnZ7bloF
         l1W8T+Pyzh7WAZW48XsRUEhYbL/HmixvUIlHM2K1gtTEariD7O6aldZ1z5xYkD6yIsLx
         j1DPxJRwouqCoRltj2aCPxIy6o+K1blpS+w0K43dWRE+oXWPItJoR7OgyxD7+w+LwTOR
         dcxA==
X-Gm-Message-State: AOAM530rRd6D5usNXwnwi/BySKc8q2hYgB5X25z19AgvuginmfPCFDUA
	2HXdKRtPf1Jwk9Pv9liVzrESINfzRKvruRdmE4PNo7Y3QubtYQ==
X-Google-Smtp-Source: ABdhPJyZJ6OJJBqQaRCRTRnL3doG+ZMs0fQAWk0xZ0YNNy4Gr4pecVIhGv3jFooyhALbizofsawLWAR7jqsJMIAKknM=
X-Received: by 2002:ac8:584d:0:b0:2f3:ec5e:3708 with SMTP id
 h13-20020ac8584d000000b002f3ec5e3708mr6586730qth.306.1653027536173; Thu, 19
 May 2022 23:18:56 -0700 (PDT)
MIME-Version: 1.0
From: Charles Chien <cchien@creonexsystems.com>
Date: Thu, 19 May 2022 23:18:45 -0700
Message-ID: <CAKau_3_sEaG2w7M+rQ-nuVG3_5GWHEV3UxmdG1bM-WPY7S8WxA@mail.gmail.com>
Subject: Question about batman for ARM
To: b.a.t.m.a.n@lists.open-mesh.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1653027537;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=qORqPzRb50My7Mb6YaFNrBiKliHL2ry2Si1Kr3SfS5E=;
	b=zStJBlENyHzYNG4xzb3W+ZYOfiKdua1eK257um3dyUucN1/j0TTIM5dmA0IxNXBRVYC1oQ
	9LmEu4JLZzdxNqwIPfEfWZnGUlS3h4y21YyvCOjzFY5R4t8syrTvUdYYRxB4dLxwNZmonC
	a+kdR8+k2UGDh12cXi92I4dd4h1red8=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=creonexsystems-com.20210112.gappssmtp.com header.s=20210112 header.b=qmnNThXu;
	dmarc=none;
	spf=none (diktynna.open-mesh.org: domain of cchien@creonexsystems.com has no SPF policy when checking 2607:f8b0:4864:20::834) smtp.mailfrom=cchien@creonexsystems.com
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1653027537; a=rsa-sha256;
	cv=none;
	b=iipcR7lmb9PadwVamYkB/sRymjykZsNcEXG4SrI8YY1rG7WO5EkiHhCVzo1vYlNs3+eQ8D
	3lSXB9O/BNIXvHuLqCRSCzmd9ZGVHYzlnj4TLQKzIBkdeuuYnX725EEKEkKUX4eSdLAR4F
	+frOmIPR/eGST8JJZyOilkZrn+J3B/c=
X-MailFrom: cchien@creonexsystems.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: YWFQSZV3XKTPTQGETC73FARPK5XCXA27
X-Message-ID-Hash: YWFQSZV3XKTPTQGETC73FARPK5XCXA27
X-Mailman-Approved-At: Fri, 20 May 2022 07:15:22 +0200
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/YWFQSZV3XKTPTQGETC73FARPK5XCXA27/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hello developers,



We=E2=80=99re currently trying to install batman-adv on an ARM platform but=
 we
ran into some issues and we would appreciate your help to answer our
questions below:

Is the batman-adv module compatible with an ARM processor (Raspberry PI 4)?



I=E2=80=99m trying to install batman-adv onto an ARM Raspberry PI 4 with a
Debian based Linux distribution (Pop OS). However, when I run
=E2=80=9Cmodprobe batman-adv=E2=80=9D, it returns a FATAL error complaining=
 that the
module is not found in the =E2=80=9C/lib/modules=E2=80=9D directory. Where =
can I
find/download the =E2=80=9C.ko=E2=80=9D for batman-adv for the ARM platform=
?



And if I need to recompile the .ko file for ARM, is there an online
repository where I can find the original source code for the
batman-adv driver?




--=20
Regards,
Charles
