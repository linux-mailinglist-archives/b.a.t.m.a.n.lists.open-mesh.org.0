Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E5A31E6D71
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 28 May 2020 23:17:12 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 8A2FC821E6;
	Thu, 28 May 2020 23:17:11 +0200 (CEST)
Received: from ory.petesbox.net (ory.petesbox.net [62.210.252.27])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 69D54802DB
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 28 May 2020 23:17:09 +0200 (CEST)
Received: by ory.petesbox.net (Postfix, from userid 326)
	id 0D1A94067B; Thu, 28 May 2020 17:17:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed; d=petesbox.net; s=ory;
	t=1590700629; bh=fUymqDhfk7Gswrl6yhqs4vNu56vFcGleES1+KLFCAi4=;
	h=Reply-To:Subject:To:References:From:Cc:Date:In-Reply-To:From;
	b=wbOxHgugdzbyZg0vORGCeKvVsQ96pYARzKBTwNBKXjX41myvp+rCpF1YS8swwjkvi
	 nt+osMt21dN9hv8tDSOMwDpAH0NAcxgTN8J70xLeYKf3AXvy7PuGGF7eMYq61WNbHU
	 tU2QV+QRjBBUM5xluSAIFajabloJbtfZs9N6XQw67PBvN7KagyR6K8S2At661k3zT2
	 HSo94ukdHfzAqiqKh5WC6je4Y55gWiDKe/sxULgvN+TpgXTu1D5NipjkG2gA18Q9qb
	 Q5JoFjFz+4YweIVQmt9KEGPknoQjVNBDHD00mg+nk4N9Ij3hOqSsc1vra/u2/uI/Pt
	 vjkoarzDY84SQ==
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ory.petesbox.net
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=4.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.2
Received: from [192.168.2.68] (unknown [38.21.219.2])
	by ory.petesbox.net (Postfix) with ESMTPSA id 71EE740462;
	Thu, 28 May 2020 17:17:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed; d=petesbox.net; s=ory;
	t=1590700626; bh=fUymqDhfk7Gswrl6yhqs4vNu56vFcGleES1+KLFCAi4=;
	h=Reply-To:Subject:To:References:From:Cc:Date:In-Reply-To:From;
	b=WQCXzxglADTHpNxQSQ3WEW2smtPhEzsGZnQLoOE6b5D8GO2vk2iG0S0BMeNNz86r3
	 eTIQgKB/biZTQkjmZqPvx8caS36i44+H3zR04eJG/DIAfmAN5p8+BOblBVMJL/0djX
	 Qz4PYkjHMPiwRd6lFIo/m3NCSqm74mdwLwLhUR5ZHU8RCL2A8/bIUCTklTlkc8N47R
	 o7hZn4suGTTPzoLISNA//PSLlHX/9sHhFSNW2PSZoTN9H0KNGo5cfoCl5gdUhmeAp8
	 VsGOYdSq77fjnrBU/ppodLasTHEEQCVWnxbphPLuphuq3oAOvWur8kkh2y0s3OvZcT
	 vgd4RpDsBJXfw==
Subject: Re: Network stops passing traffic randomly
To: Sven Eckelmann <sven@narfation.org>
References: <20200525083512.832.13419@diktynna.open-mesh.org>
 <32459667.Id32LJz2i1@bentobox>
 <cf75d66e-b0ac-632d-34e6-681ed9c6769d@coolheads.com>
 <3401202.5RrQZ6mRRn@sven-edge>
From: Steve Newcomb <srn@coolheads.com>
Message-ID: <cc2df026-9a41-f8f7-fd05-f66f71ca87fe@coolheads.com>
Date: Thu, 28 May 2020 17:17:05 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <3401202.5RrQZ6mRRn@sven-edge>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1590700629;
	h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=fUymqDhfk7Gswrl6yhqs4vNu56vFcGleES1+KLFCAi4=;
	b=O6okdZniBQ1u+dSkcPcY+GDKLByqJPEPp+lYV8cDXfrAlMfvR4qhp+V7Th64YO59p5gSfL
	Boui5PTmplD0ehVUB7sCHkfcP5boOos0O3rgnVU+Wz5TlG+C9zxwbdGZbl9SBajw1DWmM+
	BT7UOG5b0zitCgjGDcgXze3mHDgqxp0=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1590700629; a=rsa-sha256;
	cv=none;
	b=iRP005yP0ICwq46tsZK9186T7L5nXsf8J995wS+8r3GM/6EdyZv6HtfzuYCwGGd8aOwo1T
	IUT0yfLtX/gCzflu5l+lWsJrg4oil088bZ5mKpB0kMOrUMtIq9bXaYdC+IbkgCCAu94gMi
	ViOnTsyK1sH4QpALFQGBRQOoOCA87mQ=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=petesbox.net header.s=ory header.b=wbOxHgug;
	dkim=fail (headers rsa verify failed) header.d=petesbox.net header.s=ory header.b=WQCXzxgl;
	spf=pass (diktynna.open-mesh.org: domain of srn@coolheads.com designates 62.210.252.27 as permitted sender) smtp.mailfrom=srn@coolheads.com
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: PYZKZSGBTDT4DSKAKI7VU3RUMABMORGG
X-Message-ID-Hash: PYZKZSGBTDT4DSKAKI7VU3RUMABMORGG
X-MailFrom: srn@coolheads.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: srn@coolheads.com, The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/PYZKZSGBTDT4DSKAKI7VU3RUMABMORGG/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Thanks very much for the advice and clues.=A0 I'll report what happens.

By the way, the problem *never* occurs when all devices are inside my=20
house.=A0 It only happens in the field.=A0 It will take a long time to do=
=20
this test, because I'll have to set one device up, first, in a remote=20
location, wait for the problem to occur, and then perform the test.=A0 If=
=20
the problem doesn't occur, I assume that would be significant, too.

On 5/28/20 3:31 PM, Sven Eckelmann wrote:
> [please don't send me private mails about batman-adv - unless you have =
a
>   really good reason to do so. And if not stated otherwise, I must assu=
me
>   that you actually wanted to send you message to the mailing list]
I did.=A0 Oops.
>
> On Thursday, 28 May 2020 21:18:36 CEST Steve Newcomb wrote:
>>> My first guess is that the underlying interfaces (mesh0) stopped to t=
ransport
>>> unicast frames. Did you check this by setting an IP on mesh0 and ping=
 between
>>> these devices using the IPv4 ping?
>> Not sure what the phrase "to set an IP on mesh0" means, if not simply =
to
>> endow the corresponding bridge with a static IP.  Which is what I'm do=
ing.
>>
>> Not sure what "IPv4 ping" means.  I've disabled IPv6, so I'm not using
>> anything but IPv4.
> I am assuming that mesh0 is the device which was added to bat0 as slave=
.
> Please replace this with whatever you are using
>
>      # on device 1
>      ip addr add 192.168.23.1/24 dev mesh0
>
>      # on device 2
>      ip addr add 192.168.23.2/24 dev mesh0
>
>
>> If "IPv4 ping" means "the ordinary Linux ping command", then, yes, I'v=
e
>> tried that.
> The IPv4 ping was just a placeholder for "not batman-adv ping packets".=
 So you
> can also use ICMPv6 if you prefer. Just make sure to send it over the
> underlying ("slave") interface of batman-adv. And not on bat0 or any hi=
gher
> layer bridge/vlan/... interface.
>
> With the addresses mentioned earlier:
>
>      # on device 1
>      ping 192.168.23.2
>
>      # on device 2
>      ping 192.168.23.1
>
> And also observe with tcpdump what is received by the other end.
>
>> 100% packet loss when the offline condition occurs.  Batctl
>> o, on the other hand, looks just fine.
> Sounds to me like "mesh0" is still able to transport broadcast frames (=
which
> are used for the OGMs - which "create" the originator lists in `batctl =
o`).
> And if you cannot send unicast frames anymore on mesh0 then something i=
s wrong
> with the unicast part.
>
> For example, when you are using encryption for the mesh0 link, maybe th=
e group
> key is still set correctly but something happened with the pairwise key=
 and it
> is now "corrupted".
>
> Kind regards,
> 	Sven
