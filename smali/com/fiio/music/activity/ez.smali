.class final Lcom/fiio/music/activity/ez;
.super Ljava/lang/Object;
.source "PlayerMainActivity.java"

# interfaces
.implements Lcom/fiio/music/satellitemenu/h;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/PlayerMainActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/PlayerMainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/ez;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    .line 2305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 7

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 2308
    const-string v0, "xyz"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Clicked on item "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2309
    packed-switch p1, :pswitch_data_0

    .line 2411
    :cond_0
    :goto_0
    return-void

    .line 2311
    :pswitch_0
    iget-object v0, p0, Lcom/fiio/music/activity/ez;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 2314
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2315
    iget-object v0, p0, Lcom/fiio/music/activity/ez;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/ez;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$20(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/ez;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$21(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/ez;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    const v4, 0x7f0c0217

    invoke-virtual {v3, v4}, Lcom/fiio/music/activity/PlayerMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$22(Lcom/fiio/music/activity/PlayerMainActivity;Landroid/widget/Toast;)V

    goto :goto_0

    .line 2318
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2319
    iget-object v0, p0, Lcom/fiio/music/activity/ez;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/ez;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$20(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/ez;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$21(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/ez;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    const v4, 0x7f0c0219

    invoke-virtual {v3, v4}, Lcom/fiio/music/activity/PlayerMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$22(Lcom/fiio/music/activity/PlayerMainActivity;Landroid/widget/Toast;)V

    goto :goto_0

    .line 2321
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/activity/ez;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2322
    invoke-static {}, Lcom/fiio/music/util/an;->a()Lcom/fiio/music/util/an;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/fiio/music/util/an;->b(Z)V

    .line 2323
    iget-object v0, p0, Lcom/fiio/music/activity/ez;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/ez;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$81(Lcom/fiio/music/activity/PlayerMainActivity;Lcom/fiio/music/entity/Song;)V

    goto :goto_0

    .line 2327
    :pswitch_1
    iget-object v0, p0, Lcom/fiio/music/activity/ez;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2328
    iget-object v0, p0, Lcom/fiio/music/activity/ez;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/ez;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$82(Lcom/fiio/music/activity/PlayerMainActivity;Lcom/fiio/music/entity/Song;)V

    goto/16 :goto_0

    .line 2330
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/activity/ez;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/ez;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$20(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/widget/Toast;

    move-result-object v1

    .line 2331
    iget-object v2, p0, Lcom/fiio/music/activity/ez;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    iget-object v3, p0, Lcom/fiio/music/activity/ez;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    const v4, 0x7f0c00f6

    invoke-virtual {v3, v4}, Lcom/fiio/music/activity/PlayerMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2330
    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$22(Lcom/fiio/music/activity/PlayerMainActivity;Landroid/widget/Toast;)V

    goto/16 :goto_0

    .line 2339
    :pswitch_2
    iget-object v0, p0, Lcom/fiio/music/activity/ez;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$83(Lcom/fiio/music/activity/PlayerMainActivity;)V

    goto/16 :goto_0

    .line 2346
    :pswitch_3
    iget-object v0, p0, Lcom/fiio/music/activity/ez;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$84(Lcom/fiio/music/activity/PlayerMainActivity;)V

    goto/16 :goto_0

    .line 2354
    :pswitch_4
    iget-object v0, p0, Lcom/fiio/music/activity/ez;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$21(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/h;->a(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 2360
    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2361
    const-string v1, "ChangeStyle"

    iget-object v2, p0, Lcom/fiio/music/activity/ez;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/PlayerMainActivity;->access$23(Lcom/fiio/music/activity/PlayerMainActivity;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2362
    iget-object v1, p0, Lcom/fiio/music/activity/ez;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    const-class v2, Lcom/fiio/music/activity/EqActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2363
    iget-object v1, p0, Lcom/fiio/music/activity/ez;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-virtual {v1, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2367
    :pswitch_6
    iget-object v0, p0, Lcom/fiio/music/activity/ez;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->l()I

    move-result v0

    if-eq v0, v4, :cond_0

    .line 2368
    iget-object v0, p0, Lcom/fiio/music/activity/ez;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->l()I

    move-result v0

    if-eq v0, v6, :cond_0

    .line 2369
    iget-object v0, p0, Lcom/fiio/music/activity/ez;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->l()I

    move-result v0

    if-eq v0, v5, :cond_0

    .line 2372
    iget-object v0, p0, Lcom/fiio/music/activity/ez;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2373
    iget-object v0, p0, Lcom/fiio/music/activity/ez;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v0

    .line 2374
    if-eqz v0, :cond_0

    .line 2375
    invoke-virtual {v0}, Lcom/fiio/music/entity/Artist;->getId()I

    move-result v0

    .line 2376
    if-ltz v0, :cond_0

    .line 2379
    invoke-static {v3, v3, v0}, Lcom/fiio/music/activity/LocalMusicActivity;->setSearchSongFlag(III)V

    .line 2380
    iget-object v0, p0, Lcom/fiio/music/activity/ez;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$85(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/custom/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/custom/a;->dismiss()V

    .line 2381
    iget-object v0, p0, Lcom/fiio/music/activity/ez;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$86(Lcom/fiio/music/activity/PlayerMainActivity;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2382
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/fiio/music/activity/ez;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$21(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2383
    iget-object v1, p0, Lcom/fiio/music/activity/ez;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-virtual {v1, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 2385
    :cond_4
    iget-object v0, p0, Lcom/fiio/music/activity/ez;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->finish()V

    goto/16 :goto_0

    .line 2392
    :pswitch_7
    iget-object v0, p0, Lcom/fiio/music/activity/ez;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2393
    iget-object v0, p0, Lcom/fiio/music/activity/ez;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->l()I

    move-result v0

    if-eq v0, v4, :cond_0

    .line 2394
    iget-object v0, p0, Lcom/fiio/music/activity/ez;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->l()I

    move-result v0

    if-eq v0, v6, :cond_0

    .line 2395
    iget-object v0, p0, Lcom/fiio/music/activity/ez;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$3(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->l()I

    move-result v0

    if-eq v0, v5, :cond_0

    .line 2398
    iget-object v0, p0, Lcom/fiio/music/activity/ez;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$4(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getAlbum()Lcom/fiio/music/entity/Album;

    move-result-object v0

    .line 2399
    if-eqz v0, :cond_0

    .line 2400
    invoke-virtual {v0}, Lcom/fiio/music/entity/Album;->getId()I

    move-result v0

    .line 2401
    if-ltz v0, :cond_0

    .line 2404
    const/4 v1, 0x2

    invoke-static {v3, v1, v0}, Lcom/fiio/music/activity/LocalMusicActivity;->setSearchSongFlag(III)V

    .line 2405
    iget-object v0, p0, Lcom/fiio/music/activity/ez;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$85(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/custom/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/custom/a;->dismiss()V

    .line 2406
    iget-object v0, p0, Lcom/fiio/music/activity/ez;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$86(Lcom/fiio/music/activity/PlayerMainActivity;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 2407
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/fiio/music/activity/ez;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$21(Lcom/fiio/music/activity/PlayerMainActivity;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2408
    iget-object v1, p0, Lcom/fiio/music/activity/ez;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-virtual {v1, v0}, Lcom/fiio/music/activity/PlayerMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 2410
    :cond_5
    iget-object v0, p0, Lcom/fiio/music/activity/ez;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->finish()V

    goto/16 :goto_0

    .line 2309
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
