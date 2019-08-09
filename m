Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 3599B8747D
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri,  9 Aug 2019 10:45:23 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id C15A982064;
	Fri,  9 Aug 2019 10:45:19 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
 by open-mesh.org (Postfix) with ESMTPS id F0F4980901
 for <b.a.t.m.a.n@lists.open-mesh.org>; Fri,  9 Aug 2019 10:45:15 +0200 (CEST)
Received: from sven-edge.localnet (unknown [IPv6:2a00:1ca0:1480:f9fc::4065])
 by dvalin.narfation.org (Postfix) with ESMTPSA id 5F562201A9;
 Fri,  9 Aug 2019 08:45:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1565340315;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=XJif/q+W8UP5qQAMgPZ8GPL7SAoclefog7ece40klWs=;
 b=wXoBfewvYLw6FnqTpkgL/kNwRiQHEPIuyTOyQomA2SaBhEeQKZ95KkmstyPAbV6UMoSvQr
 kEeGo2CdBT1jOkYJjBiNKAeRE7mowNkv9pOz5hvP5qmsVCy96VTiHWbHGDxqw2qXrhHF62
 gNwfceEx7G/+eXB4u4MNXMK5ccviZaU=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: batman_v default throughput
Date: Fri, 09 Aug 2019 10:45:05 +0200
Message-ID: <2467054.VIeW2bLlCS@sven-edge>
In-Reply-To: <44509c82-e60d-c94c-e686-faf08e0ec875@unstable.cc>
References: <dc998970-a36c-cbb5-8de5-2ed2a3833d57@web.de>
 <44509c82-e60d-c94c-e686-faf08e0ec875@unstable.cc>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart5254771.2539LzSZRl";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org; 
 s=20121; t=1565340315;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=XJif/q+W8UP5qQAMgPZ8GPL7SAoclefog7ece40klWs=;
 b=H3vyMWQeA7no0W6hcXaQSJRT3oYDTpQPB24O7JVyTXo+0RTr6aDXqt3bY0oB7ncvCWYs1r
 P5So0FTOBLBuOWDJmii1fcH+uPKaBgnQ10/t2oD/WMrksDkuRyI34Dek4YTWjpdla6ubb4
 BM/zEIqy1gMQUPkqP5cDr7/f9iKa75I=
ARC-Seal: i=1; s=20121; d=narfation.org; t=1565340315; a=rsa-sha256; cv=none;
 b=McoqKRRQuhyzhjD+bczepIHFB2WYQWumR3f8k8BsIfqYibd04PsRL337GEr5QJBp3mzX6d
 G6nUHefg8iKTcjspnlwRJyvNijhqGJthH9UP3uArKNyACaW2vX2cDo29qRcR6u3yXxeunU
 Q6YcPbuSz7x3HdreHgotoN542lMoI6w=
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=sven smtp.mailfrom=sven@narfation.org
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 2.1.23
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
Cc: Antonio Quartulli <a@unstable.cc>
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

--nextPart5254771.2539LzSZRl
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday, 9 August 2019 10:26:24 CEST Antonio Quartulli wrote:
> As also mentioned at WBMv10, Marek and I had worked on a patchset that
> enables the tp_meter to measure the speed of a link, when no other
> throughput is available (i.e. for VPN or other virtual links). The
> patchset is still pending here [1].

It isn't pending. All patches of this series [1] are marked as "changes 
requested" since almost a year.

The only pending patches are the ones you didn't review yet [2].

Kind regards,
	Sven

[1] https://patchwork.open-mesh.org/project/b.a.t.m.a.n./list/?series=157&submitter=&state=*&q=&archive=both&delegate=
[2] https://patchwork.open-mesh.org/project/b.a.t.m.a.n./list/?series=&submitter=&state=&q=&archive=both&delegate=7
--nextPart5254771.2539LzSZRl
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl1NMpEACgkQXYcKB8Em
e0abgw/+Mwnsy92d6cAfYA2VP959Ay8RwqXd0lQQratpsQ93d92xa9HErivA/ove
T7ks3EzIyL5QTC922NF2xYr1n0QNziU0napO+0ZHT8doJg8RYE++Hcqy/1th7pm2
cK5sLGG0k5so5e8AE1BjntWjaxg08GQOFl7MSuWonh78p6eWrd0otJ/Skcf2sVab
h2Ag1klg9HO1OkYLrHB7IGMi7kkh2Vtnr0dcR9d76XxjTxhTkVKEe1oZOc2pyvuk
MZtOQOW0Se+t9X3nYDXDLqad6Q8DNFqkvd2FXf8dr6Tr+genHPVpwFDyWWy0dyM4
wBfQF9dj3SlH/7VtvgQpQbCyRq/IE6Xew9a2T/Y34fzkPertQ+yTo2Klbwd7XLmL
pt4vdbJ/FdXuW+I4NfBO+Kjvu4sb6kMTpqFG1WO6uotXc+EC7OUf+mKwUwLgz8HT
KQOtwGWVJXjhJ9h2moCWmA13CtZICGixhmOEf8qnM49KlMSPuJBJh40+i+1PHz86
aHixC73628N2qggZRipQt3S/deiKq6PCzsDeLpVbsHSSapQS76Ak20Q57LWLglSe
otg+zAOLaPKnX7hPRs3QPLFfHR+3BTBYdhnpTz3GGe626dpNynLPuJMvYPL8m+Dr
O4fUa7efu+7+YqZcj98FdySTbaFE5HWCOhfMoqpyz5DjPAX/ZCY=
=vEpr
-----END PGP SIGNATURE-----

--nextPart5254771.2539LzSZRl--



