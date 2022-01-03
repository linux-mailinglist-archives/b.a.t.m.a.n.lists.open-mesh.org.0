Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 055A0482F39
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon,  3 Jan 2022 10:09:37 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 1493083EAF;
	Mon,  3 Jan 2022 10:09:36 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id B2786804BE
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon,  3 Jan 2022 10:09:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1641200972;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=riHBATOndU7mJB9IWnqYNAe9GgWeawiJLydXle5ASEE=;
	b=cgYgpUWIchY21Xtpe9H9XFODnlSuf3s/0YcCbb1m3vwSB8jKsLKPB9RlY6pacPMW+08lDs
	21V3K5qtI+esBqKxybehU2sRBB91aLpzRkrnV1Xl84XTGnk7s3+JNEZhYU+pxWJbSDq4++
	dn6JxfA7P5sm2Ers0cmcQffvtLzH2z0=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org, Marek Lindner <mareklindner@neomailbox.ch>
Subject: Re: [PATCH 4/4] alfred: introduce 'server status' IPC call
Date: Mon, 03 Jan 2022 10:09:23 +0100
Message-ID: <1933904.MC1LskztYI@sven-l14>
In-Reply-To: <20220102113136.470299-4-mareklindner@neomailbox.ch>
References: <3748133.vRqKQLy7FI@rousseau> <20220102113136.470299-1-mareklindner@neomailbox.ch> <20220102113136.470299-4-mareklindner@neomailbox.ch>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart9120863.S1E0kk7kuN"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=cgYgpUWI;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1641200972; a=rsa-sha256;
	cv=none;
	b=Ti4gISwd6qnMat2O4qvhPmnHp7fI1k1msjuiCr54X2UOJRCeuedK4AOS+upbvtTAWwHXuB
	NZIcJU35ox0ufYBkQBCHw8rtxhRcfL2gKbwIc47HLnNeZ1i0l9eRWtCJ4XZp++AdmJnGvW
	e6argafeJ/D7rP3HdJhEwZHNYevMNsk=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1641200972;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=riHBATOndU7mJB9IWnqYNAe9GgWeawiJLydXle5ASEE=;
	b=VcpqX+L0Ya8gk+K+h4V76Q+x3y8wfLZYjA+3qc8ym+TMN8/rPI6ZGwIh5iX135j8We6NHu
	xWu8bvuFvk+kNiwTZJX2EfD5C6KSG9qO1tjAb77Ho/gw38xIdZaFOjKJ1aw6wjgmkCFnHN
	7Rw0faanOX/Yg/vzOcttlwCZjzWhFRE=
Message-ID-Hash: 53FWD5NMBKXVO6VZGLRTGBCONYH5UUNO
X-Message-ID-Hash: 53FWD5NMBKXVO6VZGLRTGBCONYH5UUNO
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/53FWD5NMBKXVO6VZGLRTGBCONYH5UUNO/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart9120863.S1E0kk7kuN
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org, Marek Lindner <mareklindner@neomailbox.ch>
Subject: Re: [PATCH 4/4] alfred: introduce 'server status' IPC call
Date: Mon, 03 Jan 2022 10:09:23 +0100
Message-ID: <1933904.MC1LskztYI@sven-l14>
In-Reply-To: <20220102113136.470299-4-mareklindner@neomailbox.ch>
References: <3748133.vRqKQLy7FI@rousseau> <20220102113136.470299-1-mareklindner@neomailbox.ch> <20220102113136.470299-4-mareklindner@neomailbox.ch>

On Sunday, 2 January 2022 12:31:36 CET Marek Lindner wrote:
> +struct alfred_server_status_rep_v0 {
> +       struct alfred_tlv header;
> +       uint8_t mode;
> +       struct {
> +               char name[IFNAMSIZ];
> +       } ifaces[16];
> +       char bat_iface[IFNAMSIZ];
>  } __packed;

Another thing which came to my mind: maybe it could be interesting to have the 
status of an interface in the reply. So basically if netsock is >= 0 or not. 
Not sure how to deal with the IPv4 mcast code. Most likely just by using 
netsock_mcast and indicator.

Kind regards,
	Sven
--nextPart9120863.S1E0kk7kuN
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAmHSvUMACgkQXYcKB8Em
e0ZNDA//SdlyWDnlwUshUNkO6kJC2B9rX0N4dDa0n2gOzJeR4agQdww/isouatsi
+gdIIZofuq89gXFxOa10kaq+Bk/ZK8BPszMPbtH5EJlbQG9BaIjJAfJWLRaHdscd
T3kUsWGuhthMmZn/ZWehNODLNUK+phYeW9oWWKRc6NC/2hKnpUvDIOVDG8JQW8hg
AFRm+Z8BH+EC3fEogBTeWljFu4CUOcT+pGVZ0yqYhe1HlMjogCtz40hb0zAim2VB
69yBSxjvtVYE9qkXdWgzjZVlH1H7GNi4qNdwqtEJF/tN5ZzL3ibDh9OVBWCZPb01
6e0mROhz/CpNKt7g6Bk8zdHEexNzaR3PtYSy+liu2bCtoPK1sPX6Ald2R/oNol1M
UJmcwRHG7NewnOpR1thQWS36xeozi76SJRyZjFc86HKGlL4Z0GZLF027sxyAsrzB
yCgyt36zXUxhhbt293JgPq5YJS96mYkiSyt6XE3nOQFmlHvnrw7/E8uZoa95CbS5
1VIdScIFbJd/Wc7sn+VFFX9flI8RGCnAZiwONy5bU5R+IkJxCfedQQpDy5p4g/1C
SamUfu0R7hW3Mzk2N61MW3do2G0ec3wkX7lwaFMAg5QtHNQCGkA6H3IxP84CugOH
verKn3pbXzPvPKEzBA6fuzCTd3SnuzZABIMS+RY31yJkOyjMnG0=
=JJLP
-----END PGP SIGNATURE-----

--nextPart9120863.S1E0kk7kuN--


