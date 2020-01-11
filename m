Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id F23F7138536
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 12 Jan 2020 06:51:38 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 16EB9808D1;
	Sun, 12 Jan 2020 06:51:17 +0100 (CET)
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com
 [IPv6:2607:f8b0:4864:20::243])
 by open-mesh.org (Postfix) with ESMTPS id 62D9080286
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 12 Jan 2020 00:38:32 +0100 (CET)
Received: by mail-oi1-x243.google.com with SMTP id n16so5143692oie.12
 for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 11 Jan 2020 15:38:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=c7HFrOGQ3phE12eoMeyUfOtwv87GN61OlvlGebweSPE=;
 b=CUzzXi3uv6xXm/4UnggMbWvrrN2Up+aCdXgbjG6cA1RSh2Hsl7MaJGyUzdoMoTmd4R
 ZrHmzvSIQzS9GFymrJPYSFUJoVbzF0PJ/iecYAh4HGcrfH/zwmd4F6x9nsoOeailYobC
 MujffRFXqGvkpsurYLOjgR9qmZoZeeEk+kwuIIysdTEHyy0eM0MPpC10Mh0InyVmHn1v
 5FsP+pOKLqj3MpjEbbWZWOZEilHIuIlxKrmee02exZm69I3xF9XolTxJTNhKMd4CPNUr
 7TK8yRsQode2rHqJa9VpU78VxSiyf+Oi7TyRFsjn5WlXmrtjazYZe5Wjb+yrJwuo7Mdn
 THlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=c7HFrOGQ3phE12eoMeyUfOtwv87GN61OlvlGebweSPE=;
 b=e+RpQ7Z0ZnOJ3LCnbdV1q74z5P/2thu5Ifc2nT6ExDC/wKivlYiXAJihyqyx5S5BDV
 3wm5mJHXDt7AkXV40N5eWTnbmLJ/V2KW9JjkbvUrOSAJxoNK6O5E2jryMrq5holZVp9x
 1RpwEHQiVNcyca+2TaMVgIy5ErNBJZ/Q4vEg1ZGTmjTXMYtoPgPi2RkQTphZ7Ha2r1JU
 jK6mdleFF3z6KyyGwrF+mSHGiHwkb7qGAOIryO/uBg7FgdVaGXuN+cKj0NEAjW0uFuDL
 s9MnikTwu0SpwH+S+1FXege4VBAqdLQAA+2y7YcWs/07RorKqSrbLu88qP2K6junOvwQ
 0taA==
X-Gm-Message-State: APjAAAUFRkT5UPKToIyTHhEn6d1+WPow7P3nxUNUO8NSKkrfbludyupA
 6sUf9hSetJtxib8g0j5TBRXGA2aJ7Eiv37oCSTU=
X-Google-Smtp-Source: APXvYqzdwu5h+fnSlpdGrTkZ59bgP9nPDYS+jBNWRgOtKGV1J84qw+h5nryOcSbFDC8q8K7HsV9LDhKqwf7dQGAQUsU=
X-Received: by 2002:aca:1e11:: with SMTP id m17mr7953939oic.5.1578785910973;
 Sat, 11 Jan 2020 15:38:30 -0800 (PST)
MIME-Version: 1.0
References: <000000000000a06985059be4002e@google.com>
In-Reply-To: <000000000000a06985059be4002e@google.com>
From: Cong Wang <xiyou.wangcong@gmail.com>
Date: Sat, 11 Jan 2020 15:38:19 -0800
Message-ID: <CAM_iQpWN-SKjjrG_7EQ-x+7UMiu6foaNWMJuwQuwN0BGmayB+A@mail.gmail.com>
Subject: Re: WARNING: bad unlock balance in __dev_queue_xmit
To: syzbot <syzbot+ad4ea1dd5d26131a58a6@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Sun, 12 Jan 2020 06:50:52 +0100
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Alexander Aring <alex.aring@gmail.com>,
 Jakub Kicinski <jakub.kicinski@netronome.com>, ast@domdv.de,
 linmiaohe@huawei.com, gustavo@embeddedor.com, oss-drivers@netronome.com,
 linux-wireless <linux-wireless@vger.kernel.org>, a@unstable.cc,
 linux-hyperv@vger.kernel.org,
 Linux Kernel Network Developers <netdev@vger.kernel.org>,
 Paul Mackerras <paulus@samba.org>, linux-hams <linux-hams@vger.kernel.org>,
 kys@microsoft.com, Andy Gospodarek <andy@greyhouse.net>,
 Marek Lindner <mareklindner@neomailbox.ch>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Daniel Borkmann <daniel@iogearbox.net>, bridge@lists.linux-foundation.org,
 jwi@linux.ibm.com, linux-wpan@vger.kernel.org,
 Kalle Valo <kvalo@codeaurora.org>, Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>,
 Paolo Abeni <pabeni@redhat.com>,
 Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 Marcel Holtmann <marcel@holtmann.org>, Michal Kubecek <mkubecek@suse.cz>,
 Jiri Pirko <jiri@resnulli.us>, Johan Hedberg <johan.hedberg@gmail.com>,
 Johannes Berg <johannes.berg@intel.com>, j@w1.fi,
 Jay Vosburgh <j.vosburgh@gmail.com>, haiyangz@microsoft.com,
 Jamal Hadi Salim <jhs@mojatatu.com>, John Hurley <john.hurley@netronome.com>,
 Hangbin Liu <liuhangbin@gmail.com>, David Ahern <dsa@cumulusnetworks.com>,
 allison@lohutok.net, cleech@redhat.com, Greg KH <gregkh@linuxfoundation.org>,
 b.a.t.m.a.n@lists.open-mesh.org, Florian Westphal <fw@strlen.de>,
 LKML <linux-kernel@vger.kernel.org>,
 linux-bluetooth <linux-bluetooth@vger.kernel.org>,
 mmanning@vyatta.att-mail.com, linux-ppp@vger.kernel.org, info@metux.net,
 David Miller <davem@davemloft.net>, Taehee Yoo <ap420073@gmail.com>
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

#syz dup: WARNING: bad unlock balance in sch_direct_xmit
