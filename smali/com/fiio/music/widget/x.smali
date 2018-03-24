.class public final Lcom/fiio/music/widget/x;
.super Ljava/lang/Object;
.source "VolumeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/widget/VolumeDialog;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/media/AudioManager;


# direct methods
.method public constructor <init>(Lcom/fiio/music/widget/VolumeDialog;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/media/AudioManager;)V
    .locals 0

    .prologue
    .line 385
    iput-object p1, p0, Lcom/fiio/music/widget/x;->a:Lcom/fiio/music/widget/VolumeDialog;

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    iput-object p2, p0, Lcom/fiio/music/widget/x;->b:Landroid/widget/TextView;

    .line 387
    iput-object p3, p0, Lcom/fiio/music/widget/x;->c:Landroid/widget/ImageView;

    .line 388
    iput-object p4, p0, Lcom/fiio/music/widget/x;->d:Landroid/media/AudioManager;

    .line 389
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 396
    iget-object v0, p0, Lcom/fiio/music/widget/x;->a:Lcom/fiio/music/widget/VolumeDialog;

    iget-object v1, p0, Lcom/fiio/music/widget/x;->a:Lcom/fiio/music/widget/VolumeDialog;

    invoke-static {v1}, Lcom/fiio/music/widget/VolumeDialog;->f(Lcom/fiio/music/widget/VolumeDialog;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "MAX_VOICE"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/fiio/music/widget/VolumeDialog;->a(Lcom/fiio/music/widget/VolumeDialog;I)V

    .line 397
    iget-object v0, p0, Lcom/fiio/music/widget/x;->a:Lcom/fiio/music/widget/VolumeDialog;

    iget-object v1, p0, Lcom/fiio/music/widget/x;->d:Landroid/media/AudioManager;

    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/fiio/music/widget/VolumeDialog;->b(Lcom/fiio/music/widget/VolumeDialog;I)V

    .line 398
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 411
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/widget/x;->d:Landroid/media/AudioManager;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 416
    if-nez v0, :cond_2

    .line 417
    iget-object v1, p0, Lcom/fiio/music/widget/x;->a:Lcom/fiio/music/widget/VolumeDialog;

    invoke-static {v1}, Lcom/fiio/music/widget/VolumeDialog;->i(Lcom/fiio/music/widget/VolumeDialog;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 418
    iget-object v1, p0, Lcom/fiio/music/widget/x;->c:Landroid/widget/ImageView;

    const v2, 0x7f020431

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 430
    :goto_1
    iget-object v1, p0, Lcom/fiio/music/widget/x;->b:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    return-void

    .line 400
    :pswitch_0
    iget-object v0, p0, Lcom/fiio/music/widget/x;->d:Landroid/media/AudioManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v4, v1, v3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 410
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/fiio/music/widget/x;->a:Lcom/fiio/music/widget/VolumeDialog;

    invoke-virtual {v0}, Lcom/fiio/music/widget/VolumeDialog;->c()V

    goto :goto_0

    .line 404
    :pswitch_1
    iget-object v0, p0, Lcom/fiio/music/widget/x;->a:Lcom/fiio/music/widget/VolumeDialog;

    invoke-static {v0}, Lcom/fiio/music/widget/VolumeDialog;->g(Lcom/fiio/music/widget/VolumeDialog;)I

    move-result v0

    iget-object v1, p0, Lcom/fiio/music/widget/x;->a:Lcom/fiio/music/widget/VolumeDialog;

    invoke-static {v1}, Lcom/fiio/music/widget/VolumeDialog;->h(Lcom/fiio/music/widget/VolumeDialog;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 405
    iget-object v0, p0, Lcom/fiio/music/widget/x;->d:Landroid/media/AudioManager;

    invoke-virtual {v0, v4, v5, v3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_2

    .line 420
    :cond_1
    iget-object v1, p0, Lcom/fiio/music/widget/x;->c:Landroid/widget/ImageView;

    const v2, 0x7f020432

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 423
    :cond_2
    iget-object v1, p0, Lcom/fiio/music/widget/x;->a:Lcom/fiio/music/widget/VolumeDialog;

    invoke-static {v1}, Lcom/fiio/music/widget/VolumeDialog;->i(Lcom/fiio/music/widget/VolumeDialog;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 424
    iget-object v1, p0, Lcom/fiio/music/widget/x;->c:Landroid/widget/ImageView;

    const v2, 0x7f020425

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 426
    :cond_3
    iget-object v1, p0, Lcom/fiio/music/widget/x;->c:Landroid/widget/ImageView;

    const v2, 0x7f020426

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 398
    :pswitch_data_0
    .packed-switch 0x7f0b0267
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
