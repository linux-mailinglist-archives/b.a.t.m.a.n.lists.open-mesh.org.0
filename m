Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 194691F9022
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 15 Jun 2020 09:42:01 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id E345080BE7;
	Mon, 15 Jun 2020 09:41:59 +0200 (CEST)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id CF4A3800DB
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 15 Jun 2020 09:38:40 +0200 (CEST)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx2.suse.de (Postfix) with ESMTP id C138FAE39;
	Mon, 15 Jun 2020 07:38:42 +0000 (UTC)
Received: by quack2.suse.cz (Postfix, from userid 1000)
	id E64861E1289; Mon, 15 Jun 2020 09:38:36 +0200 (CEST)
Date: Mon, 15 Jun 2020 09:38:36 +0200
From: Jan Kara <jack@suse.cz>
To: "Eric W. Biederman" <ebiederm@xmission.com>
Subject: Re: [PATCH] proc: Use new_inode not new_inode_pseudo
Message-ID: <20200615073836.GD9449@quack2.suse.cz>
References: <000000000000d788c905a7dfa3f4@google.com>
 <87mu58p02g.fsf@x220.int.ebiederm.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87mu58p02g.fsf@x220.int.ebiederm.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1592206720;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=WWcoDBZiWRHKWZl2ZgKFyo23Eh3Fygvp2W36O+K9j+w=;
	b=WF8lc0pcaxFHanwxp1HXqEmvRvAy+BP8DHXUYXVsUFbXZVNHHUbQGL7Op54Ax/cc6mykqK
	srsxnhOkoQxOga+LffXt3wzN9LLaneaXBdBMlRyXWBZJeeYfzj8stO0Bc12O7mo3dNzV4l
	eS8Ff5Q4hCpYdMJI7GDm22OCHjX7egY=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1592206720; a=rsa-sha256;
	cv=none;
	b=k0nsRrQ5dcHxd5xClqtjZuPpeVGqS0nxPpM3pdXADdr8io4SGyxAVe3L7RU+jlCNPy4f+z
	CEksfNUtEosHq9L3VBVvJEQCxbnnQty7AmPEKnEoSobEqKys3aSvk4QAgyXwp6JxPb3495
	PHNBeWRb3yYc88BsvwfVPx6B3doRnZ8=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none;
	spf=pass (diktynna.open-mesh.org: domain of jack@suse.cz designates 195.135.220.15 as permitted sender) smtp.mailfrom=jack@suse.cz
X-MailFrom: jack@suse.cz
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: N25QII3PYLDVY4ZTNUJM4V3NQWJXMFGI
X-Message-ID-Hash: N25QII3PYLDVY4ZTNUJM4V3NQWJXMFGI
X-Mailman-Approved-At: Mon, 15 Jun 2020 07:41:58 +0200
CC: syzbot <syzbot+7d2debdcdb3cb93c1e5e@syzkaller.appspotmail.com>, a@unstable.cc, adobriyan@gmail.com, akpm@linux-foundation.org, alex.dewar@gmx.co.uk, amir73il@gmail.com, anton.ivanov@cambridgegreys.com, b.a.t.m.a.n@lists.open-mesh.org, davem@davemloft.net, jack@suse.cz, jdike@addtoit.com, kuba@kernel.org, linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, linux-um@lists.infradead.org, mareklindner@neomailbox.ch, netdev@vger.kernel.org, richard@nod.at, sfr@canb.auug.org.au, syzkaller-bugs@googlegroups.com
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/N25QII3PYLDVY4ZTNUJM4V3NQWJXMFGI/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On Fri 12-06-20 14:15:51, Eric W. Biederman wrote:
> 
> Recently syzbot reported that unmounting proc when there is an ongoing
> inotify watch on the root directory of proc could result in a use
> after free when the watch is removed after the unmount of proc
> when the watcher exits.
> 
> Commit 69879c01a0c3 ("proc: Remove the now unnecessary internal mount
> of proc") made it easier to unmount proc and allowed syzbot to see the
> problem, but looking at the code it has been around for a long time.
> 
> Looking at the code the fsnotify watch should have been removed by
> fsnotify_sb_delete in generic_shutdown_super.  Unfortunately the inode
> was allocated with new_inode_pseudo instead of new_inode so the inode
> was not on the sb->s_inodes list.  Which prevented
> fsnotify_unmount_inodes from finding the inode and removing the watch
> as well as made it so the "VFS: Busy inodes after unmount" warning
> could not find the inodes to warn about them.
> 
> Make all of the inodes in proc visible to generic_shutdown_super,
> and fsnotify_sb_delete by using new_inode instead of new_inode_pseudo.
> The only functional difference is that new_inode places the inodes
> on the sb->s_inodes list.
> 
> I wrote a small test program and I can verify that without changes it
> can trigger this issue, and by replacing new_inode_pseudo with
> new_inode the issues goes away.
> 
> Cc: stable@vger.kernel.org
> Link: https://lkml.kernel.org/r/000000000000d788c905a7dfa3f4@google.com
> Reported-by: syzbot+7d2debdcdb3cb93c1e5e@syzkaller.appspotmail.com
> Fixes: 0097875bd415 ("proc: Implement /proc/thread-self to point at the directory of the current thread")
> Fixes: 021ada7dff22 ("procfs: switch /proc/self away from proc_dir_entry")
> Fixes: 51f0885e5415 ("vfs,proc: guarantee unique inodes in /proc")
> Signed-off-by: "Eric W. Biederman" <ebiederm@xmission.com>

Thanks for analysing this! I agree with the analysis and the patch looks
good to me. You can add:

Reviewed-by: Jan Kara <jack@suse.cz>

								Honza

> ---
>  fs/proc/inode.c       | 2 +-
>  fs/proc/self.c        | 2 +-
>  fs/proc/thread_self.c | 2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/fs/proc/inode.c b/fs/proc/inode.c
> index f40c2532c057..28d6105e908e 100644
> --- a/fs/proc/inode.c
> +++ b/fs/proc/inode.c
> @@ -617,7 +617,7 @@ const struct inode_operations proc_link_inode_operations = {
>  
>  struct inode *proc_get_inode(struct super_block *sb, struct proc_dir_entry *de)
>  {
> -	struct inode *inode = new_inode_pseudo(sb);
> +	struct inode *inode = new_inode(sb);
>  
>  	if (inode) {
>  		inode->i_ino = de->low_ino;
> diff --git a/fs/proc/self.c b/fs/proc/self.c
> index ca5158fa561c..72cd69bcaf4a 100644
> --- a/fs/proc/self.c
> +++ b/fs/proc/self.c
> @@ -43,7 +43,7 @@ int proc_setup_self(struct super_block *s)
>  	inode_lock(root_inode);
>  	self = d_alloc_name(s->s_root, "self");
>  	if (self) {
> -		struct inode *inode = new_inode_pseudo(s);
> +		struct inode *inode = new_inode(s);
>  		if (inode) {
>  			inode->i_ino = self_inum;
>  			inode->i_mtime = inode->i_atime = inode->i_ctime = current_time(inode);
> diff --git a/fs/proc/thread_self.c b/fs/proc/thread_self.c
> index ac284f409568..a553273fbd41 100644
> --- a/fs/proc/thread_self.c
> +++ b/fs/proc/thread_self.c
> @@ -43,7 +43,7 @@ int proc_setup_thread_self(struct super_block *s)
>  	inode_lock(root_inode);
>  	thread_self = d_alloc_name(s->s_root, "thread-self");
>  	if (thread_self) {
> -		struct inode *inode = new_inode_pseudo(s);
> +		struct inode *inode = new_inode(s);
>  		if (inode) {
>  			inode->i_ino = thread_self_inum;
>  			inode->i_mtime = inode->i_atime = inode->i_ctime = current_time(inode);
> -- 
> 2.20.1
> 
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR
