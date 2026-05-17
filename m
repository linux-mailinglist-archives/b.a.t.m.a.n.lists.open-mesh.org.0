Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qJxRHt3yCWomvgQAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 17 May 2026 18:54:53 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 19D0256253C
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 17 May 2026 18:54:52 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 71017858F2
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 17 May 2026 18:54:52 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1779036892;
 b=MVDxszyfXMJq+bzpVNauR2TFzj/03yQij9KjL3oJPVAk3H72Kar7cjhbjQkTB/376cH11
 H6k8bAsryNMf3DRnvqX2xDWqAuckizqUXBsXqpYrZcqHvqcqhfGUdoT5mlcfGo8T8vECsT9
 I77IBemrocAx1QTCUzVQDObnhkOey70=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1779036892; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=0tMAMEQS6N2Yf1Pqt1et/BMgTj4lVgbsR4Y8eY9pjWw=;
 b=Ce8rgNk+3alybQV52KWpAdfYRUEuk0xEYEhb/gSvgrfS0hdCzKupuNWRERz+KlY9TZTGM
 W+azLhYs6ktYVa3rf2ZHgQMOconAtT+SKibIKFoqnJjuRzzfnMJoMmVRGcadWgsEqAboaRd
 Erh8GfNDazqeFwDFFHY9Wt9tr80HGeM=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 34931849E9
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 17 May 2026 18:54:21 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1779036871;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=0tMAMEQS6N2Yf1Pqt1et/BMgTj4lVgbsR4Y8eY9pjWw=;
	b=3JaYk1JklGkr7zcvyL4e2JKKTuJtO6etbLqZxCo7jJQg2am+5e31WSEFb6h6p3WOKXgWc3
	fcL6ntCe6uGs2+WqYx1gXlg54y1kaWSeuw8hOsj48PI1OHLSTNpEvnoX/10OfAJmPtB3P2
	CAgfJBuDhbwqID4BgVx1MZf3tIYXMWE=
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1779036871;
	b=kGETzWLgDlw4oUH+g9sbUhGWhqhWhQulaTJohAdzOGOnFQ/T3GvFzLiBUJE/SruNcL9LEd
	x06ZE/ueGmVN1Qyu7/Hu+yO1LkVOOWXdU5/llVescDPPKu8fRT6v13+igHu2F6QlmoL4iJ
	lK0cRY08ARupdX48S3lisPCWzoFyrp0=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=c8VAJ5fH;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id 09BFC2103B;
	Sun, 17 May 2026 16:54:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1779036860;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=0tMAMEQS6N2Yf1Pqt1et/BMgTj4lVgbsR4Y8eY9pjWw=;
	b=c8VAJ5fHUYji38f2SxLjsd40H3S3HYKJyhkTqQ7AVqEE9LhyPOrZtiQoBctZrKHmwak3on
	j7hGRM5+rZly+crA3SrQlP9f1aWuZo0vy1JF0tOrzvaT4tE5zw7Mm6dJBQAHhq49fMMCkt
	8lPubaCVNY8fT7e4dZdHidPmzp7aI/o=
From: Sven Eckelmann <sven@narfation.org>
To: Linus =?UTF-8?B?TMO8c3Npbmc=?= <linus.luessing@c0d3.blue>
Cc: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: [PATCH RFC batadv] batman-adv: mcast: fix use-after-free in
 orig_node RCU
 release
Date: Sun, 17 May 2026 18:54:09 +0200
Message-ID: <5073295.GXAFRqVoOG@sven-l14>
In-Reply-To: <agnvHQNOj2Sn7Thr@sellars>
References: <20260514-mcast-rcu-list-free-v1-1-0e20f24faa61@narfation.org>
 <agnvHQNOj2Sn7Thr@sellars>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart1957653.tdWV9SEqCh";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
Message-ID-Hash: XNQ7FOAB22QVGPI74Z4ZTFIF4XDTLHFT
X-Message-ID-Hash: XNQ7FOAB22QVGPI74Z4ZTFIF4XDTLHFT
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/XNQ7FOAB22QVGPI74Z4ZTFIF4XDTLHFT/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Queue-Id: 19D0256253C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.61 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[narfation.org,none];
	R_DKIM_ALLOW(-0.20)[narfation.org:s=20121];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[narfation.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:24940, ipnet:2a01:4f8::/32, country:DE];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns,narfation.org:dkim]
X-Rspamd-Action: no action

--nextPart1957653.tdWV9SEqCh
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: Linus =?UTF-8?B?TMO8c3Npbmc=?= <linus.luessing@c0d3.blue>
Cc: b.a.t.m.a.n@lists.open-mesh.org
Date: Sun, 17 May 2026 18:54:09 +0200
Message-ID: <5073295.GXAFRqVoOG@sven-l14>
In-Reply-To: <agnvHQNOj2Sn7Thr@sellars>
MIME-Version: 1.0

On Sunday, 17 May 2026 18:38:53 CEST Linus L=C3=BCssing wrote:
> On Thu, May 14, 2026 at 07:41:38PM +0200, Sven Eckelmann wrote:
> > batadv_mcast_purge_orig() removes entries from RCU-protected hlists but
> > does not wait for an RCU grace period before returning. Concurrent RCU
> > readers may still accesses references to those entries at the point of
> > removal. RCU-protected readers trying to operate on entries like
> > orig->mcast_want_all_ipv6_node will then access already freed memory.
>=20
> This one I don't really get yet. The mcat_want_all_* lists/entries should
> be spinlock protected (&bat_priv->mcast.want_lists_lock), not RCU
> protected?
>=20
> We don't use RCU for these lists in the first place because within
> the list changes / spinlocks &bat_priv->mcast.num_want_all_*
> atomic counters are increased/decreased. And these atomic counters
> are then used in fast path. Not those lists.
>=20

Um? I can see RCU modification function here (which are correctly protected
by spinlocks):

static void batadv_mcast_want_ipv4_update(struct batadv_priv *bat_priv,
					  struct batadv_orig_node *orig,
					  u8 mcast_flags)
{
	struct hlist_node *node =3D &orig->mcast_want_all_ipv4_node;
	struct hlist_head *head =3D &bat_priv->mcast.want_all_ipv4_list;

	lockdep_assert_held(&orig->mcast_handler_lock);

	/* switched from flag unset to set */
	if (mcast_flags & BATADV_MCAST_WANT_ALL_IPV4 &&
	    !(orig->mcast_flags & BATADV_MCAST_WANT_ALL_IPV4)) {
[...]
		hlist_add_head_rcu(node, head);
[...]
	/* switched from flag set to unset */
	} else if (!(mcast_flags & BATADV_MCAST_WANT_ALL_IPV4) &&
		   orig->mcast_flags & BATADV_MCAST_WANT_ALL_IPV4) {
[...]
		hlist_del_init_rcu(node);
[...]
	}
}



But this looks super RCU-like (without locks):

static int
batadv_mcast_forw_want_all_ipv4(struct batadv_priv *bat_priv,
				struct sk_buff *skb, unsigned short vid)
{
	struct batadv_orig_node *orig_node;
	int ret =3D NET_XMIT_SUCCESS;
	struct sk_buff *newskb;

	rcu_read_lock();
	hlist_for_each_entry_rcu(orig_node,
				 &bat_priv->mcast.want_all_ipv4_list,
				 mcast_want_all_ipv4_node) {
[..]
	}
	rcu_read_unlock();
	return ret;
}



And when you do something like this, you can't try do run these functions i=
n a=20
free_rcu function. Because you are then missing the RCU grace period. The l=
ist=20
can still be accessed in a parallel running RCU reader and the=20
batadv_orig_node_free_rcu function might then already have freed the origin=
ator.
The reader then goes *KABUMM*.

Or am I missing something and the functions themelf need to be freed from R=
CU
references (or something else)?

Regards,
	Sven
--nextPart1957653.tdWV9SEqCh
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQS81G/PswftH/OW8cVND3cr0xT1ywUCagnysQAKCRBND3cr0xT1
y+T8AP40ORyGFVHvTyujr2iW1g3gamEjdcL1+pOPF1YI9hv/kgEAjeXXUyGFcJL4
58isNbugWGRzSJldU9u45/9QYZ+Rmww=
=VJ4i
-----END PGP SIGNATURE-----

--nextPart1957653.tdWV9SEqCh--



