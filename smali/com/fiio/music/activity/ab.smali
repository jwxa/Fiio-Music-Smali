.class final Lcom/fiio/music/activity/ab;
.super Ljava/lang/Object;
.source "EqActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/EqActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/EqActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/ab;->a:Lcom/fiio/music/activity/EqActivity;

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/fiio/music/activity/ab;)Lcom/fiio/music/activity/EqActivity;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/fiio/music/activity/ab;->a:Lcom/fiio/music/activity/EqActivity;

    return-object v0
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 10

    .prologue
    const-wide/16 v8, 0xc8

    const/16 v6, 0xa

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 313
    iget-object v0, p0, Lcom/fiio/music/activity/ab;->a:Lcom/fiio/music/activity/EqActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/ab;->a:Lcom/fiio/music/activity/EqActivity;

    const-string v3, "eqactivity"

    invoke-virtual {v1, v3, v2}, Lcom/fiio/music/activity/EqActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, v0, Lcom/fiio/music/activity/EqActivity;->spPreferences:Landroid/content/SharedPreferences;

    .line 315
    iget-object v0, p0, Lcom/fiio/music/activity/ab;->a:Lcom/fiio/music/activity/EqActivity;

    iget-object v0, v0, Lcom/fiio/music/activity/EqActivity;->spPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isCheckedForCheckBox"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 316
    iget-object v0, p0, Lcom/fiio/music/activity/ab;->a:Lcom/fiio/music/activity/EqActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/ab;->a:Lcom/fiio/music/activity/EqActivity;

    const-string v3, "closeparamter"

    invoke-virtual {v1, v3, v2}, Lcom/fiio/music/activity/EqActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/EqActivity;->access$3(Lcom/fiio/music/activity/EqActivity;Landroid/content/SharedPreferences;)V

    .line 317
    if-eqz p2, :cond_3

    .line 318
    iget-object v0, p0, Lcom/fiio/music/activity/ab;->a:Lcom/fiio/music/activity/EqActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/ab;->a:Lcom/fiio/music/activity/EqActivity;

    const v3, 0x7f0c0227

    invoke-virtual {v1, v3}, Lcom/fiio/music/activity/EqActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8, v9}, Lcom/fiio/music/util/cs;->a(Landroid/app/Activity;Ljava/lang/String;J)V

    move v1, v2

    .line 319
    :goto_0
    if-lt v1, v6, :cond_1

    .line 328
    iget-object v0, p0, Lcom/fiio/music/activity/ab;->a:Lcom/fiio/music/activity/EqActivity;

    invoke-static {v0, v5}, Lcom/fiio/music/activity/EqActivity;->access$5(Lcom/fiio/music/activity/EqActivity;Z)V

    .line 330
    iget-object v0, p0, Lcom/fiio/music/activity/ab;->a:Lcom/fiio/music/activity/EqActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/ab;->a:Lcom/fiio/music/activity/EqActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/EqActivity;->access$6(Lcom/fiio/music/activity/EqActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "close"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/activity/EqActivity;->access$7(Lcom/fiio/music/activity/EqActivity;Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/fiio/music/activity/ab;->a:Lcom/fiio/music/activity/EqActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/EqActivity;->access$8(Lcom/fiio/music/activity/EqActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 332
    new-instance v0, Lcom/fiio/music/activity/ad;

    invoke-direct {v0, p0}, Lcom/fiio/music/activity/ad;-><init>(Lcom/fiio/music/activity/ab;)V

    invoke-virtual {v0}, Lcom/fiio/music/activity/ad;->a()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 333
    iget-object v1, p0, Lcom/fiio/music/activity/ab;->a:Lcom/fiio/music/activity/EqActivity;

    iget-object v1, v1, Lcom/fiio/music/activity/EqActivity;->gson:Lcom/a/a/aq;

    iget-object v3, p0, Lcom/fiio/music/activity/ab;->a:Lcom/fiio/music/activity/EqActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/EqActivity;->access$8(Lcom/fiio/music/activity/EqActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/a/a/aq;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 334
    iget-object v1, p0, Lcom/fiio/music/activity/ab;->a:Lcom/fiio/music/activity/EqActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/EqActivity;->access$9(Lcom/fiio/music/activity/EqActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 335
    iget-object v1, p0, Lcom/fiio/music/activity/ab;->a:Lcom/fiio/music/activity/EqActivity;

    iget-object v1, v1, Lcom/fiio/music/activity/EqActivity;->fiioMediaPlayer:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v1, v5, v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setEqualizer(Z[F)V

    .line 341
    :goto_1
    iget-object v0, p0, Lcom/fiio/music/activity/ab;->a:Lcom/fiio/music/activity/EqActivity;

    iget-object v0, v0, Lcom/fiio/music/activity/EqActivity;->mClickableSlidingDrawer:Lcom/fiio/music/widget/ClickableSlidingDrawer;

    new-instance v1, Lcom/fiio/music/activity/ae;

    invoke-direct {v1, p0}, Lcom/fiio/music/activity/ae;-><init>(Lcom/fiio/music/activity/ab;)V

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/ClickableSlidingDrawer;->setOnDrawerCloseListener(Landroid/widget/SlidingDrawer$OnDrawerCloseListener;)V

    .line 392
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/fiio/music/activity/ab;->a:Lcom/fiio/music/activity/EqActivity;

    invoke-static {}, Lcom/fiio/music/activity/FiiOMusicApplication;->b()Lcom/fiio/music/service/MediaPlayerService;

    move-result-object v1

    iput-object v1, v0, Lcom/fiio/music/activity/EqActivity;->mediaplayservice:Lcom/fiio/music/service/MediaPlayerService;

    .line 393
    iget-object v0, p0, Lcom/fiio/music/activity/ab;->a:Lcom/fiio/music/activity/EqActivity;

    iget-object v0, v0, Lcom/fiio/music/activity/EqActivity;->mediaplayservice:Lcom/fiio/music/service/MediaPlayerService;

    iget-object v1, p0, Lcom/fiio/music/activity/ab;->a:Lcom/fiio/music/activity/EqActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/EqActivity;->access$9(Lcom/fiio/music/activity/EqActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/service/MediaPlayerService;->b(Z)V

    .line 394
    return-void

    .line 321
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/activity/ab;->a:Lcom/fiio/music/activity/EqActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/EqActivity;->access$4(Lcom/fiio/music/activity/EqActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/util/VerticalSeekBar;

    new-instance v3, Lcom/fiio/music/activity/ac;

    invoke-direct {v3, p0}, Lcom/fiio/music/activity/ac;-><init>(Lcom/fiio/music/activity/ab;)V

    invoke-virtual {v0, v3}, Lcom/fiio/music/util/VerticalSeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 319
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 338
    :cond_2
    iget-object v1, p0, Lcom/fiio/music/activity/ab;->a:Lcom/fiio/music/activity/EqActivity;

    iget-object v1, v1, Lcom/fiio/music/activity/EqActivity;->fiioMediaPlayer:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    invoke-virtual {v1, v2, v0}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setEqualizer(Z[F)V

    goto :goto_1

    .line 358
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/activity/ab;->a:Lcom/fiio/music/activity/EqActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/ab;->a:Lcom/fiio/music/activity/EqActivity;

    const v3, 0x7f0c0226

    invoke-virtual {v1, v3}, Lcom/fiio/music/activity/EqActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8, v9}, Lcom/fiio/music/util/cs;->a(Landroid/app/Activity;Ljava/lang/String;J)V

    move v1, v2

    .line 359
    :goto_3
    if-lt v1, v6, :cond_4

    .line 375
    iget-object v0, p0, Lcom/fiio/music/activity/ab;->a:Lcom/fiio/music/activity/EqActivity;

    iget-object v0, v0, Lcom/fiio/music/activity/EqActivity;->mClickableSlidingDrawer:Lcom/fiio/music/widget/ClickableSlidingDrawer;

    new-instance v1, Lcom/fiio/music/activity/ah;

    invoke-direct {v1, p0}, Lcom/fiio/music/activity/ah;-><init>(Lcom/fiio/music/activity/ab;)V

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/ClickableSlidingDrawer;->setOnDrawerCloseListener(Landroid/widget/SlidingDrawer$OnDrawerCloseListener;)V

    goto :goto_2

    .line 360
    :cond_4
    iget-object v0, p0, Lcom/fiio/music/activity/ab;->a:Lcom/fiio/music/activity/EqActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/EqActivity;->access$4(Lcom/fiio/music/activity/EqActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/util/VerticalSeekBar;

    new-instance v3, Lcom/fiio/music/activity/ag;

    invoke-direct {v3, p0}, Lcom/fiio/music/activity/ag;-><init>(Lcom/fiio/music/activity/ab;)V

    invoke-virtual {v0, v3}, Lcom/fiio/music/util/VerticalSeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 369
    iget-object v0, p0, Lcom/fiio/music/activity/ab;->a:Lcom/fiio/music/activity/EqActivity;

    iget-object v0, v0, Lcom/fiio/music/activity/EqActivity;->fiioMediaPlayer:Lcom/example/root/checkappmusic/FiioMediaPlayer;

    iget-object v3, p0, Lcom/fiio/music/activity/ab;->a:Lcom/fiio/music/activity/EqActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/EqActivity;->access$10(Lcom/fiio/music/activity/EqActivity;)[F

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setEqualizer(Z[F)V

    .line 371
    iget-object v0, p0, Lcom/fiio/music/activity/ab;->a:Lcom/fiio/music/activity/EqActivity;

    invoke-static {v0, v2}, Lcom/fiio/music/activity/EqActivity;->access$5(Lcom/fiio/music/activity/EqActivity;Z)V

    .line 372
    iget-object v0, p0, Lcom/fiio/music/activity/ab;->a:Lcom/fiio/music/activity/EqActivity;

    iget-object v3, p0, Lcom/fiio/music/activity/ab;->a:Lcom/fiio/music/activity/EqActivity;

    iget-object v3, v3, Lcom/fiio/music/activity/EqActivity;->gson:Lcom/a/a/aq;

    iget-object v4, p0, Lcom/fiio/music/activity/ab;->a:Lcom/fiio/music/activity/EqActivity;

    invoke-static {v4}, Lcom/fiio/music/activity/EqActivity;->access$10(Lcom/fiio/music/activity/EqActivity;)[F

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/a/a/aq;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/fiio/music/activity/EqActivity;->access$11(Lcom/fiio/music/activity/EqActivity;Ljava/lang/String;)V

    .line 373
    iget-object v0, p0, Lcom/fiio/music/activity/ab;->a:Lcom/fiio/music/activity/EqActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/EqActivity;->access$6(Lcom/fiio/music/activity/EqActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "close"

    iget-object v4, p0, Lcom/fiio/music/activity/ab;->a:Lcom/fiio/music/activity/EqActivity;

    invoke-static {v4}, Lcom/fiio/music/activity/EqActivity;->access$12(Lcom/fiio/music/activity/EqActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 359
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3
.end method
