Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A8541621FB
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 18 Feb 2020 09:03:59 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 43B6C8070B;
	Tue, 18 Feb 2020 09:03:58 +0100 (CET)
Received: from r3-20.sinamail.sina.com.cn (r3-20.sinamail.sina.com.cn
 [202.108.3.20])
 by diktynna.open-mesh.org (Postfix) with SMTP id 0EDFB8010F
 for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 18 Feb 2020 03:13:13 +0100 (CET)
Received: from unknown (HELO localhost.localdomain)([222.131.68.206])
 by sina.com with ESMTP
 id 5E4B483300004579; Tue, 18 Feb 2020 10:13:09 +0800 (CST)
X-Sender: hdanton@sina.com
X-Auth-ID: hdanton@sina.com
X-SMAIL-MID: 73265715073490
From: Hillf Danton <hdanton@sina.com>
To: Sven Eckelmann <sven@narfation.org>
Subject: Re: [PATCH maint] batman-adv: Don't schedule OGM for disabled
 interface
Date: Tue, 18 Feb 2020 10:12:58 +0800
Message-Id: <20200218021258.12216-1-hdanton@sina.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1581991994;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=EvEk7OMlXEwMQ0W3wewQkJ1HJ3Tg2CBHf2LVN/aitd0=;
 b=b7QyVJ9jnWFtQR+GMnEsVC10LayfhiNi34S0Bgu4Nq50kKl+57cZtjCaqQEugRBdoHYfR/
 mKh+tpm9sZaoxuP+pEUgSUm2Lcu5tvVrQFwJBiaQ+N4y29N9hf5tLOvjM6pOeL6KL+J5qU
 1qo5fhr7rFRT53RIcGEFK0Ij1AV2tvU=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1581991994; a=rsa-sha256; cv=none;
 b=MGI6VQOvu8EAWalC9UL9Ui2WV7QPa++dULZ0KihCYpDh8agiimRhoreerIOpyf1kE+/9e6
 ohv0yIoE/RKtyvFyVx9+ftiurAYVaHxBydOEDdD8iSgNIWzlSc0MYQTA3QkhqONWb6ukiS
 ZUJH3p09CiXWOnnwUUvzZ1lMpx3isAY=
ARC-Authentication-Results: i=1; diktynna.open-mesh.org; dkim=none;
 spf=pass (diktynna.open-mesh.org: domain of hdanton@sina.com designates
 202.108.3.20 as permitted sender) smtp.mailfrom=hdanton@sina.com
X-Mailman-Approved-At: Tue, 18 Feb 2020 09:03:56 +0100
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
Cc: Hillf Danton <hdanton@sina.com>,
 "b.a.t.m.a.n@lists.open-mesh.org" <b.a.t.m.a.n@lists.open-mesh.org>,
 "syzbot+a98f2016f40b9cd3818a@syzkaller.appspotmail.com"
 <syzbot+a98f2016f40b9cd3818a@syzkaller.appspotmail.com>,
 "syzbot+ac36b6a33c28a491e929@syzkaller.appspotmail.com"
 <syzbot+ac36b6a33c28a491e929@syzkaller.appspotmail.com>
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>


On Mon, 17 Feb 2020 22:16:59 +0800 Sven Eckelmann wrote:
> 
> A transmission scheduling for an interface which is currently dropped by
> batadv_iv_ogm_iface_disable could still be in progress. The B.A.T.M.A.N. V
> is simply cancelling the workqueue item in an synchronous way but this is
> not possible with B.A.T.M.A.N. IV because the OGM submissions are
> intertwined.
> 
> Instead it has to stop submitting the OGM when it detect that the buffer
> pointer is set to NULL.
> 
> Reported-by: syzbot+a98f2016f40b9cd3818a@syzkaller.appspotmail.com
> Reported-by: syzbot+ac36b6a33c28a491e929@syzkaller.appspotmail.com
> Fixes: c6c8fea29769 ("net: Add batman-adv meshing protocol")
> Signed-off-by: Sven Eckelmann <sven@narfation.org>
> ---
> Cc: Hillf Danton <hdanton@sina.com>
> 
> I had this one in the pipeline but didn't find the time to correctly test
> it. You already send your one to syzkaller - do you want to rework your one
> (to also catch the broken submission on the same interface) and submit it?
> Or is this patch also ok for you? If it is, do you want to be mentioned in

Your work looks better, thanks :P
And a Cc is more than enough.

Hillf

> some way or form in this patch?
> ---
>  net/batman-adv/bat_iv_ogm.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/net/batman-adv/bat_iv_ogm.c b/net/batman-adv/bat_iv_ogm.c
> index 5b0b20e6..bd514c36 100644
> --- a/net/batman-adv/bat_iv_ogm.c
> +++ b/net/batman-adv/bat_iv_ogm.c
> @@ -789,6 +789,10 @@ static void batadv_iv_ogm_schedule_buff(struct batadv_hard_iface *hard_iface)
> 
>  	lockdep_assert_held(&hard_iface->bat_iv.ogm_buff_mutex);
> 
> +	/* interface already disabled in batadv_iv_ogm_iface_disable */
> +	if (!*ogm_buff)
> +		return;
> +
>  	/* the interface gets activated here to avoid race conditions between
>  	 * the moment of activating the interface in
>  	 * hardif_activate_interface() where the originator mac is set and
> --
> 2.20.1

