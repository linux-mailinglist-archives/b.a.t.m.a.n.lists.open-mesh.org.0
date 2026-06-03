Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id IME2OM7tH2o6sgAAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 03 Jun 2026 11:03:10 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C08A635F80
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 03 Jun 2026 11:03:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=narfation.org header.s=20121 header.b=IO2Dej4j;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 2a01:4f8:241:fc1:136:243:236:17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	dmarc=pass (policy=none) header.from=narfation.org;
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 5C1508580C
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 03 Jun 2026 11:03:10 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1780477390;
 b=idPBPvMVvYjDpm7ZROhoZ+ynSOX1IC9xfu+4bK+ZmpyHC3ny3BbE4YV+ZIMU4YoXOm9xD
 1XprcLgR9oWo2RLymLKkPTQZ9RMkNvDpHq/A7JuHGpFJnfJKpHgWQ6K10gWzK+nhT6YNCGS
 qah2Qifx4u4Mum4pqZ6dMZFH9DJsnnI=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1780477390; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=K0GOSa7pR1jJR5EBKpCSaPddlA99w+oFdD0eiBfewGU=;
 b=BUoK7oRWKSDlM4fIDRPcn42EEn/O/rIeEujIRJfYcHyZGB6Ut1xT5vQnkHnz4mWfj92WK
 CbEd7vPwaF69HAn/TQktsp1HGRIPiCBVplKFqXZGI+c1MYe7thjTCMrTQadyh5svUCODeBi
 gMvGPTtUJWGIIKWhyoOFj5lGFi09sXc=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 53BEB8447F
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 03 Jun 2026 11:02:26 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1780477347;
	b=oBzA7jPhgt8UrAVYaOK3sfMA2qfm/b2oEnLGnWXThxi9C1CHDV+dRNqStSxCtwSKM3PII6
	T8hzPyXQ7NWDaMWeTR+Bk3BzcSmi1jTKN+qM/cmw5y9gP1YQUHqVEERMNUHSzxIWVclOUg
	pNcshxCCZwsyzndY2xMeLRXoT+3dpJQ=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=IO2Dej4j;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1780477347;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=K0GOSa7pR1jJR5EBKpCSaPddlA99w+oFdD0eiBfewGU=;
	b=yyOMLyFdwU+sdcQzc7RoCysPsEh4CJ627b6r2Jtt8ulAa9qf7gA6e0Ez7An9x3dV/AWhz+
	yKpb1VCDA0eM/xfMajmHWhR0CR0B6Yux98R2hls2r2M2sE0Vu9H6wduK3RdWOVi5o72M4+
	hZMe3rC2ClQV3UOxc9PnMtCEqjDmaPM=
Received: by dvalin.narfation.org (Postfix) id D8D672023F;
	Wed, 03 Jun 2026 09:02:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1780477346;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=K0GOSa7pR1jJR5EBKpCSaPddlA99w+oFdD0eiBfewGU=;
	b=IO2Dej4jiDjYqggV8MHOmM3Ky1qiwgZLzy3Byeso0dLqda/EQKjzepBnA22QpjdMEd1vqR
	5BcvBBF83MqRErYFzzTIi+kSINaZYgrc78FwKF0MD5eUV2/30oPBRbNVp02nZcuG5NkVNw
	o/GJ+mc6QhDcRp3vlNfJZTDynU6mMv4=
From: Sven Eckelmann <sven@narfation.org>
To: sashiko-reviews@lists.linux.dev
Cc: sw@simonwunderlich.de, marek.lindner@mailbox.org, antonio@mandelbit.com,
 b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: [PATCH batadv 3/3] batman-adv: use GFP_KERNEL allocations for the
 wifi
 detection cache
Date: Wed, 03 Jun 2026 11:02:23 +0200
Message-ID: <2275479.Mh6RI2rZIc@ripper>
In-Reply-To: <20260603045118.0625E1F00893@smtp.kernel.org>
References: <20260603-wifi-cache-cleanup-v1-3-d5ed08075c96@narfation.org>
 <20260603045118.0625E1F00893@smtp.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart3760743.R56niFO833";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
Message-ID-Hash: G3A6BHS2GJAH2XKFTU672EZOD2T6NMBU
X-Message-ID-Hash: G3A6BHS2GJAH2XKFTU672EZOD2T6NMBU
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/G3A6BHS2GJAH2XKFTU672EZOD2T6NMBU/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.61 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[narfation.org,none];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[narfation.org:s=20121];
	MAILLIST(-0.20)[mailman];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:sashiko-reviews@lists.linux.dev,m:sw@simonwunderlich.de,m:marek.lindner@mailbox.org,m:antonio@mandelbit.com,m:b.a.t.m.a.n@lists.open-mesh.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[narfation.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	ASN(0.00)[asn:24940, ipnet:2a01:4f8::/32, country:DE];
	DBL_BLOCKED_OPENRESOLVER(0.00)[narfation.org:from_mime,narfation.org:dkim,ripper:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7C08A635F80

--nextPart3760743.R56niFO833
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: sashiko-reviews@lists.linux.dev
Date: Wed, 03 Jun 2026 11:02:23 +0200
Message-ID: <2275479.Mh6RI2rZIc@ripper>
In-Reply-To: <20260603045118.0625E1F00893@smtp.kernel.org>
MIME-Version: 1.0

On Wednesday, 3 June 2026 06:51:17 CEST sashiko-bot@kernel.org wrote:
> [Severity: High]
> This isn't a bug introduced by this patch, but while looking at the
> rhashtable usage in this file, I noticed that rhashtable_lookup_fast() is
> called without rcu_read_lock() in batadv_wifi_net_device_update():
> 
> net/batman-adv/hard-interface.c:batadv_wifi_net_device_update() {
> ...
>         wifi_flags = batadv_wifi_flags_evaluate(net_dev);
>         device_state = rhashtable_lookup_fast(&batadv_wifi_net_devices,
>                                               &net_dev,
>                                               batadv_wifi_net_devices_params);
> ...
> }
> 
> And similarly in batadv_wifi_net_device_unregister():
> 
> net/batman-adv/hard-interface.c:batadv_wifi_net_device_unregister() {
> ...
>         device_state = rhashtable_lookup_fast(&batadv_wifi_net_devices,
>                                               &net_dev,
>                                               batadv_wifi_net_devices_params);
> ...
> }
> 
> Can this lead to a use-after-free on the bucket array?
> 
> Since batadv_wifi_net_devices is initialized with automatic_shrinking = true,
> it can be asynchronously resized by a background worker at any time. This
> worker frees the old bucket array via kfree_rcu(). Without an active RCU
> read-side critical section, couldn't the RCU grace period end while
> rhashtable_lookup_fast() is still iterating?

Would be nice if someone else can double check this. But this doesn't seem to 
be valid:

static __always_inline void *rhashtable_lookup_fast(
	struct rhashtable *ht, const void *key,
	const struct rhashtable_params params)
{
	void *obj;

	rcu_read_lock();
	obj = rhashtable_lookup(ht, key, params);
	rcu_read_unlock();

	return obj;
}

So, rhashtable_lookup_fast() takes rcu_read_lock() itself. And the returned obj 
cannot be freed because all functions mentioned here are protected by the 
rtnl_lock().

We are therefore also fulfilling the requirement from the 
rhashtable_lookup_fast comment:

 * Only use this function when you have other mechanisms guaranteeing
 * that the object won't go away after the RCU read lock is released.

Regards,
	Sven


--nextPart3760743.R56niFO833
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQS81G/PswftH/OW8cVND3cr0xT1ywUCah/tnwAKCRBND3cr0xT1
y8ZzAP9vEh68cW1+QPtnKyDD9MMkyFWwasYaKYcXBTLuiIysuAD/Sju84BZx5nyk
qg4Z7ALt19w7SiOWotndBC/9ROpIMwU=
=Vaaz
-----END PGP SIGNATURE-----

--nextPart3760743.R56niFO833--



