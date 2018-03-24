.class final Lcom/fiio/music/activity/be;
.super Ljava/lang/Object;
.source "ListMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/ListMainActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/ListMainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/be;->a:Lcom/fiio/music/activity/ListMainActivity;

    .line 2313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const v4, 0x7f0c00f4

    .line 2317
    invoke-static {}, Lcom/fiio/music/activity/ListMainActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mediaPlayerManager.getPlayerState()="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fiio/music/activity/be;->a:Lcom/fiio/music/activity/ListMainActivity;

    iget-object v2, v2, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v2}, Lcom/fiio/music/service/h;->m()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2318
    iget-object v0, p0, Lcom/fiio/music/activity/be;->a:Lcom/fiio/music/activity/ListMainActivity;

    iget-object v0, v0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->m()I

    move-result v0

    if-nez v0, :cond_1

    .line 2319
    iget-object v0, p0, Lcom/fiio/music/activity/be;->a:Lcom/fiio/music/activity/ListMainActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/be;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ListMainActivity;->access$49(Lcom/fiio/music/activity/ListMainActivity;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/be;->a:Lcom/fiio/music/activity/ListMainActivity;

    iget-object v3, p0, Lcom/fiio/music/activity/be;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-virtual {v3, v4}, Lcom/fiio/music/activity/ListMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/ListMainActivity;->access$50(Lcom/fiio/music/activity/ListMainActivity;Landroid/widget/Toast;)V

    .line 2350
    :cond_0
    :goto_0
    return-void

    .line 2321
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/activity/be;->a:Lcom/fiio/music/activity/ListMainActivity;

    iget-object v0, v0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->m()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 2322
    iget-object v0, p0, Lcom/fiio/music/activity/be;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ListMainActivity;->access$52(Lcom/fiio/music/activity/ListMainActivity;)V

    goto :goto_0

    .line 2323
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/activity/be;->a:Lcom/fiio/music/activity/ListMainActivity;

    iget-object v0, v0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->m()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 2325
    iget-object v0, p0, Lcom/fiio/music/activity/be;->a:Lcom/fiio/music/activity/ListMainActivity;

    iget-object v0, v0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->G()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2326
    iget-object v0, p0, Lcom/fiio/music/activity/be;->a:Lcom/fiio/music/activity/ListMainActivity;

    iget-object v0, v0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->H()Z

    move-result v0

    .line 2327
    if-nez v0, :cond_0

    .line 2328
    iget-object v0, p0, Lcom/fiio/music/activity/be;->a:Lcom/fiio/music/activity/ListMainActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/be;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ListMainActivity;->access$49(Lcom/fiio/music/activity/ListMainActivity;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/be;->a:Lcom/fiio/music/activity/ListMainActivity;

    iget-object v3, p0, Lcom/fiio/music/activity/be;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-virtual {v3, v4}, Lcom/fiio/music/activity/ListMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/ListMainActivity;->access$50(Lcom/fiio/music/activity/ListMainActivity;Landroid/widget/Toast;)V

    goto :goto_0

    .line 2331
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/activity/be;->a:Lcom/fiio/music/activity/ListMainActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/be;->a:Lcom/fiio/music/activity/ListMainActivity;

    const-string v2, "song_file_path"

    invoke-virtual {v1, v2, v3}, Lcom/fiio/music/activity/ListMainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/ListMainActivity;->access$53(Lcom/fiio/music/activity/ListMainActivity;Landroid/content/SharedPreferences;)V

    .line 2332
    iget-object v0, p0, Lcom/fiio/music/activity/be;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ListMainActivity;->access$54(Lcom/fiio/music/activity/ListMainActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "CurPlayingSongPath"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2333
    iget-object v0, p0, Lcom/fiio/music/activity/be;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ListMainActivity;->access$54(Lcom/fiio/music/activity/ListMainActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "CurPlayingSongPath"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2334
    iget-object v1, p0, Lcom/fiio/music/activity/be;->a:Lcom/fiio/music/activity/ListMainActivity;

    iget-object v1, v1, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2335
    iget-object v0, p0, Lcom/fiio/music/activity/be;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ListMainActivity;->access$54(Lcom/fiio/music/activity/ListMainActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "UNLATCH_SD_CARD"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2336
    iget-object v0, p0, Lcom/fiio/music/activity/be;->a:Lcom/fiio/music/activity/ListMainActivity;

    iget-object v0, v0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->u()V

    goto/16 :goto_0

    .line 2337
    :cond_4
    iget-object v0, p0, Lcom/fiio/music/activity/be;->a:Lcom/fiio/music/activity/ListMainActivity;

    iget-object v0, v0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2338
    iget-object v0, p0, Lcom/fiio/music/activity/be;->a:Lcom/fiio/music/activity/ListMainActivity;

    iget-object v0, v0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->t()V

    goto/16 :goto_0

    .line 2340
    :cond_5
    iget-object v0, p0, Lcom/fiio/music/activity/be;->a:Lcom/fiio/music/activity/ListMainActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/be;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ListMainActivity;->access$49(Lcom/fiio/music/activity/ListMainActivity;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/be;->a:Lcom/fiio/music/activity/ListMainActivity;

    iget-object v3, p0, Lcom/fiio/music/activity/be;->a:Lcom/fiio/music/activity/ListMainActivity;

    const v4, 0x7f0c00f6

    invoke-virtual {v3, v4}, Lcom/fiio/music/activity/ListMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/ListMainActivity;->access$50(Lcom/fiio/music/activity/ListMainActivity;Landroid/widget/Toast;)V

    goto/16 :goto_0

    .line 2344
    :cond_6
    iget-object v0, p0, Lcom/fiio/music/activity/be;->a:Lcom/fiio/music/activity/ListMainActivity;

    iget-object v0, v0, Lcom/fiio/music/activity/ListMainActivity;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->H()Z

    move-result v0

    .line 2345
    if-nez v0, :cond_0

    .line 2346
    iget-object v0, p0, Lcom/fiio/music/activity/be;->a:Lcom/fiio/music/activity/ListMainActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/be;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ListMainActivity;->access$49(Lcom/fiio/music/activity/ListMainActivity;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/be;->a:Lcom/fiio/music/activity/ListMainActivity;

    iget-object v3, p0, Lcom/fiio/music/activity/be;->a:Lcom/fiio/music/activity/ListMainActivity;

    invoke-virtual {v3, v4}, Lcom/fiio/music/activity/ListMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/ListMainActivity;->access$50(Lcom/fiio/music/activity/ListMainActivity;Landroid/widget/Toast;)V

    goto/16 :goto_0
.end method
