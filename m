Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CAAD11FF7D
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 16 Dec 2019 09:15:30 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id ED84080705;
	Mon, 16 Dec 2019 09:15:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1576484120;
	h=from:from:sender:sender:reply-to:reply-to:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:in-reply-to:in-reply-to:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=FEVBjGg2jDzwNdLeOqB3vziCHgDAp1cHfqpa/7YZ9h8=;
	b=ZuCfehDxf/ax+0cqRHLk2H46OzVpbP7TS1mujmhn9o4DehqCOPz/9iN3LLov4lF+r1XHGI
	IV0TKDPyXRwfHaOjLqu0enl6OcRG7dt10J0PRYKCihqFdL2hioOTAW3L4l4LI8QVXTd6hp
	6kRa63qtuZ6D3PP8wNyrMMSdrmH3knM=
References: <000000000000c71dcf0579b0553f@google.com>
 <000000000000dcc9b10599b3fd5e@google.com>
 <20191215063020.GA11512@mit.edu>
In-Reply-To: <20191215063020.GA11512@mit.edu>
Date: Mon, 16 Dec 2019 09:09:51 +0100
To: "Theodore Y. Ts'o" <tytso@mit.edu>
X-Mailman-Approved-At: Mon, 16 Dec 2019 09:15:16 +0100
MIME-Version: 1.0
Message-ID: <mailman.2.1576484117.654.b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
From: "Dmitry Vyukov via B.A.T.M.A.N" <b.a.t.m.a.n@lists.open-mesh.org>
Precedence: list
Cc: Dmitry Vyukov <dvyukov@google.com>, linux-ext4@vger.kernel.org,
 mareklindner@neomailbox.ch, netdev <netdev@vger.kernel.org>,
 b.a.t.m.a.n@lists.open-mesh.org, a@unstable.cc,
 LKML <linux-kernel@vger.kernel.org>, afd@ti.com,
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
 Andreas Dilger <adilger.kernel@dilger.ca>, sre@kernel.org,
 =?UTF-8?Q?Pali_Roh=C3=A1r?= <pali.rohar@gmail.com>,
 syzbot <syzbot+4a39a025912b265cacef@syzkaller.appspotmail.com>,
 David Miller <davem@davemloft.net>, chris@lapa.com.au
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
Content-Type: multipart/mixed; boundary="===============0707788077015552222=="
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

--===============0707788077015552222==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============0707788077015552222==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Return-Path: <dvyukov@google.com>
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com [IPv6:2607:f8b0:4864:20::743])
	by open-mesh.org (Postfix) with ESMTPS id EFDCA8020F
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 16 Dec 2019 09:10:03 +0100 (CET)
Received: by mail-qk1-x743.google.com with SMTP id k6so2181549qki.5
        for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 16 Dec 2019 00:10:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=MqbnFQHmZrpa0AOsiWXxCoFAk+GRpaNAI5iaz8ghDhM=;
        b=AfhJ9nsmFBX1MBqiprJE/IFswoBgJC23Yc1dCcmT9IbApkHHKTa1/PQO6jniHo07iD
         vqXapbUHNILm0dydcinlSq5ZZtAapZUhM3qm3M9P0t1aC2ONN9ik05hAbWDYxoylZkH8
         bgXzmqQSISsNPQdtUyAD2SSzyG9VEdMvXY7CebzwbHHqBTe4CndZtl0DQ/txUs1nnBiO
         mVz62wQRfVfYn6pB+D1clGCH8/YKZWUgukcbBq/Fr12LOWyq8LhBgIExdnbD5x5XzZ/i
         pFaOyYRG570PEfvvScn9rz8PrPToWjNlZxvUKS2+RfRIM1tq6KB0eqdYKd00yblPIOV6
         1A6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=MqbnFQHmZrpa0AOsiWXxCoFAk+GRpaNAI5iaz8ghDhM=;
        b=M4krnj8hIBlXavSCe8GTrqWGs0sbn18vKjE9FQx2X09+DtuZnO0lx4gJFsqrwUHXYz
         Ya2R1kTVPo0xocWeVpbhdUyMeYkhAFN/aTebaq/95WESwUjl3SSLn6oONCBQAoC6f+vH
         zyQOgeyS8DK4dcfCw2oEgZzPWJcbrr9ndjtMqQSeogcudA/OmUhWrq3fmLbThsvk03QH
         dw+ss5c+sWkPvTxj8KHio9WD0otfwumfXb7tS6YK9bov0af1kNuunK3QGT6vBwoBIS2q
         0R27Q6yUdyfsXNzEBp82VLQDvp4tfqk38fW5PPV/N1toSGKbI1qZfyQWcjKTXfV+G1UX
         3R9Q==
X-Gm-Message-State: APjAAAVMbyTYJKLO2gSCdIJeAQwLWmmXa+HUtYUvGCjCDM54HWmo1JAm
	Te8wzRyC6OZ6SDypgUktWN1P/gE8ASdEfYBae2Rbjw==
X-Google-Smtp-Source: APXvYqxy1jsjrgXIc9KkiY8dqe0Yevuy0Pq7KGGCsDx+L5LcYj27ueeWtQy3pwAK+PyyrQwyqiqzuK0wBqN53GRo1FA=
X-Received: by 2002:ae9:e50c:: with SMTP id w12mr23755470qkf.407.1576483802315;
 Mon, 16 Dec 2019 00:10:02 -0800 (PST)
MIME-Version: 1.0
References: <000000000000c71dcf0579b0553f@google.com> <000000000000dcc9b10599b3fd5e@google.com>
 <20191215063020.GA11512@mit.edu>
In-Reply-To: <20191215063020.GA11512@mit.edu>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Mon, 16 Dec 2019 09:09:51 +0100
Message-ID: <CACT4Y+Zk42DSpSYWjH5AdHEk5s_iJtpU9zm44kiW33zAu7CtBA@mail.gmail.com>
Subject: Re: KASAN: use-after-free Read in ext4_xattr_set_entry (2)
To: "Theodore Y. Ts'o" <tytso@mit.edu>
Cc: syzbot <syzbot+4a39a025912b265cacef@syzkaller.appspotmail.com>, a@unstable.cc, 
	Andreas Dilger <adilger.kernel@dilger.ca>, afd@ti.com, b.a.t.m.a.n@lists.open-mesh.org, 
	chris@lapa.com.au, David Miller <davem@davemloft.net>, linux-ext4@vger.kernel.org, 
	LKML <linux-kernel@vger.kernel.org>, mareklindner@neomailbox.ch, 
	netdev <netdev@vger.kernel.org>, =?UTF-8?Q?Pali_Roh=C3=A1r?= <pali.rohar@gmail.com>, 
	sre@kernel.org, sw@simonwunderlich.de, 
	syzkaller-bugs <syzkaller-bugs@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1576483804;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=MqbnFQHmZrpa0AOsiWXxCoFAk+GRpaNAI5iaz8ghDhM=;
	b=iPXZCzh4cNzmWvf/ksQb7U0h7s1sgpnwj8YWXbtOOAkNStrr2RgwLK+5ewYEGPwhNcZeOn
	znm+8JgxnWKKAdK+xAE+mebpFC98+InGUtSyv2f0u+/LCWKVXkmVuOdpc5+lA/KZT5zwWe
	urapOidluohr9UsNh2PNQLLD5O9mYsQ=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1576483804; a=rsa-sha256;
	cv=none;
	b=W80SMPyR8KtAnT60DRsYy0LkRUnhQSZnv8USR0cJxMgYBTVkswGrXInfF6dyHKljCxkQPI
	67d6CUUs6pRmCsVpf4Prn0D4qLugIr7KBRliZ/ioIl0WcXsguUm2nS6Q984KErAFPiLvbK
	o1yxsQE6ExOUwij5QaheC7hbroqar2w=
ARC-Authentication-Results: i=1;
	open-mesh.org;
	dkim=pass header.d=google.com header.s=20161025 header.b=AfhJ9nsm;
	spf=pass (open-mesh.org: domain of dvyukov@google.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=dvyukov@google.com
X-Mailman-Approved-At: Mon, 16 Dec 2019 09:15:16 +0100

On Sun, Dec 15, 2019 at 7:30 AM Theodore Y. Ts'o <tytso@mit.edu> wrote:
>
> On Sat, Dec 14, 2019 at 05:27:00PM -0800, syzbot wrote:
> > syzbot has bisected this bug to:
> >
> > commit 8835cae5f2abd7f7a3143afe357f416aff5517a4
> > Author: Chris Lapa <chris@lapa.com.au>
> > Date:   Wed Jan 11 01:44:47 2017 +0000
> >
> >     power: supply: bq27xxx: adds specific support for bq27520-g4 revision.
>
> This is pretty clearly nonsense.

Agree.

FTR, it seems that bisection was first diverged by this kernel bug:

testing commit 8835cae5f2abd7f7a3143afe357f416aff5517a4 with gcc (GCC) 5.5.0
run #0: crashed: WARNING in batadv_mcast_mla_update

on top of this non-deterministic kernel build bug kicked in to prevent
detection of "culprit does not affect build":

culprit signature: 2aca06cd9a4175f124f866fe66467cfa96c0bf2a
parent  signature: 8a8dd9ca5726f129b6d36eb6e1f3b78cc7c18b31





>  However let's try this fix:
>
> #syz test: https://git.kernel.org/pub/scm/linux/kernel/git/tytso/ext4.git master
>
> From 9c962de70a52e0b24fba00ee7b8707964d3d1e37 Mon Sep 17 00:00:00 2001
> From: Theodore Ts'o <tytso@mit.edu>
> Date: Sun, 15 Dec 2019 01:09:03 -0500
> Subject: [PATCH] ext4: validate the debug_want_extra_isize mount option at parse time
>
> Instead of setting s_want_extra_size and then making sure that it is a
> valid value afterwards, validate the field before we set it.  This
> avoids races and other problems when remounting the file system.
>
> Signed-off-by: Theodore Ts'o <tytso@mit.edu>
> Reported-by: syzbot+4a39a025912b265cacef@syzkaller.appspotmail.com
> ---
>  fs/ext4/super.c | 143 +++++++++++++++++++++++-------------------------
>  1 file changed, 69 insertions(+), 74 deletions(-)
>
> diff --git a/fs/ext4/super.c b/fs/ext4/super.c
> index b205112ca051..46b6d5b150ac 100644
> --- a/fs/ext4/super.c
> +++ b/fs/ext4/super.c
> @@ -1886,6 +1886,13 @@ static int handle_mount_opt(struct super_block *sb, char *opt, int token,
>                 }
>                 sbi->s_commit_interval = HZ * arg;
>         } else if (token == Opt_debug_want_extra_isize) {
> +               if ((arg & 1) ||
> +                   (arg < 4) ||
> +                   (arg > (sbi->s_inode_size - EXT4_GOOD_OLD_INODE_SIZE))) {
> +                       ext4_msg(sb, KERN_ERR,
> +                                "Invalid want_extra_isize %d", arg);
> +                       return -1;
> +               }
>                 sbi->s_want_extra_isize = arg;
>         } else if (token == Opt_max_batch_time) {
>                 sbi->s_max_batch_time = arg;
> @@ -3540,40 +3547,6 @@ int ext4_calculate_overhead(struct super_block *sb)
>         return 0;
>  }
>
> -static void ext4_clamp_want_extra_isize(struct super_block *sb)
> -{
> -       struct ext4_sb_info *sbi = EXT4_SB(sb);
> -       struct ext4_super_block *es = sbi->s_es;
> -       unsigned def_extra_isize = sizeof(struct ext4_inode) -
> -                                               EXT4_GOOD_OLD_INODE_SIZE;
> -
> -       if (sbi->s_inode_size == EXT4_GOOD_OLD_INODE_SIZE) {
> -               sbi->s_want_extra_isize = 0;
> -               return;
> -       }
> -       if (sbi->s_want_extra_isize < 4) {
> -               sbi->s_want_extra_isize = def_extra_isize;
> -               if (ext4_has_feature_extra_isize(sb)) {
> -                       if (sbi->s_want_extra_isize <
> -                           le16_to_cpu(es->s_want_extra_isize))
> -                               sbi->s_want_extra_isize =
> -                                       le16_to_cpu(es->s_want_extra_isize);
> -                       if (sbi->s_want_extra_isize <
> -                           le16_to_cpu(es->s_min_extra_isize))
> -                               sbi->s_want_extra_isize =
> -                                       le16_to_cpu(es->s_min_extra_isize);
> -               }
> -       }
> -       /* Check if enough inode space is available */
> -       if ((sbi->s_want_extra_isize > sbi->s_inode_size) ||
> -           (EXT4_GOOD_OLD_INODE_SIZE + sbi->s_want_extra_isize >
> -                                                       sbi->s_inode_size)) {
> -               sbi->s_want_extra_isize = def_extra_isize;
> -               ext4_msg(sb, KERN_INFO,
> -                        "required extra inode space not available");
> -       }
> -}
> -
>  static void ext4_set_resv_clusters(struct super_block *sb)
>  {
>         ext4_fsblk_t resv_clusters;
> @@ -3781,6 +3754,68 @@ static int ext4_fill_super(struct super_block *sb, void *data, int silent)
>          */
>         sbi->s_li_wait_mult = EXT4_DEF_LI_WAIT_MULT;
>
> +       if (le32_to_cpu(es->s_rev_level) == EXT4_GOOD_OLD_REV) {
> +               sbi->s_inode_size = EXT4_GOOD_OLD_INODE_SIZE;
> +               sbi->s_first_ino = EXT4_GOOD_OLD_FIRST_INO;
> +       } else {
> +               sbi->s_inode_size = le16_to_cpu(es->s_inode_size);
> +               sbi->s_first_ino = le32_to_cpu(es->s_first_ino);
> +               if (sbi->s_first_ino < EXT4_GOOD_OLD_FIRST_INO) {
> +                       ext4_msg(sb, KERN_ERR, "invalid first ino: %u",
> +                                sbi->s_first_ino);
> +                       goto failed_mount;
> +               }
> +               if ((sbi->s_inode_size < EXT4_GOOD_OLD_INODE_SIZE) ||
> +                   (!is_power_of_2(sbi->s_inode_size)) ||
> +                   (sbi->s_inode_size > blocksize)) {
> +                       ext4_msg(sb, KERN_ERR,
> +                              "unsupported inode size: %d",
> +                              sbi->s_inode_size);
> +                       goto failed_mount;
> +               }
> +               /*
> +                * i_atime_extra is the last extra field available for
> +                * [acm]times in struct ext4_inode. Checking for that
> +                * field should suffice to ensure we have extra space
> +                * for all three.
> +                */
> +               if (sbi->s_inode_size >= offsetof(struct ext4_inode, i_atime_extra) +
> +                       sizeof(((struct ext4_inode *)0)->i_atime_extra)) {
> +                       sb->s_time_gran = 1;
> +                       sb->s_time_max = EXT4_EXTRA_TIMESTAMP_MAX;
> +               } else {
> +                       sb->s_time_gran = NSEC_PER_SEC;
> +                       sb->s_time_max = EXT4_NON_EXTRA_TIMESTAMP_MAX;
> +               }
> +               sb->s_time_min = EXT4_TIMESTAMP_MIN;
> +       }
> +       if (sbi->s_inode_size > EXT4_GOOD_OLD_INODE_SIZE) {
> +               sbi->s_want_extra_isize = sizeof(struct ext4_inode) -
> +                       EXT4_GOOD_OLD_INODE_SIZE;
> +               if (ext4_has_feature_extra_isize(sb)) {
> +                       unsigned v, max = (sbi->s_inode_size -
> +                                          EXT4_GOOD_OLD_INODE_SIZE);
> +
> +                       v = le16_to_cpu(es->s_want_extra_isize);
> +                       if (v > max) {
> +                               ext4_msg(sb, KERN_ERR,
> +                                        "bad s_want_extra_isize: %d", v);
> +                               goto failed_mount;
> +                       }
> +                       if (sbi->s_want_extra_isize < v)
> +                               sbi->s_want_extra_isize = v;
> +
> +                       v = le16_to_cpu(es->s_min_extra_isize);
> +                       if (v > max) {
> +                               ext4_msg(sb, KERN_ERR,
> +                                        "bad s_min_extra_isize: %d", v);
> +                               goto failed_mount;
> +                       }
> +                       if (sbi->s_want_extra_isize < v)
> +                               sbi->s_want_extra_isize = v;
> +               }
> +       }
> +
>         if (sbi->s_es->s_mount_opts[0]) {
>                 char *s_mount_opts = kstrndup(sbi->s_es->s_mount_opts,
>                                               sizeof(sbi->s_es->s_mount_opts),
> @@ -4019,42 +4054,6 @@ static int ext4_fill_super(struct super_block *sb, void *data, int silent)
>                                                       has_huge_files);
>         sb->s_maxbytes = ext4_max_size(sb->s_blocksize_bits, has_huge_files);
>
> -       if (le32_to_cpu(es->s_rev_level) == EXT4_GOOD_OLD_REV) {
> -               sbi->s_inode_size = EXT4_GOOD_OLD_INODE_SIZE;
> -               sbi->s_first_ino = EXT4_GOOD_OLD_FIRST_INO;
> -       } else {
> -               sbi->s_inode_size = le16_to_cpu(es->s_inode_size);
> -               sbi->s_first_ino = le32_to_cpu(es->s_first_ino);
> -               if (sbi->s_first_ino < EXT4_GOOD_OLD_FIRST_INO) {
> -                       ext4_msg(sb, KERN_ERR, "invalid first ino: %u",
> -                                sbi->s_first_ino);
> -                       goto failed_mount;
> -               }
> -               if ((sbi->s_inode_size < EXT4_GOOD_OLD_INODE_SIZE) ||
> -                   (!is_power_of_2(sbi->s_inode_size)) ||
> -                   (sbi->s_inode_size > blocksize)) {
> -                       ext4_msg(sb, KERN_ERR,
> -                              "unsupported inode size: %d",
> -                              sbi->s_inode_size);
> -                       goto failed_mount;
> -               }
> -               /*
> -                * i_atime_extra is the last extra field available for [acm]times in
> -                * struct ext4_inode. Checking for that field should suffice to ensure
> -                * we have extra space for all three.
> -                */
> -               if (sbi->s_inode_size >= offsetof(struct ext4_inode, i_atime_extra) +
> -                       sizeof(((struct ext4_inode *)0)->i_atime_extra)) {
> -                       sb->s_time_gran = 1;
> -                       sb->s_time_max = EXT4_EXTRA_TIMESTAMP_MAX;
> -               } else {
> -                       sb->s_time_gran = NSEC_PER_SEC;
> -                       sb->s_time_max = EXT4_NON_EXTRA_TIMESTAMP_MAX;
> -               }
> -
> -               sb->s_time_min = EXT4_TIMESTAMP_MIN;
> -       }
> -
>         sbi->s_desc_size = le16_to_cpu(es->s_desc_size);
>         if (ext4_has_feature_64bit(sb)) {
>                 if (sbi->s_desc_size < EXT4_MIN_DESC_SIZE_64BIT ||
> @@ -4503,8 +4502,6 @@ static int ext4_fill_super(struct super_block *sb, void *data, int silent)
>         } else if (ret)
>                 goto failed_mount4a;
>
> -       ext4_clamp_want_extra_isize(sb);
> -
>         ext4_set_resv_clusters(sb);
>
>         err = ext4_setup_system_zone(sb);
> @@ -5292,8 +5289,6 @@ static int ext4_remount(struct super_block *sb, int *flags, char *data)
>                 goto restore_opts;
>         }
>
> -       ext4_clamp_want_extra_isize(sb);
> -
>         if ((old_opts.s_mount_opt & EXT4_MOUNT_JOURNAL_CHECKSUM) ^
>             test_opt(sb, JOURNAL_CHECKSUM)) {
>                 ext4_msg(sb, KERN_ERR, "changing journal_checksum "
> --
> 2.24.1
>
> --
> You received this message because you are subscribed to the Google Groups "syzkaller-bugs" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to syzkaller-bugs+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/syzkaller-bugs/20191215063020.GA11512%40mit.edu.

--===============0707788077015552222==--
