Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 890B0504842
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 17 Apr 2022 18:07:58 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 4B81B80FB1;
	Sun, 17 Apr 2022 18:07:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1650211677;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=KViTnOQ1kv7g6hfVtz50cs2NAg3ffOyFAD6OuXs+pqU=;
	b=P+7o2cs5QbMMZQRdrhhyor65uDYZYSZkNqt9puVTM3TAaJvsjzpENUnROAmeIWAgnXAK1Y
	zgO/sbVTC+ijykfjcwW0OUIgT/d0g1mHROGVO0GJrvfIsbdx7mDMq4lKJ7RKkSJL1An1tL
	Y9UnFvRLBH8CqHL7Xszw6v9OvorrAV8=
Date: Sun, 17 Apr 2022 12:07:47 -0400
Subject: Re: [PATCH] batman-adv: Don't skb_split skbuffs with frag_list
To: "Felix Kaechele via B.A.T.M.A.N" <b.a.t.m.a.n@lists.open-mesh.org>,
 Sven Eckelmann <sven@narfation.org>
References: <20220416122434.33061-1-sven@narfation.org>
 <165011769041.26690.10778801125078465694@diktynna.open-mesh.org>
In-Reply-To: <165011769041.26690.10778801125078465694@diktynna.open-mesh.org>
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/2VW4Z3ZQUZYJO7DLTPXSP3HB4UFUMJ5V/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
MIME-Version: 1.0
Message-ID: <165021167626.26690.1311033522967463748@diktynna.open-mesh.org>
From: "Felix Kaechele via B.A.T.M.A.N" <b.a.t.m.a.n@lists.open-mesh.org>
Cc: Felix Kaechele <felix@kaechele.ca>
Content-Type: multipart/mixed; boundary="===============0554140720819162029=="

--===============0554140720819162029==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============0554140720819162029==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from mail.kaechele.ca (mail.kaechele.ca [IPv6:2607:5300:60:7a38::25:1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 231B380FB1
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 17 Apr 2022 18:07:51 +0200 (CEST)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id A0AC3C005F;
	Sun, 17 Apr 2022 12:09:08 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kaechele.ca; s=201907;
	t=1650211749; h=from:subject:date:message-id:to:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=sdrjRJVYvypCOOmiXGIJFcmHF2wrMaJ+/y1PNpywwbk=;
	b=liQKaed5LBN6pKxhUVrBAMCWSV9r4W4gY/ppFp8vx5plZJcxkXyE/ZXTKNsmBznqANlqat
	S7pvXYr3cJz2lACsGBFkLc/PFPzp0T9jqJepI/XVJ2p6KThyhH6Dbx5FTbBD44QNcT+JEd
	J+Hr3vaUdw9Tv5sTgsrBuF1LT6vvzjM=
Message-ID: <8f4ae660-a16f-6d39-b558-5f151be11a8a@kaechele.ca>
Date: Sun, 17 Apr 2022 12:07:47 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: [PATCH] batman-adv: Don't skb_split skbuffs with frag_list
Content-Language: en-US
To: "Felix Kaechele via B.A.T.M.A.N" <b.a.t.m.a.n@lists.open-mesh.org>,
 Sven Eckelmann <sven@narfation.org>
References: <20220416122434.33061-1-sven@narfation.org>
 <165011769041.26690.10778801125078465694@diktynna.open-mesh.org>
From: Felix Kaechele <felix@kaechele.ca>
In-Reply-To: <165011769041.26690.10778801125078465694@diktynna.open-mesh.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Last-TLS-Session-Version: TLSv1.3
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1650211675; a=rsa-sha256;
	cv=none;
	b=OOux0Fp2w2pgoURQwEx2fjj4G8ycjzZNyDB8GwK0hTJ3H5n3eaFMs57sf3gLNZWw6HOlCK
	wDrF1OnSsQOLHCsZ1kX1fyIpHAuLzIdLIZkeTCOookLqPjD4F19gMtvzfGEcLcAMw7tdmQ
	W6XJKXd7Po6TbUeI7yKkGi3I4akbKhA=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kaechele.ca header.s=201907 header.b=liQKaed5;
	spf=pass (diktynna.open-mesh.org: domain of felix@kaechele.ca designates 2607:5300:60:7a38::25:1 as permitted sender) smtp.mailfrom=felix@kaechele.ca;
	dmarc=pass (policy=reject) header.from=kaechele.ca
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1650211675;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=sdrjRJVYvypCOOmiXGIJFcmHF2wrMaJ+/y1PNpywwbk=;
	b=ir4vs+GOMMMpT6wK+S+H44vFvgboRcMFd6EHL9QgmDgrizQhWaIpheigD7MoEa3UJpyk40
	6P1OA6x00nrti+WLFU2G2KCC6Cn4eNSnySqRcKjSqGDQTQoDU36xNFhGuYSSzLiFXYtmI2
	90TtUsT6d/dqnLq+n533zr9wrvPT5ug=
Message-ID-Hash: 2VW4Z3ZQUZYJO7DLTPXSP3HB4UFUMJ5V
X-Message-ID-Hash: 2VW4Z3ZQUZYJO7DLTPXSP3HB4UFUMJ5V
X-MailFrom: felix@kaechele.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/2VW4Z3ZQUZYJO7DLTPXSP3HB4UFUMJ5V/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

After more than 24 hours of continued uptime without any further 
incidents I am giving this the seal of approval:

Tested-by: Felix Kaechele<felix@kaechele.ca>

Thanks again!
Felix
--===============0554140720819162029==--
