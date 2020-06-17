Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 552931FC890
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 17 Jun 2020 10:27:11 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 3156D8147C;
	Wed, 17 Jun 2020 10:27:10 +0200 (CEST)
Received: from simonwunderlich.de (simonwunderlich.de [79.140.42.25])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 2533C80218
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 17 Jun 2020 09:45:35 +0200 (CEST)
Received: from [IPv6:2003:c5:9715:4400:7e76:35ff:fe14:e6d7] (p200300c5971544007e7635fffe14e6d7.dip0.t-ipconnect.de [IPv6:2003:c5:9715:4400:7e76:35ff:fe14:e6d7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id 9E47A62055;
	Wed, 17 Jun 2020 09:45:34 +0200 (CEST)
Subject: Re: [PATCH] mac80211: mesh: add mesh_param "mesh_nolearn" to skip
 path discovery
From: =?UTF-8?Q?Linus_L=c3=bcssing?= <ll@simonwunderlich.de>
To: =?UTF-8?Q?Linus_L=c3=bcssing?= <linus.luessing@c0d3.blue>,
 Johannes Berg <johannes@sipsolutions.net>
References: <20200616095358.20143-1-linus.luessing@c0d3.blue>
 <cbe4863e-44f3-c0e4-a4f3-1b0a69f7a386@simonwunderlich.de>
Message-ID: <6bef8071-f897-b972-dbf9-17198361dc4e@simonwunderlich.de>
Date: Wed, 17 Jun 2020 09:45:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <cbe4863e-44f3-c0e4-a4f3-1b0a69f7a386@simonwunderlich.de>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1592379935;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=pxN9srYQll+tEyL2PkDDcI2j9M3BaeLf95H5t9sITbo=;
	b=HRO7Ble7zTAFkWohOby65/Rvqf9fHeKv0gWiDLI+afKgRLvKHnmSKB3G+gCmxnJX/ZmQBA
	UsexRYVDhiGE9fApQjV3skWfW1GiR+EDy4DThrs0j+HWANz2Kks67zyVBhRAqtjAEoeXFe
	9ZA8ERApn8tnxwE5Yw5NDWnnzSIxwak=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1592379935; a=rsa-sha256;
	cv=none;
	b=SR/2Lgb6vPmr73AdWPkBuP6YAZsQDVNxY1vGNxPgo1hr75hGikWK38TK/Z59U6gY0g/6wg
	vFyWuR3UiRAvey2xQhU1OJCqY1h6ceFKxL6DGA5v8nd4W2tNJU1ofBrD7fiiwTAizLlQK3
	St2kX+L/i539Ix+CokR4WDK6Vk/wuKg=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of ll@simonwunderlich.de designates 79.140.42.25 as permitted sender) smtp.mailfrom=ll@simonwunderlich.de
Content-Transfer-Encoding: quoted-printable
X-MailFrom: ll@simonwunderlich.de
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: KX67AQVZ6UKOBS3PIRVOHOXMHESLXYXA
X-Message-ID-Hash: KX67AQVZ6UKOBS3PIRVOHOXMHESLXYXA
X-Mailman-Approved-At: Wed, 17 Jun 2020 08:27:08 +0200
CC: linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/KX67AQVZ6UKOBS3PIRVOHOXMHESLXYXA/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On 16/06/2020 12:16, Linus L=C3=BCssing wrote:
>> The new mesh_nolearn parameter allows to skip the PREQ/PREP exchange i=
n
>> this scenario, leading to a reduced delay, reduced packet buffering an=
d
>> simplifies HWMP in general.

And a third observation we've made with HWMP:

When running iperf with 16 parallel TCP streams and the default HWMP=20
parameters over two 4x4 802.11ac Wave 2 wifi cards transmitting about=20
800-1000 MBit/s in total, HWMP becomes quite unstable. We see frequent=20
PREQ/PREP retransmissions and also PERR messages, leading to spurious=20
break downs in the throughput.

When using just 8 TCP streams, so with a little less saturation and=20
stress of the channel, iperf staticstics are stable.


So maybe there would be some potential for optimizations, too, like=20
somehow prioritizing HWMP messages more, or maybe making the default=20
HWMP parameters a bit more conservative.


Or just disabling the HWMP PREP/PREQ/PERR exchange with this new=20
configuration option would at least help the ones that are using another=20
mesh routing protocol on top, who are maybe more familiar with the=20
parameters of their specific routing protocol than with the HWMP paramete=
rs.

Regards, Linus
