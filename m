Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 25F669A917
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 23 Aug 2019 09:47:24 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id D440481F73;
	Fri, 23 Aug 2019 09:47:17 +0200 (CEST)
Received: from s2.neomailbox.net (s2.neomailbox.net [5.148.176.60])
 by open-mesh.org (Postfix) with ESMTPS id 560468098C
 for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 23 Aug 2019 09:47:14 +0200 (CEST)
Subject: Re: [PATCH maint] batman-adv: Only read tvlv_len after checking
 buffer size
To: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>, Sven Eckelmann <sven@narfation.org>
References: <20190822065536.18926-1-sven@narfation.org>
From: Antonio Quartulli <a@unstable.cc>
Openpgp: preference=signencrypt
Autocrypt: addr=a@unstable.cc; prefer-encrypt=mutual; keydata=
 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
 Zr/o+Bj7j3NTN4WgbBNAsEeuVVpPG0I=
Message-ID: <d157c88f-d5e9-ce53-0db2-50ad0d11a6fc@unstable.cc>
Date: Fri, 23 Aug 2019 09:45:02 +0200
MIME-Version: 1.0
In-Reply-To: <20190822065536.18926-1-sven@narfation.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="L4CwaLgsABUF8aLi2zJ9byztBBC8ne0dz"
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
Cc: syzbot+355cab184197dbbfa384@syzkaller.appspotmail.com
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--L4CwaLgsABUF8aLi2zJ9byztBBC8ne0dz
Content-Type: multipart/mixed; boundary="NmP3AGxCta3Ggk24x7yc4Tgc1hDIjUJo6";
 protected-headers="v1"
From: Antonio Quartulli <a@unstable.cc>
To: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>, Sven Eckelmann <sven@narfation.org>
Cc: syzbot+355cab184197dbbfa384@syzkaller.appspotmail.com
Message-ID: <d157c88f-d5e9-ce53-0db2-50ad0d11a6fc@unstable.cc>
Subject: Re: [PATCH maint] batman-adv: Only read tvlv_len after checking
 buffer size
References: <20190822065536.18926-1-sven@narfation.org>
In-Reply-To: <20190822065536.18926-1-sven@narfation.org>

--NmP3AGxCta3Ggk24x7yc4Tgc1hDIjUJo6
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi Sven,

On 22/08/2019 08:55, Sven Eckelmann wrote:
> Multiple batadv_ogm_packet can be stored in an skbuff. The functions
> batadv_iv_ogm_send_to_if()/batadv_iv_ogm_receive() use
> batadv_iv_ogm_aggr_packet() to check if there is another additional
> batadv_ogm_packet in the skb or not before they continue processing the=

> packet.
>=20
> The length for such an OGM is BATADV_OGM_HLEN +
> batadv_ogm_packet->tvlv_len. The check must first check that at least
> BATADV_OGM_HLEN bytes are available before it accesses tvlv_len (which =
is
> part of the header. Otherwise it might try read outside of the currentl=
y
> available skbuff to get the content of tvlv_len.
>=20

Your explanation makes a lot of sense. Thanks for digging into this.

> Fixes: 0b6aa0d43767 ("batman-adv: tvlv - basic infrastructure")
> Reported-by: syzbot+355cab184197dbbfa384@syzkaller.appspotmail.com
> Signed-off-by: Sven Eckelmann <sven@narfation.org>
> ---
> Please check this thoroughly. I just made this change while waiting for=

> something else to finish. So I have not tested it at all.
>=20
> Bug for this can be found under https://www.open-mesh.org/issues/398
> ---
>  net/batman-adv/bat_iv_ogm.c | 15 ++++++++++-----
>  1 file changed, 10 insertions(+), 5 deletions(-)
>=20
> diff --git a/net/batman-adv/bat_iv_ogm.c b/net/batman-adv/bat_iv_ogm.c
> index 240ed709..61836143 100644
> --- a/net/batman-adv/bat_iv_ogm.c
> +++ b/net/batman-adv/bat_iv_ogm.c
> @@ -277,17 +277,22 @@ static u8 batadv_hop_penalty(u8 tq, const struct =
batadv_priv *bat_priv)
>   * batadv_iv_ogm_aggr_packet() - checks if there is another OGM attach=
ed
>   * @buff_pos: current position in the skb
>   * @packet_len: total length of the skb
> - * @tvlv_len: tvlv length of the previously considered OGM
> + * @tvlv_len: tvlv length of the considered OGM

Was this just a typ0 that you are now fixing?
Because I think tvlv_len still carries the same information as before
this patch (assuming this field is available)

>   *
>   * Return: true if there is enough space for another OGM, false otherw=
ise.
>   */
>  static bool batadv_iv_ogm_aggr_packet(int buff_pos, int packet_len,
> -				      __be16 tvlv_len)
> +				      __be16 *tvlv_len)

I personally don't like making this argument a pointer just because "we
will decide later if we want to dereference this address or not".
At least it should be made const to make it clear that this function
will not modify its value.

However, I think it would be cleaner to pass a pointer to the ogm packet
and then access the tvlv_len field when/if needed.

>  {
>  	int next_buff_pos =3D 0;
> =20
> +	/* check if there is enough space for the header */
>  	next_buff_pos +=3D buff_pos + BATADV_OGM_HLEN;
> -	next_buff_pos +=3D ntohs(tvlv_len);
> +	if (next_buff_pos > packet_len)
> +		return false;
> +
> +	/* check if there is enough space for the optional TVLV */
> +	next_buff_pos +=3D ntohs(*tvlv_len);
> =20
>  	return (next_buff_pos <=3D packet_len) &&
>  	       (next_buff_pos <=3D BATADV_MAX_AGGREGATION_BYTES);
> @@ -315,7 +320,7 @@ static void batadv_iv_ogm_send_to_if(struct batadv_=
forw_packet *forw_packet,
> =20
>  	/* adjust all flags and log packets */
>  	while (batadv_iv_ogm_aggr_packet(buff_pos, forw_packet->packet_len,
> -					 batadv_ogm_packet->tvlv_len)) {
> +					 &batadv_ogm_packet->tvlv_len)) {
>  		/* we might have aggregated direct link packets with an
>  		 * ordinary base packet
>  		 */
> @@ -1704,7 +1709,7 @@ static int batadv_iv_ogm_receive(struct sk_buff *=
skb,
> =20
>  	/* unpack the aggregated packets and process them one by one */
>  	while (batadv_iv_ogm_aggr_packet(ogm_offset, skb_headlen(skb),
> -					 ogm_packet->tvlv_len)) {
> +					 &ogm_packet->tvlv_len)) {
>  		batadv_iv_ogm_process(skb, ogm_offset, if_incoming);
> =20
>  		ogm_offset +=3D BATADV_OGM_HLEN;
>=20


The rest makes sense to me.


Regards,

--=20
Antonio Quartulli


--NmP3AGxCta3Ggk24x7yc4Tgc1hDIjUJo6--

--L4CwaLgsABUF8aLi2zJ9byztBBC8ne0dz
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE3o8ejP0lUW4GTX3J9FVsWUWDDm0FAl1fmYIACgkQ9FVsWUWD
Dm3/gg//Ud57otwiVj1pqXJiLHzz9QS6OdO910OFWhfKAodHAFY74siwUz02AA1G
h5ua4nerC52yOwlquDw8pexHqS+Q5PzKKjAS68z61pOknxIMrZXC1tojU2+IIfVy
sr5j9do7F2VfeJytxJX0TtqZHqdA4muTh8refTgriaaeLUf0Ylns1C68PCQH2lMg
RLujZOLCm1VhRYOunqGbsp6W0NCKTQX4/IGJxQIlWlMmTq++5CQX2EZnYt83Z9Iu
b9ZlHIuZT/fquZmsPkrO0AyrQ3tY+vsCJWi5j6VSXvSTQS4DO20FtBKZR/WRyd9W
v5NtkoSHSqA0+eiBaH34WYUtB7HROZee1uvPDcTXjlsil8FgIyxU1G2PNEGPAY0t
VNg7J9Dw7yNJieqDyph0uGlEWVzWNbYZi4K8CDuBmlROMzpHM8GjKkobLWxkDtc4
M3ki8my9pE77li8GLA8z/oztZ2o1vhJCVskMvMjO9nIoWhXyg/aO3blO7yRSS93K
HjhM5hIDdBWjKgLhI96ndu0VxxYWYdCL9u0o9Z15+pz4Chn2mQyABDiE6fuwLFZS
wujnWzOYhXZscIGIirxTQWz89al7jIwYh5DD1qwnCD2TJEzZhEly1QwkY0NO/hRq
f2qdZpAmMdTsmG9VQ6zfjQdk/U9vSDsV/TjRlOAKReTf7ypRsCY=
=GpAf
-----END PGP SIGNATURE-----

--L4CwaLgsABUF8aLi2zJ9byztBBC8ne0dz--
