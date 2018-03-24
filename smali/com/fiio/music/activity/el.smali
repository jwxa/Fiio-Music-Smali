.class final Lcom/fiio/music/activity/el;
.super Ljava/lang/Object;
.source "MyMusicListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/MyMusicListActivity;

.field private final synthetic b:Landroid/widget/EditText;

.field private final synthetic c:I

.field private final synthetic d:I

.field private final synthetic e:Ljava/lang/String;

.field private final synthetic f:Ljava/lang/String;

.field private final synthetic g:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/MyMusicListActivity;Landroid/widget/EditText;IILjava/lang/String;Ljava/lang/String;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/el;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    iput-object p2, p0, Lcom/fiio/music/activity/el;->b:Landroid/widget/EditText;

    iput p3, p0, Lcom/fiio/music/activity/el;->c:I

    iput p4, p0, Lcom/fiio/music/activity/el;->d:I

    iput-object p5, p0, Lcom/fiio/music/activity/el;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/fiio/music/activity/el;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/fiio/music/activity/el;->g:Landroid/app/AlertDialog;

    .line 968
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 972
    iget-object v0, p0, Lcom/fiio/music/activity/el;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 973
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 975
    invoke-static {v1}, Lcom/fiio/music/util/bw;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 976
    iget-object v0, p0, Lcom/fiio/music/activity/el;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/el;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$13(Lcom/fiio/music/activity/MyMusicListActivity;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/el;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    .line 977
    iget-object v3, p0, Lcom/fiio/music/activity/el;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/MyMusicListActivity;->access$1(Lcom/fiio/music/activity/MyMusicListActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0075

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 976
    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$14(Lcom/fiio/music/activity/MyMusicListActivity;Landroid/widget/Toast;)V

    .line 1009
    :goto_0
    return-void

    .line 979
    :cond_0
    new-instance v2, Lcom/fiio/music/entity/PlayerList;

    invoke-direct {v2}, Lcom/fiio/music/entity/PlayerList;-><init>()V

    .line 980
    invoke-virtual {v2, v1}, Lcom/fiio/music/entity/PlayerList;->setName(Ljava/lang/String;)V

    .line 981
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/fiio/music/entity/PlayerList;->setDate(J)V

    .line 982
    const/4 v0, -0x1

    .line 983
    iget v3, p0, Lcom/fiio/music/activity/el;->c:I

    if-nez v3, :cond_2

    .line 984
    iget-object v0, p0, Lcom/fiio/music/activity/el;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$18(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/b/j;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/fiio/music/b/j;->a(Lcom/fiio/music/entity/PlayerList;)J

    move-result-wide v2

    long-to-int v0, v2

    .line 985
    if-lez v0, :cond_1

    .line 986
    new-instance v2, Lcom/fiio/music/util/bw;

    invoke-direct {v2, v1}, Lcom/fiio/music/util/bw;-><init>(Ljava/lang/String;)V

    .line 994
    :cond_1
    :goto_1
    if-lez v0, :cond_3

    .line 995
    iget-object v0, p0, Lcom/fiio/music/activity/el;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/el;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$13(Lcom/fiio/music/activity/MyMusicListActivity;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/el;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    .line 996
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/fiio/music/activity/el;->f:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/fiio/music/activity/el;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v4}, Lcom/fiio/music/activity/MyMusicListActivity;->access$1(Lcom/fiio/music/activity/MyMusicListActivity;)Landroid/content/Context;

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

    .line 995
    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$14(Lcom/fiio/music/activity/MyMusicListActivity;Landroid/widget/Toast;)V

    .line 997
    iget-object v0, p0, Lcom/fiio/music/activity/el;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$9(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/adapter/PlayListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/el;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$18(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/b/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/b/j;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Lcom/fiio/music/adapter/PlayListAdapter;->setDate(Ljava/util/List;Z)V

    .line 998
    iget-object v0, p0, Lcom/fiio/music/activity/el;->g:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 999
    iget-object v0, p0, Lcom/fiio/music/activity/el;->g:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0

    .line 987
    :cond_2
    iget v1, p0, Lcom/fiio/music/activity/el;->c:I

    if-ne v1, v6, :cond_1

    .line 988
    iget v0, p0, Lcom/fiio/music/activity/el;->d:I

    invoke-virtual {v2, v0}, Lcom/fiio/music/entity/PlayerList;->setId(I)V

    .line 989
    iget-object v0, p0, Lcom/fiio/music/activity/el;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$18(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/b/j;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/fiio/music/b/j;->b(Lcom/fiio/music/entity/PlayerList;)I

    move-result v0

    .line 990
    if-lez v0, :cond_1

    .line 991
    iget-object v1, p0, Lcom/fiio/music/activity/el;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/fiio/music/activity/el;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fiio/music/util/bw;->a(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 1001
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/activity/el;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/el;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$13(Lcom/fiio/music/activity/MyMusicListActivity;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/el;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    .line 1002
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/fiio/music/activity/el;->f:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/fiio/music/activity/el;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v4}, Lcom/fiio/music/activity/MyMusicListActivity;->access$1(Lcom/fiio/music/activity/MyMusicListActivity;)Landroid/content/Context;

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

    .line 1001
    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$14(Lcom/fiio/music/activity/MyMusicListActivity;Landroid/widget/Toast;)V

    goto/16 :goto_0

    .line 1006
    :cond_4
    iget-object v0, p0, Lcom/fiio/music/activity/el;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/el;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$13(Lcom/fiio/music/activity/MyMusicListActivity;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/el;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    .line 1007
    iget-object v3, p0, Lcom/fiio/music/activity/el;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/MyMusicListActivity;->access$1(Lcom/fiio/music/activity/MyMusicListActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0076

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1006
    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$14(Lcom/fiio/music/activity/MyMusicListActivity;Landroid/widget/Toast;)V

    goto/16 :goto_0
.end method
