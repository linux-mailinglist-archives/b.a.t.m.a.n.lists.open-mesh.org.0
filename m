Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2MDkJxSfBWr4YwIAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 14 May 2026 12:08:20 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D7F1540244
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 14 May 2026 12:08:20 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id F2A5B85D50
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 14 May 2026 12:08:19 +0200 (CEST)
ARC-Seal: i=3; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1778753299;
 b=IUD3ZB5e87nuX4MsKVYjhvXfqJHm/xCKF+djbP5RxaTTMIDBVwW98zuSLKD1RcLD5y4qa
 diEvKGdqStlYqT6wjHuV/szSGjTLJHOT9qvDVmKaZoegYln6sYq20dCoFK8pSN3waNQofAd
 dDSiHzLla5Ns+ddyaBAERMN55rNoohQ=
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1778753299; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=m64BEL48rFdcWWIPr1G5xibBcZ9asFZbVzR89KqZM4Q=;
 b=egJ/WpgSIiikHApGkyhOrQxO8ICB3lX8VTBwkjCABFRMnQXEnBu3CZZKBWpEJsWf6cfzM
 PMrH6PyHqTAEYrrPILqt4r2vLv2xLLq/RrzyiwQ2KztaSzpsLoubEcKtxwxpcAUz4TTtS+0
 Vqf1vHMtBmNqTpQZ3qZALz8Qw1SVHPo=
ARC-Authentication-Results: i=3; open-mesh.org;
 dkim=pass header.d=gmail.com;
 arc=pass;
 dmarc=pass header.from=gmail.com policy.dmarc=quarantine
Authentication-Results: open-mesh.org; dkim=pass header.d=gmail.com; arc=pass;
 dmarc=pass (Used From Domain Record) header.from=gmail.com
 policy.dmarc=quarantine
Received: from mail-qt1-x82a.google.com (mail-qt1-x82a.google.com
 [IPv6:2607:f8b0:4864:20::82a])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id BD99981BF6
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 14 May 2026 12:06:54 +0200 (CEST)
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1778753214;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=m64BEL48rFdcWWIPr1G5xibBcZ9asFZbVzR89KqZM4Q=;
	b=Pwk99jOWa480aalHbuL2KopiTHgg/qPwGM3wQNIzAKe8nz2wY2s5aY56RfUQH66FP8bDGe
	tbpCxglauIu48eM10svc5KJDxuHpv3IaLoDyBJw/wY/1z6qh4FgxwbhtiObPNuhx1X1Bhe
	AS+GH77Kw1NNTc4hI1hupnqJccdUJS0=
ARC-Authentication-Results: i=2;
	diktynna.open-mesh.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=G3xu1xuS;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (diktynna.open-mesh.org: domain of yuantan098@gmail.com designates
 2607:f8b0:4864:20::82a as permitted sender)
 smtp.mailfrom=yuantan098@gmail.com;
	arc=pass ("google.com:s=arc-20240605:i=1")
ARC-Seal: i=2; a=rsa-sha256; d=open-mesh.org; s=20121; cv=pass; t=1778753214;
	b=0SbcYoJ4uUTSbShUeuwPBsZPmvB4LpVZvXgYP2Ff/+5RZiVv2qi6nR7MeYrn+WXhpn6Ovr
	KXsr7aUnOmzAO6vRwwzSA/3i223U5+hQ0puKKUbt9pT19kHKoO/5dfk2y9scjrptuwaUHZ
	+/gHhwYMNb3DyKW0lyldd/oU6R4VIxk=
Received: by mail-qt1-x82a.google.com with SMTP id
 d75a77b69052e-50d6b9bca48so94727531cf.2
        for <b.a.t.m.a.n@lists.open-mesh.org>;
 Thu, 14 May 2026 03:06:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1778753213; cv=none;
        d=google.com; s=arc-20240605;
        b=DP+wFnykkJ0QmrIyhHHh/0a2MT4SvIe9hti+5WL/PNgulqrvksMfjIJJCA1GT2R/LB
         TNheUd6/HQIaEqtY4F2t6n2f3BBKZLZ5EA8FZ31d5F8yDaWdxjIgtMfnOilqTVVzQ4Z9
         DoBbNHsUpRCEF6ziYTQ1i+mM4vSsCky10BmvUSiHvFwY+77CFgMOKgICNWf7NswKlHBZ
         cXxKLnsxt926YS9CjWPI669IC0YiaIJkWlq7KDACjdAEKLCdINGD2DHM5rZ1+tWGaJ+o
         qzhmmAlVTdaleC65AGjC0p8xhC9l5y8pAAjorvmyPh8oFZkJfY8P8UhYTk9KUOlXclkn
         +9dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=m64BEL48rFdcWWIPr1G5xibBcZ9asFZbVzR89KqZM4Q=;
        fh=fGpATJGdA5gBFxywIcayagIpQImFJ7uNKXfLW6dnd4U=;
        b=arsgipMwQgSrEP/lNHUDiRkbXL/tSSPHE3F7pr75UjhM1cgCeWevMZ02tKqUr6juDx
         /N10NNzb/0OL/w/VGapnICuMm1lvfq8BG+wSzLQWuJsfNRv8FpdCvU/6P+4kM56BhLCu
         SG7TMdsPv3O9Pje1walrGy87O1jNnkVGEya6B2F6LBk0WAMYZ7nM9gPGmzcRFszUhzt/
         k4PpIVN9IxsTHgQd6E1FYQh5wvSNP1c7/kYpNUxtPFKKImDkwyFjkziEC2P9e/gMiakF
         Ro2nwyhcAguHc74RkxUFkqGYaiQm5lGKYQ8Xbezv4sCDFAPnYVe6sgdYSUSfFr1eOPzQ
         KrBQ==;
        darn=lists.open-mesh.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778753213; x=1779358013;
 darn=lists.open-mesh.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m64BEL48rFdcWWIPr1G5xibBcZ9asFZbVzR89KqZM4Q=;
        b=G3xu1xuSovGBM7P/GdcjNO8Df/xnnJX329NsMSrbr+7knlfyx9gRD8WFoDuvbiskcJ
         C2zsnqPaXo7eOlhu0onJ+ywhV2T7L+L3SeVpl6cOEtT5hu9QmqNS8KmbZ25V/QnioZJ7
         bYBRv8tBkg+AaiwuldtrybmsZ+zBK/ZudRyS+tm2RruRNb08CATD8xS0eOb+KaiCK0Zh
         IUPKnFlR7ooMOmNRBKKiRLwWV9+oYwM2LheV3sJZp2Qd3NIOWTcITUjNpLkKjZYZWsqm
         sPERVu1NOxkx7oGquzmnpzRGBcnD6gafmqCaP7/B1DabBek/bJpTpxkMTVmjSJ0JS9zA
         eKwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778753213; x=1779358013;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=m64BEL48rFdcWWIPr1G5xibBcZ9asFZbVzR89KqZM4Q=;
        b=aORKXzDpi6U9/p6EmSneY9dODQX7wupIvKNasynTF++MNAw6fgtcOMWJU1BxAPd5Vr
         RAFxCziAtdZKH8iDJUNqS+02Ui4tdk8wdxjNbkppiWOEXLjVQp0tHQNbAxe/HIG+NRta
         +GrH8qfZFisvtJjOCxn21J+AmXgyrooAb2r5VMqoRBG6BgXnsTOisDXmsFEFjpJe7Lyo
         2EiIjD1WrPnma1bcG01zbeIpOyQSQtTEzS+g+VmYXENGMnuK+AD6/+uigekUU8txaXZM
         X5X+h2J2izglTtn0u3JubBuuWBzIryaXperCc5wSaUrD22iWqmV4e5diBYiXNUqXq4y5
         9UzA==
X-Gm-Message-State: AOJu0YxZEea1Cjtdi2WXPWlN2vs90ikDqoud/8qrWnDpuegiELQ/ysx/
	AaTYcz69ZxbcbFreza0hHY+sAB80y99ICIIMtHerRWkGJwZdi63l7+PzOxRpCG8i8sJSg6E1GM3
	Y8lJKvxBB6Vsl/f2doLBwm7wK/PHWOFHWuBhi
X-Gm-Gg: Acq92OFrwSsJT6+fPeuVXNReKiqg6ODdVPzBYO5j2EYl9AQf/SXZS5rTtLzfN0INRaO
	Q1v8YTvpNch4ei/deW7hBCApMFqfe6QL6vHhBo8/9VhmYA3NFqGl7y/qMBMiPl2EQbZU3eP7HPa
	6yAbSzlbKNlMl34ex2CDB0MGB+ry79bA5tileN7qMEJT7ZFqz3IzBIBxrczpQUwdAXzKpEnKgBx
	vRZBengC9FHdoH5WMHuIxhFcexmWOAJSFq1q4w8Cz4tvZQ/hOn/8dJPinVhx5A+K7MfMpIGDAzY
	ypMmZCxO8kXpF48x+QI=
X-Received: by 2002:a05:622a:5c85:b0:50b:3788:ab59 with SMTP id
 d75a77b69052e-5162f4b00dfmr99007741cf.22.1778753213391; Thu, 14 May 2026
 03:06:53 -0700 (PDT)
MIME-Version: 1.0
References: <20260513-yuantan098-bugfixes-v2-0-863e9caa2a57@narfation.org>
 <20260513-yuantan098-bugfixes-v2-1-863e9caa2a57@narfation.org>
In-Reply-To: <20260513-yuantan098-bugfixes-v2-1-863e9caa2a57@narfation.org>
From: Yuan Tan <yuantan098@gmail.com>
Date: Thu, 14 May 2026 03:06:15 -0700
X-Gm-Features: AVHnY4IjY9I4Eg76vviXc9TKP7wPMXQ527-im1SzXXaqCzAlwXXnuOmb1WBJJf8
Message-ID: 
 <CAPuPA7KVJWfGnycE+XE1ioFYUWZKUNDddVpXOd6rupxDbGd0Vw@mail.gmail.com>
Subject: Re: [PATCH batadv v2 1/5] batman-adv: dat: handle forward allocation
 error
To: Sven Eckelmann <sven@narfation.org>
Cc: b.a.t.m.a.n@lists.open-mesh.org, stable@kernel.org,
	Yifan Wu <yifanwucs@gmail.com>, Juefei Pu <tomapufckgml@gmail.com>,
 Xin Liu <bird@lzu.edu.cn>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-MailFrom: yuantan098@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-3; emergency; member-moderation
Message-ID-Hash: NSZRIICLBHYINKVDKFHJPWSW5AHE3GJF
X-Message-ID-Hash: NSZRIICLBHYINKVDKFHJPWSW5AHE3GJF
X-Mailman-Approved-At: Thu, 14 May 2026 12:07:37 +0200
X-Mailman-Version: 3.3.10
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/NSZRIICLBHYINKVDKFHJPWSW5AHE3GJF/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Queue-Id: 4D7F1540244
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.01 / 15.00];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=3];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[lists.open-mesh.org,kernel.org,gmail.com,lzu.edu.cn];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[yuantan098@gmail.com,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:24940, ipnet:2a01:4f8::/32, country:DE];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,narfation.org:email,diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns]
X-Rspamd-Action: no action

On Wed, May 13, 2026 at 12:01=E2=80=AFAM Sven Eckelmann <sven@narfation.org=
> wrote:
>
> batadv_dat_forward_data() calls pskb_copy_for_clone() to duplicate an skb
> for each DHT candidate, but does not check the return value before passin=
g
> it to batadv_send_skb_prepare_unicast_4addr(). That function dereferences
> the skb unconditionally, so a failed allocation triggers a NULL pointer
> dereference.
>
> Skip forwarding to the current DHT candidate on allocation failure.
>
> Cc: stable@kernel.org
> Fixes: 785ea1144182 ("batman-adv: Distributed ARP Table - create DHT help=
er functions")
> Reported-by: Yuan Tan <yuantan098@gmail.com>
> Reported-by: Yifan Wu <yifanwucs@gmail.com>
> Reported-by: Juefei Pu <tomapufckgml@gmail.com>
> Reported-by: Xin Liu <bird@lzu.edu.cn>
> Signed-off-by: Sven Eckelmann <sven@narfation.org>
> ---
>  net/batman-adv/distributed-arp-table.c | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/net/batman-adv/distributed-arp-table.c b/net/batman-adv/dist=
ributed-arp-table.c
> index 3efc4cf5..0a8bd95e 100644
> --- a/net/batman-adv/distributed-arp-table.c
> +++ b/net/batman-adv/distributed-arp-table.c
> @@ -696,6 +696,9 @@ static bool batadv_dat_forward_data(struct batadv_pri=
v *bat_priv,
>                         goto free_orig;
>
>                 tmp_skb =3D pskb_copy_for_clone(skb, GFP_ATOMIC);
> +               if (!tmp_skb)
> +                       goto free_neigh;
> +
>                 if (!batadv_send_skb_prepare_unicast_4addr(bat_priv, tmp_=
skb,
>                                                            cand[i].orig_n=
ode,
>                                                            packet_subtype=
)) {
>
> --
> 2.47.3
>

Reviewed-by: Yuan Tan <yuantan098@gmail.com>
