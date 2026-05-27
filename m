Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gMgeDBW/FmrOqgcAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 27 May 2026 11:53:25 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C7C15E22D4
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 27 May 2026 11:53:22 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 684C283DDC
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 27 May 2026 11:53:22 +0200 (CEST)
ARC-Seal: i=3; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1779875602;
 b=21SxiZJKmcPf4zXzM2JXnOiEKlyk89Dt2RustXyYkrX572HCnhQK3J0ZyEE2xb9UYnpM7
 OZ7eli+ln7hXMPveP9SjSBzvAl5M6/wBUHUe/LW4X2s+A2Oh83rqTyyIEOhyKPody4y8D+i
 ZSQ5CjKF2Qxr39GNU+AlDjdMVQcMXhA=
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1779875602; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=2PN98aCoYgmIhUzX6WmjhPxG9QNi1I86AbhbpQXMYRA=;
 b=k2ivBi8lwr99ZyECXbKkAQ3tRNBWLzXCC6aEiYGdzZxQfG7AJ47BUPqymYDFqFxlM4Aa9
 UcqWXBchpg9TKA2QwSVJajdn3yOJ0G6C4LdskvuKcXxM1SzfVm8ZMg6pvLozyIZ0KVMCcRS
 MPeGbSW71ZxOMSMmQwMxW0aGzLs/DKs=
ARC-Authentication-Results: i=3; open-mesh.org;
 dkim=pass header.d=snu.ac.kr;
 arc=pass;
 dmarc=pass header.from=snu.ac.kr policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=snu.ac.kr; arc=pass;
 dmarc=pass (Used From Domain Record) header.from=snu.ac.kr policy.dmarc=none
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com
 [IPv6:2a00:1450:4864:20::52b])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 14F99810A6
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 27 May 2026 11:52:05 +0200 (CEST)
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1779875538;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=2PN98aCoYgmIhUzX6WmjhPxG9QNi1I86AbhbpQXMYRA=;
	b=qPMkgWOzdf0fXzCr66wHyqmx4Nqq7MeMA6AkrfC9vbOOc6F6nvYIO6e5x9ZNlm7XeuvNpu
	s6SNBOFSyXiTOvl+fNQwzFN3Y/qIQUhCfqyKY5pE+MXqp7yXOPw3vEIGKjyVvWQIx3vnS4
	2kACtJZ/xCcnzZAgKnbrprZvpfryXLk=
ARC-Seal: i=2; a=rsa-sha256; d=open-mesh.org; s=20121; cv=pass; t=1779875538;
	b=J0O90/DKSdbVDqMTIGvGu53UDH4pHwLxLym/yqoiadK6Kl3gMDQC1JrM5mrdXq5Z8FhuqU
	hztXNup72FHM6tN7yL0ge/ke9t/hzwUi19qOyV5aWZBgJQqO4JHbvh+KwNBLsD6tzuiFEa
	jCReYE2LIViE6wqMO/+myyo7aWeEG3o=
ARC-Authentication-Results: i=2;
	diktynna.open-mesh.org;
	dkim=pass header.d=snu.ac.kr header.s=google header.b=bIQjpDUV;
	spf=pass (diktynna.open-mesh.org: domain of swan2718@snu.ac.kr designates
 2a00:1450:4864:20::52b as permitted sender) smtp.mailfrom=swan2718@snu.ac.kr;
	dmarc=pass (policy=none) header.from=snu.ac.kr;
	arc=pass ("google.com:s=arc-20240605:i=1")
Received: by mail-ed1-x52b.google.com with SMTP id
 4fb4d7f45d1cf-67cd93d8affso14244311a12.2
        for <b.a.t.m.a.n@lists.open-mesh.org>;
 Wed, 27 May 2026 02:52:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1779875520; cv=none;
        d=google.com; s=arc-20240605;
        b=IOJZ5lPQRuYndPDubib5qq59HvQflUDf+uzfvf2uEhCjLD17j+aReVAFu77i0ezz+/
         NoyUD6s3DKBo30iGCpndM5HlnAeTHW5wDWNUEZZ1ZfNFumyxuW0UrzYw+sBUO0RMTZqz
         IibHhB9Nn2wcLr5dEtmAtEghWTMJ7lwVseLlpvWTj/VQRTi7ITer4ASuQfblI3bMhc6j
         bWvLgokfRyaCaQ2EfnUcEgfSyHOsTg48/fcf4GBJZaQ+Ml3hO8KU7sK1GIIfhO3KUBSo
         Xi4u4wvpAUygSk6TjqtZ32Ue82sWt65GqGnbcBPa9QG4yvDaYYeEDDup1o15xbaTNyy5
         f7GA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=2PN98aCoYgmIhUzX6WmjhPxG9QNi1I86AbhbpQXMYRA=;
        fh=txvG1RnDKlgYm5wEU0PUcwz60/SaDCLnYhKlOiMrVUU=;
        b=BiwGN7K0n1zmdS/UVGBz8dt6YqTYZFIoPt+Nv00t0bMJ2Y00YdbfZZJjwms1qlPpkb
         ndFXGTPe+HOi0PKNgzi/jcJi7ixuNaFCnuXdpj9UBLLm6+i5f32pFVOGpUw2jjFiQhhp
         NDV8E8goBqcVU49JLFIHqQgHDB1wd15NspU2DociuuItNt5/2y5Z+KoXvMNaav2tsbd/
         Ym+TrIAGZnZAjVurTAahyWoJltomrP/Zbe7GNug9Zq7RM63svwdNyGpXp/FKuamPZmzG
         y426IXh0VadbbValhfcOWhytWDo7vLQ97QRnbrHur3ecj5zvGHju/E+A37HrW5O8GZ+2
         A0Nw==;
        darn=lists.open-mesh.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=snu.ac.kr; s=google; t=1779875520; x=1780480320;
 darn=lists.open-mesh.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2PN98aCoYgmIhUzX6WmjhPxG9QNi1I86AbhbpQXMYRA=;
        b=bIQjpDUVn1tJLI4GRGeoBwHq5RyMVeU229qe+GwA90R8O/j2f5xVIdJOPqV0KsGaMv
         UHJB6bbX0OFmcm43hFB2CtTxSofh/c8Pqom3DJDKV2s+NxO3qkYwPPQ8qqT8+XtvqwQm
         KzS5Z6yGP8Ktf1pWww9GoYsAn7pUw6+VKNkYQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779875520; x=1780480320;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=2PN98aCoYgmIhUzX6WmjhPxG9QNi1I86AbhbpQXMYRA=;
        b=SkvecosiV2fsgSeF7Gh4vUESv9ZOwe9frKEBJHhckzmkMlvWNPpnLwcUXojLybLRVI
         gU9aVIvEnYKG/zWMxCMvZqJl3Vix6WLw3wr+PwvfZ/8qKnhbR0lgfQsidJhF3Fsl/tuS
         2ehriTW9afbhiEkSS7Onzd8YlqGJ6uRUVBXZGLdI6okp8i8McnUYVSAwO7Prfawl3YIt
         YKYzPgLkXswqZhR1uGL3D8HYHdTqWwtV/IRRvl7by1GBSxaOHSTVQSoKzwwnKhOs6XFb
         XWdx7LjQoL2mg+TbS1Bw7F/EW+jd3rRqfAvith8orb8O/DC1WaEv/xezhYI++OH4kuxk
         VK/g==
X-Gm-Message-State: AOJu0Yw76eDgl80XbhnV7qttoOC9YWTECNzyXWvGeEva4YCbooIvW4/B
	LCyTpVs9RYIraa2GCv2T+LUSKntIU9ciVqgAMlu9OqKW4tLxFQWo6VYwuLNR8dAUwQdvhrtcXB6
	+DCzgZDrHSrAfZGZRmHXWKk0a87C89LKptJ9c7Qb/dg==
X-Gm-Gg: Acq92OGEi/VlKE1bbUPuvvE/qLwq6HPpDKsrC/fxNX5yDVmj7D6wiEGrC+5RivQ197T
	6JH0ocHTVDcLG0Tyods5qGmiW0H/Os1TuzJLmLwQThhdrE+vRRIR4C9p+ogTvnuyUy/b4pkfkqI
	f7ZZHPpljePzp2HMKvzGruZX0fmsNnosOpCbJLumzDhsj21UOpPj/LjbBe3E0GQowT/6IyvE8lC
	1DbBwb+eQ2jPdpAs2oFZ5q7Nb6Q7HVO2rJCrgWUwu5PIjFXhnYyLQp4YE3H+zuUgaZoABr4ogNj
	RXHeYIZk0mqrhAycGm8sBwzUPB6L4muza3d60XOj
X-Received: by 2002:a05:6402:e10:b0:680:ccda:55b9 with SMTP id
 4fb4d7f45d1cf-6889c47031cmr11449807a12.16.1779875520030; Wed, 27 May 2026
 02:52:00 -0700 (PDT)
MIME-Version: 1.0
References: <20260526064835.2233822-1-swan2718@snu.ac.kr>
 <14018241.uLZWGnKmhe@ripper>
 <CAL3z5EbfEeMn-2_JrvcXRtuKTtruEf+8MX9tCmn-N9edvvrjwA@mail.gmail.com>
 <10856691.nUPlyArG6x@ripper>
In-Reply-To: <10856691.nUPlyArG6x@ripper>
From: =?UTF-8?B?wq3rsJXsiJjsmYQgLyDtlZnsg50gLyDsu7Ttk6jthLDqs7XtlZnrtoA=?=
 <swan2718@snu.ac.kr>
Date: Wed, 27 May 2026 18:51:49 +0900
X-Gm-Features: AVHnY4IeA4ihcvnDzBQR8GLvg4LxRUs2gOTtjT3c6nUk8tNgpf6NhjYMEVU7tkc
Message-ID: 
 <CAL3z5EZDr3sK5pOuiQmX4agLy4-6sJx3UMw9kDYfApFJ6uYb-w@mail.gmail.com>
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
Message-ID-Hash: EL2M3QYHEWDF5LGGYTSUEAVJYLA6V4ZU
X-Message-ID-Hash: EL2M3QYHEWDF5LGGYTSUEAVJYLA6V4ZU
X-Mailman-Approved-At: Wed, 27 May 2026 11:53:00 +0200
X-Mailman-Version: 3.3.10
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/EL2M3QYHEWDF5LGGYTSUEAVJYLA6V4ZU/>
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
	R_DKIM_ALLOW(-0.20)[snu.ac.kr:s=google];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n];
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	NEURAL_HAM(-0.00)[-1.000];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[swan2718@snu.ac.kr,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,narfation.org:email,diktynna.open-mesh.org:rdns,diktynna.open-mesh.org:helo,snu.ac.kr:dkim,syzkaller.appspot.com:url];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[snu.ac.kr:+]
X-Rspamd-Queue-Id: 4C7C15E22D4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

I was running a modified syzkaller locally and the crash came from
that setup. I've since lost the original log, and looking back, I may
have confused an issue in my tooling with a kernel bug. I should have
verified more carefully before sending this. Sorry for the confusion.

Soowan Park

2026=EB=85=84 5=EC=9B=94 26=EC=9D=BC (=ED=99=94) =EC=98=A4=ED=9B=84 11:18, =
Sven Eckelmann <sven@narfation.org>=EB=8B=98=EC=9D=B4 =EC=9E=91=EC=84=B1:
>
> On Tuesday, 26 May 2026 15:56:58 CEST =C2=AD=EB=B0=95=EC=88=98=EC=99=84 /=
 =ED=95=99=EC=83=9D / =EC=BB=B4=ED=93=A8=ED=84=B0=EA=B3=B5=ED=95=99=EB=B6=
=80 wrote:
> > Hi Sven,
> >
> > You're right. I re-examined __cancel_work_sync() and confirmed that it
> > internally disables the work before flushing, so the re-queue race I
> > described does not exist. I'll withdraw this patch.
> >
> > Thanks for the review.
>
> But you said that this was reported by syzkaller. I can't find the report=
 in
> the official list [1]. I am guessing you have a reproducer in a private
> instance and tested with it. And if you tested your patch with it, you ha=
ve
> found that your patch fixes it, right?
>
> Can you give us more information about this to let us figure out what is
> actually going on?
>
> Regards,
>         Sven
>
> [1] https://syzkaller.appspot.com/upstream/s/batman
