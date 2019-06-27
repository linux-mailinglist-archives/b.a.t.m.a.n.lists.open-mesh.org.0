Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 169FA58945
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 27 Jun 2019 19:48:46 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id C0EF7827B6;
	Thu, 27 Jun 2019 19:48:42 +0200 (CEST)
Received: from durin.narfation.org (durin.narfation.org
 [IPv6:2001:4d88:2000:7::2])
 by open-mesh.org (Postfix) with ESMTPS id 86CF78041A
 for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 27 Jun 2019 19:48:39 +0200 (CEST)
Received: from sven-edge.localnet (unknown [IPv6:2a00:1ca0:1480:f1fc::4065])
 by durin.narfation.org (Postfix) with ESMTPSA id 4315E1100B2
 for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 27 Jun 2019 19:48:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1561657719;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=j/4QeeKT+dYt0Xx/A9I29T/JT5TCgn5r8I0dq6kU35U=;
 b=zgb6jrnCsvK17BEkkjA4R5eg0YHUzpUkDk61DxTLjv9fOaTZHpMzca3o/ikIs/paJH7Fdl
 D5dTeTTvLCAmrXIkGjSCQ8F9YMrviPXT6v9OLOr/AA593vRAz4+jOsA6zSLu4AreT5fNI7
 W1CD3dFnOLm8spJC9CsFwM8q5Qx9+gA=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: [PATCH v2] batman-adv: Get inet(6) device inside RCU protected
 region
Date: Thu, 27 Jun 2019 19:48:35 +0200
Message-ID: <12109360.nt3nhxKV5M@sven-edge>
In-Reply-To: <20190627172206.22683-1-sven@narfation.org>
References: <20190627172206.22683-1-sven@narfation.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart12109360.yDq7mgzNbW";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org; 
 s=20121; t=1561657719;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=j/4QeeKT+dYt0Xx/A9I29T/JT5TCgn5r8I0dq6kU35U=;
 b=k8ZhGxqO6d5C6DHxA/0/WICtLwiRnPjZkg3WmP4CI7/xuzg/5Lhg3qqX1JWt1jjlBL0FYC
 bc3QqyyL3BjIXfMpnBW2fsDgqAKVSMRf4MbrSyf66Nk/phDwz7Jto5elg+E6f/QqgrGMBb
 RYKpHmOB2cfNcd8G6k40qBbyS73hAg4=
ARC-Seal: i=1; s=20121; d=narfation.org; t=1561657719; a=rsa-sha256; cv=none;
 b=IkMHvXr700gBy2veQ4GGZxsjraebqQeJV1ofK0c66PlYoDGAsbFn5IS0Ujica3ek1RZj9U
 8LeBzGr/T03WqCMDpAG+TsD2OiUXPkAeXV2XusPu+PiEUlAIjh+XkyzkmIpqA0tQiSIls0
 wz2mV9K/EXh9Ye7g3f0WqnzxolEJMVg=
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
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

--nextPart12109360.yDq7mgzNbW
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday, 27 June 2019 19:22:06 CEST Sven Eckelmann wrote:
> It is not necessary to get the inet(6)_dev outside of the rcu protected
> region by using reference counting. Instead, the in(6)_dev_get can be
> replaced by the non-refcnt function and everything can be moved inside the
> rcu protected region.
> 
> Fixes: 0a7733468f95 ("batman-adv: mcast: detect, distribute and maintain multicast router presence")


Fixes: 2b0f11124aad ("batman-adv: mcast: collect softif listeners from IP lists instead")

Kind regards,
	Sven
--nextPart12109360.yDq7mgzNbW
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl0VAXMACgkQXYcKB8Em
e0bPPxAAyFPMCruRqDsrf9Igju9g54IJJattqrJHRgcEhG33ad6YAE3eeY0Km5pz
ohwLnJs3zMB2U9VHHf4sfzTjLOEjAcmbpjbMWDcnq0VytRl7+TbycHzZB06yYKzU
NfQ0ZEgw78nFFYlf+6931vUEkW3iOjIdXO99cL5LHKddWibig9T3vNyhCXYoy8Ed
CqDrbBSd1gPX4aV/RYFPr4NmF7j+O+ISZjlxjvQqnhKCoo/gIreTezjXI6mKHqvF
wIs9fIDKXpUn8Ek7GtnoQc1QsVr+BKR72DxgrECCqx/styLXxz26iNqfP3QGquJz
/ACJs+vbs8sVPNM3XWWH8JkjuZQAfX4gfklO/n1BMCbGpF9XIVr7s237I3u39eM6
QyVfQW3UaoOxAIw5JbT8tpwnfaIVItczG0Sb4UPQv64QG5Oc5Dkm81zF+kWvB946
/6dO4Uk1Re8hpLy33y0vkl4/ihLdWC6nEj0z2/fNOnQlQBSL03XKkWBeREVbkdZv
MToqm3qQJBoPvxTVy0x9MAWhh+p3h/JbMrzOjcFp/JBzzG0ZFhGwfj6c152pqrFS
iZI3Jv4LUdq3oSu8nG8RGWP/3YAK3UEg80/V4OpwPnr/OqrQfO5nKRrJFeuMIiD+
bOrucE/alNyxEDtTyN4chlVmPtgPz2fQFM4TjyY6/EOFrRwW3i8=
=8jvX
-----END PGP SIGNATURE-----

--nextPart12109360.yDq7mgzNbW--



