Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id B93205036F6
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 16 Apr 2022 16:01:32 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 7437382E28;
	Sat, 16 Apr 2022 16:01:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1650117691;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=G7iOBW0kzPjL3DlS/72GoRUTbF7ZWeXR4lJ7xvi/yaQ=;
	b=y2OvlYrWZEaEAs357AJqFqA6uUGXfDqJJgsaa2ssD1yw+hLV0ym8f9BRKnAaAy6Lorto0K
	WHdF+VIRhLHsh+YUHwANz+dsYrFqsAOSYL/6rrFzBMdjLe7NSZjUSi63zY2ATlz2m6TRvc
	gllGfNHkqMd3BM0bgllLJ7JF9NulYXY=
Date: Sat, 16 Apr 2022 10:01:25 -0400
Subject: Re: [PATCH] batman-adv: Don't skb_split skbuffs with frag_list
To: Sven Eckelmann <sven@narfation.org>, b.a.t.m.a.n@lists.open-mesh.org
References: <20220416122434.33061-1-sven@narfation.org>
In-Reply-To: <20220416122434.33061-1-sven@narfation.org>
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/CAP4PFHFLQI5HZWVCE74X76T24J7FA6O/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
MIME-Version: 1.0
Message-ID: <165011769041.26690.10778801125078465694@diktynna.open-mesh.org>
From: "Felix Kaechele via B.A.T.M.A.N" <b.a.t.m.a.n@lists.open-mesh.org>
Cc: Felix Kaechele <felix@kaechele.ca>
Content-Type: multipart/mixed; boundary="===============9222170974571496165=="

--===============9222170974571496165==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============9222170974571496165==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from mail.kaechele.ca (mail.kaechele.ca [54.39.219.105])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 51F64807C2
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 16 Apr 2022 16:01:28 +0200 (CEST)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 0A027C005F;
	Sat, 16 Apr 2022 10:02:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kaechele.ca; s=201907;
	t=1650117764; h=from:subject:date:message-id:to:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=AG66uDJmwb5438qh6lMF8528PBHQHwcQtRSOe0TcuLM=;
	b=IGeQzEDX5AlUFi/CoV+0Cznzbhdg1xJJFf+N/y1UP7KWyKohPtvS+lb8/5rxCPg/teOoeD
	LTP5U10ekdJuLc8ocxTsxxiHCphkMe6WDNnmyI3lBhKE15e6Dtdgo3QaLgIyWU4IZA1fFJ
	++sXiaZq5oDO47oSr1zsTqWOYujH4+U=
Message-ID: <bf02aeff-210c-a5e0-47d7-c5b276c9b794@kaechele.ca>
Date: Sat, 16 Apr 2022 10:01:25 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: [PATCH] batman-adv: Don't skb_split skbuffs with frag_list
Content-Language: en-US
To: Sven Eckelmann <sven@narfation.org>, b.a.t.m.a.n@lists.open-mesh.org
References: <20220416122434.33061-1-sven@narfation.org>
From: Felix Kaechele <felix@kaechele.ca>
In-Reply-To: <20220416122434.33061-1-sven@narfation.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Last-TLS-Session-Version: TLSv1.3
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1650117688; a=rsa-sha256;
	cv=none;
	b=fzX0Htl+B5oOxA3yRLltL7LVAJcusRMMMExl2u5X7LwfJyBwgojHPsUnOuZNGkcos0rxXH
	ucEhhsEPduiCt+qvtQ8xQFtGybXVv5pAVp1fQDPHAbMH0Ac1QHFMkVs4geZo6ndOqj/LgK
	rJ3wKiQxFiI9XTp14kdFLru5uMHXH9Y=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=kaechele.ca header.s=201907 header.b=IGeQzEDX;
	spf=pass (diktynna.open-mesh.org: domain of felix@kaechele.ca designates 54.39.219.105 as permitted sender) smtp.mailfrom=felix@kaechele.ca;
	dmarc=pass (policy=reject) header.from=kaechele.ca
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1650117688;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=AG66uDJmwb5438qh6lMF8528PBHQHwcQtRSOe0TcuLM=;
	b=oI8XJ0o28+5ljgM+cKGw7lKwzotWjo1EPcxSHjo3UNaYYzOoO4aWhzzMhF8bABsRrGnq3V
	+gq+WvDvshMwda33pTY9XHEgscisjTRmQk7/zmX8zPY7YzaRG9nSH/CxcgrUcSbztIO1ZZ
	bnOtsBicUXMtXK4LEqVGmgLkS+xmnyY=
Message-ID-Hash: CAP4PFHFLQI5HZWVCE74X76T24J7FA6O
X-Message-ID-Hash: CAP4PFHFLQI5HZWVCE74X76T24J7FA6O
X-MailFrom: felix@kaechele.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/CAP4PFHFLQI5HZWVCE74X76T24J7FA6O/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

Hi there,

initial testing shows that this patch seems to fix the issue.
We are currently at 30 minutes of uptime on our fairly busy mesh which 
is already 15-30 times better than before.

Thanks for the super quick turnaround on this one, especially on easter 
weekend.

I will report back after some more uptime, but I have a feeling that if 
it is working right now it will probably continue to function just fine.

Thanks again!

Regards,
Felix
--===============9222170974571496165==--
