Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id EDA509FEE66
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 31 Dec 2024 10:39:11 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id CE0F383FC9
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 31 Dec 2024 10:39:11 +0100 (CET)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1735637951;
 b=T4Y63xVWW68wlLCCj3RcDezdfcNBfI8uEq1uy7zTxUgtVtclndF/dWqon/AEApqv8/gz6
 mKTK/T7+8shVMQeGjpqMLNP/9nMXXk558Du3VDn3tnLfC0Tzz7LRyY6InRuD8fmU5J7/oAe
 h0AK0twux/yIYB9sO4AB+IM8KtHRl6U=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1735637951; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=yqhuCVQlp/1m0hKrMo3QUsTz0LVNGHxmRgQmJxVuRNM=;
 b=qVpunpTqtHcOmzE2DjcttpTPvTaX5y1iT+GGhbrWtfgl235Km/HVcFxNE+44Q+WfK+189
 b1uoNsGraPbva6ddr7us/wkufLSfVOMgSctNLxd2rfnhQGAkqyE72F9dnF+4MFVOTfj9yHF
 DhvASRQTz515IKlcVLT6oFAMTPxIUnA=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
  arc=pass;
  dmarc=pass (Used From Domain Record) header.from=narfation.org
 policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 4E16E8237B
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 31 Dec 2024 10:38:45 +0100 (CET)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1735637925;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=yqhuCVQlp/1m0hKrMo3QUsTz0LVNGHxmRgQmJxVuRNM=;
	b=gD0m6b8Z0Hk+xhrnCoKpUP1iNy+4dTj38HpTrKyb8Gyr7i3GwHOBy2gwQAxfVz/YvUDJ9Y
	9wr93VYhuSrMVb2ajwY4/nbt6uZMjQV0wxkx4Bp9G+gh+7SuLc5ahcxU/fId0h2GDDdUtI
	izNV4JoChN5R2QI9C5iHhD0R7sBo19s=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=f3FywTod;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1735637925; a=rsa-sha256;
	cv=none;
	b=i9/rVY5el5ZTi0d9UwMvqthtxKtCtwDw+ad7iQRthCB+Zl2GlHdCrb6TESIHMQu/DQinZa
	On4iYaYaAum1hbSKws7X/KH1eJv46G9h7wNVQb4YIDFae+32kXDAvyF9bFLR6eYQ4AQk4T
	TwjUSkDyVXNkqxHLOKyFOTM+2HPu5A0=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1735637924;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=yqhuCVQlp/1m0hKrMo3QUsTz0LVNGHxmRgQmJxVuRNM=;
	b=f3FywTodgnHP+VPDVYhlgXTuvLb2uNLSR506cK1EoGgs80LTLrBQpbT5YOKkqQTS7/vpqO
	35avwlCfRUw0nt+XGMX7FTakWMm0lBPXNex6rGEahzwrnrygPojAxXbQMcUeXP9vi62/KV
	DDctk3FqbcTOOtqrtLav9ZXuafb6WjI=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Antonio Quartulli <a@unstable.cc>,
 Linus =?UTF-8?B?TMO8c3Npbmc=?= <linus.luessing@c0d3.blue>
Subject: Re: [PATCH] batman-adv: Use mailmap to fix old e-mail addresses
Date: Tue, 31 Dec 2024 10:38:41 +0100
Message-ID: <2213656.irdbgypaU6@sven-l14>
In-Reply-To: <20241231-mailmap-v1-1-1494110b69e7@narfation.org>
References: <20241231-mailmap-v1-1-1494110b69e7@narfation.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart13674712.uLZWGnKmhe";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
Message-ID-Hash: FM2NVXYH5OADNOKPT6M7D4EWW4Q2ITF3
X-Message-ID-Hash: FM2NVXYH5OADNOKPT6M7D4EWW4Q2ITF3
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency;
 loop; banned-address; member-moderation;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.8
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/FM2NVXYH5OADNOKPT6M7D4EWW4Q2ITF3/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart13674712.uLZWGnKmhe
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Date: Tue, 31 Dec 2024 10:38:41 +0100
Message-ID: <2213656.irdbgypaU6@sven-l14>
In-Reply-To: <20241231-mailmap-v1-1-1494110b69e7@narfation.org>
References: <20241231-mailmap-v1-1-1494110b69e7@narfation.org>
MIME-Version: 1.0

The .mailmap change is currently only for the standalone (out-of-tree) modu=
le=20
repository.

On Tuesday, 31 December 2024 10:02:03 GMT+1 Sven Eckelmann wrote:
[...]
> +Antonio Quartulli <a@unstable.cc> <antonio@meshcoding.com>
> +Antonio Quartulli <a@unstable.cc> <antonio@open-mesh.com>
> +Antonio Quartulli <a@unstable.cc> <antonio.quartulli@open-mesh.com>
> +Antonio Quartulli <a@unstable.cc> <ordex@autistici.org>
> +Antonio Quartulli <a@unstable.cc> <ordex@ritirata.org>

=46or the upstream .mailmap, I would need a "mailmap: " patch from you for=
=20
following mail addresses (or a subset):

* <antonio.quartulli@open-mesh.com>
* <antonio@mandelbit.com>
* <antonio@meshcoding.com>
* <antonio@open-mesh.com>
* <antonio@openvpn.net>
* <ordex@autistici.org>
* <ordex@ritirata.org>

[...]
> +Linus L=C3=BCssing <linus.luessing@c0d3.blue> <linus.luessing@acsom.ch>
> +Linus L=C3=BCssing <linus.luessing@c0d3.blue> <linus.luessing@ascom.ch>
> +Linus L=C3=BCssing <linus.luessing@c0d3.blue> <linus.luessing@web.de>
> +Linus L=C3=BCssing <linus.luessing@c0d3.blue> <ll@simonwunderlich.de>
> +Linus L=C3=BCssing <linus.luessing@c0d3.blue> <linus.luessing@web.de>

* <ll@simonwunderlich.de>

Kind regards,
	Sven
--nextPart13674712.uLZWGnKmhe
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQS81G/PswftH/OW8cVND3cr0xT1ywUCZ3O7ogAKCRBND3cr0xT1
yxmeAQCfg5Egz0mUUv9v4DBn7q6Pnhj1RYVlrsu/INC9aI6MUAEA9/UlumHUHEze
pI596flppASLfum5JvRLmITj3B8sUA4=
=lgb+
-----END PGP SIGNATURE-----

--nextPart13674712.uLZWGnKmhe--



