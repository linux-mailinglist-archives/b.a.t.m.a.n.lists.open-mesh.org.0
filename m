Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 10B3F80BFC
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  4 Aug 2019 20:25:19 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 33C1C8267F;
	Sun,  4 Aug 2019 20:25:16 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
 by open-mesh.org (Postfix) with ESMTPS id 8989980B7E
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun,  4 Aug 2019 20:25:12 +0200 (CEST)
Received: from sven-edge.localnet
 (p200300CA6F2191007D683EA4D59D38D5.dip0.t-ipconnect.de
 [IPv6:2003:ca:6f21:9100:7d68:3ea4:d59d:38d5])
 by dvalin.narfation.org (Postfix) with ESMTPSA id 007AE201DA;
 Sun,  4 Aug 2019 18:25:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1564943112;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=oUu9NUOOMAc1u9TuYo8nDWVc65dZgaO4XNqTcLMZx+U=;
 b=wvGoa9c4+xm8TcF1oVOp/7tCtKOVFJHsakU03MriNEoI3af7I/GwrfdKhONI37uwjTNj8M
 199ndWgVYHIjDcOpIdslGlGoC9rJ6PoYN9QzbrfFO8dy/1BnhZq67b4jbci7x8fOsnEyOV
 09m/LBEICUuxtRCFuD/8DI6BRXPHF68=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: [PATCH v2 2/2] batman-adv: BATMAN_V: aggregate OGMv2 packets
Date: Sun, 04 Aug 2019 20:25:09 +0200
Message-ID: <11857632.6pTS9hhL82@sven-edge>
In-Reply-To: <20190804180632.489-3-linus.luessing@c0d3.blue>
References: <20190804180632.489-1-linus.luessing@c0d3.blue>
 <20190804180632.489-3-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart11342170.1yEyJuSppn";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org; 
 s=20121; t=1564943112;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=oUu9NUOOMAc1u9TuYo8nDWVc65dZgaO4XNqTcLMZx+U=;
 b=ylleCv60fZU/kJS9lU8gOZlRhuOE0oDXfwK39UsI/fgbwbr9fl0lmRvmr3a/6BRcMoV+3g
 Q913Ec9EtLrTuco/LNXkZQVO9J6YDaI2MdMG4jE0MXrfLB+7IMiXOv8jT+ArKgNdY5DlCt
 eAR3WHsYtvZSSSJ1kiP5TqO+V7D2mMw=
ARC-Seal: i=1; s=20121; d=narfation.org; t=1564943112; a=rsa-sha256; cv=none;
 b=Iff7CcFEvqvY9yxtVmJ75SEWGA97PnXDzNacjnp+H+8iXivxj4WPmzJSwj44lprm5W+3OD
 HqZZHdFFXcxKhAXsvHI/9pxLP5XZI4QarKZr6OxUwroK2rKRusTf1/1NhFKjFiyS0kIEJf
 7S6UOJgwiVUJnWZ3ur+SXNWYGtKYXkY=
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

--nextPart11342170.1yEyJuSppn
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Sunday, 4 August 2019 20:06:32 CEST Linus L=FCssing wrote:
>  static void batadv_v_ogm_aggr_send(struct batadv_hard_iface *hard_iface)
>  {
> -       struct sk_buff *skb;
> +       unsigned int aggr_len =3D hard_iface->bat_v.aggr_len;
> +       struct sk_buff *skb, *skb_aggr;


Please don't declare multiple variables per line.

Kind regards,
	Sven
--nextPart11342170.1yEyJuSppn
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl1HIwUACgkQXYcKB8Em
e0ZH5hAAufmvcKaPKnXgklG+awQXUJCYoIObyvDx3cxqdal7POCZkZM6akZ5Ev+3
KVyfYGLUYVfZBmU9BboI3278nWttMe+CWBSLzUicukJPhDmJ3vaZ/4Bk0StBgQjt
KLlNs48WWhIiq7XqH0h0Ezi67ubExBTOP1lQgpoDtdxHU7ckdszaE9xH010WrQQD
dJJajluRwCpPOoAMFaSqdai0YQ64xiE5/w7N3wR1BRKF5FL4Mk41yrSbSRGyEEvS
oVjZadkKdBFPf84i8Nfv51DYEBQXLgOsEgUGh5+v7aIB64YBQNuzfkBps44KVZZ9
bu7KXD1BKB3s/tsfdjbRgl/utkv95KEWwmolUSrQDN1gUTpCMa1K666Dwq9mrrBU
GU74fUVHwcMFgIA2sE5vs+b9N+5xymWkZOYaxy9UNlNeZecb/7DAh8e4n7AaywSE
mpYUIs83Y/fg1vEph+LbRWwweU4WqB4SK7ZKckvPupAXitu86qFsNde3zlxlyqeV
UEGwuZRFGzMgX072dVbkJqqZBDWyM1wY+RGMf/v6eKv8oUIAGw7fiQTQGZE/6p4m
kA0B6CejPfvxB2jycjKer8s2fRGKvtLrpGAe87+302UaSvRacrhYjsbWffjwG+eJ
/RosVDyi5LjkHLKua52sKb4PThBR2su1bYCStzG9eqKHIeAuRG8=
=m2na
-----END PGP SIGNATURE-----

--nextPart11342170.1yEyJuSppn--



