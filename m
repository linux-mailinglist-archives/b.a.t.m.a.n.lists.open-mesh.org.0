Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C2B610C568
	for <lists+b.a.t.m.a.n@lfdr.de>; Thu, 28 Nov 2019 09:47:24 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 5F7738085A;
	Thu, 28 Nov 2019 09:47:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1574930837;
	h=from:from:sender:sender:reply-to:reply-to:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:in-reply-to:in-reply-to:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=AJDt/YYvjy+SbUU8dPYNPVFcblEzBoZhndZy5jITHhk=;
	b=jna6cGReurKC5eUCXm6LAURvohRa906R5Vb7UQzz20b98piUpwIYTlCLeHO/YLlTniR66Y
	EfcLH6l5da2MSJ9uhjK87REMrjP0DvDyIAcgYZOgVbkMcXa6iR1RCLLIFtoC6vszodVhUc
	CuGcdI2gLgYiTdb7EIvyDz5/HzmbV24=
References: <0000000000009aa32205985e78b6@google.com>
 <2825703.dkhYCMB3mh@sven-edge>
In-Reply-To: <2825703.dkhYCMB3mh@sven-edge>
Date: Thu, 28 Nov 2019 09:40:32 +0100
To: Sven Eckelmann <sven@narfation.org>, syzkaller <syzkaller@googlegroups.com>
X-Mailman-Approved-At: Thu, 28 Nov 2019 09:47:14 +0100
MIME-Version: 1.0
Message-ID: <mailman.10.1574930835.8300.b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
From: "Dmitry Vyukov via B.A.T.M.A.N" <b.a.t.m.a.n@lists.open-mesh.org>
Precedence: list
Cc: Dmitry Vyukov <dvyukov@google.com>, wang.yi59@zte.com.cn,
 b.a.t.m.a.n@lists.open-mesh.org, Jakub Kicinski <jakub.kicinski@netronome.com>,
 mareklindner@neomailbox.ch, vinicius.gomes@intel.com,
 netdev <netdev@vger.kernel.org>,
 syzbot <syzbot+a229d8d995b74f8c4b6c@syzkaller.appspotmail.com>, a@unstable.cc,
 Jamal Hadi Salim <jhs@mojatatu.com>, LKML <linux-kernel@vger.kernel.org>,
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
 Cong Wang <xiyou.wangcong@gmail.com>,
 =?UTF-8?B?SmnFmcOtIFDDrXJrbw==?= <jiri@resnulli.us>,
 David Miller <davem@davemloft.net>
X-Mailman-Version: 2.1.29
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
List-Subscribe: <https://lists.open-mesh.org/mm/listinfo/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=subscribe>
List-Unsubscribe: <https://lists.open-mesh.org/mm/options/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=unsubscribe>
List-Archive: <http://lists.open-mesh.org/pipermail/b.a.t.m.a.n/>
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
Content-Type: multipart/mixed; boundary="===============0930281572255426115=="
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

--===============0930281572255426115==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============0930281572255426115==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Return-Path: <dvyukov@google.com>
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com [IPv6:2607:f8b0:4864:20::741])
	by open-mesh.org (Postfix) with ESMTPS id 807BD80041
	for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 28 Nov 2019 09:46:16 +0100 (CET)
Received: by mail-qk1-x741.google.com with SMTP id f5so3694117qkm.13
        for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 28 Nov 2019 00:46:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=5C8NbXcmc1aQS22jTcSPXOSGUlWN7oELXfg5QtAuVzM=;
        b=UYXh/YN6exLANTxIPrG3gGtiatnbu0bh/kGC1PW6FqlM6fscc0zR8db0UZrtuQ59y6
         DMUVc+CWnbnzVDLFDnZN91A0af6QT5QoRflpFOUUPCtPlgIUnHYGYjN8eKvR4nu70I6+
         webO28+9bkOTJCKZP7zzfMu5CiR07YLI41peftG9RdPLOhEMjZzvzioWtO6Kj0Mz3fWD
         aPXCADHuisIvqjqY2nPI46PRUn8Vfk8AFMHAc8VKRVD8AkqqYRl8syJMApsBIwn0HViO
         irlmr7a1C8+9Sw04lbstTjm9zbtYBtejzY2mgPGy2dIgE3wBlJDIX5JNH1dTovt8Ld75
         sM5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=5C8NbXcmc1aQS22jTcSPXOSGUlWN7oELXfg5QtAuVzM=;
        b=pIlCghyQARFXWj2cIaAIKAEEC/I+efouvlg4QTCwCsDJeYtbe333eUILDDyEUAAI7h
         A/lDnx+T+L3ag/Xgk5gMCMscqxl2bXTLdr/l9kp8YsZcY1z7vgoX8ZN04Bwaeo+3NZ0N
         DyV91e7Em8ykHdKk2dZx2pI+sF2i6Ie8o2IqaiOIp/kgBD3Unp9nH+2D2rRDIXURRiP2
         vDe5g1zAp8On9pfeQ41srH4q2TZ8cOeLd9CxwMhbc12gGUAKn1SGRswrmwDwsyIvt9yZ
         repNRX751tkccliqdC22JRaQaz1uhzVfExSf3FdG/yNYd/wrgO/lfedifSKiPX2oAyaK
         rLSw==
X-Gm-Message-State: APjAAAWT8xHni6De3zCSsPzZ5pStBnzozsH8DKximxGyEW1xyAhMWzBR
	p4SwGLz8U491u/9t3gXoWaXaUk2vP6A4Vq1QLvPKBmHDE/4=
X-Google-Smtp-Source: APXvYqwSOrs2sa+E7QbDi8H+rGvNlfN5l/NCXi93Y1fBJESRHAf13gMFAaGH1xt3XOfSvi2wrGNiBNIemXtPPjgIyrQ=
X-Received: by 2002:a37:e312:: with SMTP id y18mr5426499qki.250.1574930443688;
 Thu, 28 Nov 2019 00:40:43 -0800 (PST)
MIME-Version: 1.0
References: <0000000000009aa32205985e78b6@google.com> <2825703.dkhYCMB3mh@sven-edge>
In-Reply-To: <2825703.dkhYCMB3mh@sven-edge>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Thu, 28 Nov 2019 09:40:32 +0100
Message-ID: <CACT4Y+YwNGWCXBazm+7GHpSw-gXsxmA8NA-o7O7Mpj3d-dhGYA@mail.gmail.com>
Subject: Re: WARNING in mark_lock (3)
To: Sven Eckelmann <sven@narfation.org>, syzkaller <syzkaller@googlegroups.com>
Cc: syzbot <syzbot+a229d8d995b74f8c4b6c@syzkaller.appspotmail.com>, a@unstable.cc, 
	b.a.t.m.a.n@lists.open-mesh.org, David Miller <davem@davemloft.net>, 
	Jakub Kicinski <jakub.kicinski@netronome.com>, Jamal Hadi Salim <jhs@mojatatu.com>, 
	=?UTF-8?B?SmnFmcOtIFDDrXJrbw==?= <jiri@resnulli.us>, 
	LKML <linux-kernel@vger.kernel.org>, mareklindner@neomailbox.ch, 
	netdev <netdev@vger.kernel.org>, sw@simonwunderlich.de, 
	syzkaller-bugs <syzkaller-bugs@googlegroups.com>, vinicius.gomes@intel.com, 
	wang.yi59@zte.com.cn, Cong Wang <xiyou.wangcong@gmail.com>
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1574930776;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=5C8NbXcmc1aQS22jTcSPXOSGUlWN7oELXfg5QtAuVzM=;
	b=rkGQHC7y1sHa+Pi0rck7dE6Nih2SyJ1FdkOO/kAhBAFPaOTeehukxvY0+jyst7F7OnZnRN
	q8piPQiDb9jrHSu52rZp67fnqPFs8/LiYgjN31OTGJFNvlQU0vNDSqHzYcmX6NYB0697nv
	C9RrLZEEVolnFfZBn0MSKPCUsse9bEo=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1574930776; a=rsa-sha256;
	cv=none;
	b=zcCS+9CZ6oAo8xfzx4N/eBnZlLdzJHJ3JIJo8Z2ycQiUZPT/7TgbthTcabggXy5lFedIbh
	7NERRK91vODfeCV5VJo3AMYfVGl7EPcdahq7I59TeMBlIKzIgYBGEfDUz0ZBHyzNZWcYL8
	NCL5MSG0DWMJ+VD3gdBtca6b5wiWrWo=
ARC-Authentication-Results: i=1;
	open-mesh.org;
	dkim=pass header.d=google.com header.s=20161025 header.b=UYXh/YN6;
	spf=pass (open-mesh.org: domain of dvyukov@google.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=dvyukov@google.com
X-Mailman-Approved-At: Thu, 28 Nov 2019 09:47:14 +0100

On Thu, Nov 28, 2019 at 8:25 AM Sven Eckelmann <sven@narfation.org> wrote:
>
> On Thursday, 28 November 2019 03:00:01 CET syzbot wrote:
> [...]
> > bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=132ee536e00000
> > start commit:   89d57ddd Merge tag 'media/v5.5-1' of git://git.kernel.org/..
> > git tree:       upstream
> > final crash:    https://syzkaller.appspot.com/x/report.txt?x=10aee536e00000
>
> Can the syzbot infrastructure be told to ignore this crash in the bisect run?
> Because this should be an unrelated crash which is (hopefully) fixed in
> 40e220b4218b ("batman-adv: Avoid free/alloc race when handling OGM buffer").

+syzkaller mailing list for syzbot discussion

Hi Sven,

There is no such functionality at the moment.
What exactly do you mean? Somehow telling it interactively? Or
hardcode some set of crashes for linux? I don't see how any of these
options can really work...

--===============0930281572255426115==--
