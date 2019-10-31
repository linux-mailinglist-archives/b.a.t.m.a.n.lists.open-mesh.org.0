Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ED1FEB4F7
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 31 Oct 2019 17:46:04 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id D043380A71;
	Thu, 31 Oct 2019 17:45:51 +0100 (CET)
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
 by open-mesh.org (Postfix) with ESMTPS id 7EA23801F0
 for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 31 Oct 2019 17:45:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1572540344;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=u+tUIBYHKvIkuL4G7fc5AXLA5rHt3MekdCaxn1sE414=;
 b=P4vIvrUd4lipMC3PeEFVUQRsUdQPvM6OSOh/PPMV99gRQ+QAiB5CWAmb9kdnSDU56Tlu9c
 Y5b0ky0JpNSjnnBed6B/UlAxMbbbS7CozSdxZCD3QlzcxEKlcM6tZLZgdIL0LFO6mN0t9z
 Rzj4PgXZIeN+q4U/b9ONfNCv8p6rICw=
From: Sven Eckelmann <sven@narfation.org>
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Subject: Re: [PATCH] batman-adv: Axe 'aggr_list_lock'
Date: Thu, 31 Oct 2019 17:45:40 +0100
Message-ID: <34947339.t7yNZRQCJl@sven-edge>
In-Reply-To: <20191031085240.7116-1-christophe.jaillet@wanadoo.fr>
References: <20191031085240.7116-1-christophe.jaillet@wanadoo.fr>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart1950623.Tr5mk9XeTM";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1572540344;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references:dkim-signature;
 bh=u+tUIBYHKvIkuL4G7fc5AXLA5rHt3MekdCaxn1sE414=;
 b=ovP1qiOrrGccFkIKlnPwS+KW7F//5KGihNNf/Ksf72+tnXHdn0u2BUmiP/rlzVIaGGroUF
 etwPA7P03LoczN75G7kJvF2AWZQwJGp0fo5KXptAtpo3unORyjX9Zy/5dWaR1vZbjBdaqY
 ATvmy0oltn84JhyrVP0+bBnvLDhvUpw=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1572540344; a=rsa-sha256; cv=none;
 b=S5Eth8rtoJH1QCPD4vsBEpm3OPdKnq4S3Kq1eiG3oFRVgDzhKi/R2O7Nr4nn9Uj1ni0eqa
 K0qjwCKO8qW+IIEjpYPJe6wjSDE4rC4qemmejwiQLg/8RhSP9KDCRHzGTz6AxS51hfkeFb
 xXjL2GJ+BGQqwzRlM5X4u+FFZDJAAw0=
ARC-Authentication-Results: i=1; open-mesh.org;
 dkim=pass header.d=narfation.org header.s=20121 header.b=P4vIvrUd;
 spf=pass (open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
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
Cc: kernel-janitors@vger.kernel.org, mareklindner@neomailbox.ch,
 netdev@vger.kernel.org, b.a.t.m.a.n@lists.open-mesh.org, a@unstable.cc,
 linux-kernel@vger.kernel.org, davem@davemloft.net
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

--nextPart1950623.Tr5mk9XeTM
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday, 31 October 2019 09:52:40 CET Christophe JAILLET wrote:
> 'aggr_list.lock' can safely be used in place of another explicit spinlock
> when access to 'aggr_list' has to be guarded.
> 
> This avoids to take 2 locks, knowing that the 2nd one is always successful.
> 
> Now that the 'aggr_list.lock' is handled explicitly, the lock-free
> __sbk_something() variants should be used when dealing with 'aggr_list'.
> 
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
> ---
> Compile tested only.

Applied together with your other patch.

Thanks,
	Sven

--nextPart1950623.Tr5mk9XeTM
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl27D7QACgkQXYcKB8Em
e0ZQrhAAwKtHzM6URp++7gAYx8jfbNu1SHKYF4CFTq0mjqjQZBLuZaWg8eYALQDa
Quv7JVBrkEog8zGs8k9mqnL8TfgXvwKQvmvhHV4eecC/slqSn0wF+VzSdaUY3CXG
BHCtj8kbiu0dmBPHt31agMDjNBoyF6UwhIT1SK1C8UfJq+Rsc3hUXxmPwm7BX8rU
dzTeUTpZ+BmIVFWlnvcNYMNTmwM8U7NLZ/rpHXw+gsOFcA5F7+ven4L+2wTmutJL
IGAhrIuGZsEhYe+xu7WRahNed8CcoeeU//qg6E6JKNETE27sf4tgzQbsQmSWAqgf
dbm2LSby6BCdYUTYkDmQR3Ds6pNbUfg2jyhliNCrDtsvn5MMiR4RaXl0pkEoEt+v
/EK3jrAR13mUcAcelIJrHOG0HzhX+vVGLySKegGoM5mElltIxQ3g/9hnGUvtU6t4
JvHdQZARYGuMDGK2U9fDSO9dMVr+qq20PX3hNacE6U6Q7uknW9H2jHfmv/hg0bJO
DjfcXdYuBw4qEPdPCRFEUkDJLvGrXBnfKqkHjARHK4DBdyWRBl5mT4lppgT5wcCk
KWxvT9ImoWFiDAeJAMVzXyYMrYny6vqyMTgebMz98K666ue6e34znyY4cCj2kY8O
iy5kw2J7v0u30kwHd/fdota1yKA0j28TVTDxmjyEEhZWhyb4bzA=
=Hpom
-----END PGP SIGNATURE-----

--nextPart1950623.Tr5mk9XeTM--



