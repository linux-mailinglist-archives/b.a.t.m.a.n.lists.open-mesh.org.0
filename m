Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E6BE9D49E2
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 21 Nov 2024 10:23:40 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 8080B83AD4
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 21 Nov 2024 10:23:40 +0100 (CET)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1732181020;
 b=yQRYo9+8RrELxV64nrtbhGJZgZNB6qykGyU60n5OfSgvBqpTglOGfyFilP5kgNjnwWsDN
 CrJ2TVH6OUc6yIhvpFc4OF2C+tEa1huHEbPpiKfixDvvkcjCDDyqhcSjvvDhMmbup9mLcb2
 Mqwmh3ajRK8zkYxJzdzprTHTGF1jxJQ=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1732181020; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=MDaIQr2wXx0X4AjpiNl0gay59fRdvoz3qj59/2Naw/g=;
 b=JY6RIwCBJOv0vGJkXJBG91t8doztRXCv9EUpqbZrSeqZ9Zs01C/0KgJ4IngASYQCYA6pm
 G420vWxqusGVBeG99fWyw5rfFUsWk1Osuxdf5JvKTwHRYCgYag3sHcKFBYtDtr+/a2JUZqm
 1ZBHs45piVc1qV+PnoaOjitJM4si7VU=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
  arc=pass;
  dmarc=pass (Used From Domain Record) header.from=narfation.org
 policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 92ABC82A30
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 21 Nov 2024 10:23:37 +0100 (CET)
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1732181017; a=rsa-sha256;
	cv=none;
	b=ollw77ts7fXS9Hvm7/ufCXdg+mMxbJ+tgagShhlAVXYYkX2Ux60w/56uM225NRYkkYzeS8
	HSs153HQ5vggi9sPU2UGwBBHucBDIefTnDvDZIZRFlyT8V4fa/WgJULIVY1X9rk428PRPH
	A60BBq7Ahe5ETrX3a8GXQHTLVLspMf8=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=hIrljbkt;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1732181017;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=MDaIQr2wXx0X4AjpiNl0gay59fRdvoz3qj59/2Naw/g=;
	b=dJO8CA58ALkkRVu3jKE/sEbTI5f5F7gu2cwUTuO0QQ6lgpUi2jgDWiOc5bGqDlFzvrFJp9
	pz1qW0L0Jt7uyTlopm5xv+AX8gp8SLbPSzM3O35xKP6JPH5P4SAvu/8DJ2UxbMBgnVXaYO
	Coya65oL9ke9EbbQrqqsTUQnCWwDqIU=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1732181017;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=MDaIQr2wXx0X4AjpiNl0gay59fRdvoz3qj59/2Naw/g=;
	b=hIrljbktFWt9vUqCp+PN5L5+/8QFcfPYCR6ZPT7ntYwTUjPKXCA6sd5DGdeZ/pMNi9M81d
	RJEDaz3HqJoBYnQoMiIZSjmdLaIKAtQ1820yjo5NwZXYBREk5OobgyTjgemTheSpM5q849
	wMBSXgGb14AX27ahdmwqTLR9K5eR4Q8=
From: Sven Eckelmann <sven@narfation.org>
To: Remi Pommarel <repk@triplefau.lt>
Cc: b.a.t.m.a.n@lists.open-mesh.org,
 Marek Lindner <mareklindner@neomailbox.ch>,
 Simon Wunderlich <sw@simonwunderlich.de>, Antonio Quartulli <a@unstable.cc>
Subject: Re: [PATCH v3 5/5] batman-adv: Don't keep redundant TT change events
Date: Thu, 21 Nov 2024 10:23:33 +0100
Message-ID: <13642846.dW097sEU6C@ripper>
In-Reply-To: <Zz75q77puwRSl5hN@pilgrim>
References: 
 <cover.1732124716.git.repk@triplefau.lt> <2485257.jE0xQCEvom@ripper>
 <Zz75q77puwRSl5hN@pilgrim>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart24400541.ouqheUzb2q";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
Message-ID-Hash: GOL7DPH7H2VBBGR3O3D7AE7IDGFUJ4WW
X-Message-ID-Hash: GOL7DPH7H2VBBGR3O3D7AE7IDGFUJ4WW
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/GOL7DPH7H2VBBGR3O3D7AE7IDGFUJ4WW/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart24400541.ouqheUzb2q
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: Remi Pommarel <repk@triplefau.lt>
Date: Thu, 21 Nov 2024 10:23:33 +0100
Message-ID: <13642846.dW097sEU6C@ripper>
In-Reply-To: <Zz75q77puwRSl5hN@pilgrim>
MIME-Version: 1.0

On Thursday, 21 November 2024 10:13:15 CET Remi Pommarel wrote:
> Looks right to me, I would even simplify that more for readability with:
[...]
> -del:
> -               list_del(&entry->list);
> -               kmem_cache_free(batadv_tt_change_cache, entry);
> -               bat_priv->tt.local_changes--;
>  discard:
>                 kmem_cache_free(batadv_tt_change_cache, tt_change_node);
>                 goto unlock;
> 

The "discard" is unused. But the rest looks good.

Kind regards,
	Sven
--nextPart24400541.ouqheUzb2q
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQS81G/PswftH/OW8cVND3cr0xT1ywUCZz78FQAKCRBND3cr0xT1
y6d5AP9CNG9cNNIAjXfiKr6uEFtQPVL3981Kxe7rXFLfZvN09wEAg2V1aMyqrSww
Efe42zAeCEKmvnJ/oYB698A7NbLjygk=
=/E0l
-----END PGP SIGNATURE-----

--nextPart24400541.ouqheUzb2q--



