.class final Lcom/fiio/music/activity/aj;
.super Ljava/lang/Object;
.source "EqActivity.java"

# interfaces
.implements Landroid/widget/SlidingDrawer$OnDrawerOpenListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/EqActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/EqActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/aj;->a:Lcom/fiio/music/activity/EqActivity;

    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDrawerOpened()V
    .locals 3

    .prologue
    .line 433
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v0, 0xa

    if-lt v1, v0, :cond_0

    .line 442
    return-void

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/activity/aj;->a:Lcom/fiio/music/activity/EqActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/EqActivity;->access$4(Lcom/fiio/music/activity/EqActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/util/VerticalSeekBar;

    new-instance v2, Lcom/fiio/music/activity/ak;

    invoke-direct {v2, p0}, Lcom/fiio/music/activity/ak;-><init>(Lcom/fiio/music/activity/aj;)V

    invoke-virtual {v0, v2}, Lcom/fiio/music/util/VerticalSeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 433
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
