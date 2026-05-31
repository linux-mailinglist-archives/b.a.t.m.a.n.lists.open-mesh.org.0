Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oCFiBLsFHGohIgkAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 31 May 2026 11:56:11 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id A85886157E3
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 31 May 2026 11:56:10 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 7DB9583DAD
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 31 May 2026 11:56:10 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1780221370;
 b=IBrG2IG/oxFGTpGvtw+9qHO7V0LD9xBx7/ikNl0Vbso6/EmkgqK4xDKo5dSvAQdFPpFhb
 fmLG04W/xtPRAI1zvKxHaN5qqaOycliaSKqufnXTbtBe388ZGps+Ntc0Y6YmFuf6y6yssOO
 0DQCEHvgLSfL0m7gXSgRyCQkJX6gDVA=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1780221370; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=11C2W9YBJypz8rcHtIggW5fGvEXmfR1jx7s8K8Yvoa4=;
 b=iABW0X7ZiWELSYrB77BlISMoqmglGftTFRW8C/bRMeGgZzBSJeuzH2tQ3Pz/dGM+1YyDQ
 ieIDigIPvFiycqRRhNnXv9NRqmrJs1VM4VA6SXOttDKoYt+hhJ+kJdGFAQSIUH5AAyMtk/s
 3KgJBgct9H7PYze2eP7AeCPwcTp7GgE=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass header.from=narfation.org policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org
 [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id B666D80274
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 31 May 2026 11:55:46 +0200 (CEST)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1780221356;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=11C2W9YBJypz8rcHtIggW5fGvEXmfR1jx7s8K8Yvoa4=;
	b=X9LOZ/P9wAf3RKhL6SJNuiw6x54mzIyCwlgASYoBUdKELybUxOXtbHhAtjBNWU8OIQV3E0
	6hAPArlPQx/OyFx0gsUMDSvETKhQYY8lYubxwyzXHopfzZ6wrPanKhN6L1aEfVDp4BETDT
	GF40KNrFTM/hheboraULvZZ9h7me/2s=
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1780221356;
	b=z/il70jCZQk3uj9bfaZURSInLmid5yXQmNHduL7/v4aznXhJhPJ1Mpir6sHzAmbgCz9PDy
	ol2LfSLYPlN19IDnSoc+iNbtOdkKNWiaY7BvpOCtgolEtJ4r3qC4V2Sf2GmFYCmP/h2tXK
	BwJ8uzJHMVLuFEEg8b4+r5dgCk2KeE4=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=QDUj+DCF;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
Received: by dvalin.narfation.org (Postfix) id 471B91FED3
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 31 May 2026 09:55:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1780221345;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=11C2W9YBJypz8rcHtIggW5fGvEXmfR1jx7s8K8Yvoa4=;
	b=QDUj+DCFzYCsAwry5RDKEaZA0y5cjX3FdUzw3LBGFun/E6qAUGwv/p31ttpuPyoo6FFU+U
	BjgPNpYpsmFxdMOA8fc4VOUMb0i2cOHhteVcUx8G//L91b2LR792wi/1hWlL2Jge9w+4zB
	ol1Tfx98RMiLrBqGlSAmsQBTSR49vug=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: Re: [PATCH batadv v4 5/6] batman-adv: tp_meter: use locking for all
 congestion control variables
Date: Sun, 31 May 2026 11:55:34 +0200
Message-ID: <3463983.mvXUDI8C0e@sven-desktop>
In-Reply-To: <20260531-tp-reason-missing-v4-5-5d2556e00128@narfation.org>
References: <20260531-tp-reason-missing-v4-0-5d2556e00128@narfation.org>
 <20260531-tp-reason-missing-v4-5-5d2556e00128@narfation.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart13533897.O9o76ZdvQC";
 micalg="pgp-sha512"; protocol="application/pgp-signature"
Message-ID-Hash: BTGT5WR3PBRL5VYSK4O4JNZDRWGJRJJA
X-Message-ID-Hash: BTGT5WR3PBRL5VYSK4O4JNZDRWGJRJJA
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/BTGT5WR3PBRL5VYSK4O4JNZDRWGJRJJA/>
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
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[narfation.org:s=20121];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DKIM_TRACE(0.00)[narfation.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sven@narfation.org,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	DBL_BLOCKED_OPENRESOLVER(0.00)[narfation.org:dkim]
X-Rspamd-Queue-Id: A85886157E3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--nextPart13533897.O9o76ZdvQC
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"; protected-headers="v1"
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Date: Sun, 31 May 2026 11:55:34 +0200
Message-ID: <3463983.mvXUDI8C0e@sven-desktop>
MIME-Version: 1.0

On Sunday, 31 May 2026 10:28:55 CEST Sven Eckelmann wrote:
> +       static enum batadv_tp_ack_reaction reaction;

This should have been of course be non-static variable. v5 will come 
tomorrow....

Will not be applied anyway before v2 of the net-next.git PR was merged (and of 
course submitted first).

Regards,
	Sven
--nextPart13533897.O9o76ZdvQC
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQS81G/PswftH/OW8cVND3cr0xT1ywUCahwFlgAKCRBND3cr0xT1
y6UTAQCkpj7t9hKl/ohasDTtPf2BqvW/8/mq49D8m36uACUUrgEAup9AjPyactEK
UsnmXLqS1Uim0d1Vj9NyY+dIlvx6rgg=
=fwl0
-----END PGP SIGNATURE-----

--nextPart13533897.O9o76ZdvQC--



