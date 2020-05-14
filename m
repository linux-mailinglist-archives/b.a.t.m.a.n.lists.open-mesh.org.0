Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 83A151DE5EB
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 22 May 2020 13:52:24 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 59DFB80024;
	Fri, 22 May 2020 13:52:23 +0200 (CEST)
Received: from 11524-02.root.nessus.at (11524-02.root.nessus.at [77.244.245.43])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 1493F801E5
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 14 May 2020 12:29:29 +0200 (CEST)
Received: from 11524-02.root.nessus.at (localhost [127.0.0.1])
	by 11524-02.root.nessus.at (Proxmox) with ESMTP id B7F91406D5
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 14 May 2020 10:29:28 +0000 (UTC)
Subject: Re:
To: b.a.t.m.a.n@lists.open-mesh.org
References: <CADSehqPoEQGqdURG0g8OO85Dvb5dL0eExwG+-9uum8=wz9VXsg@mail.gmail.com>
X-Onebit: yes
From: fboehm@aon.at
Message-ID: <08019330-dc15-cf5f-eaf2-4ee3cfac8aa5@aon.at>
Date: Thu, 14 May 2020 12:29:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <CADSehqPoEQGqdURG0g8OO85Dvb5dL0eExwG+-9uum8=wz9VXsg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1589452169;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ekk1EDBuQSOqrAeFI4Ju1RXzj2q0uRIa1GSZ8LBzpUo=;
	b=SeIuOpNtKgJ1CrtCdhnKHS7tJecPKwpy/QcrOJJdtsjjhHiRMdnDweA1LM/pbPCQyYvi+7
	/8I4Gs/0+m+Q/a0w1vF3O2z+4V9X13YlT99obfxc0rw29TBmMNSYPAuCIoMdaZu7E5I5XM
	syC6KGtEVlX0Ac2rIUDZ4rkfpZ98s2Y=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1589452169; a=rsa-sha256;
	cv=none;
	b=CjeJMOPRz1dMGR/Mzp0nY1EyFiK9XCLW3TSb1OBAPzjkYX2CqgH2ZxSuJ4dhxjeWQ5p8cZ
	Ju8BztehNNGpHknK2pFHMELTdluwRQQ6iCcfWOB2ssoJG2lNfi2Sr/wtZigsaX2zL/UwQ/
	U+Te07SrxraYXIOPTCWk9yyBJk6rGp4=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=softfail (diktynna.open-mesh.org: 77.244.245.43 is neither permitted nor denied by domain of fboehm@aon.at) smtp.mailfrom=fboehm@aon.at
Message-ID-Hash: JWJQJAHTQCMVMR5IRI5FF3DORKNC7HYI
X-Message-ID-Hash: JWJQJAHTQCMVMR5IRI5FF3DORKNC7HYI
X-MailFrom: fboehm@aon.at
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/JWJQJAHTQCMVMR5IRI5FF3DORKNC7HYI/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Maksim, for clarification:

ATWILC3000 is a Wifi-Module for low-end embedded systems. This module 
consists of a Wifi-Chip + a small processor. The processor does stuff 
like authentication/registration with the Wifi network, WPA-Encryption 
and this kind of things. A typical use-case would be to add a Wifi 
interface to some sort of IoT device or some sort of computer peripheral 
device (like a Wifi-enabled printer or a smart-speaker).

Looking at the driver code it might not be impossible but it's just very 
unlikely that you will be happy to use it in combination with Batman. 
You would first of all need to connect the module to a much more 
powerful processor that runs Linux and Batman. But assuming you anyway 
need such a powerful processor for your application then you have a good 
chance that you can use a real Wifi-Adapter (with USB or PICe interface) 
instead of such a Wifi-Module.

Regards,
Franz


Am 14.05.20 um 10:17 schrieb Maksim Iushchenko:
> Hello,
> I am creating a Wi-Fi ad-hoc network based on batman-adv. I read that
> batman-adv is able to work with any types of interfaces, but I still
> have a question related to ad-hoc networking. Will Wi-Fi ad-hoc
> network (based on batman-adv) work if Wi-Fi chip does not support
> 802.11s standard?
> Unfortunately, there is no mention of ad-hoc mode support in
> documentation of many Wi-Fi chips.
>
> How to check if a Wi-Fi chip is suited to be used to create a Wi-Fi
> ad-hoc network based on batman-adv?
>
> For example, is ATWILC3000-MR110CA an appropriate chip to build a
> Wi-Fi ad-hoc network based on batman-adv? Or maybe you could suggest
> any another Wi-Fi chips?
>
> Thanks in advance

