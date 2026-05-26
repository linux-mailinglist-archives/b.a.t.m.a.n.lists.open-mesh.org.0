Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CI43CtWqFWpuXgcAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 26 May 2026 16:14:45 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id D81605D73F0
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 26 May 2026 16:14:44 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id A70E083B15
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 26 May 2026 16:14:44 +0200 (CEST)
ARC-Seal: i=3; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1779804884;
 b=x2DpoTf++/z1ohi9ZrzOdUdAti+yP+72qvgKFNJ+LeqQVcsmKHd+j4skVS9phQCKkTeS2
 B66YigtmgI37hqowd7AThtFEZvMlYjQLzg7955eioYF37QEAgdhR9bZDPUiUvowaMdzBCYG
 s8xgmNMbEsjk0LNjN1PZVkzDvdeYD4Q=
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1779804884; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=pmNn1qWk7/TKlmNZNMjGRwnuBcoC2pwzkAf+IEM9Zt4=;
 b=UrkZ5qJcHAdLG5Hk6mvBWpVZLUfZEYjICLOGk8lLyLAtcyHXnV7EBZAAw7j6t7I+xYEuD
 E4Ai921KmQEJxUl7smbjXTo+SoQegIPWK3Zuf4UjaG0l+Mnyahl53x/H74SyN6c/q1RAokO
 vUzPiDsaBI2P0d7uI205CqbBg9oWhlI=
ARC-Authentication-Results: i=3; open-mesh.org;
 dkim=pass header.d=snu.ac.kr;
 arc=pass;
 dmarc=pass header.from=snu.ac.kr policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=snu.ac.kr; arc=pass;
 dmarc=pass (Used From Domain Record) header.from=snu.ac.kr policy.dmarc=none
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com
 [IPv6:2a00:1450:4864:20::52f])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 046B88107F
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 26 May 2026 15:57:12 +0200 (CEST)
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1779803843;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=pmNn1qWk7/TKlmNZNMjGRwnuBcoC2pwzkAf+IEM9Zt4=;
	b=XSmmgbAkf1JyBqLCTF7Nl0lJNWGi92anBa+9WCl3dzWA+nasGcHXJSsDI/waV8Wls46lrK
	URx6BmXZwgYn1pIVT8HJiZ50dOBKZRsqcfkEbYNszfOkusbjx733F6dmCGc5Uux4eKfXh+
	2v86QdIoP8qeBymACezR06G5RvXnOVQ=
ARC-Seal: i=2; a=rsa-sha256; d=open-mesh.org; s=20121; cv=pass; t=1779803843;
	b=CmZ0cQbz+qfj9hC9ymLH9QvVrrm/5O4Z0xhf95mFFgUgqFRcIIiv4oF7sqmNmsjuX/Rlgx
	ay1BXUtpu4DOr+UiXJZ2kCRNufLn6JWFo3JiRfHKHzRk0sVZf2mTIWAB1FITXDWdq8fb8e
	86N1YkNWfwPN4d0AR+Pqm+2hkyiV3Gg=
ARC-Authentication-Results: i=2;
	diktynna.open-mesh.org;
	dkim=pass header.d=snu.ac.kr header.s=google header.b=YKTVrn6L;
	spf=pass (diktynna.open-mesh.org: domain of swan2718@snu.ac.kr designates
 2a00:1450:4864:20::52f as permitted sender) smtp.mailfrom=swan2718@snu.ac.kr;
	dmarc=pass (policy=none) header.from=snu.ac.kr;
	arc=pass ("google.com:s=arc-20240605:i=1")
Received: by mail-ed1-x52f.google.com with SMTP id
 4fb4d7f45d1cf-678a16429c6so1858662a12.1
        for <b.a.t.m.a.n@lists.open-mesh.org>;
 Tue, 26 May 2026 06:57:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1779803831; cv=none;
        d=google.com; s=arc-20240605;
        b=N5y/VVIt32HUNO55UbBYHFFJ+2TxVYD6i1PaptasAeUiK5gHx/6W/e1LdXTe+HklkS
         I9bkG6yMwPfrxxlhaurzUVOy5Qwgrc9LUU7fX93oPN7qX1qea0dyaYdwA8VHBPlzlwWv
         TcoW4mlpatYan1NLNb01BI72rMes7tatxycs+MrbgCHp2laYdLdXeWNTcV8k1xILNEV+
         sFmITiuaiRMdfWiPBn4qMqkcTTFdGUxXnuaJ+hTJLahl91p3owLFIjuTO/TgTwB2Mglz
         A0EVuZUVkHSBSZY1WjCvTzy2ONQu/5ORAzqlI7TmsbaA3cwUDsJAmeQK0RTyBmfflLWd
         hKig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=pmNn1qWk7/TKlmNZNMjGRwnuBcoC2pwzkAf+IEM9Zt4=;
        fh=txvG1RnDKlgYm5wEU0PUcwz60/SaDCLnYhKlOiMrVUU=;
        b=RCMNVOQh9BnL1CNPE11TeZPRgMYAJR6GVRFrVDxm1eGBr2pa1/PDGg0rbIb59JXfMo
         x9gGGNWrI8Z3/rnupk3VdiPFAHGfV1elYhqZkvEjWUBQkNpcEQHTNo77Ezso2h4/CC67
         t1oTRTNyY1Ns6MBZWSS6zgBPoyTsSQJBF/L34AvWMNQeSw45BlboKYy+t4++RXgLQGoY
         m/eMApVWREWd2X7nnK7d+9vVcxGzLtQVvrYs/1dBLFQs19vsbujf77W40ezWBiQ5463Q
         fPmncI0uyLbTKbJCJquKCikE+tseWQcDPKCHsJsMDvpu2cSTmrr9fsvqpINZUc8rMjXi
         AonA==;
        darn=lists.open-mesh.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=snu.ac.kr; s=google; t=1779803831; x=1780408631;
 darn=lists.open-mesh.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pmNn1qWk7/TKlmNZNMjGRwnuBcoC2pwzkAf+IEM9Zt4=;
        b=YKTVrn6L+7jiiYsDS8hyDM7eqRcsBpdv+gDs9DgcufHLGWxU+mRhycH9C69pdffmhU
         9XsBUyMVvUzfcOlYOSewsil3bNQuIEF22uhvtvGAm27mB36lUVQuiSpBhYqZBNvDb0Kq
         UtHX7r/EKOaZQbNdEz4VptFCGX2x+vfhlEfnM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779803831; x=1780408631;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=pmNn1qWk7/TKlmNZNMjGRwnuBcoC2pwzkAf+IEM9Zt4=;
        b=DPuyYmn3nLuvkVYp20kweeR/YydXqAUwMWz4xAR60OPnCxf6yR6arzuEza3L1iw7cF
         YK+TPwFiikfnTXDIwpRr3Jd4x/Be4L1O1uZ7ICRCfJzxpuEiOhBaD3X6OKZUz7UWDDdL
         UAAdeqa/HlT40IXX6Nl9ibUWe+dOF0pb8RvXbvVJyh46qczH9ZQ+w2SyQK9Zz7gB2rhr
         NLdj+uFyDN2YYIJbu0UPE8sXuicbLx1bjNzEyQ1+rzDZgU9XWOqj/etjRRFRxsixVPwG
         NzzmzR2FtuXPdIIVnlDcU/tNzHZWes/9KqaiS0wiUOZgTt8XQwI9GK0jorUNuxtb84pj
         R6aA==
X-Gm-Message-State: AOJu0YxggITp+2JX0zqHpTO9354SCc3/mtSlNowjpZFh0BR9itp4ZVD+
	Bkxicv4CLSlve23lsM/VgIzPvoWB11pxraTf0Tbo0eG7Ao61ahTKgmprTBhWEJhR6uHJtksb+YG
	giCXafS/+nwqp5g8mV8pCgpES/SDUNQdLqJMIDAqBgw==
X-Gm-Gg: Acq92OETRj9aNTKC+M92NVAbCQNSJQQbtlzDePN0i1I4Vyesz+gHJZhzWkP4YE/JN1J
	nrAXYHnbrCmv7rr9jVm/K+ux+a0XUzWwxzQv6aNtRIimLKFcuZqWDrgCMjqDtwK1xuDSc+JXXQe
	5nWxnKB0Qun/+fUUkEWzmgyxsPmGa5YINmCU4aTR4ZM1hr+lWpvFRoKgG6RJ0GU0Um51Er/BBqm
	NMKWK/HMEPrC5UvnXt641rrIw2knw9spPUCncfqxAo/oLqLi5ATVo9Jv3AwayZZLqwVruSV3o54
	Oeaw1RgibVgTgh8HqQ0eBihV/wWFhou9L2HTBoTp1KEwGkrgCPY=
X-Received: by 2002:a05:6402:2152:b0:687:fc0:8298 with SMTP id
 4fb4d7f45d1cf-6882efeddd4mr8033873a12.15.1779803831409; Tue, 26 May 2026
 06:57:11 -0700 (PDT)
MIME-Version: 1.0
References: <20260526064835.2233822-1-swan2718@snu.ac.kr>
 <14018241.uLZWGnKmhe@ripper>
In-Reply-To: <14018241.uLZWGnKmhe@ripper>
From: =?UTF-8?B?wq3rsJXsiJjsmYQgLyDtlZnsg50gLyDsu7Ttk6jthLDqs7XtlZnrtoA=?=
 <swan2718@snu.ac.kr>
Date: Tue, 26 May 2026 22:56:58 +0900
X-Gm-Features: AVHnY4LxnVrFzswY8dw_KnSP-5mTDmGd64Ddq1H-UBRZ_OlCA3frAGXWLFTfNlA
Message-ID: 
 <CAL3z5EbfEeMn-2_JrvcXRtuKTtruEf+8MX9tCmn-N9edvvrjwA@mail.gmail.com>
Subject: Re: [PATCH] batman-adv: fix DAT purge use-after-free on teardown
To: Sven Eckelmann <sven@narfation.org>
Cc: b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org,
	marek.lindner@mailbox.org, sw@simonwunderlich.de, antonio@mandelbit.com,
	davem@davemloft.net, edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
	horms@kernel.org, Tejun Heo <tj@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-MailFrom: swan2718@snu.ac.kr
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-3; emergency; member-moderation
Message-ID-Hash: 5UIM6RCJSGW2TPEOE5ZIBOZAKQUZPD7U
X-Message-ID-Hash: 5UIM6RCJSGW2TPEOE5ZIBOZAKQUZPD7U
X-Mailman-Approved-At: Tue, 26 May 2026 16:14:23 +0200
X-Mailman-Version: 3.3.10
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/5UIM6RCJSGW2TPEOE5ZIBOZAKQUZPD7U/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Spamd-Result: default: False [-2.01 / 15.00];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=3];
	DMARC_POLICY_ALLOW(-0.50)[snu.ac.kr,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[snu.ac.kr:s=google];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:24940, ipnet:2a01:4f8::/32, country:DE];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	R_SPF_NA(0.00)[no SPF record];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[swan2718@snu.ac.kr,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[snu.ac.kr:+]
X-Rspamd-Queue-Id: D81605D73F0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Sven,

You're right. I re-examined __cancel_work_sync() and confirmed that it
internally disables the work before flushing, so the re-queue race I
described does not exist. I'll withdraw this patch.

Thanks for the review.

Soowan Park

2026=EB=85=84 5=EC=9B=94 26=EC=9D=BC (=ED=99=94) =EC=98=A4=ED=9B=84 4:30, S=
ven Eckelmann <sven@narfation.org>=EB=8B=98=EC=9D=B4 =EC=9E=91=EC=84=B1:
>
> On Tuesday, 26 May 2026 08:48:35 CEST Soowan Park wrote:
> > batadv_dat_purge() is a periodic delayed work that re-queues itself via
> > batadv_dat_start_timer() at the end of each run. When the mesh interfac=
e
> > is torn down, batadv_dat_free() calls cancel_delayed_work_sync() to sto=
p
> > the purge work before freeing the DAT hash table.
> >
> > However, cancel_delayed_work_sync() leaves the work in an enabled state=
.
> > If the purge work is currently executing and re-queues itself before
> > cancel_delayed_work_sync() internally marks it for cancellation, the
> > newly queued work escapes cancellation. This re-queued work then fires
> > after batadv_dat_hash_free() has already freed the hash table but befor=
e
> > the pointer is set to NULL, causing __batadv_dat_purge() to operate on =
a
> > dangling pointer that passes the NULL check, and spin indefinitely on a
> > spinlock in freed memory.
>
>
> You are talking about a re-queue by batadv_dat_start_timer(). This only
> happens when the DAT gets initialized or via the worker (batadv_dat_purge=
)
> itself. How can the worker which is cancelled (with sync) re-queue itself=
?
> Isn't this breaking a guarantee of cancel_delayed_work_sync() or did I
> misunderstand this part of the documentation?
>
>
> "This is cancel_work_sync() for delayed works." [1]
>
> "Cancel work and wait for its execution to finish. This function can be u=
sed
> even if the work re-queues itself or migrates to another workqueue. On re=
turn
> from this function, work is guaranteed to be not pending or executing on =
any
> CPU as long as there aren=E2=80=99t racing enqueues." [2]
>
> (the part "This function can be used even if the work re-queues itself" i=
s
> the important part here).
>
>
> > Replace cancel_delayed_work_sync() with disable_delayed_work_sync(),
> > which additionally disables the work so that any concurrent
> > queue_delayed_work() call from the running batadv_dat_purge() is
> > silently rejected. This guarantees no re-queued work can fire after
> > disable_delayed_work_sync() returns.
>
> I have no problem with using "disabled_*" everywhere (I even have a pendi=
ng
> patchset to use it - just to avoid problems with code changes in the futu=
re).
> But since this is a fix which I don't get in the moment, I would like to
> understand the problem you are describing better before applying it.
>
> Regards,
>         Sven
>
>
> [1] https://www.kernel.org/doc/html/v7.0/core-api/workqueue.html#c.cancel=
_delayed_work_sync
> [2] https://www.kernel.org/doc/html/v7.0/core-api/workqueue.html#c.cancel=
_work_sync
