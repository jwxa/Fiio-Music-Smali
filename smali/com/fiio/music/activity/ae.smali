.class final Lcom/fiio/music/activity/ae;
.super Ljava/lang/Object;
.source "EqActivity.java"

# interfaces
.implements Landroid/widget/SlidingDrawer$OnDrawerCloseListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/ab;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/ab;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/ae;->a:Lcom/fiio/music/activity/ab;

    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDrawerClosed()V
    .locals 3

    .prologue
    .line 344
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v0, 0xa

    if-lt v1, v0, :cond_0

    .line 353
    return-void

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/activity/ae;->a:Lcom/fiio/music/activity/ab;

    invoke-static {v0}, Lcom/fiio/music/activity/ab;->a(Lcom/fiio/music/activity/ab;)Lcom/fiio/music/activity/EqActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/activity/EqActivity;->access$4(Lcom/fiio/music/activity/EqActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/util/VerticalSeekBar;

    new-instance v2, Lcom/fiio/music/activity/af;

    invoke-direct {v2, p0}, Lcom/fiio/music/activity/af;-><init>(Lcom/fiio/music/activity/ae;)V

    invoke-virtual {v0, v2}, Lcom/fiio/music/util/VerticalSeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 344
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
