Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id 82A0980C05
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  4 Aug 2019 20:36:44 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id D4CA7826F2;
	Sun,  4 Aug 2019 20:36:40 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
 by open-mesh.org (Postfix) with ESMTPS id C957380B6C
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun,  4 Aug 2019 20:36:37 +0200 (CEST)
Received: from sven-edge.localnet
 (p200300CA6F2191007D683EA4D59D38D5.dip0.t-ipconnect.de
 [IPv6:2003:ca:6f21:9100:7d68:3ea4:d59d:38d5])
 by dvalin.narfation.org (Postfix) with ESMTPSA id 83993200F1;
 Sun,  4 Aug 2019 18:36:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1564943797;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=w0W8kd+68sgAN6ta/RtIYWo/Tad6rHNUZOPudKeN8I8=;
 b=NnxbOBJYHAkTn0wQ9YirLfVF/MmSZ0Kt/rgObQf1+hfXQZmeBUMqkpsnoKJ7K5OQTXfqFI
 oa92AZQacL9uOm70LOPE/z7+RHpSidyWQ92D8pXl0lQsyhzRNwtPiPLCh6RPxOMsVKrITA
 E/oaAfE6gfkgjJ1Vkn67nd110Op4RCA=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: [PATCH v2 1/2] batman-adv: BATMAN_V: introduce per hard-iface
 OGMv2 queues
Date: Sun, 04 Aug 2019 20:36:34 +0200
Message-ID: <2424516.9MKKcQ5zTs@sven-edge>
In-Reply-To: <20190804180632.489-2-linus.luessing@c0d3.blue>
References: <20190804180632.489-1-linus.luessing@c0d3.blue>
 <20190804180632.489-2-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart1800788.icWLctkV9F";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org; 
 s=20121; t=1564943797;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=w0W8kd+68sgAN6ta/RtIYWo/Tad6rHNUZOPudKeN8I8=;
 b=FSyjMENDki03pOt4cZQ9P94m6Q20WqJk/5tGRG0oKsPkIvoic1uzU7uAicaI/8qf4iyemX
 bwzk8kvOrpjNRnQMCvEwPvVdVAbwXcVFAPTiG/U+MyYtbo27eLBVovXG+iJkrXbJ0K3lMq
 /e+TsUVzLkjSedmRTA1SurHNbTVZjik=
ARC-Seal: i=1; s=20121; d=narfation.org; t=1564943797; a=rsa-sha256; cv=none;
 b=nWP9IhrIgbz/nWDBNUQ2oOl3LzMY4zqUDbCOpvXZUMHh7Wz1qPtuXjM4BUluOEEmSuWiMZ
 2pgOP8KgYLB7u1TtIx/C4126uQNlgSihcA1Uz1T35febHbCe8hHhct810A0c8+WiA7UgqY
 hWDQIl8r34GCNYXgBfQzM7ZHOgQN2MM=
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

--nextPart1800788.icWLctkV9F
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Sunday, 4 August 2019 20:06:31 CEST Linus L=FCssing wrote:
> +        * @aggr_len: length of the OGM aggregate (excluding ethernet fra=
me
> +        *  size)

Did you really mean "ethernet frame size" here? Not ethernet header size? A=
t=20
least this would match following part of the second patch:

On Sunday, 4 August 2019 20:06:32 CEST Linus L=FCssing wrote:
> +       skb_aggr =3D dev_alloc_skb(aggr_len + ETH_HLEN + NET_IP_ALIGN);
> +       if (!skb_aggr) {
> +               batadv_v_ogm_aggr_list_free(hard_iface);
> +               return;
> +       }

Kind regards,
	Sven
--nextPart1800788.icWLctkV9F
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl1HJbIACgkQXYcKB8Em
e0azaw//dR7OmSoGy/YcQuBvVgVhdIoCUnqyCXICr6cDfZ7V4XNHQbBZaKKO6cdO
80FF0JADmhRO7BMrwMc1x3lLMDK8DqNs6ckBXp4/TfZHiRRrjWRj/vSn+j2eKEND
ees8EyXewfgFREX7sfnHW6QoNJ468GKCWO9Q/PBFVYneHpW0aDXf+oYfzBE8qUUX
GU6Rm1rWkLLXMrSRGOtbDFxl+AoVSvOzaZdaqhYaB6xoAr2hjzVEyEWcwRXeY7Cz
6fXANFsrzkri6GLBuvEC83pBV2HmNZEyViIgrn2LzNjUfOFyniVgy0LMs0ngizb5
Lztx1/1MD7FCtvH1QUSyFZassKheipJJx6pp6DHyBAGaf0Vk6zpmONL/xHeUkMHK
s4kvQY88eREyZsIjLOzqbOt3nVPPP8bav+AMoRW4eYSov3z/YRfT7Ik5i9LjERS/
8gk48w6JV3Ss+RaIlQZVzPQTJhCKcFsOzFnMsBHj0g7oJ3h9mx4gR4dgQ7o41+xJ
K7eyTI4eY7TYGpo/Aruo+wBaK+XOdbFkeaamC3ilvz3T/xpBAFZ5n1NZz6jGR5e6
DxXD1UuUNwDsu6JTgs4BQ77HpHQQ0WCFraHdfsvuuSByaE1fD5+YZlM4DKIaFg0S
yRNw5wl4/GCTA2M+nK2NpmnPhziVja3JHUeqWKcdRrX2xYLoevA=
=jPM6
-----END PGP SIGNATURE-----

--nextPart1800788.icWLctkV9F--



