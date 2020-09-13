Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id ABB6D2681AD
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 14 Sep 2020 00:23:01 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 77E5080290;
	Mon, 14 Sep 2020 00:23:00 +0200 (CEST)
Received: from fudo.makrotopia.org (fudo.makrotopia.org [IPv6:2a07:2ec0:3002::71])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id E1EE580290
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 14 Sep 2020 00:22:55 +0200 (CEST)
Received: from local
	by fudo.makrotopia.org with esmtpsa (TLS1.3:TLS_AES_256_GCM_SHA384:256)
	 (Exim 4.93.0.4)
	(envelope-from <daniel@makrotopia.org>)
	id 1kHaOa-0003i8-TY
	for b.a.t.m.a.n@lists.open-mesh.org; Mon, 14 Sep 2020 00:22:54 +0200
Date: Sun, 13 Sep 2020 23:22:42 +0100
From: Daniel Golle <daniel@makrotopia.org>
To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
Subject: Re: [PATCH] batctl: tcpdump: Fix endianness in ICMPv6 Echo
 Request/Reply parsing
Message-ID: <20200913222242.GB11498@makrotopia.org>
References: <20200913213019.4250-1-linus.luessing@c0d3.blue>
 <58865265-3048-1fa1-d1f2-8a5b6a0f0487@txtfile.eu>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <58865265-3048-1fa1-d1f2-8a5b6a0f0487@txtfile.eu>
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1600035776;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=u92p1bSYM9U/0qT+r9RA0robgHlYjB+aLFraRh3MJvQ=;
	b=wV6Iz+vuG5wPBu489ckAljSljCS6VGvmioRNpX16nD8BEM0xLt3vnARcBTUcq04PeLuTKc
	PuUq1FoG6s1NdwG7RZCmLZJFWfKIc9J5KaAQxLywvmbkz/oSz//fmbBPiZveVpscYbf3rL
	j53nZpAnfs02INLzlp754wcQxHtnKCk=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1600035776; a=rsa-sha256;
	cv=none;
	b=PQO9JboMtdZrpEdm/+HuLqM1gNT5QDF+KLLI4l9brF9YesLl+Dm1ky3KxzX+o65AIMIy4n
	u8ZFlUXuApMDqWQXFgUyhsA2Wv1MiPE1ZfqvBqvsIUnDTfXI66GURcWOhAS3aSbXB2K41B
	JG1LLw4cQT1ybQhVcmpKCk/Vy7dL6QM=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of daniel@makrotopia.org designates 2a07:2ec0:3002::71 as permitted sender) smtp.mailfrom=daniel@makrotopia.org
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: AM7NQ4EX7HEXR2I5LYFRAMKC3VJU2SUU
X-Message-ID-Hash: AM7NQ4EX7HEXR2I5LYFRAMKC3VJU2SUU
X-MailFrom: daniel@makrotopia.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/AM7NQ4EX7HEXR2I5LYFRAMKC3VJU2SUU/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Mon, Sep 14, 2020 at 12:07:41AM +0200, txt.file@txtfile.eu wrote:
> I wonder about the "_might_ need a conversion" as most cpu architecture=
s run
> little endian. Especially x86.
>=20
> Wouldn't it be broken since years if it needed big =E2=86=92 little con=
version?

The tcpdump output for IPv6 echo request/reply was for sure broken for
years on little endian targets.
Note that most old-school router platforms are big endian, hence it
worked well on the common ubiquiti and tp-link devices.

>=20
> kind regards
> txt.file
>=20
> On 9/13/20 11:30 PM, Linus L=C3=BCssing wrote:
> > The ICMPv6 Echo Request/Reply sequence number and id as well as the
> > IPv6 header length are two byte long fields and therefore might need =
a
> > conversion on a little endian system. Otherwise the output will be
> > broken on such a machine.
> >=20
> > Fixes: 35b37756f4a3 ("add IPv6 support to tcpdump parser")
> > Signed-off-by: Linus L=C3=BCssing <linus.luessing@c0d3.blue>
> > ---
> >   tcpdump.c | 10 ++++++----
> >   1 file changed, 6 insertions(+), 4 deletions(-)
> >=20
> > diff --git a/tcpdump.c b/tcpdump.c
> > index db93681..b9edc20 100644
> > --- a/tcpdump.c
> > +++ b/tcpdump.c
> > @@ -589,13 +589,15 @@ static void dump_ipv6(unsigned char *packet_buf=
f, ssize_t buff_len,
> >   			break;
> >   		case ICMP6_ECHO_REQUEST:
> >   			printf(" echo request, id: %d, seq: %d, length: %hu\n",
> > -			       icmphdr->icmp6_id, icmphdr->icmp6_seq,
> > -			       iphdr->ip6_plen);
> > +			       ntohs(icmphdr->icmp6_id),
> > +			       ntohs(icmphdr->icmp6_seq),
> > +			       ntohs(iphdr->ip6_plen));
> >   			break;
> >   		case ICMP6_ECHO_REPLY:
> >   			printf(" echo reply, id: %d, seq: %d, length: %hu\n",
> > -			       icmphdr->icmp6_id, icmphdr->icmp6_seq,
> > -			       iphdr->ip6_plen);
> > +			       ntohs(icmphdr->icmp6_id),
> > +			       ntohs(icmphdr->icmp6_seq),
> > +			       ntohs(iphdr->ip6_plen));
> >   			break;
> >   		case ICMP6_TIME_EXCEEDED:
> >   			printf(" time exceeded in-transit, length %zu\n",
> >=20
