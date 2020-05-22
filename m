Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FB5A1DE6D4
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 22 May 2020 14:26:47 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 0CD9980BED;
	Fri, 22 May 2020 14:26:46 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id DB0D98003B
	for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 22 May 2020 14:26:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1590150402;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=H+iR6rod0WxhYlepmf5O85D9LLgmhxx3Q3KAAPJzSGw=;
	b=EYEMA+PyOY+XIfQVu4LWWdqz/PJiDJbmDCB6H35LHLt5t3udolsN27ahUDvQjAmuRiz3O0
	wF1uO6cOU3sAvgNtln7U7E4GvCteNb5N43WEQeHQSDiWc7K7Lezl/cmhMUGfzIy+JpjdlZ
	8lNzFty9Jg90pXHlOtnkTLZo0Ut9HPk=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: [PATCH] batman-adv: use rcu_replace_pointer() where appropriate
Date: Fri, 22 May 2020 14:26:39 +0200
Message-ID: <10146887.DO00CSXobA@sven-edge>
In-Reply-To: <20200520084140.18624-1-a@unstable.cc>
References: <20200520084140.18624-1-a@unstable.cc>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart3167353.ThBlhzVWR0"; micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1590150403;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=H+iR6rod0WxhYlepmf5O85D9LLgmhxx3Q3KAAPJzSGw=;
	b=jifTOgWlbcO67l/rhchS4698wwM4pC+QLGWUaVBihZYcbsse1vw9vtlcdNN4rlhu94Z39w
	Oz9z5cPWeAbc0iGI0E/iJDcyayDan5a+7gfutHFuGX3gcEAFsw6SfBQij35wU0EoxaYycc
	agSi1SbF5gmGBhDsxHiRy83iu6ZbXWQ=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1590150403; a=rsa-sha256;
	cv=none;
	b=n6iubPGvEqDbCsRfL0qg748ZCEZ9Rw1SgBwognlkhCR21tYNEpJcf+EAUXdkRoBQn57vxH
	wYKMfdWZwfmRExUDErbVg6LYBXLSmLK39TXYdyCW3YagsQW+ia/6spfzNXrjC5M5oSrLQS
	g0URd92au3Qqarud1YNgBWPigdIi+JQ=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=EYEMA+Py;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
Message-ID-Hash: 4DEUMZEQKNNBARA4MV7IP3OAYNHP2Z2C
X-Message-ID-Hash: 4DEUMZEQKNNBARA4MV7IP3OAYNHP2Z2C
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Antonio Quartulli <a@unstable.cc>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/4DEUMZEQKNNBARA4MV7IP3OAYNHP2Z2C/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart3167353.ThBlhzVWR0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday, 20 May 2020 10:41:40 CEST Antonio Quartulli wrote:
> In a63fc6b7 ("rcu: Upgrade rcu_swap_protected() to rcu_replace_pointer()")
> a new helper macro named rcu_replace_pointer() was introduced to
> simplify code requiring to switch an rcu pointer to a new value while
> extracting the old one.

Please use the reference style 'commit a63fc6b75cca ("rcu: Upgrade 
rcu_swap_protected() to rcu_replace_pointer()")' in the future [1]. checkpatch 
will also report something like this when it detects a short commit id:

    ERROR: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit a63fc6b75cca ("rcu: Upgrade rcu_swap_protected() to rcu_replace_pointer()")'

I will change this for you.

[...]
> +#if LINUX_VERSION_IS_LESS(5, 5, 0)
> +
> +#define rcu_replace_pointer(rcu_ptr, ptr, c)				\
> +({									\
> +	typeof(ptr) __tmp = rcu_dereference_protected((rcu_ptr), (c));	\
> +	rcu_assign_pointer((rcu_ptr), (ptr));				\
> +	__tmp;								\
> +})
> +
> +#endif /* LINUX_VERSION_IS_LESS(5, 5, 0) */

To avoid problems with a (potentially) backported patch in the stable
kernels - please #undef rcu_replace_pointer first. I will do this for you.

Applied.

Thanks,
	Sven

[1] https://www.kernel.org/doc/html/v4.17/process/submitting-patches.html#describe-your-changes
--nextPart3167353.ThBlhzVWR0
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl7HxP8ACgkQXYcKB8Em
e0aSZBAAz8NWYjaQXmxDCI88c220XEOrRpamVovBXIVdPyplMHlZyug64zvYgMID
fh37gLRc3BY1/kyb0jlvV5Fr352r4/iYVUXBEv+xtPxf5b6ZH2sRAKJ49Ea7B3zt
0QTGPT144nnhNhehGuFGjr7vapDpVM6bRSJJd+b8TXSvBTn+SYYeqRbFdU+okiWb
C5r+tdGAckwmapE7YCLG+P1v1rwJey88UUhFc7hSzR2Zq+A/oCtbIbBlJItwOcuz
YLaFbVyTv7bC30ubqZRXWPpbGeC1jJAeuMtQMGad9f0mlnq0WYh3PBMpQ3hMLghq
xH5xYd/r+NcHtVe/Lejywh5XFxBiL6xGMHMi2VRRoUEFjaUgCOaXwcsW7EEuEjm3
uQ3ScB2EUq4ayGSs3LWfKg2sZiIaJb88lva1RD4OrO7WvEfULwkZJudDKA4vbKR4
nT3ugufKyHEgUp/Uw70WNT3JqMePQJUAL+/Dus7hlI3Mi0Rq44Wsn1l9eUKXNKWF
x7F4YmLX7b/yFOiqhWv7SKC9lqv5E3NAXRCnQQC5Go3JKcRtbUvXaJatfTwpf5i8
cmBwYmMIsDsS+4CtMaRfM9I4JfnA+C2ViKTAFqx6YVej1voabfpnyc7052rOhoak
DHZcouvd8Vlqz6JiRyr8Oj1W5SxsEveX83Pd2DHdSNEFq0jBKyo=
=Azxs
-----END PGP SIGNATURE-----

--nextPart3167353.ThBlhzVWR0--


