Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 85BA1482AD1
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  2 Jan 2022 12:30:38 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 5921783E46;
	Sun,  2 Jan 2022 12:30:37 +0100 (CET)
Received: from s2.neomailbox.net (s2.neomailbox.net [5.148.176.60])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 0766180218
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun,  2 Jan 2022 12:30:32 +0100 (CET)
From: Marek Lindner <mareklindner@neomailbox.ch>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: alfred: runtime configuration
Date: Sun, 02 Jan 2022 12:30:23 +0100
Message-ID: <3748133.vRqKQLy7FI@rousseau>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2744425.ns5P1vhYYd"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of mareklindner@neomailbox.ch designates 5.148.176.60 as permitted sender) smtp.mailfrom=mareklindner@neomailbox.ch;
	dmarc=none
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1641123033; a=rsa-sha256;
	cv=none;
	b=E1yZL0dVZhRsamYWoK4Q87/DbI2kL4sIUzyOQ0LTMu2bm2pfd+WzcyOku8XJYotY+fuKnP
	QprHzSclzf+CpTADE0+fevSNNbsuD7eW0LeOlOVukWh0lBLZUP355Y/LdFoWty7LG4C/Ql
	gVfYnjr6mHGNwMFX3h2SvTliTdQ86cw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1641123033;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=K1eXbj+Sz1YHQ+zNbd45PWZdB10KvKEVQXaIGj/i6L8=;
	b=z69f/gKqdoDWaF8mGujamcOxzCI94yreOXeNN+B10NqCdidrzkVWydEL8bFiGskEF+VBTA
	45kFoghny+7wu+EmPUQ1bG7UonWOzSD+09EpD1sOsSs9JVnj8wrCcPQH215BY65GKny4QC
	GgPCYe/qY/TRdAFPIlHQsZZGjw0KG0M=
Message-ID-Hash: ALZNZEZ6NCION7YANYUNZMOC4A3EXEYU
X-Message-ID-Hash: ALZNZEZ6NCION7YANYUNZMOC4A3EXEYU
X-MailFrom: mareklindner@neomailbox.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/ALZNZEZ6NCION7YANYUNZMOC4A3EXEYU/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart2744425.ns5P1vhYYd
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Marek Lindner <mareklindner@neomailbox.ch>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: alfred: runtime configuration
Date: Sun, 02 Jan 2022 12:30:23 +0100
Message-ID: <3748133.vRqKQLy7FI@rousseau>

Hi,

the alfred daemon has built-in capabilities for accepting runtime 
configuration. Network interfaces and alfred 'mode' (primary/secondary) 
settings can be modified via instructions sent over unix socket.

To make all settings configurable, the unix socket commands are extended to 
also support setting the batman-adv interface name at runtime. Network 
interfaces should no longer be required at startup as those can be configured 
at runtime.

All these runtime settings make understanding the current alfred configuration 
tricky. Therefore, alfred should be able to export its operating configuration 
via unix socket.

Cheers,
Marek

--nextPart2744425.ns5P1vhYYd
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEI5CG6MPJfr3knG//U1VOj+62HMAFAmHRjM8ACgkQU1VOj+62
HMC+/Qf5AeDv8PmFhGPNSW2wFAcxxeLEgGalXyrwM1Zk0alru62ln4XSJAqWN9l+
Ox5mdYzkLE6la2cVm7xaJFqfM6FzaNC8nGMVcVd6AtEYt2wldB5Pb8TiANyTX3ET
XJ14gy42/2rpljdqtMRJEO9lh/Et3dEXExjf5TGGk0aVfvIDrEwc1nHeqbMNeg64
UyMtZZnr6nZq/tsClat+3CSbOA6ynZxti+k12JjciPP1OHDUhiheAlDojymcGWWu
K8TklX4dxL8Up46pnzc7tU+gx6j9/vsLO5u8A5+db1oFXmMXGTHekgqn0nqUgzCx
S8kIVecKefdbC6D7RPCcJBxVBjb9dQ==
=AXYb
-----END PGP SIGNATURE-----

--nextPart2744425.ns5P1vhYYd--


