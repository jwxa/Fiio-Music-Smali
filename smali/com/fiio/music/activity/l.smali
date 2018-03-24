.class final Lcom/fiio/music/activity/l;
.super Ljava/lang/Object;
.source "AddPlayListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/AddPlayListActivity;

.field private final synthetic b:Landroid/widget/EditText;

.field private final synthetic c:I

.field private final synthetic d:I

.field private final synthetic e:Ljava/lang/String;

.field private final synthetic f:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/AddPlayListActivity;Landroid/widget/EditText;Ljava/lang/String;Landroid/app/AlertDialog;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/l;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    iput-object p2, p0, Lcom/fiio/music/activity/l;->b:Landroid/widget/EditText;

    iput v0, p0, Lcom/fiio/music/activity/l;->c:I

    iput v0, p0, Lcom/fiio/music/activity/l;->d:I

    iput-object p3, p0, Lcom/fiio/music/activity/l;->e:Ljava/lang/String;

    iput-object p4, p0, Lcom/fiio/music/activity/l;->f:Landroid/app/AlertDialog;

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 223
    iget-object v0, p0, Lcom/fiio/music/activity/l;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 224
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 225
    invoke-static {v0}, Lcom/fiio/music/util/bw;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    iget-object v0, p0, Lcom/fiio/music/activity/l;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/l;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/AddPlayListActivity;->g(Lcom/fiio/music/activity/AddPlayListActivity;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/l;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    .line 228
    iget-object v3, p0, Lcom/fiio/music/activity/l;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/AddPlayListActivity;->d(Lcom/fiio/music/activity/AddPlayListActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0075

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 227
    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/AddPlayListActivity;->a(Lcom/fiio/music/activity/AddPlayListActivity;Landroid/widget/Toast;)V

    .line 255
    :goto_0
    return-void

    .line 230
    :cond_0
    new-instance v1, Lcom/fiio/music/entity/PlayerList;

    invoke-direct {v1}, Lcom/fiio/music/entity/PlayerList;-><init>()V

    .line 231
    invoke-virtual {v1, v0}, Lcom/fiio/music/entity/PlayerList;->setName(Ljava/lang/String;)V

    .line 232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/fiio/music/entity/PlayerList;->setDate(J)V

    .line 233
    const/4 v0, -0x1

    .line 234
    iget v2, p0, Lcom/fiio/music/activity/l;->c:I

    if-nez v2, :cond_2

    .line 235
    iget-object v0, p0, Lcom/fiio/music/activity/l;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/AddPlayListActivity;->h(Lcom/fiio/music/activity/AddPlayListActivity;)Lcom/fiio/music/b/j;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/fiio/music/b/j;->a(Lcom/fiio/music/entity/PlayerList;)J

    move-result-wide v0

    long-to-int v0, v0

    .line 240
    :cond_1
    :goto_1
    if-lez v0, :cond_3

    .line 241
    iget-object v0, p0, Lcom/fiio/music/activity/l;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/l;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/AddPlayListActivity;->g(Lcom/fiio/music/activity/AddPlayListActivity;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/l;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/fiio/music/activity/l;->e:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 242
    iget-object v4, p0, Lcom/fiio/music/activity/l;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    invoke-static {v4}, Lcom/fiio/music/activity/AddPlayListActivity;->d(Lcom/fiio/music/activity/AddPlayListActivity;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c00ff

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 241
    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/AddPlayListActivity;->a(Lcom/fiio/music/activity/AddPlayListActivity;Landroid/widget/Toast;)V

    .line 243
    iget-object v0, p0, Lcom/fiio/music/activity/l;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/AddPlayListActivity;->i(Lcom/fiio/music/activity/AddPlayListActivity;)Lcom/fiio/music/adapter/PlayListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/l;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/AddPlayListActivity;->h(Lcom/fiio/music/activity/AddPlayListActivity;)Lcom/fiio/music/b/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/b/j;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Lcom/fiio/music/adapter/PlayListAdapter;->setDate(Ljava/util/List;Z)V

    .line 244
    iget-object v0, p0, Lcom/fiio/music/activity/l;->f:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 245
    iget-object v0, p0, Lcom/fiio/music/activity/l;->f:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0

    .line 236
    :cond_2
    iget v2, p0, Lcom/fiio/music/activity/l;->c:I

    if-ne v2, v6, :cond_1

    .line 237
    iget v0, p0, Lcom/fiio/music/activity/l;->d:I

    invoke-virtual {v1, v0}, Lcom/fiio/music/entity/PlayerList;->setId(I)V

    .line 238
    iget-object v0, p0, Lcom/fiio/music/activity/l;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/AddPlayListActivity;->h(Lcom/fiio/music/activity/AddPlayListActivity;)Lcom/fiio/music/b/j;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/fiio/music/b/j;->b(Lcom/fiio/music/entity/PlayerList;)I

    move-result v0

    goto :goto_1

    .line 247
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/activity/l;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/l;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/AddPlayListActivity;->g(Lcom/fiio/music/activity/AddPlayListActivity;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/l;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/fiio/music/activity/l;->e:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 248
    iget-object v4, p0, Lcom/fiio/music/activity/l;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    invoke-static {v4}, Lcom/fiio/music/activity/AddPlayListActivity;->d(Lcom/fiio/music/activity/AddPlayListActivity;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0100

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 247
    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/AddPlayListActivity;->a(Lcom/fiio/music/activity/AddPlayListActivity;Landroid/widget/Toast;)V

    goto/16 :goto_0

    .line 252
    :cond_4
    iget-object v0, p0, Lcom/fiio/music/activity/l;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/l;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/AddPlayListActivity;->g(Lcom/fiio/music/activity/AddPlayListActivity;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/l;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    .line 253
    iget-object v3, p0, Lcom/fiio/music/activity/l;->a:Lcom/fiio/music/activity/AddPlayListActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/AddPlayListActivity;->d(Lcom/fiio/music/activity/AddPlayListActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0076

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 252
    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/AddPlayListActivity;->a(Lcom/fiio/music/activity/AddPlayListActivity;Landroid/widget/Toast;)V

    goto/16 :goto_0
.end method
