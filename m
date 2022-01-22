Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id E42934968E0
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 22 Jan 2022 01:41:48 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id C542783E4A;
	Sat, 22 Jan 2022 01:41:47 +0100 (CET)
Received: from s2.neomailbox.net (s2.neomailbox.net [5.148.176.60])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id B1F2B80400
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 22 Jan 2022 01:41:45 +0100 (CET)
From: Marek Lindner <mareklindner@neomailbox.ch>
To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
Subject: Re: [PATCH 3/3] alfred: properly initialize stack buffer before sending over unix socket
Date: Sat, 22 Jan 2022 01:41:36 +0100
Message-ID: <3612372.8DyAAORe3b@rousseau>
In-Reply-To: <2782676.din1RKh0Nb@sven-l14>
References: <10410848.OOsao9LFFs@rousseau> <20220112210506.3488775-3-mareklindner@neomailbox.ch> <2782676.din1RKh0Nb@sven-l14>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart3789153.x0KFPWdY5J"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	dmarc=none;
	spf=pass (diktynna.open-mesh.org: domain of mareklindner@neomailbox.ch designates 5.148.176.60 as permitted sender) smtp.mailfrom=mareklindner@neomailbox.ch
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1642812106; a=rsa-sha256;
	cv=none;
	b=AwHE3Y33wyq9gYar9RsP03i/97jSpzLJufYZL4PGEexHVgluS4g3M+pj2D+Yark6ZKQZuk
	cbKmBsQRoWtLXOf+Er7R+/0mlrFqrLTg9ZftzdttxE/qav1SXc5UT/pt+QYl5OJ/02/qXl
	Rhf1YL13lvZbJp87aMi4W5mZRd6cnNM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1642812106;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=+bgVxfWrIbj/WWx+JrZ5f4BvQuNGiyzZ4kngwN4cv7o=;
	b=iNgFqtzanNpCZPNI4emYdSifr5w27fmAn7N0L8+W+TiGaIngcjALeZq+jjYcwFUwqJ3egZ
	RYdInl+2eMk68OWjMJv8ux/ccwq2DLaXuCSISHKlT9y0UsTUB4+5HqfTGUjHlGu2k+7Tzx
	UEjAMLu2youof6vNKZm+/ks8QW5VV70=
Message-ID-Hash: GKEXRXR7VXT4TGNDAIV4V4NVGE3WYO4X
X-Message-ID-Hash: GKEXRXR7VXT4TGNDAIV4V4NVGE3WYO4X
X-MailFrom: mareklindner@neomailbox.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/GKEXRXR7VXT4TGNDAIV4V4NVGE3WYO4X/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart3789153.x0KFPWdY5J
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Marek Lindner <mareklindner@neomailbox.ch>
To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
Subject: Re: [PATCH 3/3] alfred: properly initialize stack buffer before sending over unix socket
Date: Sat, 22 Jan 2022 01:41:36 +0100
Message-ID: <3612372.8DyAAORe3b@rousseau>
In-Reply-To: <2782676.din1RKh0Nb@sven-l14>
References: <10410848.OOsao9LFFs@rousseau> <20220112210506.3488775-3-mareklindner@neomailbox.ch> <2782676.din1RKh0Nb@sven-l14>

On Friday, 21 January 2022 16:34:50 CET Sven Eckelmann wrote:
> > @@ -260,6 +262,7 @@ int alfred_client_change_interface(struct globals
> > *globals) }
> > 
> > len = sizeof(change_interface);
> > +       memset(&change_interface, 0, len);
> > 
> > change_interface.header.type = ALFRED_CHANGE_INTERFACE;
> > change_interface.header.version = ALFRED_VERSION;\
> 
> Same here.
> 
> > @@ -308,6 +311,7 @@ int alfred_client_change_bat_iface(struct globals
> > *globals) }
> > 
> > len = sizeof(change_bat_iface);
> > +       memset(&change_bat_iface, 0, len);
> > 
> > change_bat_iface.header.type = ALFRED_CHANGE_BAT_IFACE;
> > change_bat_iface.header.version = ALFRED_VERSION;
> 
> Same here.

The struct alfred_change_interface_v0 -> ifaces[IFNAMSIZ * 16] may be written 
to but not fully initialized. The interface name may be much shorter than the 
buffer holding it. Same applies struct alfred_change_bat_iface_v0 -> 
bat_iface[IFNAMSIZ] but to a lesser extent because the buffer is smaller.

This patch is based on your earlier observation that stack data may be leaked 
due to the lack of (complete) initialization.

You are correct that the structs struct alfred_request_v0 & 
alfred_modeswitch_v0 technically don't require initialization because all 
fields are set manually. I added those for completeness sake for the next 
person coming along copy & pasting the code (as I had done).

Kind regards,
Marek Lindner

--nextPart3789153.x0KFPWdY5J
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEI5CG6MPJfr3knG//U1VOj+62HMAFAmHrUsAACgkQU1VOj+62
HMDI0wf/URMpOphnkCDRntQ2D947UaIqsEpxqJeOlxno/bSkawmxzSXTQLr6TezO
qEY2d1IoEvx8beDhAIoaRLbTr6w6XcOOuk163Ecwsqu6ycyxK3yqAaAWGpLRoNCS
0HR29QHFcAShX4SJyC4W3ifqs8HPIXhn9YX9MPZmZiE2O7tCaG3esO2ZJd15xryX
SthgfauZBOdpVd2kLNkZWcT3N3jKq5s17ggZv+6o1+6/vLEpMBHVQCGY2OijCAU5
kJBYgOS9KWb5LFOukLUcMCZPPt9Htb53h1mQqJbGU5MUhLDw2PjtM14N+i/PUX7B
dCRrfdYriVNWqO8ksMY9CPvdSx4TlQ==
=Aehm
-----END PGP SIGNATURE-----

--nextPart3789153.x0KFPWdY5J--


