Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 98C3C1FADDA
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 16 Jun 2020 12:25:35 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 6C62F8085F;
	Tue, 16 Jun 2020 12:25:34 +0200 (CEST)
Received: from simonwunderlich.de (simonwunderlich.de [79.140.42.25])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 248D1800A1
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 16 Jun 2020 12:16:52 +0200 (CEST)
Received: from [IPv6:2003:c5:9716:5300:7e76:35ff:fe14:e6d7] (p200300c5971653007e7635fffe14e6d7.dip0.t-ipconnect.de [IPv6:2003:c5:9716:5300:7e76:35ff:fe14:e6d7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id 95F6762055;
	Tue, 16 Jun 2020 12:16:51 +0200 (CEST)
Subject: Re: [PATCH] mac80211: mesh: add mesh_param "mesh_nolearn" to skip
 path discovery
To: =?UTF-8?Q?Linus_L=c3=bcssing?= <linus.luessing@c0d3.blue>,
 Johannes Berg <johannes@sipsolutions.net>
References: <20200616095358.20143-1-linus.luessing@c0d3.blue>
From: =?UTF-8?Q?Linus_L=c3=bcssing?= <ll@simonwunderlich.de>
Message-ID: <cbe4863e-44f3-c0e4-a4f3-1b0a69f7a386@simonwunderlich.de>
Date: Tue, 16 Jun 2020 12:16:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200616095358.20143-1-linus.luessing@c0d3.blue>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1592302612;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=7qsQy/vognlrgQpLK9YXo6HHaBwvDKo0N/PgwLc5a2Y=;
	b=nV7C3Wnep4s2hBm3JDSI5FoCw/BD22VWr87sYQVPMmkHkP8yp9a/pzmLfFs+cjWYGO9+sH
	+n7DexSu/J7FaSklc+kHnnrwjkzFVzPrZdE3Jg2wZKYkR1bBq8YQKvmYZde2dTHZKGAHay
	KLQrDW4MQ0paqYAtuMw2SlTDqMjR7Q0=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1592302612; a=rsa-sha256;
	cv=none;
	b=th4q7UAaDZpmTki9L0vnGmv9ruNwr8wJWE4WWgT5P2Ffpkvez36Vag9ilFyZdHtx/TLNGK
	NFu1/x5x6B2P7QZvnZSXUkUEiq1oegIYcvWhYYlWZeUCYisNmXcErwzyOJHs6SO7dTSZw3
	Hy/A/qKuM+J17Gcl8wu6D2OUka3xorw=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of ll@simonwunderlich.de designates 79.140.42.25 as permitted sender) smtp.mailfrom=ll@simonwunderlich.de
X-MailFrom: ll@simonwunderlich.de
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: YQM2AO6SL5DU25PAAUZYL5MLWPAEUBII
X-Message-ID-Hash: YQM2AO6SL5DU25PAAUZYL5MLWPAEUBII
X-Mailman-Approved-At: Tue, 16 Jun 2020 10:25:32 +0200
CC: linux-wireless@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/YQM2AO6SL5DU25PAAUZYL5MLWPAEUBII/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

> The new mesh_nolearn parameter allows to skip the PREQ/PREP exchange in
> this scenario, leading to a reduced delay, reduced packet buffering and
> simplifies HWMP in general.

Also another small remark regarding the simplification:

Next to the timer re-arming bug / crash [0] we also stumbled over 
another bug when using encryption on the 802.11s interfaces which we 
could quite solve yet:

We are seeing packet loss every four seconds due to a "DECRYPT CRC ERR". 
We could narrow this down to the PREQ. This somehow makes the receiver 
unable to decrypt the packet in hardware and also the fallback to 
software decryption fails as the hardware has messed up the encrypted 
data (looks completely different than what we saw in the air with a 
third device in monitor mode, unencrypted headers looked ok though). 
Furthermore, the hardware still sends ACKs for this frame... so no 
retries on the 802.11 layer, leading to ugly packet loss for one UDP 
packet every four seconds.

The hardware we were having this issue with is a Lima board with a QCA4531.

Setting ath9k nohwcrypt=1 on the sender side helps. And avoiding PREQs 
with this patch also helped in our batman-adv setup which had 
mesh_fwding disabled already anyway.

Regards, Linus


PS/Disclaimer: This bug was observed on an old LEDE version.


[0]: https://patchwork.kernel.org/patch/11566011/
