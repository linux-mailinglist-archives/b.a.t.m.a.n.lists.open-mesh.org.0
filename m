Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id CA64F3AFC8
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 10 Jun 2019 09:37:42 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id DC4D6826FD;
	Mon, 10 Jun 2019 09:37:39 +0200 (CEST)
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com
 [IPv6:2607:f8b0:4864:20::341])
 by open-mesh.org (Postfix) with ESMTPS id 09B4780A35
 for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 10 Jun 2019 09:37:37 +0200 (CEST)
Received: by mail-ot1-x341.google.com with SMTP id z24so7436376oto.1
 for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 10 Jun 2019 00:37:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=E0zAd1IUXz5g+5Rct4kr7YCrYCFj9+u9BAIWwRhn1r4=;
 b=PnlVyP0ZJ0YAN7jcdxwJRhOOZq8aPzqWnVXrH7cFA9GrD6G6Qdm7EB++eh4K8Yf49L
 6phVnqpTN9WDJ+Ru0udkT+ZAYRncVOiT5RxEGA02dW2XX2oyyKTRreieYHgySWAXQCL8
 5Z/Delr2JYaY8rcovggsGq4KdNoKvY+6lOgWnWlSOQPg/gWfEkAlJXjigubsSJZim8hU
 lSb4sDe1fVM0GX0flAzi7y53l7zPkIuaMao9v2fOSgf/yQDRjVY53oYwdcqrwg5B/ZlX
 aegwqBktzrS7W4Lh4EJHJCtdRu/hZpJXj3XuKdc0V9S7M95c0fxEdxEtV5CcJTGAqOMt
 QprA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=E0zAd1IUXz5g+5Rct4kr7YCrYCFj9+u9BAIWwRhn1r4=;
 b=qjYWcASsXuLCB6ez1M3uowg+6rDfd1jphTiJJVg2oCs92ZWZQ82tWtTlDGHm/GIvY+
 8HTMMp0J2x2H0jqGL6pR46rgkh+x0KkmcLP0pVDylTpHyKfWRWlSZiYi3aFcISxZOrdU
 cdCjI3E0aUm158SzO1399qx++r6jJ3+G2M+/zQyWuXYyzSm4A5Z2QOIACZash/gNdjnV
 h+w8LsvDGWb/OVMlSMTLOH9VZ8egUiwA18q2RVfF8mJoBLiTJbk53JK8Duqm7/IPoxOM
 MBDUQfpk3AyKq81lsF16hEzHiq8Ux4PWi/y1dohtJ4PTNQhXmcJ90ZVTSsj7tMs+lfvn
 1DFQ==
X-Gm-Message-State: APjAAAVb8NwICdMljkuDbFDjI4Pn9szD3XQ4AMkcriRLHDAW0MYSTaYO
 Il7OHESjnbc4nlDBrueK38mSuxebViCXxYOIOV15hO0jMV4=
X-Google-Smtp-Source: APXvYqw3SiZtKGzYK446fxrf9MeSZRkp6dMJvKMy6TdwzXbo3gEDYTwqy+qyYXdegCCBI0GrWTF36QvZhU/sAn6S+8M=
X-Received: by 2002:a05:6830:1558:: with SMTP id
 l24mr23285228otp.352.1560152255510; 
 Mon, 10 Jun 2019 00:37:35 -0700 (PDT)
MIME-Version: 1.0
References: <20190609101922.2366-1-treffer@measite.de>
 <3224708.U1DPrJmi8S@rousseau>
 <accc8852-ded3-188b-b72e-313d1b462d18@measite.de>
 <4907494.lMUJSmCnaO@rousseau>
In-Reply-To: <4907494.lMUJSmCnaO@rousseau>
From: =?UTF-8?B?0JrQuNGA0LjQu9C7INCb0YPQutC+0L3QuNC9?= <klukonin@gmail.com>
Date: Mon, 10 Jun 2019 12:37:08 +0500
Message-ID: <CALYz8yoqh8X3hZcafrZAauFT4OZtQZ9r92G+9zW9__ir4m5How@mail.gmail.com>
Subject: Re: [PATCH] batman-adv: Use wifi rx/tx as fallback throughput
To: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 2.1.23
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
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

Hello, colleagues.

I have a working solution for this problem. It is not batman-related,
but I decided to share it with you right here.
Please let me clarify some  details.

1) Some ath10k firmwares (10.2) do not export tx bitrate. So we can't
rely on it.
2) Throughput estimation is better to inject from userspace, rather
than make batman estimate it from unreliable sources.
3) Here is the patch for mac80211 We made for ath10k and such drivers
that do not export expected throughput value.

I also think it's a better way because a lot of drivers do not work
with mac80211 (wil6210). And all driver-dependent math can be easily
changed on-the-fly.


Here is simple patch that make possible this expected throughput injection.

--- a/net/mac80211/debugfs_sta.c
+++ b/net/mac80211/debugfs_sta.c
@@ -12,6 +12,7 @@

 #include <linux/debugfs.h>
 #include <linux/ieee80211.h>
+#include <net/mac80211.h>
 #include "ieee80211_i.h"
 #include "debugfs.h"
 #include "debugfs_sta.h"
@@ -20,6 +21,8 @@

 /* sta attributtes */

+#define DEF_THR_BUFF_SIZE sizeof("4294967295")
+
 #define STA_READ(name, field, format_string)                \
 static ssize_t sta_ ##name## _read(struct file *file,            \
                    char __user *userbuf,        \
@@ -490,6 +493,60 @@ static ssize_t sta_vht_capa_read(struct
 STA_OPS(vht_capa);


+static ssize_t sta_def_thr_read(struct file *file, char __user *userbuf,
+                 size_t count, loff_t *ppos)
+{
+    int ret =3D 0;
+    char buf[DEF_THR_BUFF_SIZE] =3D { 0 };
+    struct sta_info *sta =3D file->private_data;
+
+    rcu_read_lock();
+
+    // Access synchronization to struct sta_info is documented in
net/mac80211/sta_info.c:34
+    ret =3D snprintf(buf, DEF_THR_BUFF_SIZE - 1, "%u", sta->def_thr);
+
+    rcu_read_unlock();
+
+    if(ret >=3D DEF_THR_BUFF_SIZE)
+        return -EFAULT;
+
+    buf[DEF_THR_BUFF_SIZE - 1] =3D '\0';
+
+    return simple_read_from_buffer(userbuf, count, ppos, buf, ret);
+}
+
+static ssize_t sta_def_thr_write(struct file *file, const char __user *use=
rbuf,
+                 size_t count, loff_t *ppos)
+{
+    u32 thr =3D 0;
+    int ret =3D 0;
+    char buf[DEF_THR_BUFF_SIZE] =3D { 0 };
+    struct sta_info *sta =3D file->private_data;
+
+    if(count >=3D DEF_THR_BUFF_SIZE)
+        return -EINVAL;
+
+    if (copy_from_user(buf, userbuf, count))
+        return -EFAULT;
+
+    buf[DEF_THR_BUFF_SIZE - 1] =3D '\0';
+
+    ret =3D sscanf(buf, "%u", &thr);
+    if(ret !=3D 1)
+        return -EINVAL;
+
+    rcu_read_lock();
+
+    // Access synchronization to struct sta_info is documented in
net/mac80211/sta_info.c:34
+    sta->def_thr =3D thr;
+    ieee80211_sta_set_expected_throughput(&sta->sta, thr);
+
+    rcu_read_unlock();
+
+    return count;
+}
+STA_OPS_RW(def_thr);
+
 #define DEBUGFS_ADD(name) \
     debugfs_create_file(#name, 0400, \
         sta->debugfs_dir, sta, &sta_ ##name## _ops);
@@ -534,6 +591,7 @@ void ieee80211_sta_debugfs_add(struct st
     DEBUGFS_ADD(agg_status);
     DEBUGFS_ADD(ht_capa);
     DEBUGFS_ADD(vht_capa);
+    DEBUGFS_ADD(def_thr);

     DEBUGFS_ADD_COUNTER(rx_duplicates, rx_stats.num_duplicates);
     DEBUGFS_ADD_COUNTER(rx_fragments, rx_stats.fragments);
--- a/net/mac80211/sta_info.c
+++ b/net/mac80211/sta_info.c
@@ -2305,6 +2305,9 @@ u32 sta_get_expected_throughput(struct s
     else
         thr =3D drv_get_expected_throughput(local, sta);

+    if(thr =3D=3D 0 && sta->def_thr !=3D 0)
+        thr =3D sta->def_thr;
+
     return thr;
 }

--- b/net/mac80211/sta_info.h
+++ a/net/mac80211/sta_info.h
@@ -509,6 +509,7 @@
     struct work_struct drv_deliver_wk;

     u16 listen_interval;
+    u32 def_thr;

     bool dead;
     bool removed;



Best Regards,
Lukonin Kirill

=D0=BF=D0=BD, 10 =D0=B8=D1=8E=D0=BD. 2019 =D0=B3. =D0=B2 08:32, Marek Lindn=
er <mareklindner@neomailbox.ch>:
>
> On Sunday, 9 June 2019 20:45:06 HKT Ren=C3=A9 Treffer wrote:
> > I am testing this on devices with ath9k (2.4GHz) and ath10k (5GHz), so =
I
> > was looking at the estimates I get from ath9k. Here is a dump from my
> >
> > home network on 2.4GHz/ath9k and what rx/3 would give us:
> > > signal  tx     rx     expect  tx/3    min(tx/3,(rx+tx)/2/3)
> > > -77     13.0   43.3   6.682   4.333
> > > -57     130.0  117.0  44.677  43.333  41.166
> > > -53     117.0  130.0  42.388  39.0
> > > -82     43.3   6.5    13.366  14.433  8.3      (!!!)
> > > -63     52.0   86.7   26.733  17.333
> > > -58     130.0  173.3  29.21   43.333            !!!
> > > -82     6.5    43.3   2.197   2.166
> > > -48     104.0  65.0   40.191  34.666  28.166
> > > -69     57.8   13.0   20.49   19.266  11.8
> > > -58     86.7   52.0   33.507  28.9    23.116
> > > -58     52.0   1.0    37.994  17.333  8.833
> > > -56     115.6  144.4  29.21   38.533            !!!
>
>
> To confirm my understanding: What this table shows are raw tx/rx link est=
imated
> values ? None of these numbers compares to Minstrel HT expected throughpu=
t or
> actual throughput ?
>
>
> > Cases where the rx/tx estimate would be higher are marked with !!!.
>
> I also don't quite understand what the '!!!' thing is trying to indicate.=
 What
> is being compared ? But it may be due to my misunderstandings above.
>
> In my small test setup with one ath10k device meshing with ath9k over 2.4=
GHz,
> your tx / 3 formula seems to be quite accurate (had removed the rx part).
>
> # batctl o (your magic formula)
> * ac:86:74:00:38:06    0.930s (       45.7)  ac:86:74:00:38:06 [    mesh2=
4]
>
> # batctl tp ac:86:74:00:38:06 (actual throughput)
> Test duration 10440ms.
> Sent 58393512 Bytes.
> Throughput: 5.33 MB/s (44.75 Mbps)
>
> What would be interesting is how the numbers produced by 'tx / 3' compare=
 to
> either the actual throughput (can easily be tested with the throughput me=
ter)
> or Minstrel expected throughput.
>
>
> > Why bother and look at rx at all? Asymmetric routing should already
> > work. I was bit concerned about highly asymmetric links, especially
> > those where the path back might not work. It might not be worth it thou=
gh.
>
> Generally, the return path might be entirely different. Batman-adv does n=
ot
> enforce or even endorse symetric paths. If there is better path for the r=
eturn
> route, batman-adv will choose the better path based on tx from the sender=
 and
> if only one return path exists, we don't care anyway ..
>
> Cheers,
> Marek
