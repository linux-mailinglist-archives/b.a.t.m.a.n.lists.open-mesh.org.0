Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id B955A26819C
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 14 Sep 2020 00:07:52 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 78747803DF;
	Mon, 14 Sep 2020 00:07:51 +0200 (CEST)
Received: from mout-p-102.mailbox.org (mout-p-102.mailbox.org [80.241.56.152])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 3D2B1803DF
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 14 Sep 2020 00:07:47 +0200 (CEST)
Received: from smtp2.mailbox.org (smtp2.mailbox.org [IPv6:2001:67c:2050:105:465:1:2:0])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-102.mailbox.org (Postfix) with ESMTPS id 4BqNsG6z8zzKmXF
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 14 Sep 2020 00:07:46 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=txtfile.eu; s=MBO0001;
	t=1600034865;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=yKzxS2oMGKAsBSKoA7TlI7NmTK3AVksDYKhR/MgG8bE=;
	b=mw+yaQzDjOccds67pfqWlbT9jDyeP3S/aNqbOatgzBD4Dt5ejIjmMMN1zcwSZJ8j13QS/C
	QWP05QfrqrD54bbYvF8blBB4keF2cLADITbWmqkIz1RxdINAMKsS8DyGMz5bOze58JqUBI
	MIKWXVCQ5oHQ6iUp/++hvkh045uLo03KzNLMuKVb/TMiJ5KBRfEpurgFnWW41TpJyrnoac
	FUzCZp8DqC6pvxDEVAIkd7dKTU58QMIzgPwYhJ3Z9VT82IIGMe/4reUpvnZ+GWVopvP1aA
	ddX++pD3+4kPkO1pw9RrxAJ9Krlm/4Nr8L55hQjd3nCZqj74DvvjdyxRPDUJdQ==
Received: from smtp2.mailbox.org ([80.241.60.241])
	by spamfilter06.heinlein-hosting.de (spamfilter06.heinlein-hosting.de [80.241.56.125]) (amavisd-new, port 10030)
	with ESMTP id R73CzTKA8kkS for <b.a.t.m.a.n@lists.open-mesh.org>;
	Mon, 14 Sep 2020 00:07:43 +0200 (CEST)
Subject: Re: [PATCH] batctl: tcpdump: Fix endianness in ICMPv6 Echo
 Request/Reply parsing
To: b.a.t.m.a.n@lists.open-mesh.org
References: <20200913213019.4250-1-linus.luessing@c0d3.blue>
From: txt.file@txtfile.eu
Message-ID: <58865265-3048-1fa1-d1f2-8a5b6a0f0487@txtfile.eu>
Date: Mon, 14 Sep 2020 00:07:41 +0200
MIME-Version: 1.0
In-Reply-To: <20200913213019.4250-1-linus.luessing@c0d3.blue>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
X-MBO-SPAM-Probability: 
X-Rspamd-Score: -6.07 / 15.00 / 15.00
X-Rspamd-Queue-Id: F1B1216A5
X-Rspamd-UID: aba1b2
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1600034867;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=yKzxS2oMGKAsBSKoA7TlI7NmTK3AVksDYKhR/MgG8bE=;
	b=DzWJmwER8+CuDtCcKuyjZMnRl1vnrGnviOr06DJiEOcLNT6oCJ9L86vs2qP1NIsuxZcYWJ
	EhB86YE7e37kB40vBokLzv6FxTjSn3weB20BW8oT7a7zV3XXj3S6R9OuppXI15CRlAp74P
	DBmh3H1PHYd+3ggG+kVkw/pL93EWWlQ=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1600034867; a=rsa-sha256;
	cv=none;
	b=fnKefEThUfVQNN4s+WcYOOg/4S5C1a8pCckGZpWupMG+s6KueqDHo0Z8Hm8P8GLOs8q4s6
	+o8BY8gh4T21Ws3CQxTrqH0ejk1P3Sp/TjPyMpU8RIYBAf6RlbwYWjXtyRm41yHm2b8mH4
	BBJ4du1mDOZwgHrTRt8szCNrQKUHSyE=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=txtfile.eu header.s=MBO0001 header.b=mw+yaQzD;
	spf=pass (diktynna.open-mesh.org: domain of txt.file@txtfile.eu designates 80.241.56.152 as permitted sender) smtp.mailfrom=txt.file@txtfile.eu
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: JCZXCR7JBDXQCNDBS2EBXJ7REPEAETJI
X-Message-ID-Hash: JCZXCR7JBDXQCNDBS2EBXJ7REPEAETJI
X-MailFrom: txt.file@txtfile.eu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/JCZXCR7JBDXQCNDBS2EBXJ7REPEAETJI/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

I wonder about the "_might_ need a conversion" as most cpu architectures=20
run little endian. Especially x86.

Wouldn't it be broken since years if it needed big =E2=86=92 little conve=
rsion?

kind regards
txt.file

On 9/13/20 11:30 PM, Linus L=C3=BCssing wrote:
> The ICMPv6 Echo Request/Reply sequence number and id as well as the
> IPv6 header length are two byte long fields and therefore might need a
> conversion on a little endian system. Otherwise the output will be
> broken on such a machine.
>=20
> Fixes: 35b37756f4a3 ("add IPv6 support to tcpdump parser")
> Signed-off-by: Linus L=C3=BCssing <linus.luessing@c0d3.blue>
> ---
>   tcpdump.c | 10 ++++++----
>   1 file changed, 6 insertions(+), 4 deletions(-)
>=20
> diff --git a/tcpdump.c b/tcpdump.c
> index db93681..b9edc20 100644
> --- a/tcpdump.c
> +++ b/tcpdump.c
> @@ -589,13 +589,15 @@ static void dump_ipv6(unsigned char *packet_buff,=
 ssize_t buff_len,
>   			break;
>   		case ICMP6_ECHO_REQUEST:
>   			printf(" echo request, id: %d, seq: %d, length: %hu\n",
> -			       icmphdr->icmp6_id, icmphdr->icmp6_seq,
> -			       iphdr->ip6_plen);
> +			       ntohs(icmphdr->icmp6_id),
> +			       ntohs(icmphdr->icmp6_seq),
> +			       ntohs(iphdr->ip6_plen));
>   			break;
>   		case ICMP6_ECHO_REPLY:
>   			printf(" echo reply, id: %d, seq: %d, length: %hu\n",
> -			       icmphdr->icmp6_id, icmphdr->icmp6_seq,
> -			       iphdr->ip6_plen);
> +			       ntohs(icmphdr->icmp6_id),
> +			       ntohs(icmphdr->icmp6_seq),
> +			       ntohs(iphdr->ip6_plen));
>   			break;
>   		case ICMP6_TIME_EXCEEDED:
>   			printf(" time exceeded in-transit, length %zu\n",
>=20
