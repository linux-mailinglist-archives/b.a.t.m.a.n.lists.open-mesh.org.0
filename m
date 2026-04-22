Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WHnLIVmz6GmIOwIAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 22 Apr 2026 13:39:05 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 5529B445845
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 22 Apr 2026 13:39:05 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 2873C856AE
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 22 Apr 2026 13:39:05 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1776857945;
 b=2W+bdukhORB2dIOzLehMTlb002HJdmU10wWQPFl3vR0V9OfiMVTXzW/fxb05lkJRbQG2n
 u+lWJs03+h1kyCvNT5Jqe8RUwolygmQToc6mV0jAoVfw+TWmg2YshGR05RQfeOxxJ5Gsn2Z
 DgcD+OXW539wPPi/tfwYJYgPY+q6Mw4=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1776857945; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=MVzYDVDQURlW/ccfsHT8VeGBwMbip5akYta9Qis/mTg=;
 b=ULdS/bzMJpd7CMAtG1/n+TnD8WLQYFSBEoFzmEurM+UWuSOGFh/2aLWi6Zzuap90Qavl7
 fujl/O0qBSGOwU3ZNZ3+8H9MPdSgWL0++keZPwU7kPbm2Kxr52LvpkZIZnY155VJqnOISRa
 eiSBQIMPf5KleaNIO+5H4kh4Pn/VyFs=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 31E6184494
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 22 Apr 2026 13:38:25 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1776857905;
	b=xamQGALW5P2DZ2DnSOrWTuq10VNskFm6ljDHGj8PIGyWOtkdO0cupxCcOdhCQhVtRyRGpy
	WUJQIW+/7x/RdyYbl1Ku5CQLNxu+FOv9V7/GXM32KmrBZb7D/5AOfc2YwCFnj1iyw5YRUj
	2nJab8cPAtMp6jEZ7mMUOaIKcqlBM0g=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=mnwueyTj;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1776857905;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=MVzYDVDQURlW/ccfsHT8VeGBwMbip5akYta9Qis/mTg=;
	b=r0EUuke5huQ84Ct6N65R5gKOZN4VAQ/q2VLptaVlXOpsTwfhPKyUNpjf8YRo4YEOObwuv7
	pdnTobMdxZ7rw/S+ftKdZtCmdVoOVG7iIq3qyi0cUUD3t02ALwLLU6Kpzzhjko4gjUmgjo
	x51yx909OhHWV5v3l/JzH4pO+SMnERM=
Received: by dvalin.narfation.org (Postfix) id 928951FDD3;
	Wed, 22 Apr 2026 11:38:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1776857903;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=MVzYDVDQURlW/ccfsHT8VeGBwMbip5akYta9Qis/mTg=;
	b=mnwueyTj9cn+XQUzRJeuLZVaDaLuLbFzjNI8oJcYXMd5fwi1mbYqgPjTRKoX8QaZ30Vnx9
	8vuuLCfE9zsxHx70sOpVHLIqyKmRxzel6Cyp/hjQ7H6BHi7Gr8cWtDNeDn32UGqoojgDOp
	TscJqcmThwgUzltp5AO7rd5CA99QItE=
From: Sven Eckelmann <sven@narfation.org>
To: marek.lindner@mailbox.org, sw@simonwunderlich.de, antonio@mandelbit.com,
 Lyes Bourennani <lbourennani@fuzzinglabs.com>
Cc: apinson@fuzzinglabs.com, security@kernel.org, syzkaller@googlegroups.com,
 b.a.t.m.a.n@lists.open-mesh.org,
 Lyes Bourennani <lbourennani@fuzzinglabs.com>
Subject: Re: [PATCH] batman-adv: fix integer overflow on buff_pos
Date: Wed, 22 Apr 2026 13:38:12 +0200
Message-ID: <4755009.cEBGB3zze1@ripper>
In-Reply-To: <20260421222022.21231-1-lbourennani@fuzzinglabs.com>
References: <20260421222022.21231-1-lbourennani@fuzzinglabs.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart5169337.0VBMTVartN";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
Message-ID-Hash: LO62WNRTOMUCNV2WMM7XGDZ2BKLE3PZZ
X-Message-ID-Hash: LO62WNRTOMUCNV2WMM7XGDZ2BKLE3PZZ
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/LO62WNRTOMUCNV2WMM7XGDZ2BKLE3PZZ/>
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
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:24940, ipnet:2a01:4f8::/32, country:DE];
	DBL_BLOCKED_OPENRESOLVER(0.00)[open-mesh.org:url,fuzzinglabs.com:email,narfation.org:dkim,diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns]
X-Rspamd-Queue-Id: 5529B445845
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--nextPart5169337.0VBMTVartN
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
Subject: Re: [PATCH] batman-adv: fix integer overflow on buff_pos
Date: Wed, 22 Apr 2026 13:38:12 +0200
Message-ID: <4755009.cEBGB3zze1@ripper>
In-Reply-To: <20260421222022.21231-1-lbourennani@fuzzinglabs.com>
References: <20260421222022.21231-1-lbourennani@fuzzinglabs.com>
MIME-Version: 1.0

On Wednesday, 22 April 2026 00:20:22 CEST Lyes Bourennani wrote:
> Fixing an integer overflow present in batadv_iv_ogm_send_to_if.
> The size check is done using the int type in batadv_iv_ogm_aggr_packet wh=
ereas the buff_pos variable uses the s16 type.
> This could lead to an out-of-bound read.
>=20
> Fixes: c6c8fea29769 ("net: Add batman-adv meshing protocol")
>=20
> Signed-off-by: Lyes Bourennani <lbourennani@fuzzinglabs.com>
> Signed-off-by: Alexis Pinson <apinson@fuzzinglabs.com>
> ---

Applied after fixing style issues in the commit message:

    $ b4 mbox 20260421222022.21231-1-lbourennani@fuzzinglabs.com
    $ ./scripts/checkpatch.pl --strict 20260421222022.21231-1-lbourennani@f=
uzzinglabs.com.mbx=20
    WARNING: Prefer a maximum 75 chars per line (possible unwrapped commit =
description?)
    #147:=20
    The size check is done using the int type in batadv_iv_ogm_aggr_packet =
whereas the buff_pos variable uses the s16 type.
   =20
    total: 0 errors, 1 warnings, 0 checks, 8 lines checked
   =20
    NOTE: For some of the reported defects, checkpatch may be able to
          mechanically convert to the typical style using --fix or --fix-in=
place.
   =20
    20260421222022.21231-1-lbourennani@fuzzinglabs.com.mbx has style proble=
ms, please review.
   =20
    NOTE: If any of the errors are false positives, please report
          them to the maintainer, see CHECKPATCH in MAINTAINERS

Overall, it is unclear to me how Alexis Pinson <apinson@fuzzinglabs.com> is=
=20
part of the chain. Lyes Bourennani is the author and Lyes Bourennani submit=
ted=20
the patch. See the documentation [1]:

> Any further SoBs (Signed-off-by:=E2=80=99s) following the author=E2=80=99=
s SoB are from=20
> people handling and transporting the patch, but were not involved in its=
=20
> development. SoB chains should reflect the real route a patch took as it =
was=20
> propagated to the maintainers and ultimately to Linus, with the first SoB=
=20
> entry signalling primary authorship of a single author.


If you want to say that Alexis Pinson also developed this, you would usuall=
y=20
say "Co-developed-by: ..." followed by the Signed-off-by [1] from the same=
=20
person. And only then the Signed-off-by of the submitting Co-author. You=20
might better understand it when looking at the examples.

[1/1] batman-adv: fix integer overflow on buff_pos
      https://git.open-mesh.org/linux-merge.git/commit/?h=3Dbatadv/net&id=
=3Def6f94dbf35185c19d37bdb9cdd96bf0a6e985e4


[1] https://docs.kernel.org/process/submitting-patches.html#developer-s-cer=
tificate-of-origin-1-1
[2] https://docs.kernel.org/process/submitting-patches.html#when-to-use-ack=
ed-by-cc-and-co-developed-by

Best regards,
=2D--
Sven
--nextPart5169337.0VBMTVartN
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQS81G/PswftH/OW8cVND3cr0xT1ywUCaeizJAAKCRBND3cr0xT1
y/dIAP0YUO6t7ItHpmuAZEukY4neS1l6Bw6C2ZiJWc+ChJVLWQEAxkz7bPmvg3qZ
X88oEtc6K/5cr2sBsACRfXVGc4rUxAw=
=BeMY
-----END PGP SIGNATURE-----

--nextPart5169337.0VBMTVartN--



