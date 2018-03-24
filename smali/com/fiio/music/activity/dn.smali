.class final Lcom/fiio/music/activity/dn;
.super Ljava/lang/Object;
.source "MyMusicListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/MyMusicListActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/MyMusicListActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/dn;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 367
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 400
    :cond_0
    :goto_0
    return-void

    .line 369
    :sswitch_0
    iget-object v0, p0, Lcom/fiio/music/activity/dn;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0, v2, v2, v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$0(Lcom/fiio/music/activity/MyMusicListActivity;IILjava/lang/String;)V

    goto :goto_0

    .line 372
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/fiio/music/activity/dn;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    const-class v2, Lcom/fiio/music/activity/SearchSongActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 373
    const-string v1, "ChangeStyle"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 374
    const-string v1, "activity"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 375
    iget-object v1, p0, Lcom/fiio/music/activity/dn;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-virtual {v1, v0}, Lcom/fiio/music/activity/MyMusicListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 378
    :sswitch_2
    iget-object v0, p0, Lcom/fiio/music/activity/dn;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/dn;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$1(Lcom/fiio/music/activity/MyMusicListActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$2(Lcom/fiio/music/activity/MyMusicListActivity;Landroid/content/Context;)V

    goto :goto_0

    .line 381
    :sswitch_3
    iget-object v0, p0, Lcom/fiio/music/activity/dn;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0, v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$3(Lcom/fiio/music/activity/MyMusicListActivity;Landroid/view/View;)V

    goto :goto_0

    .line 385
    :sswitch_4
    iget-object v0, p0, Lcom/fiio/music/activity/dn;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$4(Lcom/fiio/music/activity/MyMusicListActivity;)V

    goto :goto_0

    .line 388
    :sswitch_5
    iget-object v0, p0, Lcom/fiio/music/activity/dn;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$5(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/fiio/music/activity/dn;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$5(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->o()I

    move-result v0

    const/16 v1, 0x2710

    if-gt v0, v1, :cond_1

    .line 390
    iget-object v0, p0, Lcom/fiio/music/activity/dn;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$5(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->s()V

    goto :goto_0

    .line 392
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/activity/dn;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0, v2}, Lcom/fiio/music/activity/MyMusicListActivity;->access$6(Lcom/fiio/music/activity/MyMusicListActivity;I)V

    goto :goto_0

    .line 397
    :sswitch_6
    iget-object v0, p0, Lcom/fiio/music/activity/dn;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$5(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/fiio/music/activity/dn;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$5(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->r()V

    goto :goto_0

    .line 367
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b0056 -> :sswitch_4
        0x7f0b0058 -> :sswitch_5
        0x7f0b005c -> :sswitch_3
        0x7f0b005d -> :sswitch_6
        0x7f0b008d -> :sswitch_1
        0x7f0b01ce -> :sswitch_2
        0x7f0b01d0 -> :sswitch_4
        0x7f0b0204 -> :sswitch_0
    .end sparse-switch
.end method
