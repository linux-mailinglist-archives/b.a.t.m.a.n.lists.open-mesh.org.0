Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4Lp9Cjk7GWpVtAgAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 29 May 2026 09:07:37 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id D84A85FE52E
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 29 May 2026 09:07:36 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 84D948074F
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 29 May 2026 09:07:36 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1780038456;
 b=OMjKPnIHq+y8JEeh6ky5pwUxBOKPkcfoGgxP0v+P2bbDoq61NomxE1Quxc4TlcFTtyucO
 NkfYqw7yMplkbC7Zyqvb99xq3W2wh1BuDNagijMrqqb3SA0rphrk+ERgy4Fo3fSqhPJsqji
 gXBnmi/2Yu60UCd8oqP6GamEMtdVxwM=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1780038456; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=iuyGubf2/NYJK3ycC+f5/Zj97zRD1Z6XF2ZBowjdOAI=;
 b=Ag6DZxIkKLdsGdCl+WEvYfUP6DyWI5Y4aFvPJ/RH1+9gcH7JeLnjqVR50ZgQuEJ2phgRs
 ByCXZT6TIjSc2vf/zpSkjVtqmuPfHzMb5voywGGb8x+NlN4Fxb1mycE/EOebkBEB60iWJaN
 h22h9OuENV00fYIsKWWFdYBShblpR0U=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 469C480B6E
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 29 May 2026 09:07:04 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1780038434;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=iuyGubf2/NYJK3ycC+f5/Zj97zRD1Z6XF2ZBowjdOAI=;
	b=V/kVHWeB7SlUU/s5RH0mV/MRiLBFD0QOYU5znWDlKQwhcHLEIvjGGxFg8y8xc47q8lde/t
	+EWmZFRzUnJ2JnGwb9Fa9X+tXha1EK15VL9lOszktopi8KV848obY/yRaqsmaLNUo51lwV
	FV/W3Nvh+ZUbGnIZItdkfXoSdUCOsPk=
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1780038434;
	b=NsXbb+ukKmhweJo424I0k9DIUZNNoLiN299XjtS1PJvthApItrP0zqb3APzNqxRh0jMo/l
	vXJOcjsF5INZwNqmFMtg8x6FjzGudO+VvAnl0Bv5c+c6HNM1C9wa+hkpsNoXy8TnLSCtg9
	fJfH3cReWYVYdMRAAzMU2nRQruzLjoU=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=Cqm1KyfG;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id 53DF920039;
	Fri, 29 May 2026 07:07:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1780038422;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=iuyGubf2/NYJK3ycC+f5/Zj97zRD1Z6XF2ZBowjdOAI=;
	b=Cqm1KyfGBuB4o/OZX1THF9NPlPy+ckEnjk2RPGJId14f0n/b5yUqPg+jHNiNNOnlWkf/o1
	jvpvLfDofkARW7HYKfEpV9H2FdhcLV3535+JLpx3EKlELJ6LqGSWEyxIu+NW+wCOk6JaQ8
	tOKVf+096fvPpCuPSE9XUEZMhMi0yms=
From: Sven Eckelmann <sven@narfation.org>
To: Simon Wunderlich <sw@simonwunderlich.de>, Jakub Kicinski <kuba@kernel.org>
Cc: netdev@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>, b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: [PATCH net-next 01/15] batman-adv: drop batman-adv specific
 version
Date: Fri, 29 May 2026 09:06:56 +0200
Message-ID: <5075322.GXAFRqVoOG@ripper>
In-Reply-To: <20260528171412.7a60e8f7@kernel.org>
References: <20260528142924.329658-1-sw@simonwunderlich.de>
 <20260528142924.329658-2-sw@simonwunderlich.de>
 <20260528171412.7a60e8f7@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart1957926.tdWV9SEqCh";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
Message-ID-Hash: TWJFIUFPLLSVVUF2UQLBVY6HB6CLDCKB
X-Message-ID-Hash: TWJFIUFPLLSVVUF2UQLBVY6HB6CLDCKB
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-3; emergency; member-moderation;
 nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size;
 news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/TWJFIUFPLLSVVUF2UQLBVY6HB6CLDCKB/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Spamd-Result: default: False [-3.61 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	DMARC_POLICY_ALLOW(-0.50)[narfation.org,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[narfation.org:s=20121];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	R_SPF_NA(0.00)[no SPF record];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[narfation.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:24940, ipnet:2a01:4f8::/32, country:DE];
	DBL_BLOCKED_OPENRESOLVER(0.00)[open-mesh.org:url]
X-Rspamd-Queue-Id: D84A85FE52E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--nextPart1957926.tdWV9SEqCh
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
Date: Fri, 29 May 2026 09:06:56 +0200
Message-ID: <5075322.GXAFRqVoOG@ripper>
In-Reply-To: <20260528171412.7a60e8f7@kernel.org>
MIME-Version: 1.0

On Friday, 29 May 2026 02:14:12 CEST Jakub Kicinski wrote:
> On Thu, 28 May 2026 16:29:10 +0200 Simon Wunderlich wrote:
> > +#define BATADV_SOURCE_VERSION "linux-" UTS_RELEASE
> 
> What purpose that does "linux-" prefix serve?
> The unwritten rule is that the OOT drivers have to append something 
> to their version to distinguish themselves. In-tree version is just
> the pure kernel version.

We don't have a real preference here. If you prefer UTS_RELEASE only then I 
get rid of BATADV_SOURCE_VERSION and just use it in both places in
version.c

https://git.open-mesh.org/batadv.git/commit/?id=8cc63db2462ad7d3ee213059025bf5fffe2e7982

> To be clear, definitely a move in the right direction. I hope we can
> move _all the way_ in the right direction, tho, without still defining
> OOT-feeling version.h file with a dedicated BATADV_SOURCE_VERSION

version.c and version.h are there to not recompile more parts of batman-adv 
than necessary when the linux kernel version changes. Has nothing to do
with OOT. If you consider this a no-go, I can also just place 
generated/utsrelease.h + UTS_RELEASE in the three different files.

Regards,
	Sven
--nextPart1957926.tdWV9SEqCh
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQS81G/PswftH/OW8cVND3cr0xT1ywUCahk7EAAKCRBND3cr0xT1
y8BpAP9YDul7jL0bTPXj2bxk32/4QTLdSxErhd7Ivj5bCnIr2AEA7+zwi4YULFDh
yVRmS4hsFwvO4ggFawfGEkH9xbH7Fgg=
=BVcL
-----END PGP SIGNATURE-----

--nextPart1957926.tdWV9SEqCh--



