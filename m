Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uBmeCEMpDGq0XwUAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 19 May 2026 11:11:31 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id A749357AFB0
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 19 May 2026 11:11:30 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id DC4DF80C01
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 19 May 2026 11:11:29 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1779181889;
 b=gbHwrRjQXG8+KdFgkALx/fcZLZrwhKLcKgL5uT1g7MY/rRganBvyBOm6d19IAyzu8gMwU
 5JZlDGO88ubgJ9vKrq3ktp5sGz7KxK4idn5cvu3F/zsQqyb3ukBvC2vTQRX6JcarBLIQ48y
 k8y1NLvLTrI7pIqxl7WtL5jgUCRp0lk=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1779181889; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=eUUHE0BcTCfS29wc4RdIQIT3Ig9yu6Crov8DsGjQZFU=;
 b=BaeJebXuj5lvMPP8CSJJZWSk9umyAAxjEYhy4JR23O8/rKU3A/mp+30SL42f7NkYRNckG
 vGP8QNKDp0u7/Z8zTd28ICHMhZcEal1wx/+E2z4SPjqhNUgb+meEwTre8zYW18CHPfxmo9H
 Cz9TAh0cAJCmYuf+yXPy1XEY/eCXl/g=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 950488083F
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 19 May 2026 11:10:56 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1779181866;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=eUUHE0BcTCfS29wc4RdIQIT3Ig9yu6Crov8DsGjQZFU=;
	b=VE5ogJ0pB8dq1Kz4UA77ay6FNUKPshGJdkqtZb+hK1g4wiLRCdZYRzvQOzUm/5z3eZFn95
	z7HnntbAEF1iA1BKJ3udFSlMtV8e6SPiXXxQZf/SSqOFyDsvRZu6+zRDmd11G9DxJwySkq
	W/kbK4rqQLznjIE3NnTDmAnmKiwKVZ4=
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1779181866;
	b=LTj4R2gjlYndLxWq4Qlqkngbr1sbt2IHDfso6jOMv8zPV8jb0RuXHIuRkmBTu1ATWDoBO+
	CsbEpK3CFZqkEDY6UaHX+y9uhGKvcbOx1taMnIK4ckt46L5xVZDdskuFF38x0w9l4icqUU
	XHjSnIrX51VZryIWsYETaxTneQWejgg=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=Lj+WZqaw;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id 43E171FF3A;
	Tue, 19 May 2026 09:10:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1779181855;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=eUUHE0BcTCfS29wc4RdIQIT3Ig9yu6Crov8DsGjQZFU=;
	b=Lj+WZqawsXVhzFEh1FJ65Gw31fREezt+a/IwMIknbMWrQ1KPQoXCm4IpPZQqfMhFgiPL0y
	orlTaYIBaB5ENwEwcnek4rh1gO+SI0VurSvM4KahpxYtTXRxQpsdm8hIjMhAr6zfdoBO10
	AQs+HbBAw2Dsu4z/Rx0l9nEepfAyo1w=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: simonwunderlich <sw@simonwunderlich.de>
Subject: Re: [PATCH RFC batadv v2 4/5] batman-adv: limit numbers of parallel
 learned
 BLA backbones
Date: Tue, 19 May 2026 11:10:52 +0200
Message-ID: <6472795.lOV4Wx5bFT@ripper>
In-Reply-To: <20260519-resource-limit-v2-4-489c3c919a54@narfation.org>
References: <20260519-resource-limit-v2-0-489c3c919a54@narfation.org>
 <20260519-resource-limit-v2-4-489c3c919a54@narfation.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart5306013.31r3eYUQgx";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
Message-ID-Hash: WH5TPDEVD4TNN7325CCFBR7UDTL5YPQE
X-Message-ID-Hash: WH5TPDEVD4TNN7325CCFBR7UDTL5YPQE
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/WH5TPDEVD4TNN7325CCFBR7UDTL5YPQE/>
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
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[narfation.org,none];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[narfation.org:s=20121];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[narfation.org:+];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:24940, ipnet:2a01:4f8::/32, country:DE];
	DBL_BLOCKED_OPENRESOLVER(0.00)[diktynna.open-mesh.org:rdns,diktynna.open-mesh.org:helo]
X-Rspamd-Queue-Id: A749357AFB0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--nextPart5306013.31r3eYUQgx
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: simonwunderlich <sw@simonwunderlich.de>
Date: Tue, 19 May 2026 11:10:52 +0200
Message-ID: <6472795.lOV4Wx5bFT@ripper>
In-Reply-To: <20260519-resource-limit-v2-4-489c3c919a54@narfation.org>
MIME-Version: 1.0

On Tuesday, 19 May 2026 09:02:18 CEST Sven Eckelmann wrote:
> @@ -505,6 +507,11 @@ batadv_bla_get_backbone_gw(struct batadv_priv *bat_priv, const u8 *orig,
>                    "%s(): not found (%pM, %d), creating new entry\n", __func__,
>                    orig, batadv_print_vid(vid));
>  
> +       bla_backbone_max_learned = READ_ONCE(bat_priv->bla_backbone_max_learned);
> +       bla_backbone_learned = atomic_read(&bat_priv->bla_backbone_learned);
> +       if (bla_backbone_max_learned && bla_backbone_learned >= bla_backbone_max_learned)
> +               return NULL;
> +
>         entry = kzalloc_obj(*entry, GFP_ATOMIC);
>         if (!entry)
>                 return NULL;

@Simon: remark from Sashiko, should we actually exempt own_gateway?


@@ -508,10 +508,12 @@ batadv_bla_get_backbone_gw(struct batadv_priv *bat_priv, const u8 *orig,
 		   "%s(): not found (%pM, %d), creating new entry\n", __func__,
 		   orig, batadv_print_vid(vid));
 
-	bla_backbone_max_learned = READ_ONCE(bat_priv->bla_backbone_max_learned);
-	bla_backbone_learned = atomic_read(&bat_priv->bla_backbone_learned);
-	if (bla_backbone_max_learned && bla_backbone_learned >= bla_backbone_max_learned)
-		return NULL;
+	if (!own_backbone) {
+		bla_backbone_max_learned = READ_ONCE(bat_priv->bla_backbone_max_learned);
+		bla_backbone_learned = atomic_read(&bat_priv->bla_backbone_learned);
+		if (bla_backbone_max_learned && bla_backbone_learned >= bla_backbone_max_learned)
+			return NULL;
+	}
 
 	entry = kzalloc_obj(*entry, GFP_ATOMIC);
 	if (!entry)
@@ -539,7 +541,10 @@ batadv_bla_get_backbone_gw(struct batadv_priv *bat_priv, const u8 *orig,
 	if (unlikely(hash_added != 0)) {
 		/* hash failed, free the structure */
 		kfree(entry);
-		atomic_dec(&bat_priv->bla_backbone_learned);
+
+		if (!own_backbone)
+			atomic_dec(&bat_priv->bla_backbone_learned);
+
 		return NULL;
 	}
 
Regards,
	Sven
--nextPart5306013.31r3eYUQgx
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQS81G/PswftH/OW8cVND3cr0xT1ywUCagwpHAAKCRBND3cr0xT1
ywRUAQC6metEDP9gn57XIfn2U4N+q8G6tOQigVgwtSeAsafyagD9GmP1uTNe3zGk
sbJQ5dezcamNypu7xzfFYPkY/PPMTQM=
=cR/x
-----END PGP SIGNATURE-----

--nextPart5306013.31r3eYUQgx--



