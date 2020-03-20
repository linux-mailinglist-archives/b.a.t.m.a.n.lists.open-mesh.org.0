Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 423F318C78C
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 20 Mar 2020 07:35:42 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id EA55380C66;
	Fri, 20 Mar 2020 07:35:40 +0100 (CET)
Received: from mail-qt1-x832.google.com (mail-qt1-x832.google.com
 [IPv6:2607:f8b0:4864:20::832])
 by diktynna.open-mesh.org (Postfix) with ESMTPS id D461B8001D
 for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 20 Mar 2020 02:17:13 +0100 (CET)
Received: by mail-qt1-x832.google.com with SMTP id f20so3688428qtq.6
 for <b.a.t.m.a.n@lists.open-mesh.org>; Thu, 19 Mar 2020 18:17:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=QHavipgYSNzUAjtspromspMTgYTom3kwMhXscnzi4bA=;
 b=ANo2YGyYS/aMgcH29Bkyjf3L68lI+JdTb8uBYs0jbOjfmE3S8hnXh5i/Y4sgBAB5P3
 Oy1KFAvFKGYzIn2IJg5wdjRO4+mtrrXU2fVupVrmiNtT7S4+eulKFqtzvh6zzuh9YqH2
 iE8FfvkBb3nzvuqc7Oa/kE7xPA7yXrYjaQko1+s/M/fqS0qRDlely0IZofZM24KcEbFX
 9k7vzUYefx3iYeLbZk/by+BGwP4pkJ99jpZhb/2j0QADoYA+iHGiEJHV3dEJ0uCAtMvT
 pT6VsvEf4lETcxg7lxARtWPtFSwf3xoGjghzcH4j2L9uPu2HpRKqxYnhCaYxlXv2ePvz
 x55A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=QHavipgYSNzUAjtspromspMTgYTom3kwMhXscnzi4bA=;
 b=S06FF7vFL6MUqozhcPRZE4RqqrBeWdHiPakZq/wlmF2P1uygrnK6ZPP4phNl1NzFMT
 DD3pgp7j7xGJrZMuJZfUrVpi9MFlv25fyjC8nKHbjREObWcDUGsOsuxU7/lqIek/Rrm0
 1yPXq0h6l3pvzYobLZHTuxKhN26Q7lumWDKtGMvmXnxSq1zpucNwazZ9wkJAeRDhx3/P
 sxJIzyD0cfbPs9YzRkIAc2wP6ZchUdSLhE3vBzLeOCvbXwOapgSDHosi89fxkYDVTDSn
 uAmRwr9uylxMUnScp08zL6ttHEGie8IxNoWI6OurHCftBXcBzcwXBTYx2mv8CGfCdrqk
 U9tw==
X-Gm-Message-State: ANhLgQ2NayNMiwJC//+30hyytjETi1wRWHZy/jN0EAd16D0QVe2JqPjc
 SCkFNLGKH5y2g4bSY033qRo=
X-Google-Smtp-Source: ADFU+vsq7hdtsaCbYqG7tUSQQrmGx0RogeROUuLZuLG/Kn1wi7/kIEp0004iJVQSM97XczjrwGI8hw==
X-Received: by 2002:ac8:4549:: with SMTP id z9mr6071023qtn.274.1584667032585; 
 Thu, 19 Mar 2020 18:17:12 -0700 (PDT)
Received: from localhost.localdomain ([177.220.176.176])
 by smtp.gmail.com with ESMTPSA id q24sm3156790qtk.45.2020.03.19.18.17.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Mar 2020 18:17:11 -0700 (PDT)
Received: by localhost.localdomain (Postfix, from userid 1000)
 id 4F225C1B52; Thu, 19 Mar 2020 22:17:09 -0300 (-03)
Date: Thu, 19 Mar 2020 22:17:09 -0300
From: Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>
To: syzbot <syzbot+3950016bd95c2ca0377b@syzkaller.appspotmail.com>
Subject: Re: general protection fault in sctp_ulpevent_nofity_peer_addr_change
Message-ID: <20200320011709.GE3756@localhost.localdomain>
References: <00000000000074219d05a139e082@google.com>
 <00000000000041ca9305a13ea3e0@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <00000000000041ca9305a13ea3e0@google.com>
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1584667033;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references:dkim-signature;
 bh=QHavipgYSNzUAjtspromspMTgYTom3kwMhXscnzi4bA=;
 b=kea699F8Ff7fVLDHF5y7QYfACAFq8fuXu+Gr09JfMX4iiuyRXJHPktc9noRYV6nX1Z44Zd
 l0r/RdPd9cKSkbQ6V47gFxmsxhdIV4sn7ZdOwDcB1QoyWj50vfp0cvwvGCqlR8KzNI/NNQ
 UzI11GD6PsDBZci/I6U3x//TRMYaE8Q=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1584667033; a=rsa-sha256; cv=none;
 b=Ey6J16B0sXWvdUI+qu2SlXMvYDoxvDoCoQGtfDwcJXUdvOsRfupFbmzv95HMBNxw3HzI6R
 c2xEJhVW0y3gb+zUcFakLeVPWVGVluG5HBl70VuqIyPQCSk2ZIZ94XVG0/zzDU/ZSXSTSe
 JfTaMDrIEiAKMjR5HE1gSSAiYs3/hAg=
ARC-Authentication-Results: i=1; diktynna.open-mesh.org;
 dkim=pass header.d=gmail.com header.s=20161025 header.b=ANo2YGyY;
 spf=pass (diktynna.open-mesh.org: domain of marceloleitner@gmail.com
 designates 2607:f8b0:4864:20::832 as permitted sender)
 smtp.mailfrom=marceloleitner@gmail.com
X-Mailman-Approved-At: Fri, 20 Mar 2020 07:35:31 +0100
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
List-Unsubscribe: <https://lists.open-mesh.org/mm/options/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=unsubscribe>
List-Archive: <http://lists.open-mesh.org/pipermail/b.a.t.m.a.n/>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Subscribe: <https://lists.open-mesh.org/mm/listinfo/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=subscribe>
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
Cc: linux-fbdev@vger.kernel.org, mareklindner@neomailbox.ch,
 nhorman@tuxdriver.com, b.zolnierkie@samsung.com, netdev@vger.kernel.org,
 vyasevich@gmail.com, b.a.t.m.a.n@lists.open-mesh.org, a@unstable.cc,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 syzkaller-bugs@googlegroups.com, lkundrak@v3.sk, linux-sctp@vger.kernel.org,
 kuba@kernel.org, davem@davemloft.net
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

On Thu, Mar 19, 2020 at 05:48:02PM -0700, syzbot wrote:
> syzbot has bisected this bug to:
> 
> commit da2648390ce3d409218b6bbbf2386d8ddeec2265
> Author: Lubomir Rintel <lkundrak@v3.sk>
> Date:   Thu Dec 20 18:13:09 2018 +0000
> 
>     pxa168fb: trivial typo fix

Certainly not ;-)
