.class final Lcom/fiio/music/activity/am;
.super Ljava/lang/Object;
.source "EqActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/al;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/al;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/am;->a:Lcom/fiio/music/activity/al;

    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 452
    iget-object v1, p0, Lcom/fiio/music/activity/am;->a:Lcom/fiio/music/activity/al;

    invoke-static {v1}, Lcom/fiio/music/activity/al;->a(Lcom/fiio/music/activity/al;)Lcom/fiio/music/activity/EqActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/am;->a:Lcom/fiio/music/activity/al;

    invoke-static {v2}, Lcom/fiio/music/activity/al;->a(Lcom/fiio/music/activity/al;)Lcom/fiio/music/activity/EqActivity;

    move-result-object v2

    const-string v3, "eqactivity"

    invoke-virtual {v2, v3, v0}, Lcom/fiio/music/activity/EqActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, v1, Lcom/fiio/music/activity/EqActivity;->spPreferences:Landroid/content/SharedPreferences;

    .line 453
    iget-object v1, p0, Lcom/fiio/music/activity/am;->a:Lcom/fiio/music/activity/al;

    invoke-static {v1}, Lcom/fiio/music/activity/al;->a(Lcom/fiio/music/activity/al;)Lcom/fiio/music/activity/EqActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/fiio/music/activity/EqActivity;->spPreferences:Landroid/content/SharedPreferences;

    const-string v2, "isCheckedForCheckBox"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 454
    if-eqz v1, :cond_0

    .line 466
    :goto_0
    return v0

    :cond_0
    move v1, v0

    .line 457
    :goto_1
    const/16 v0, 0xa

    if-lt v1, v0, :cond_1

    .line 466
    const/4 v0, 0x1

    goto :goto_0

    .line 458
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/activity/am;->a:Lcom/fiio/music/activity/al;

    invoke-static {v0}, Lcom/fiio/music/activity/al;->a(Lcom/fiio/music/activity/al;)Lcom/fiio/music/activity/EqActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/activity/EqActivity;->access$4(Lcom/fiio/music/activity/EqActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/util/VerticalSeekBar;

    new-instance v2, Lcom/fiio/music/activity/an;

    invoke-direct {v2, p0}, Lcom/fiio/music/activity/an;-><init>(Lcom/fiio/music/activity/am;)V

    invoke-virtual {v0, v2}, Lcom/fiio/music/util/VerticalSeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 457
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method
