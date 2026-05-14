Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MCakFKk6Bmo3ggIAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 14 May 2026 23:12:09 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id E8891546F25
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 14 May 2026 23:12:08 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id C670D842D8
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 14 May 2026 23:12:08 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1778793128;
 b=gsp0jDc9GmHWnSHmX9el235RcDL9odGgK2TE0sW1mRcl/VYkU+Jnn13M88ltu6Eneb4wQ
 z9xhaRu2rnwBN+7v0E2vPrroIfypNPogdgXZV+yaa8L5o7qCpITUBEHllqZGxL3C14c9Ems
 cEDhYD4KMhx0BqQJnt39fAwlX/8OINQ=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1778793128; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=IQrVr7QF8CnElXcFob4nlMdaB20hy7kqewImOHtHHh0=;
 b=arnkLOa4+3BrWcfFDg4iwOravjcJ3u4yOITVSUkfqSD5lGwb+sR0O2xarlEF8aKZp0GMR
 r18nTqHEca/MI8BvxXSYr6Lr2rTsF+aG+3VebiPMpAFU+8Qlsvxu5W+4/X9pZGzpNgFV7V8
 bszPWJKcmkkO4a8Ksq0P9dvFJfDluII=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id B67A283DBD
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 14 May 2026 23:11:12 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1778793082;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=IQrVr7QF8CnElXcFob4nlMdaB20hy7kqewImOHtHHh0=;
	b=J4mBB94Kgf0SKH4TKdv2xD0aAEigmJsVIt/P9vcHfdXb9vNBrxSaxupArJZLkw6dBzf8nm
	yoqHpuN8ISghX63j0XiAEGMGHVlrhxwJXjQcNQHChQAWRCR+0zicNVjAMlOZLTViI5JWJJ
	JAkCJvk3gxxvk4FecUFzSQJN27NabnA=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=nuCv0YG8;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1778793082;
	b=KBvfK7Tu25NbY56n1L5G/MZzB3iqWJ6CFeoNud608+FD6IdyWKw/mt+w8pq+CJQAr+iugr
	0G0PVFE1VeQiPDjZYa6rIeuWsKslhZJ5O7TqnOo4f09XXHPlsKHDb7RsvBbs2n6CLQNUwX
	an/IB2ChDo/lcsFi2toR7YRPdZlK6rQ=
Received: by dvalin.narfation.org (Postfix) id 63C6A218A8;
	Thu, 14 May 2026 21:11:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1778793070;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=IQrVr7QF8CnElXcFob4nlMdaB20hy7kqewImOHtHHh0=;
	b=nuCv0YG8bVMqklalxKCm5pt8VxDWxMUnHQw/Wo/7PnImGsg9tg46WzLAcW0OKXgzFXYhh3
	70vMoVHXOS7hXNLpi9swc12iLDbY3FF2iDnypbgl5pihres9f3i6LrDwlfO3ZicVO6aHXT
	62UKJw8RtLyMGhiTzBgGTNUXwPyIDHs=
From: Sven Eckelmann <sven@narfation.org>
To: sw@simonwunderlich.de
Cc: antonio@mandelbit.com, marek.lindner@mailbox.org,
 b.a.t.m.a.n@lists.open-mesh.org, sashiko-bot@kernel.org
Subject: Re: [PATCH batadv v3 2/2] batman-adv: bla: avoid double decrement of
 bla.num_requests
Date: Thu, 14 May 2026 23:11:04 +0200
Message-ID: <5105124.31r3eYUQgx@sven-desktop>
In-Reply-To: <20260514210047.08C2BC2BCB3@smtp.kernel.org>
References: <20260514-bla-cancel-work-v3-2-dc65d3485e11@narfation.org>
 <20260514210047.08C2BC2BCB3@smtp.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart4739128.LvFx2qVVIh";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
Message-ID-Hash: THAAIGXQFSFO2FBCKGCS2AV3X4IMWRDL
X-Message-ID-Hash: THAAIGXQFSFO2FBCKGCS2AV3X4IMWRDL
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/THAAIGXQFSFO2FBCKGCS2AV3X4IMWRDL/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Queue-Id: E8891546F25
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
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[narfation.org:+];
	ASN(0.00)[asn:24940, ipnet:2a01:4f8::/32, country:DE];
	MISSING_XM_UA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	NEURAL_HAM(-0.00)[-1.000];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Action: no action

--nextPart4739128.LvFx2qVVIh
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: sw@simonwunderlich.de
Date: Thu, 14 May 2026 23:11:04 +0200
Message-ID: <5105124.31r3eYUQgx@sven-desktop>
In-Reply-To: <20260514210047.08C2BC2BCB3@smtp.kernel.org>
MIME-Version: 1.0

On Thursday, 14 May 2026 23:00:45 CEST sashiko-bot@kernel.org wrote:
> [ ... ]
> 
> > @@ -1517,14 +1529,21 @@ static void batadv_bla_periodic_work(struct work_struct *work)
> >  			 * some grace time.
> >  			 */
> >  
> > -			if (atomic_read(&backbone_gw->request_sent) == 0)
> > -				continue;
> > +			spin_lock_bh(&bat_priv->bla.num_requests_lock);
> > +			if (backbone_gw->state != BATADV_BLA_BACKBONE_GW_UNSYNCED)
> > +				goto unlock_next;
> >  
> > -			if (!atomic_dec_and_test(&backbone_gw->wait_periods))
> > -				continue;
> > +			if (backbone_gw->wait_periods > 0)
> > +				backbone_gw->wait_periods--;
> > +
> > +			if (backbone_gw->wait_periods > 0)
> > +				goto unlock_next;
> >  
> > +			backbone_gw->state = BATADV_BLA_BACKBONE_GW_SYNCED;
> >  			atomic_dec(&backbone_gw->bat_priv->bla.num_requests);
> > -			atomic_set(&backbone_gw->request_sent, 0);
> > +
> > +unlock_next:
> > +			spin_unlock_bh(&bat_priv->bla.num_requests_lock);
> 
> Will this prematurely reset the bridge loop avoidance sync state when a request
> is sent?
> 
> In the previous implementation, batadv_bla_send_request() set request_sent to 1
> but left wait_periods at 0. When batadv_bla_periodic_work() ran,
> atomic_dec_and_test() on wait_periods would decrement it to -1 (returning
> false), which correctly kept the gateway in the out-of-sync state until a valid
> ANNOUNCE frame arrived.
> 
> With wait_periods now being a u8, if batadv_bla_send_request() sets the state
> to BATADV_BLA_BACKBONE_GW_UNSYNCED but leaves wait_periods at 0, the next run
> of batadv_bla_periodic_work() will evaluate if (backbone_gw->wait_periods > 0)
> as false.
> 
> Because the code falls through when wait_periods is 0, it appears to
> unconditionally transition back to BATADV_BLA_BACKBONE_GW_SYNCED.
> 
> Could this spontaneously drop the out-of-sync block without receiving a valid
> ANNOUNCE frame, potentially allowing broadcast loops?

@Simon, can you double check this? My understanding is that this code is only 
relevant for own_backbone (see batadv_bla_get_backbone_gw()). And for
own_backbone, we are always setting wait_periods to BATADV_BLA_WAIT_PERIODS.

An underflow was never expected and this code should not run for 
batadv_handle_announce() with CRC error (see batadv_bla_send_request()). Only
in this codepath, we don't set wait_periods to anything.

Regards,
	Sven
--nextPart4739128.LvFx2qVVIh
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQS81G/PswftH/OW8cVND3cr0xT1ywUCagY6aAAKCRBND3cr0xT1
y9QHAP9H81QkqhvptMrvk5FQMi1BFFa5NetSBjry3A8yB9+bfwEAn4xPCV7MOOB8
PXVudWO0UrI60g97tiw3tSooZ3ibRwo=
=x+NR
-----END PGP SIGNATURE-----

--nextPart4739128.LvFx2qVVIh--



