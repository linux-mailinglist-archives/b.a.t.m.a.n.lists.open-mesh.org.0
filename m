Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EC405532A2
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 21 Jun 2022 14:58:03 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id EABFB8211F;
	Tue, 21 Jun 2022 14:58:01 +0200 (CEST)
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 87610804F1
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 20 Jun 2022 12:20:24 +0200 (CEST)
Received: by mail-pj1-x1035.google.com with SMTP id b12-20020a17090a6acc00b001ec2b181c98so8726962pjm.4
        for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 20 Jun 2022 03:20:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=creonexsystems-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:references:in-reply-to:subject:date:message-id
         :mime-version:content-transfer-encoding:thread-index
         :content-language;
        bh=M0Lr5IVftt6LY+lhHh7CFvazaRIawdHj4gp1QdwoCZY=;
        b=Yz8pCH+DYaYM5ln0m/i5QPqGd5wPd+FBALUB2oqNFWZW2A4wiwmJ5/VhUpVtg6Ij+Q
         SsysHkA2C2CHqk1uEbN9jSg65tsaAieRxaXKmvnEi+qoEQACjT9cVuMkhQ32WQCFvnfP
         QtnLFi0oEAnPkrFCog4QiK0e0rkA77xK5XwG1CXKhDOkExoZgVAsBFPCJHEQfjgXCumU
         3BPqg8uDn+9JssvItve12PZ8dMq9m0PBGnTyQjOLc/+4wMZQvHSdwHnsZqNyKzT8Bn+F
         KyULPMkMqDF2QUXFdNZ+76kEYvYeXuDy4xty4v+dW5bNQNB1lnapqP7rMigDi5dsL1QP
         9oQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:references:in-reply-to:subject:date
         :message-id:mime-version:content-transfer-encoding:thread-index
         :content-language;
        bh=M0Lr5IVftt6LY+lhHh7CFvazaRIawdHj4gp1QdwoCZY=;
        b=caxF7PwTEVZwteUGagJJxj6QLcKQanHWmr4ACpXvoAokfZ2xDh+Q+Zj0Aa3fuwYAhP
         KORlGD5gsFDSVr/DShTOi3N9rfgy4M3T4o5nKFdExZpYPNl3mNy/+YnNIv7CuogxYXnx
         fOb+aVnHD015iCBlRNWW/Y7aidb5PpItrTLjilriLt4Lp1kmCyiHNJlWi4XBEPnotyPs
         EuyhEix5MHUTb4dlV1jOP+d/lMmzU/i+HH0qtNH8nkv7+btqNpwEmbggWdZ0neCuqlyN
         odGgn34ySREIbK6rT9scNjCD2bmO5JmPiXhhxCR3YI/Q+J1jMND5SO8jythBAPbx2mhh
         rqpg==
X-Gm-Message-State: AJIora9hNRnK5SCv5TK1HLMYnG117yoenHn1QtjaPyE/Dx9rvgDXTcU4
	zbO8qSI6bxJJluX7o5vFEpFOLc18WcVKJw==
X-Google-Smtp-Source: AGRyM1uMkgbo6E4662NF7D6NWG1oqnCOUpZHDSPNHQPWOG8BRNqdKYyRhH/3lK1HSHGuQ/91swchOA==
X-Received: by 2002:a17:902:684d:b0:16a:53f:4d36 with SMTP id f13-20020a170902684d00b0016a053f4d36mr16464003pln.34.1655720422339;
        Mon, 20 Jun 2022 03:20:22 -0700 (PDT)
Received: from CCJoshua27 (c-73-70-252-191.hsd1.ca.comcast.net. [73.70.252.191])
        by smtp.gmail.com with ESMTPSA id f2-20020a62db02000000b0051868677e6dsm8795101pfg.51.2022.06.20.03.20.21
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Jun 2022 03:20:21 -0700 (PDT)
From: <cchien@creonexsystems.com>
To: "'Sven Eckelmann'" <sven@narfation.org>
References: <CAKau_3_sEaG2w7M+rQ-nuVG3_5GWHEV3UxmdG1bM-WPY7S8WxA@mail.gmail.com> <03ca01d86c61$6781b190$368514b0$@creonexsystems.com> <049201d88226$14ca9ae0$3e5fd0a0$@creonexsystems.com> <3826484.QQW5a1qdB9@ripper>
In-Reply-To: <3826484.QQW5a1qdB9@ripper>
Subject: RE: Question about batman for ARM
Date: Mon, 20 Jun 2022 03:20:19 -0700
Message-ID: <014301d8848f$5874d0b0$095e7210$@creonexsystems.com>
MIME-Version: 1.0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQHOQPARSDo6tLJ7A4PHjjuWG3RH7AHR1UzhAflUa0IBmmo9KK1BbiJw
Content-Language: en-us
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1655720424; a=rsa-sha256;
	cv=none;
	b=p5ADA7fP6VNfiVySf63yUNfOSS5PSXxcVUEbJLuwVNmLQJsVWfRHxmdslTLb9rzbEhsir8
	jKor9d0GJuqPzqxgkUYjysqDCJ6j/lhe6PJfK1GWaL9HS7KlNUi7SnR+q6lSsh0PfdAOVb
	03HLOyQ0n7MIQWCaXG9uyVjtEWhUno4=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=creonexsystems-com.20210112.gappssmtp.com header.s=20210112 header.b=Yz8pCH+D;
	spf=none (diktynna.open-mesh.org: domain of cchien@creonexsystems.com has no SPF policy when checking 2607:f8b0:4864:20::1035) smtp.mailfrom=cchien@creonexsystems.com;
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1655720424;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=M0Lr5IVftt6LY+lhHh7CFvazaRIawdHj4gp1QdwoCZY=;
	b=dEq+w4VMo7ZkBqZIiP1mEL0aGzjmh8hnDdRxxkybUhkRg3RrVRz/JQBc4piBSBk7PHYNDr
	EMEoxUWvlTcWDldGfXXlFkibf8FCttCFi44d2C8Bm62rPUEFAk7/b+GGEBaMA0N3ZOBjO3
	+vddtHnKVa0vEaOrciAIshBztxikzcE=
X-MailFrom: cchien@creonexsystems.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: 3QJB2572SRDJQWVOEAXB3F4DQ7KNDWO4
X-Message-ID-Hash: 3QJB2572SRDJQWVOEAXB3F4DQ7KNDWO4
X-Mailman-Approved-At: Tue, 21 Jun 2022 12:57:59 +0200
CC: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/3QJB2572SRDJQWVOEAXB3F4DQ7KNDWO4/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi Sven,

Thank you for the insight.
We definitely do not want to reimplement BATMAN.
Does BATMAN ADV interfaces with the radio via the network driver or does
BATMAN include the network driver?
Can you provide some guidance on where the network driver or interface to
network driver is located within BATMAN?

Regards,
Charles

-----Original Message-----
From: Sven Eckelmann <sven@narfation.org> 
Sent: Friday, June 17, 2022 1:46 AM
To: cchien@creonexsystems.com
Cc: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: Question about batman for ARM

On Friday, 17 June 2022 10:41:46 CEST cchien@creonexsystems.com wrote:
[...]
> We would like to use batman with a custom radio and are trying to figure
out what part of the source code we may need to modify to allow batman to
work with a custom radio.
> Custom radio means that the radio is not a commercial radio, such as wi-fi
or Bluetooth.

batman-adv (especially with the B.A.T.M.A.N. IV algo) only requires that the
device itself can transport ethernet frames (with proper unicast and
broadcast behavior). If you need something else then you either need a
virtual interface which does the translation from $whatever to ethernet (and
back) - or you need to reimplement the B.A.T.M.A.N. IV/V algorithms
yourself.

Kind regards,
	Sven
