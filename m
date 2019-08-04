Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id CD91680AA8
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun,  4 Aug 2019 12:54:06 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 0E8308222E;
	Sun,  4 Aug 2019 12:54:04 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
 by open-mesh.org (Postfix) with ESMTPS id D3D73802FA
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun,  4 Aug 2019 12:54:00 +0200 (CEST)
Received: from sven-edge.localnet
 (p200300CA6F2191007D683EA4D59D38D5.dip0.t-ipconnect.de
 [IPv6:2003:ca:6f21:9100:7d68:3ea4:d59d:38d5])
 by dvalin.narfation.org (Postfix) with ESMTPSA id 708021FFFB;
 Sun,  4 Aug 2019 10:54:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1564916040;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=AzQnqS15NPYy+PfcGu4VNaC5fnNdj39LdY7F5bP8eD4=;
 b=oqKVsTzuj1R7mokzQVL6utmyP6JCPIkySuehS5RSA02shyUqxyn3q20d2h3B7yUNi1rL6S
 wHPj19srlkFJGBZlKmlFPG25qKwBwgSRQEEqhH4XH350Ry82FFh4njnQIUjbWEdRrXAW2B
 32+K0eYPy5oxmw+iRB0e5TnDdSZxLM4=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: [PATCH 1/2] batman-adv: BATMAN_V: introduce per hard-iface OGMv2
 queues
Date: Sun, 04 Aug 2019 12:53:51 +0200
Message-ID: <2816600.2h39cV733O@sven-edge>
In-Reply-To: <20190804042855.29327-2-linus.luessing@c0d3.blue>
References: <20190804042855.29327-1-linus.luessing@c0d3.blue>
 <20190804042855.29327-2-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2266715.SzqnETc6SI";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org; 
 s=20121; t=1564916040;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=AzQnqS15NPYy+PfcGu4VNaC5fnNdj39LdY7F5bP8eD4=;
 b=jS0atGpsupoOqmo32DKgcQEtvb8svEUy9ehVeLUzJItSsVoPJsmvzA0Jz1+xRhBcI2pJBx
 VIJvMsnRVQEJ4vf9n7oqkmiHYSRuK8Znj4q17LZ8C5AlfQ0UOSE3sNiiXSrmfu+kX0HZt9
 VCHhEdAjgvRApI+/gtuntIVE2z94OQA=
ARC-Seal: i=1; s=20121; d=narfation.org; t=1564916040; a=rsa-sha256; cv=none;
 b=L5WXtak1kp7d1XFC6PWt7u8wxusA8gA03oBy1+LmP56jxnsJLLor4DSnxqslAC+dnjuuJ1
 a27FdqmGIs8Nkq71efwyxauSQRJ4R10U5t0qDXj7Qe2ZC/3peFdUxVWVuuXzWruOHi3dKV
 ldY/JcBIxwnMV7OlLMj3SQrIJB8AdMo=
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

--nextPart2266715.SzqnETc6SI
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Sunday, 4 August 2019 06:28:54 CEST Linus L=FCssing wrote:
[...]
> +static bool batadv_v_ogm_queue_left(struct sk_buff *skb,
> +                                   struct batadv_hard_iface *hard_iface)
> +{
[...]
> +static void batadv_v_ogm_aggr_list_free(struct batadv_hard_iface *hard_i=
face)
> +{
[...]
> +static void batadv_v_ogm_aggr_send(struct batadv_hard_iface *hard_iface)
> +{

Please add to these function an lockdep_assert_held for aggr_list_lock.

Kind regards,
	Sven


--nextPart2266715.SzqnETc6SI
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAl1GuT8ACgkQXYcKB8Em
e0Y3uA/+MySn6sZeJidvvGblHqBNGITEQZ5M8KHCqhzxQb8xzF9OdsmI8hSBhZV8
poqeRvOaK8+UQhQVPLJg8359187uk90rbMZtKsaxMTS6KOvgjT91LIsDrV5rPH+9
Pd3Tbbx4YDVRVmIOgB88L2/MEbdkzrtkPu7tvSfug5ZGi/e4H5e1/xQ6pvusS/h7
wOydArvbgdQmkYjyFHfQrCEDPDzu5/mo15eKiEOeoa9aC2xgmMPOwS+5YuTZR5aS
XYz4FI1aMnS+VSVv8WwFO/jST8fFIXjbb4ZaV1BE5954AbG2UwFQ8kV1iJLJCkjo
Nn1wtdy3TAYVHeaRQYjhhb171zzSEJk9AiBWs39IvES+g03hPSn2DVUFUocIn/2x
hjIXis+o+OKs0QX83sX6c/Ex5TkekW0AQvga4AatUn5KzgCknr9XwXWALf1+EPlR
rPxrjJcA9uttHHrCMbx+LdEMG7rk9sgC8xjOhPrxk7po5iDm1Zh13vfqV8/NfAWo
zECcOXBoByGbm3ETVhpg395e8Em/Rivpctz9UY53TSbjhoYcoTDBL3AQBAOVvhm9
+bxNPSCfxiLkQVioU7UAMLZP0FC3X4EjOMpZzIfaj5NGI2xTy4bBmV57w2gkDQr2
850/shC1LmGXId5S/yMW7dtSo4qaSJ8X0i4HKuWlGz/UPBck0Hk=
=89CC
-----END PGP SIGNATURE-----

--nextPart2266715.SzqnETc6SI--



