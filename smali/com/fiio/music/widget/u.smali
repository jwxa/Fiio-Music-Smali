.class final Lcom/fiio/music/widget/u;
.super Ljava/lang/Object;
.source "VolumeDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/widget/VolumeDialog;


# direct methods
.method constructor <init>(Lcom/fiio/music/widget/VolumeDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/widget/u;->a:Lcom/fiio/music/widget/VolumeDialog;

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 244
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 284
    :cond_0
    :goto_0
    return v3

    .line 247
    :pswitch_0
    iget-object v0, p0, Lcom/fiio/music/widget/u;->a:Lcom/fiio/music/widget/VolumeDialog;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v0, v1}, Lcom/fiio/music/widget/VolumeDialog;->a(Lcom/fiio/music/widget/VolumeDialog;F)V

    .line 251
    iget-object v0, p0, Lcom/fiio/music/widget/u;->a:Lcom/fiio/music/widget/VolumeDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fiio/music/widget/VolumeDialog;->b(Lcom/fiio/music/widget/VolumeDialog;F)V

    goto :goto_0

    .line 255
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 256
    iget-object v1, p0, Lcom/fiio/music/widget/u;->a:Lcom/fiio/music/widget/VolumeDialog;

    invoke-static {v1}, Lcom/fiio/music/widget/VolumeDialog;->a(Lcom/fiio/music/widget/VolumeDialog;)F

    move-result v1

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x42480000    # 50.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 258
    iget-object v1, p0, Lcom/fiio/music/widget/u;->a:Lcom/fiio/music/widget/VolumeDialog;

    invoke-static {v1}, Lcom/fiio/music/widget/VolumeDialog;->b(Lcom/fiio/music/widget/VolumeDialog;)Lcom/fiio/music/custom/a;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/fiio/music/widget/u;->a:Lcom/fiio/music/widget/VolumeDialog;

    invoke-static {v1}, Lcom/fiio/music/widget/VolumeDialog;->b(Lcom/fiio/music/widget/VolumeDialog;)Lcom/fiio/music/custom/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/custom/a;->isShowing()Z

    move-result v1

    if-nez v1, :cond_3

    .line 259
    :cond_1
    iget-object v1, p0, Lcom/fiio/music/widget/u;->a:Lcom/fiio/music/widget/VolumeDialog;

    invoke-static {v1}, Lcom/fiio/music/widget/VolumeDialog;->c(Lcom/fiio/music/widget/VolumeDialog;)V

    .line 260
    iget-object v1, p0, Lcom/fiio/music/widget/u;->a:Lcom/fiio/music/widget/VolumeDialog;

    invoke-static {v1, v3}, Lcom/fiio/music/widget/VolumeDialog;->a(Lcom/fiio/music/widget/VolumeDialog;Z)V

    .line 261
    iget-object v1, p0, Lcom/fiio/music/widget/u;->a:Lcom/fiio/music/widget/VolumeDialog;

    invoke-static {v1, v0}, Lcom/fiio/music/widget/VolumeDialog;->a(Lcom/fiio/music/widget/VolumeDialog;F)V

    .line 268
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/fiio/music/widget/u;->a:Lcom/fiio/music/widget/VolumeDialog;

    invoke-static {v1}, Lcom/fiio/music/widget/VolumeDialog;->d(Lcom/fiio/music/widget/VolumeDialog;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    iget-object v1, p0, Lcom/fiio/music/widget/u;->a:Lcom/fiio/music/widget/VolumeDialog;

    iget-object v2, p0, Lcom/fiio/music/widget/u;->a:Lcom/fiio/music/widget/VolumeDialog;

    invoke-static {v2}, Lcom/fiio/music/widget/VolumeDialog;->a(Lcom/fiio/music/widget/VolumeDialog;)F

    move-result v2

    sub-float v2, v0, v2

    invoke-static {v1, v2}, Lcom/fiio/music/widget/VolumeDialog;->b(Lcom/fiio/music/widget/VolumeDialog;F)V

    .line 271
    iget-object v1, p0, Lcom/fiio/music/widget/u;->a:Lcom/fiio/music/widget/VolumeDialog;

    invoke-static {v1}, Lcom/fiio/music/widget/VolumeDialog;->e(Lcom/fiio/music/widget/VolumeDialog;)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    .line 272
    iget-object v1, p0, Lcom/fiio/music/widget/u;->a:Lcom/fiio/music/widget/VolumeDialog;

    invoke-static {v1, v0}, Lcom/fiio/music/widget/VolumeDialog;->a(Lcom/fiio/music/widget/VolumeDialog;F)V

    .line 273
    iget-object v0, p0, Lcom/fiio/music/widget/u;->a:Lcom/fiio/music/widget/VolumeDialog;

    invoke-virtual {v0}, Lcom/fiio/music/widget/VolumeDialog;->e()V

    .line 274
    iget-object v0, p0, Lcom/fiio/music/widget/u;->a:Lcom/fiio/music/widget/VolumeDialog;

    invoke-virtual {v0}, Lcom/fiio/music/widget/VolumeDialog;->g()V

    goto :goto_0

    .line 262
    :cond_3
    iget-object v1, p0, Lcom/fiio/music/widget/u;->a:Lcom/fiio/music/widget/VolumeDialog;

    invoke-static {v1}, Lcom/fiio/music/widget/VolumeDialog;->b(Lcom/fiio/music/widget/VolumeDialog;)Lcom/fiio/music/custom/a;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/fiio/music/widget/u;->a:Lcom/fiio/music/widget/VolumeDialog;

    invoke-static {v1}, Lcom/fiio/music/widget/VolumeDialog;->b(Lcom/fiio/music/widget/VolumeDialog;)Lcom/fiio/music/custom/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/custom/a;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 263
    iget-object v1, p0, Lcom/fiio/music/widget/u;->a:Lcom/fiio/music/widget/VolumeDialog;

    invoke-static {v1, v3}, Lcom/fiio/music/widget/VolumeDialog;->a(Lcom/fiio/music/widget/VolumeDialog;Z)V

    .line 264
    iget-object v1, p0, Lcom/fiio/music/widget/u;->a:Lcom/fiio/music/widget/VolumeDialog;

    invoke-static {v1, v0}, Lcom/fiio/music/widget/VolumeDialog;->a(Lcom/fiio/music/widget/VolumeDialog;F)V

    goto :goto_1

    .line 275
    :cond_4
    iget-object v1, p0, Lcom/fiio/music/widget/u;->a:Lcom/fiio/music/widget/VolumeDialog;

    invoke-static {v1}, Lcom/fiio/music/widget/VolumeDialog;->e(Lcom/fiio/music/widget/VolumeDialog;)F

    move-result v1

    const/high16 v2, -0x40000000    # -2.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 276
    iget-object v1, p0, Lcom/fiio/music/widget/u;->a:Lcom/fiio/music/widget/VolumeDialog;

    invoke-static {v1, v0}, Lcom/fiio/music/widget/VolumeDialog;->a(Lcom/fiio/music/widget/VolumeDialog;F)V

    .line 277
    iget-object v0, p0, Lcom/fiio/music/widget/u;->a:Lcom/fiio/music/widget/VolumeDialog;

    invoke-virtual {v0}, Lcom/fiio/music/widget/VolumeDialog;->f()V

    .line 278
    iget-object v0, p0, Lcom/fiio/music/widget/u;->a:Lcom/fiio/music/widget/VolumeDialog;

    invoke-virtual {v0}, Lcom/fiio/music/widget/VolumeDialog;->g()V

    goto/16 :goto_0

    .line 283
    :pswitch_2
    iget-object v0, p0, Lcom/fiio/music/widget/u;->a:Lcom/fiio/music/widget/VolumeDialog;

    invoke-virtual {v0}, Lcom/fiio/music/widget/VolumeDialog;->c()V

    goto/16 :goto_0

    .line 244
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
