Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id C9BC6408F48
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 13 Sep 2021 15:41:03 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 7D37280C4B;
	Mon, 13 Sep 2021 15:41:02 +0200 (CEST)
Received: from simonwunderlich.de (unknown [IPv6:2a01:4f8:c17:e8c0::1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 8F744801E3
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 13 Sep 2021 15:40:59 +0200 (CEST)
Received: from prime.localnet (p200300c59712a2c0a277140d05Ab6097.dip0.t-ipconnect.de [IPv6:2003:c5:9712:a2c0:a277:140d:5ab:6097])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by simonwunderlich.de (Postfix) with ESMTPSA id 436D3FC4CC;
	Mon, 13 Sep 2021 15:40:59 +0200 (CEST)
From: Simon Wunderlich <sw@simonwunderlich.de>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: Bonding Alternating
Date: Mon, 13 Sep 2021 15:40:53 +0200
Message-ID: <3340507.qp3XP9fiM0@prime>
In-Reply-To: <20210910175954.1147.78979@diktynna.open-mesh.org>
References: <8679334.VDzE56WMh6@prime> <20210910175954.1147.78979@diktynna.open-mesh.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart543864434.pFE8HFRqJ9"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1631540459;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Lu6dMoPdZyVUrs1CXQA6WvEN8D3K+gaaj8CXr8sQZcw=;
	b=eQM2259l8lUb9//3wF3mTMLkGPk5kMqNttrtCMoc3PqfcGcFzlKSAiaFmcqcgxkP9EDd+f
	wZ91WxT0CaEnRRuOHmN4uzqvn3NGhfjFuv/1RqBiHyZnE/uuL9cqjiiqFTFVsKJcSg1HGM
	iZUY+eRsgDstxrVNsgJd5gXNsaT6hWk=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	dmarc=none;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates 2a01:4f8:c17:e8c0::1 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1631540459; a=rsa-sha256;
	cv=none;
	b=TUBR7Kw/bBgLCLRFmxAFD+PpBoHi3kwPgzYop4pduEOlD8I9aaC9YM+rbZWxefKPE5D7bm
	dFLZ71W1lvKY7WvMulaT0Q48Zf+Tu/vt8V69lxP4csLuGJdyc2A1xrs44mmle0SJcsCTMD
	Fwa5f8NCjFvJzPfxixdHeQu1U6gjOH4=
Message-ID-Hash: UMEYI2COKAEL2N5T2OPPRSOYKLNDOOVE
X-Message-ID-Hash: UMEYI2COKAEL2N5T2OPPRSOYKLNDOOVE
X-MailFrom: sw@simonwunderlich.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: brian.edmisten@viasat.com
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/UMEYI2COKAEL2N5T2OPPRSOYKLNDOOVE/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart543864434.pFE8HFRqJ9
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Simon Wunderlich <sw@simonwunderlich.de>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: brian.edmisten@viasat.com
Subject: Re: Bonding Alternating
Date: Mon, 13 Sep 2021 15:40:53 +0200
Message-ID: <3340507.qp3XP9fiM0@prime>
In-Reply-To: <20210910175954.1147.78979@diktynna.open-mesh.org>
References: <8679334.VDzE56WMh6@prime> <20210910175954.1147.78979@diktynna.open-mesh.org>

On Friday, September 10, 2021 7:59:54 PM CEST brian.edmisten@viasat.com wrote:
> Simon,
> 
> Thanks for responding.  We are trying out some different solutions for
> bonding these radios.  For scenarios BATMAN seems really well suited for
> the problem but we wanted to test this one and see how much work we need to
> put into it.  I saw the same behavior with IV but I'll switch back and
> check on it.  While its up though here is what I am seeing with V.
> 
> batctl o
> [B.A.T.M.A.N. adv 2019.4, MainIF/MAC: eth0/00:0c:29:c5:d2:da
> (bat0/de:8b:cc:39:d0:69 BATMAN_V)] Originator        last-seen (
> throughput)  Nexthop           [outgoingIF] 00:0c:29:53:f8:c9    0.320s (  
>  10000.0)  00:0c:29:53:f8:dd [      eth2] 00:0c:29:53:f8:c9    0.320s (   
> 10000.0)  00:0c:29:53:f8:d3 [      eth1] * 00:0c:29:53:f8:c9    0.320s (   
> 10000.0)  00:0c:29:53:f8:c9 [      eth0]
> 
> batctl n
> [B.A.T.M.A.N. adv 2019.4, MainIF/MAC: eth0/00:0c:29:c5:d2:da
> (bat0/de:8b:cc:39:d0:69 BATMAN_V)] IF             Neighbor             
> last-seen
> 00:0c:29:53:f8:c9    0.436s (    10000.0) [      eth0]
> 00:0c:29:53:f8:d3    0.340s (    10000.0) [      eth1]
> 00:0c:29:53:f8:dd    0.116s (    10000.0) [      eth2]
> 
> batctl tg
> [B.A.T.M.A.N. adv 2019.4, MainIF/MAC: eth0/00:0c:29:c5:d2:da
> (bat0/de:8b:cc:39:d0:69 BATMAN_V)] Client             VID Flags Last ttvn  
>   Via        ttvn  (CRC       ) * 33:33:00:00:00:02   -1 [....] (  1)
> 00:0c:29:53:f8:c9 (  2) (0x6b62ac80) * 01:00:5e:00:00:01   -1 [....] (  2)
> 00:0c:29:53:f8:c9 (  2) (0x6b62ac80) * 4e:b3:25:58:bd:15   -1 [....] (  1)
> 00:0c:29:53:f8:c9 (  2) (0x6b62ac80) * 33:33:00:00:00:01   -1 [....] (  1)
> 00:0c:29:53:f8:c9 (  2) (0x6b62ac80)
> 
> I do not directly see any of the commands outputting transmit quality  I
> would expect the three ethernet nics to be the same but it is an
> assumption.
> 
> Here is the same info under IV
> batctl o
> [B.A.T.M.A.N. adv 2019.4, MainIF/MAC: eth2/00:0c:29:c5:d2:ee
> (bat0/f2:49:86:e6:ea:aa BATMAN_IV)] Originator        last-seen (#/255)
> Nexthop           [outgoingIF] * 00:0c:29:53:f8:d3    0.976s   (255)
> 00:0c:29:53:f8:d3 [      eth1] * 00:0c:29:53:f8:c9    0.944s   (251)
> 00:0c:29:53:f8:c9 [      eth0] * 00:0c:29:53:f8:dd    0.368s   (255)
> 00:0c:29:53:f8:c9 [      eth0] 00:0c:29:53:f8:dd    0.368s   (255)
> 00:0c:29:53:f8:d3 [      eth1] 00:0c:29:53:f8:dd    0.368s   (252)
> 00:0c:29:53:f8:dd [      eth2]
> 
> batctl n
> [B.A.T.M.A.N. adv 2019.4, MainIF/MAC: eth2/00:0c:29:c5:d2:ee
> (bat0/f2:49:86:e6:ea:aa BATMAN_IV)] IF             Neighbor             
> last-seen
>          eth0     00:0c:29:53:f8:c9    0.032s
>          eth1     00:0c:29:53:f8:d3    0.992s
>          eth2     00:0c:29:53:f8:dd    0.384s
> 
> batctl tg
> [B.A.T.M.A.N. adv 2019.4, MainIF/MAC: eth2/00:0c:29:c5:d2:ee
> (bat0/f2:49:86:e6:ea:aa BATMAN_IV)] Client             VID Flags Last ttvn 
>    Via        ttvn  (CRC       ) * 33:33:00:00:00:02   -1 [....] (  2)
> 00:0c:29:53:f8:dd (  3) (0x9339b660) * 01:00:5e:00:00:01   -1 [....] (  3)
> 00:0c:29:53:f8:dd (  3) (0x9339b660) * 2a:78:9d:5f:f3:f6   -1 [....] (  1)
> 00:0c:29:53:f8:dd (  3) (0x9339b660) * 33:33:00:00:00:01   -1 [....] (  2)
> 00:0c:29:53:f8:dd (  3) (0x9339b660)
> 
> 

Hi Brian,

thank you very much for providing that output. There is only "TQ" (transmit 
quality) in BATMAN IV, BATMAN V uses througput based metric instead (in kbit/
s). For Ethernet, it tries to read the Ethernet speed directl, therefore you 
see those 10000 values.

Anyway, in BATMAN IV the values look close enough (they need to be within 50 
TQ points). Just as sanity check, did you enable bonding? It is disabled by 
default. You can use batctl b 1 to enable it.

Unfortunately there is not really logging code for debugging, so let's try 
checking the settings. If that doesn't work, I could rebuild and verify ...

Cheers, 
      Simon
--nextPart543864434.pFE8HFRqJ9
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE1ilQI7G+y+fdhnrfoSvjmEKSnqEFAmE/VOUACgkQoSvjmEKS
nqFh0xAAmQnaJVAJZq6/cFr4j4Q414l5/yq6l1fJa+fF32Ej/k4bndQUtAoDTbfs
q86EIe6CqAYDGI8kel3+jmGz/IDNWG5/xUpsy4u9NxBZQ9IDMIy3ufar59uKgf34
Spdt54Uvr+dqg/vuYMQv+qEGa8W5MrZfh85EkfVs7Cuw/jKfayCep5zR9SPKcm3y
yd08PwmJSVLudJTT0KxomJpXOXwLcsL3SoupYvC52ktqjKHL5H3QHj0dcpbKxUQi
sTwYnkZDOoScl789tqXbol9xh29aUtOiVaEQp/Vb/q7QbAz8tNlpalCgspgCqTP3
BNuyRCp0QqyhQqdelPFcg+mOCgQV4y0q97EZuF9SiINJBnsPX5JIeuIkINLvOKcl
jP1LRcJKeR/60K6WkSVS3zQkMr08hPDKVUqJ/CKYQXnkeqduuqj3gTj9BuVTNMKh
ts2TiSABSvprZEJRq5BFj3PKChAlgFRbIRlsqqHluw7LYBNpSkCPXJiXPdKzI5uI
vizEXN1qqVRtFbPZWQeG1FqL9EIGlCVPpKgzVS/cZRzpvCRatCshp//FCFEahyAs
ccpoIrDftHiCU/CzHeNOIH/y25Z6mvHfIvei7S7IpAPzxqD+I7D3KKqUq0YtUREk
EZYxhqVY5/SavMsI/HazDEBrT1O4ievjtRKisS+gDO0gzPQ8y74=
=5tDS
-----END PGP SIGNATURE-----

--nextPart543864434.pFE8HFRqJ9--


