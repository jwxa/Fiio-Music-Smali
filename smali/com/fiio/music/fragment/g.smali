.class final Lcom/fiio/music/fragment/g;
.super Ljava/lang/Object;
.source "DlnaFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/fiio/music/fragment/DlnaFragment;


# direct methods
.method constructor <init>(Lcom/fiio/music/fragment/DlnaFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/fragment/g;->a:Lcom/fiio/music/fragment/DlnaFragment;

    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const v7, 0x7f0c01d1

    const/4 v6, 0x0

    .line 388
    iget-object v0, p0, Lcom/fiio/music/fragment/g;->a:Lcom/fiio/music/fragment/DlnaFragment;

    invoke-static {v0}, Lcom/fiio/music/fragment/DlnaFragment;->access$2(Lcom/fiio/music/fragment/DlnaFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/fiio/music/d/a/c;

    .line 389
    invoke-virtual {v3}, Lcom/fiio/music/d/a/c;->d()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 392
    iget-object v0, p0, Lcom/fiio/music/fragment/g;->a:Lcom/fiio/music/fragment/DlnaFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/fiio/music/fragment/g;->a:Lcom/fiio/music/fragment/DlnaFragment;

    invoke-static {v2}, Lcom/fiio/music/fragment/DlnaFragment;->access$1(Lcom/fiio/music/fragment/DlnaFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lcom/fiio/music/d/a/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/fragment/DlnaFragment;->access$8(Lcom/fiio/music/fragment/DlnaFragment;Ljava/lang/String;)V

    .line 393
    const-string v0, "xyz"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "On Click Container "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fiio/music/fragment/g;->a:Lcom/fiio/music/fragment/DlnaFragment;

    invoke-static {v2}, Lcom/fiio/music/fragment/DlnaFragment;->access$1(Lcom/fiio/music/fragment/DlnaFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v0, p0, Lcom/fiio/music/fragment/g;->a:Lcom/fiio/music/fragment/DlnaFragment;

    invoke-static {v0}, Lcom/fiio/music/fragment/DlnaFragment;->access$4(Lcom/fiio/music/fragment/DlnaFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 395
    iget-object v0, p0, Lcom/fiio/music/fragment/g;->a:Lcom/fiio/music/fragment/DlnaFragment;

    invoke-static {v0}, Lcom/fiio/music/fragment/DlnaFragment;->access$9(Lcom/fiio/music/fragment/DlnaFragment;)Lorg/fourthline/cling/android/AndroidUpnpService;

    move-result-object v0

    invoke-interface {v0}, Lorg/fourthline/cling/android/AndroidUpnpService;->getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;

    move-result-object v6

    .line 397
    new-instance v0, Lcom/fiio/music/d/a/a;

    .line 398
    iget-object v1, p0, Lcom/fiio/music/fragment/g;->a:Lcom/fiio/music/fragment/DlnaFragment;

    invoke-virtual {v1}, Lcom/fiio/music/fragment/DlnaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 399
    invoke-virtual {v3}, Lcom/fiio/music/d/a/c;->c()Lorg/fourthline/cling/model/meta/Service;

    move-result-object v2

    .line 400
    invoke-virtual {v3}, Lcom/fiio/music/d/a/c;->a()Lorg/fourthline/cling/support/model/container/Container;

    move-result-object v3

    iget-object v4, p0, Lcom/fiio/music/fragment/g;->a:Lcom/fiio/music/fragment/DlnaFragment;

    invoke-static {v4}, Lcom/fiio/music/fragment/DlnaFragment;->access$2(Lcom/fiio/music/fragment/DlnaFragment;)Ljava/util/ArrayList;

    move-result-object v4

    .line 401
    iget-object v5, p0, Lcom/fiio/music/fragment/g;->a:Lcom/fiio/music/fragment/DlnaFragment;

    invoke-static {v5}, Lcom/fiio/music/fragment/DlnaFragment;->access$10(Lcom/fiio/music/fragment/DlnaFragment;)Landroid/os/Handler;

    move-result-object v5

    .line 397
    invoke-direct/range {v0 .. v5}, Lcom/fiio/music/d/a/a;-><init>(Landroid/app/Activity;Lorg/fourthline/cling/model/meta/Service;Lorg/fourthline/cling/support/model/container/Container;Ljava/util/ArrayList;Landroid/os/Handler;)V

    .line 396
    invoke-interface {v6, v0}, Lorg/fourthline/cling/controlpoint/ControlPoint;->execute(Lorg/fourthline/cling/controlpoint/ActionCallback;)Ljava/util/concurrent/Future;

    .line 466
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    sget-object v0, Lcom/fiio/music/fragment/DlnaFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mSongList size = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fiio/music/fragment/g;->a:Lcom/fiio/music/fragment/DlnaFragment;

    invoke-static {v2}, Lcom/fiio/music/fragment/DlnaFragment;->access$11(Lcom/fiio/music/fragment/DlnaFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    sget-object v0, Lcom/fiio/music/fragment/DlnaFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "curSongList size = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fiio/music/fragment/g;->a:Lcom/fiio/music/fragment/DlnaFragment;

    invoke-static {v2}, Lcom/fiio/music/fragment/DlnaFragment;->access$12(Lcom/fiio/music/fragment/DlnaFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v0, p0, Lcom/fiio/music/fragment/g;->a:Lcom/fiio/music/fragment/DlnaFragment;

    invoke-static {v0, p3}, Lcom/fiio/music/fragment/DlnaFragment;->access$13(Lcom/fiio/music/fragment/DlnaFragment;I)V

    .line 409
    iget-object v0, p0, Lcom/fiio/music/fragment/g;->a:Lcom/fiio/music/fragment/DlnaFragment;

    invoke-static {v0}, Lcom/fiio/music/fragment/DlnaFragment;->access$11(Lcom/fiio/music/fragment/DlnaFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/fiio/music/fragment/g;->a:Lcom/fiio/music/fragment/DlnaFragment;

    invoke-static {v0}, Lcom/fiio/music/fragment/DlnaFragment;->access$2(Lcom/fiio/music/fragment/DlnaFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 410
    iget-object v0, p0, Lcom/fiio/music/fragment/g;->a:Lcom/fiio/music/fragment/DlnaFragment;

    iget-object v1, p0, Lcom/fiio/music/fragment/g;->a:Lcom/fiio/music/fragment/DlnaFragment;

    invoke-static {v1}, Lcom/fiio/music/fragment/DlnaFragment;->access$2(Lcom/fiio/music/fragment/DlnaFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/fragment/DlnaFragment;->access$3(Lcom/fiio/music/fragment/DlnaFragment;Ljava/util/List;)V

    .line 413
    :cond_2
    sget-object v0, Lcom/fiio/music/fragment/DlnaFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "position = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object v0, p0, Lcom/fiio/music/fragment/g;->a:Lcom/fiio/music/fragment/DlnaFragment;

    iget-object v1, p0, Lcom/fiio/music/fragment/g;->a:Lcom/fiio/music/fragment/DlnaFragment;

    invoke-static {v1, v3}, Lcom/fiio/music/fragment/DlnaFragment;->access$14(Lcom/fiio/music/fragment/DlnaFragment;Lcom/fiio/music/d/a/c;)Lcom/fiio/music/entity/Song;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/fragment/DlnaFragment;->access$15(Lcom/fiio/music/fragment/DlnaFragment;Lcom/fiio/music/entity/Song;)V

    .line 417
    iget-object v0, p0, Lcom/fiio/music/fragment/g;->a:Lcom/fiio/music/fragment/DlnaFragment;

    iget-object v1, p0, Lcom/fiio/music/fragment/g;->a:Lcom/fiio/music/fragment/DlnaFragment;

    invoke-static {v1}, Lcom/fiio/music/fragment/DlnaFragment;->access$16(Lcom/fiio/music/fragment/DlnaFragment;)Lcom/fiio/music/entity/Song;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/fragment/DlnaFragment;->access$17(Lcom/fiio/music/fragment/DlnaFragment;Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/fiio/music/fragment/g;->a:Lcom/fiio/music/fragment/DlnaFragment;

    invoke-static {v0}, Lcom/fiio/music/fragment/DlnaFragment;->access$16(Lcom/fiio/music/fragment/DlnaFragment;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v0

    .line 421
    if-nez v0, :cond_3

    .line 422
    iget-object v0, p0, Lcom/fiio/music/fragment/g;->a:Lcom/fiio/music/fragment/DlnaFragment;

    invoke-static {v0}, Lcom/fiio/music/fragment/DlnaFragment;->access$16(Lcom/fiio/music/fragment/DlnaFragment;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    new-instance v1, Lcom/fiio/music/entity/Artist;

    const/4 v2, -0x1

    const-string v4, "unknown_artist"

    const-string v5, ""

    invoke-direct {v1, v2, v4, v5}, Lcom/fiio/music/entity/Artist;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/fiio/music/entity/Song;->setArtist(Lcom/fiio/music/entity/Artist;)V

    .line 425
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/fragment/g;->a:Lcom/fiio/music/fragment/DlnaFragment;

    iget-object v1, p0, Lcom/fiio/music/fragment/g;->a:Lcom/fiio/music/fragment/DlnaFragment;

    invoke-static {v1}, Lcom/fiio/music/fragment/DlnaFragment;->access$16(Lcom/fiio/music/fragment/DlnaFragment;)Lcom/fiio/music/entity/Song;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/fragment/DlnaFragment;->access$18(Lcom/fiio/music/fragment/DlnaFragment;Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Lcom/fiio/music/fragment/g;->a:Lcom/fiio/music/fragment/DlnaFragment;

    invoke-static {v0, p3}, Lcom/fiio/music/fragment/DlnaFragment;->access$19(Lcom/fiio/music/fragment/DlnaFragment;I)V

    .line 427
    iget-object v0, p0, Lcom/fiio/music/fragment/g;->a:Lcom/fiio/music/fragment/DlnaFragment;

    iget-object v1, p0, Lcom/fiio/music/fragment/g;->a:Lcom/fiio/music/fragment/DlnaFragment;

    invoke-static {v1}, Lcom/fiio/music/fragment/DlnaFragment;->access$16(Lcom/fiio/music/fragment/DlnaFragment;)Lcom/fiio/music/entity/Song;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getDurationTime()I

    move-result v1

    invoke-static {v0, v1}, Lcom/fiio/music/fragment/DlnaFragment;->access$20(Lcom/fiio/music/fragment/DlnaFragment;I)V

    .line 429
    sget-object v0, Lcom/fiio/music/fragment/DlnaFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "content.isContainer() = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/fiio/music/d/a/c;->d()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-virtual {v3}, Lcom/fiio/music/d/a/c;->b()Lorg/fourthline/cling/support/model/item/Item;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/item/Item;->getResources()Ljava/util/List;

    move-result-object v0

    .line 432
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/Res;

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/Res;->getProtocolInfo()Lorg/fourthline/cling/support/model/ProtocolInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/ProtocolInfo;->getContentFormatMimeType()Lorg/seamless/util/MimeType;

    move-result-object v0

    .line 433
    if-eqz v0, :cond_0

    .line 436
    invoke-virtual {v0}, Lorg/seamless/util/MimeType;->getType()Ljava/lang/String;

    move-result-object v1

    .line 437
    if-eqz v1, :cond_0

    .line 440
    iget-object v2, p0, Lcom/fiio/music/fragment/g;->a:Lcom/fiio/music/fragment/DlnaFragment;

    invoke-virtual {v0}, Lorg/seamless/util/MimeType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/fiio/music/fragment/DlnaFragment;->access$21(Lcom/fiio/music/fragment/DlnaFragment;Ljava/lang/String;)V

    .line 442
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 443
    const-string v0, "image"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 444
    sput p3, Lcom/fiio/music/activity/p;->a:I

    goto/16 :goto_0

    .line 446
    :cond_4
    const-string v0, "audio"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/fiio/music/fragment/g;->a:Lcom/fiio/music/fragment/DlnaFragment;

    invoke-static {v0}, Lcom/fiio/music/fragment/DlnaFragment;->access$16(Lcom/fiio/music/fragment/DlnaFragment;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 448
    iget-object v0, p0, Lcom/fiio/music/fragment/g;->a:Lcom/fiio/music/fragment/DlnaFragment;

    invoke-static {v0}, Lcom/fiio/music/fragment/DlnaFragment;->access$16(Lcom/fiio/music/fragment/DlnaFragment;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/h;->l(Ljava/lang/String;)Z

    move-result v0

    .line 449
    if-eqz v0, :cond_5

    .line 450
    iget-object v0, p0, Lcom/fiio/music/fragment/g;->a:Lcom/fiio/music/fragment/DlnaFragment;

    invoke-static {v0, v3}, Lcom/fiio/music/fragment/DlnaFragment;->access$22(Lcom/fiio/music/fragment/DlnaFragment;Lcom/fiio/music/d/a/c;)V

    .line 451
    iget-object v0, p0, Lcom/fiio/music/fragment/g;->a:Lcom/fiio/music/fragment/DlnaFragment;

    invoke-static {v0}, Lcom/fiio/music/fragment/DlnaFragment;->access$23(Lcom/fiio/music/fragment/DlnaFragment;)V

    goto/16 :goto_0

    .line 453
    :cond_5
    invoke-static {}, Lcom/fiio/a/a/b;->a()Lcom/fiio/a/a/b;

    invoke-static {v7}, Lcom/fiio/a/a/b;->a(I)V

    goto/16 :goto_0

    .line 457
    :cond_6
    invoke-static {}, Lcom/fiio/a/a/b;->a()Lcom/fiio/a/a/b;

    invoke-static {v7}, Lcom/fiio/a/a/b;->a(I)V

    goto/16 :goto_0
.end method
