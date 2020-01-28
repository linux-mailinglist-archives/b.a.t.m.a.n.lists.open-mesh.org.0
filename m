Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id B584814BE9D
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 28 Jan 2020 18:32:24 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 99F6D807D8;
	Tue, 28 Jan 2020 18:32:16 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
 by open-mesh.org (Postfix) with ESMTPS id 281D280034
 for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 28 Jan 2020 18:32:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1580232733;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=qOlEu43Kqly1Df2owcFmnyR4pB2M6s/Wv8+hAzyRfKw=;
 b=n5os3QhnF1lz9sj3rLGxqag+PP0jzUVQnSsgVdEkswfp7F/JlYFbLbdF5Se9vveZLsN0dv
 TGGBZ07Z/6ULN0RNLLSBzHy7ET/YnBTnh8m9+xsypOMKYLZzdgY7JHfkLFfV0NCURgvEVt
 pgMPBfk8R9C9i9MyTMOsDz2IQh5zLwo=
From: Sven Eckelmann <sven@narfation.org>
To: Felix Kaechele <felix@kaechele.ca>
Subject: Re: [PATCH] batman-adv: compat: Fix build on RHEL 8.1 and clones
Date: Tue, 28 Jan 2020 18:32:06 +0100
Message-ID: <18814629.hYLCy3ASfM@sven-edge>
In-Reply-To: <2187ec70-4276-5178-b7ad-d029bd8561fb@kaechele.ca>
References: <20200125180745.19517-1-felix@kaechele.ca>
 <3489864.0R65RLHByN@sven-edge>
 <2187ec70-4276-5178-b7ad-d029bd8561fb@kaechele.ca>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart3569451.fCDnLpFzvu";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1580232734;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references:dkim-signature;
 bh=qOlEu43Kqly1Df2owcFmnyR4pB2M6s/Wv8+hAzyRfKw=;
 b=RTGma3K6jMdQ6j//dcE8MDVV9TjYTPvYDVYd8Jo3U/nndClbyXxcwM12gQj4TRX1PoGknA
 V8DrgAJwEH3nPNSrVP3nTNMBoBoQ8O7arlJNe4iXx/7YVWIQA71g7l+X0no3/D78ICO1CO
 yrpogfBgZWX2covaJGXmk7ztm0JEjtE=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1580232734; a=rsa-sha256; cv=none;
 b=RbW6CeQfNYwT5ZLkGb21Pft3QbJTRDrKJ+2DZemurbyNSnNHOK7qIdmskm5XJ/bLNm+UxM
 6GW6JDgMNq/8L4U/1S86CHPGW6YJCu6sHAYXdTIDTV6KhxTxfH/UWF1Z61SOZHT/ScwOaM
 tNBZB80LtD2rnSvwXPdiWhp/kanY2BU=
ARC-Authentication-Results: i=1; open-mesh.org;
 dkim=pass header.d=narfation.org header.s=20121 header.b=n5os3Qhn;
 spf=pass (open-mesh.org: domain of sven@narfation.org designates 213.160.73.56
 as permitted sender) smtp.mailfrom=sven@narfation.org
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
List-Unsubscribe: <https://lists.open-mesh.org/mm/options/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=unsubscribe>
List-Archive: <http://lists.open-mesh.org/pipermail/b.a.t.m.a.n/>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Subscribe: <https://lists.open-mesh.org/mm/listinfo/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=subscribe>
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
Cc: b.a.t.m.a.n@lists.open-mesh.org
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

--nextPart3569451.fCDnLpFzvu
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday, 28 January 2020 18:19:16 CET Felix Kaechele wrote:
[..]
> No worries. Just saw that there are some provisions for Debian (which I 
> guess is what some of the maintainers are using) in the code.

Good point, there was the make-kpkg hack. @Linus, can this be dropped? The 
correct way to build a private Debian package of the kernel is to use
`make deb-pkg`

[...]
> I'm not interested in maintaining this upstream indefinitely and I agree 
> with you that carrying around fixes for all kinds of weird quirks is a 
> burden on maintainers.
> 
> I'm happy to just carry this patch in my DKMS RPM packages I maintain 
> for batman-adv.

As said, if you want to maintain it upstream then feel free to resent the 
patch with the requested change. The "reasonable new upstream kernels" part 
was about the way we drop support for older kernels. The oldest kernel we want 
to support is the the oldest kernel not marked as EOL on 
https://www.kernel.org/category/releases.html

If the RHEL quirks don't become too bothersome and you take care of it then it 
should be a relative small problem for us. I just don't want to be the person 
taking care of kernels which I don't use.

Kind regards,
	Sven

--nextPart3569451.fCDnLpFzvu
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl4wcBYACgkQXYcKB8Em
e0Yz/RAA0rEVcQXTMrS5IoMmcpt1AxPbAsrwwo7qXJsFR7buEihjRos8mcEma5xH
FM140U+5t5DbK+tJmfo6i+S31yOnYsSTNOzgAEMAlgaUFuzQh39nbGAirFCOEMsx
/ZI8755oyeTfv0fR3+8OayFVsvdUywp9dMd1a7eVQ+vOmYguhwUCMYu4ExpGU2Up
ddOKPJWduLI5UO9t75UqRnllRenejrtRPhWUUiO++SyZDntNiRfG3+uuwLGxltOh
rqGFhvqEyfGE/OE3Nf6VwwP38H7Z3jhWESfTgjNoifmbNOrH2IEfH5prgyuH/Db4
SDtMHo+R9cP3i+6qNOHsyna8mHi2Zucl9NcDiooGJPvkbKL7qbX3v/J5Q24tZLHF
kzmADPGqZDF0OAHZ89fvyzXyHqIwNbvbAXhC+Nx+4EEUlRBfkoDAzzX4XNmnCpO5
3Xx70SFKvP6apfRI+WHMJxtySCWY6oZMRUX1TajtC1bTUkZHXSZaUOn5l8UdRors
DxWOUDl/JL1bZWOVzXozqDZABT+LSQR3ypvHVvtVC1O/Tndz46B8b2C8+vraHpUz
y5rHcvzDRLPUa11DRAvRFXJGGxFItdR0CGMfci8xiHchAXt1gJwSziySJaaffzmI
iv0GMUNZ2iSfeaPycbgAK963b/ta1HlLq5vqj0Rymw38YyFHkdA=
=iAMi
-----END PGP SIGNATURE-----

--nextPart3569451.fCDnLpFzvu--



