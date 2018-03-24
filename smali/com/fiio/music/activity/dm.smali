.class final Lcom/fiio/music/activity/dm;
.super Landroid/content/BroadcastReceiver;
.source "LockScreenActivity.java"


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/LockScreenActivity;


# direct methods
.method private constructor <init>(Lcom/fiio/music/activity/LockScreenActivity;)V
    .locals 0

    .prologue
    .line 409
    iput-object p1, p0, Lcom/fiio/music/activity/dm;->a:Lcom/fiio/music/activity/LockScreenActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fiio/music/activity/LockScreenActivity;B)V
    .locals 0

    .prologue
    .line 409
    invoke-direct {p0, p1}, Lcom/fiio/music/activity/dm;-><init>(Lcom/fiio/music/activity/LockScreenActivity;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    const v5, 0x7f0c00d4

    const v4, 0x7f0c00c1

    .line 413
    const-string v0, "flag"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 414
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 416
    const-string v0, "song"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 417
    const-string v3, "android.intent.action.TIME_TICK"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 418
    iget-object v2, p0, Lcom/fiio/music/activity/dm;->a:Lcom/fiio/music/activity/LockScreenActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LockScreenActivity;->f(Lcom/fiio/music/activity/LockScreenActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/dm;->a:Lcom/fiio/music/activity/LockScreenActivity;

    invoke-static {}, Lcom/fiio/music/activity/LockScreenActivity;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    :cond_0
    :goto_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    .line 439
    iget-object v1, p0, Lcom/fiio/music/activity/dm;->a:Lcom/fiio/music/activity/LockScreenActivity;

    invoke-static {v1, v0}, Lcom/fiio/music/activity/LockScreenActivity;->b(Lcom/fiio/music/activity/LockScreenActivity;Lcom/fiio/music/entity/Song;)V

    .line 440
    iget-object v1, p0, Lcom/fiio/music/activity/dm;->a:Lcom/fiio/music/activity/LockScreenActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LockScreenActivity;->i(Lcom/fiio/music/activity/LockScreenActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 441
    iget-object v1, p0, Lcom/fiio/music/activity/dm;->a:Lcom/fiio/music/activity/LockScreenActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LockScreenActivity;->e(Lcom/fiio/music/activity/LockScreenActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 442
    iget-object v1, p0, Lcom/fiio/music/activity/dm;->a:Lcom/fiio/music/activity/LockScreenActivity;

    iget-object v2, p0, Lcom/fiio/music/activity/dm;->a:Lcom/fiio/music/activity/LockScreenActivity;

    iget-object v3, p0, Lcom/fiio/music/activity/dm;->a:Lcom/fiio/music/activity/LockScreenActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/LockScreenActivity;->d(Lcom/fiio/music/activity/LockScreenActivity;)Lcom/fiio/music/entity/Song;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fiio/music/activity/LockScreenActivity;->b(Lcom/fiio/music/entity/Song;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/fiio/music/activity/LockScreenActivity;->a(Lcom/fiio/music/activity/LockScreenActivity;Z)V

    .line 445
    :cond_1
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 446
    iget-object v1, p0, Lcom/fiio/music/activity/dm;->a:Lcom/fiio/music/activity/LockScreenActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LockScreenActivity;->g(Lcom/fiio/music/activity/LockScreenActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    :goto_1
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 454
    iget-object v1, p0, Lcom/fiio/music/activity/dm;->a:Lcom/fiio/music/activity/LockScreenActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LockScreenActivity;->h(Lcom/fiio/music/activity/LockScreenActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    :goto_2
    iget-object v1, p0, Lcom/fiio/music/activity/dm;->a:Lcom/fiio/music/activity/LockScreenActivity;

    invoke-static {v1, v0}, Lcom/fiio/music/activity/LockScreenActivity;->a(Lcom/fiio/music/activity/LockScreenActivity;Lcom/fiio/music/entity/Song;)V

    .line 463
    iget-object v1, p0, Lcom/fiio/music/activity/dm;->a:Lcom/fiio/music/activity/LockScreenActivity;

    invoke-virtual {v1}, Lcom/fiio/music/activity/LockScreenActivity;->b()V

    .line 465
    iget-object v1, p0, Lcom/fiio/music/activity/dm;->a:Lcom/fiio/music/activity/LockScreenActivity;

    invoke-virtual {v1, v0}, Lcom/fiio/music/activity/LockScreenActivity;->a(Lcom/fiio/music/entity/Song;)V

    .line 478
    :cond_2
    :goto_3
    return-void

    .line 419
    :cond_3
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 420
    iget-object v2, p0, Lcom/fiio/music/activity/dm;->a:Lcom/fiio/music/activity/LockScreenActivity;

    invoke-static {v2, v0}, Lcom/fiio/music/activity/LockScreenActivity;->b(Lcom/fiio/music/activity/LockScreenActivity;Lcom/fiio/music/entity/Song;)V

    .line 421
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 422
    iget-object v2, p0, Lcom/fiio/music/activity/dm;->a:Lcom/fiio/music/activity/LockScreenActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LockScreenActivity;->g(Lcom/fiio/music/activity/LockScreenActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 426
    :goto_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 427
    iget-object v2, p0, Lcom/fiio/music/activity/dm;->a:Lcom/fiio/music/activity/LockScreenActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LockScreenActivity;->h(Lcom/fiio/music/activity/LockScreenActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    :goto_5
    iget-object v2, p0, Lcom/fiio/music/activity/dm;->a:Lcom/fiio/music/activity/LockScreenActivity;

    invoke-static {v2, v0}, Lcom/fiio/music/activity/LockScreenActivity;->a(Lcom/fiio/music/activity/LockScreenActivity;Lcom/fiio/music/entity/Song;)V

    .line 435
    iget-object v2, p0, Lcom/fiio/music/activity/dm;->a:Lcom/fiio/music/activity/LockScreenActivity;

    invoke-virtual {v2}, Lcom/fiio/music/activity/LockScreenActivity;->b()V

    .line 436
    iget-object v2, p0, Lcom/fiio/music/activity/dm;->a:Lcom/fiio/music/activity/LockScreenActivity;

    invoke-virtual {v2, v0}, Lcom/fiio/music/activity/LockScreenActivity;->a(Lcom/fiio/music/entity/Song;)V

    goto/16 :goto_0

    .line 424
    :cond_4
    iget-object v2, p0, Lcom/fiio/music/activity/dm;->a:Lcom/fiio/music/activity/LockScreenActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LockScreenActivity;->g(Lcom/fiio/music/activity/LockScreenActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/dm;->a:Lcom/fiio/music/activity/LockScreenActivity;

    invoke-virtual {v3, v4}, Lcom/fiio/music/activity/LockScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 429
    :cond_5
    iget-object v2, p0, Lcom/fiio/music/activity/dm;->a:Lcom/fiio/music/activity/LockScreenActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LockScreenActivity;->h(Lcom/fiio/music/activity/LockScreenActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/dm;->a:Lcom/fiio/music/activity/LockScreenActivity;

    invoke-virtual {v3, v5}, Lcom/fiio/music/activity/LockScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 449
    :cond_6
    iget-object v1, p0, Lcom/fiio/music/activity/dm;->a:Lcom/fiio/music/activity/LockScreenActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LockScreenActivity;->g(Lcom/fiio/music/activity/LockScreenActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/dm;->a:Lcom/fiio/music/activity/LockScreenActivity;

    invoke-virtual {v2, v4}, Lcom/fiio/music/activity/LockScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 457
    :cond_7
    iget-object v1, p0, Lcom/fiio/music/activity/dm;->a:Lcom/fiio/music/activity/LockScreenActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LockScreenActivity;->h(Lcom/fiio/music/activity/LockScreenActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/dm;->a:Lcom/fiio/music/activity/LockScreenActivity;

    invoke-virtual {v2, v5}, Lcom/fiio/music/activity/LockScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 467
    :cond_8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 468
    iget-object v0, p0, Lcom/fiio/music/activity/dm;->a:Lcom/fiio/music/activity/LockScreenActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LockScreenActivity;->j(Lcom/fiio/music/activity/LockScreenActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f0204d1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_3

    .line 470
    :cond_9
    const/16 v0, 0x9

    if-ne v1, v0, :cond_a

    .line 471
    iget-object v0, p0, Lcom/fiio/music/activity/dm;->a:Lcom/fiio/music/activity/LockScreenActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/LockScreenActivity;->b()V

    goto/16 :goto_3

    .line 473
    :cond_a
    const/16 v0, 0x8

    if-ne v1, v0, :cond_2

    .line 475
    iget-object v0, p0, Lcom/fiio/music/activity/dm;->a:Lcom/fiio/music/activity/LockScreenActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/LockScreenActivity;->c()V

    goto/16 :goto_3
.end method
