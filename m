Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WL4vBZKq32mOXgAAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 15 Apr 2026 17:11:14 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id A26B8405B93
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 15 Apr 2026 17:11:13 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 619048558A
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 15 Apr 2026 17:11:13 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1776265873;
 b=d5djbgXjiqHBJ83tn9HEUqPez2hQwiQjXnVZ5WNV5bpegC6SyMg4LPk+/wfzePa7M8Adx
 o69AMwDD96Z99AvEanXpgzKjMlZ7hCMNoCvb/frns5E2UttOUNXElHJ1fbLUauhnHBASdAn
 VBEW3E46w2d3lqznXni25U0oBYipw/U=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1776265873; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=e24eqtKYIJpdTpokvc3pTgwCYyQZvLY0txZ+HWVxK9A=;
 b=Xj55RZz5gtpHAwD6FaCxhZ1vDYqAIBhfKLnxnqFK1Lk5219VA1rVBY/tEDessoVeVyfUR
 DnLf2GExeVnLGsoNUppGdBWt03ps/jFIbMcwAEO5EIQOOtpYwd7NuVNz6SZk93pOERJZE4h
 edlhrKonb8Nj3T97Q7oIzX/rFHt2L64=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=simonwunderlich.de;
 arc=pass;
 dmarc=pass header.from=simonwunderlich.de policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=simonwunderlich.de;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=simonwunderlich.de policy.dmarc=none
Received: from mail.simonwunderlich.de (mail.simonwunderlich.de [23.88.38.48])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id E23C882C59
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 15 Apr 2026 17:10:24 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1776265835;
	b=Pk4OoLcCLOqmQmLm4ir3rj2W96Q3m0HXl3rcnUHqX+7rQm9BdVLuYBKBnS3CZArF6m4GTp
	y/x++zN9j+CxD/tNYA3nxSj2WI9OKQGFL65E5gdxwBX7+ctcxMHyVBiuFLr7eL/DrQQeAC
	NkShF6AETRnivxVxk7i/LELY9Nk8QBM=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=simonwunderlich.de header.s=09092022 header.b=2ORWD521;
	spf=pass (diktynna.open-mesh.org: domain of sw@simonwunderlich.de designates
 23.88.38.48 as permitted sender) smtp.mailfrom=sw@simonwunderlich.de;
	dmarc=pass (policy=none) header.from=simonwunderlich.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1776265835;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=e24eqtKYIJpdTpokvc3pTgwCYyQZvLY0txZ+HWVxK9A=;
	b=XOKB8IYDxbqLKul6KC365Ptne+382w1z3JoFCBP+NKR1xXhQq9zsk3S2bYWJTUYzLw3T/n
	Diwpx/g430omuqmTpHOhiug74BAiQMHSIjmaD5tuZYHE9lJtFOKdhCx4uw+UJmfl0q/9+w
	TbzsPA3lym+He6j/gnnVP8X+VdHxbik=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=simonwunderlich.de;
	s=09092022; t=1776265823;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=e24eqtKYIJpdTpokvc3pTgwCYyQZvLY0txZ+HWVxK9A=;
	b=2ORWD5211wh3/RvHEKscs5vEQA5Vj/3D4GwwHqwHcatbVviYFxJrp854OGXQiEmqvh2Dbn
	QWDUN3QGfrCZ04Ri0Bp8Wc8G36RlpWUr3zx1giywQNClC6qV2MY5uZ4fxmxFWunSif8lz6
	Ta1IPOQ+PnE9wBdN04f57wWadJW9fKyo3LEjbbmGIC4AmjggPEhKd55F2uj8riTERShEK2
	uAdr4ZZArF1gNCtpFdLpl0tPBqBej94hjeZ1nSKVlSuV6Yo7wcNR8/3rJLjkmBn/pRLN7u
	cSSETZ9GoX3pdswuF5bp3vPNuuE1KWRKY9NfnL68ss67jfmE4A3Rv8Mr8NkDYw==
From: Simon Wunderlich <sw@simonwunderlich.de>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: martinvdberg@gmail.com
Subject: Re: Gateway shut down detection takes too time from other nodes
Date: Wed, 15 Apr 2026 17:10:23 +0200
Message-ID: <13667793.EVyyLHbfrO@prime>
In-Reply-To: <177556961939.1631.5621807886524407791@diktynna.open-mesh.org>
References: <3735338.hdfAi7Kttb@prime>
 <177556961939.1631.5621807886524407791@diktynna.open-mesh.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
Message-ID-Hash: YGCQFXYYMMIS3HQ3VZHS7B7JJTUGK7IG
X-Message-ID-Hash: YGCQFXYYMMIS3HQ3VZHS7B7JJTUGK7IG
X-MailFrom: sw@simonwunderlich.de
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/YGCQFXYYMMIS3HQ3VZHS7B7JJTUGK7IG/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Spamd-Result: default: False [-1.51 / 15.00];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	DMARC_POLICY_ALLOW(-0.50)[simonwunderlich.de,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[simonwunderlich.de:s=09092022];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	R_SPF_NA(0.00)[no SPF record];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[simonwunderlich.de:+];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:24940, ipnet:2a01:4f8::/32, country:DE];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sw@simonwunderlich.de,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	NEURAL_HAM(-0.00)[-0.997];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	MIME_TRACE(0.00)[0:+]
X-Rspamd-Queue-Id: A26B8405B93
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Martin,

On Tuesday, April 7, 2026 3:46:59=E2=80=AFPM Central European Summer Time=20
martinvdberg@gmail.com wrote:
> I think I have a similar use-case as the original poster and ran into the
> same problem.
>=20
> Let me try to explain:
>=20
> - Given a mesh network where each node is assigned a *static IP*.
> - In the mesh network there are some nodes acting as a Gateway.
> - The other nodes in the mesh are clients.
> - Using BATMAN-V
>=20
> Each client node has a script running, when it detects "batctl gwl" to el=
ect
> another gateway, the script will set the gateway's IP-address as default
> route: "ip route replace default via $gateway_ip dev bat0".
>=20
> Now whenever a mesh-gateway is turned off, it will take 200 seconds before
> it is removed from the originators and only then "batctl gwl" will elect
> another gateway. This results in some client nodes have no internet for 2=
00
> seconds.
>=20
> So far, I haven't been able to get batman-adv (using batctl) to switch to
> another gateway sooner, e.g. after 10 or 20 seconds.
>=20
>=20
> Using DHCP is not an option in my use-case.
>=20
> Is there somehow a way to reduce the 200 seconds? Possibly by switching to
> BATMAN-IV?
>=20
> Regards, Martin

that's an interesting use case, although I would like to make clear that th=
e=20
gateway feature was designed for DHCP in mind, yet you use it with static I=
Ps.=20
The main purpose was to re-route DHCP packets to the selected gateway.=20
Nethertheless, you could still use this mechanism for "signaling".

The gateway selection can be based on TQ or on bandwidth parameters, but th=
ere=20
is no option to speed up the "dead marking" from the 200s of the originator=
=20
timeout. you can decrease that number in the source code, but I would actua=
lly=20
advise to use a completely different method independent of batman-adv - for=
=20
example by using a layer 3 routing daemon, or another application which=20
regularly signals their availability as a gateway. For DHCP (which it was=20
originally designed for), lease times are typically 5 minutes minmum, so th=
e=20
200s timeout are not really a problem there ... but I acknowledge that it's=
=20
not really useful for "fast" switching.

Cheers,
       Simon


