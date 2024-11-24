Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E6EB9D6D51
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 24 Nov 2024 10:47:39 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id EB7E783DDA
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 24 Nov 2024 10:47:38 +0100 (CET)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1732441658;
 b=m/RH2pd8KirWx0xU17VLk/7m7xxuKKaT+hC7ACXVVRrZ5uEaL+z2Z8/QbFfpxZo+Ozbpw
 swlHfEzCH99DI4fSp4e/L2rF+ByWsvTagtwegdbCYANX6rBhxJ+eBnFK0n03ZYDGos8Np2n
 p0YPASRhfgpFfFIOIo9saeTYlcSFhBY=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1732441658; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=XN77DBaxu2KtYbVwswjup5SRbjYO0rOYBN72/NH7tXk=;
 b=lpKkH5k2JFabU/VPWNOmklowtcG5tem5XaMX5TRDcBZ2owct3wKum87/Q/VLQ5lX/bpZX
 ZH/8EmEWuoeYuKZaL3RYLD0YE92RxT/bJQyYjfHzqDVPdMZMbSzyFbsxE5nIejg/LLXp3aD
 tcJD9grQ2Y1IZzSnmOW/RBLSC7zyHe4=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
  arc=pass;
  dmarc=pass (Used From Domain Record) header.from=narfation.org
 policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 33B32813E3
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 24 Nov 2024 10:47:35 +0100 (CET)
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1732441655; a=rsa-sha256;
	cv=none;
	b=xcAatf4CAasarxEWj125TL0tj/yFwAM2qsuEnT24sSv5zwHGkzTIDKMhHsrK2QlctzhDHX
	ADn5mTbhUv7577cmBzgNrDIfDaDpqeO9D5TZRTZanPXF0HOMkahmCf3FSiEKB78KP0ju0g
	uxJpqNSskrmW9aGVJCUU7cqSpU+4+J4=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=owkFgPeo;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1732441655;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=XN77DBaxu2KtYbVwswjup5SRbjYO0rOYBN72/NH7tXk=;
	b=YpDsaRcc0iH2bmByeHtYeoGKdO9TsdXEQenYUdVJyA+PGKy5dr8ahx4fQhGM8MD6AkiJFt
	QAXauonkqy/LnyGjaFxg16VNFgebCyAhItgpU6pAjYMXTJx3OMwQybpzzDAsmcqD4N1pm5
	w+Goyyd9YgspO9ZJeifS6R3DfL2K10A=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1732441653;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=XN77DBaxu2KtYbVwswjup5SRbjYO0rOYBN72/NH7tXk=;
	b=owkFgPeowmMSQCBwzJm+PE6v9jBrD/xE1WUekvl2L8MZTsBkEF5KMsp576hzquO/c0G6Cc
	r7HMfPMPUCWOCsxOcjQfJSUBwh6lfbYikU8CLD/vR43mgHP5R8nGKic+JlsxbxJkOVQ4bU
	bM9JRnTXmu5WrGzzIgtOUKyygZNh5Fo=
From: Sven Eckelmann <sven@narfation.org>
To: linus.luessing@c0d3.blue, b.a.t.m.a.n@lists.open-mesh.org
Cc: Nicolas Escande <nico.escande@gmail.com>,
 Sven Eckelmann <sven@narfation.org>
Subject: Re: [PATCH v2] batman-adv: add dynamic,
 bridged-in TT VID detection support
Date: Sun, 24 Nov 2024 10:47:27 +0100
Message-ID: <2663995.Lt9SDvczpP@sven-l14>
In-Reply-To: <6100761.lOV4Wx5bFT@ripper>
References: <D5LY6JQJT9NV.2MI0DB2CLTO6D@gmail.com> <6100761.lOV4Wx5bFT@ripper>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart4421029.ejJDZkT8p0";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
Message-ID-Hash: VA4OOYMWD73MYCRNHC4PVZQMLJEZ5BSC
X-Message-ID-Hash: VA4OOYMWD73MYCRNHC4PVZQMLJEZ5BSC
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/VA4OOYMWD73MYCRNHC4PVZQMLJEZ5BSC/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

--nextPart4421029.ejJDZkT8p0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: linus.luessing@c0d3.blue, b.a.t.m.a.n@lists.open-mesh.org
Date: Sun, 24 Nov 2024 10:47:27 +0100
Message-ID: <2663995.Lt9SDvczpP@sven-l14>
In-Reply-To: <6100761.lOV4Wx5bFT@ripper>
MIME-Version: 1.0

On Thursday, 14 November 2024 14:58:43 CET Sven Eckelmann wrote:
> > Or maybe I missed something ?
> >
> > ---
> > net/batman-adv/soft-interface.c | 1 -
> > 1 file changed, 1 deletion(-)
> >
> > diff --git a/net/batman-adv/soft-interface.c b/net/batman-adv/soft-interface.c
> > index b61f35918b5d..d7de54734725 100644
> > --- a/net/batman-adv/soft-interface.c
> > +++ b/net/batman-adv/soft-interface.c
> > @@ -599,7 +599,6 @@ batadv_softif_create_vlan(struct batadv_priv *bat_priv, unsigned short vid)
> >
> > atomic_set(&vlan->ap_isolation, 0);
> >
> > -       kref_get(&vlan->refcount);
> > hlist_add_head_rcu(&vlan->list, &bat_priv->softif_vlan_list);
> > spin_unlock_bh(&bat_priv->softif_vlan_list_lock);
> >
> >
> 
> This ref is for the VLAN list entry (just one line below the kref_get).
> This patch is therefore definitely wrong.

Ok, had a look at the surrounding code from this patch and it looks too me 
like the reason for what a ref++ stands for was changed and so this 
initialization also needs to be changed. So, I have to correct my original 
statement about your patch, Nicholas. It is definitely an improvement to the 
refcnt (with this patch, not before). But at the same time, it should be made 
clear by Linus what the reference counter is used for. Especially because it 
was completely different before the patch and different then most other things 
in batman-adv.

Starting with not simply dropping the kref_get but with a small comment 
explaining that there is "no kref_get for list because only TT entries per 
VLAN and temporary references on stack are tracked. list entries will be 
removed automatically when refcount reaches zero".

Kind regards,
	Sven
--nextPart4421029.ejJDZkT8p0
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQS81G/PswftH/OW8cVND3cr0xT1ywUCZ0L2LwAKCRBND3cr0xT1
y/BvAQDBwamaRe9uProM9PHu+kPj8N8U5RhjqvLsTOWV4jMQMwD/W2Bxf6U4R476
d/tMcDFDo4AeYYDupBzVkqQt6oZpsQs=
=UOof
-----END PGP SIGNATURE-----

--nextPart4421029.ejJDZkT8p0--



