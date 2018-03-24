.class final Lcom/fiio/music/widget/m;
.super Ljava/lang/Object;
.source "SmootheListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/widget/SmootheListView;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/fiio/music/widget/SmootheListView;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/widget/m;->a:Lcom/fiio/music/widget/SmootheListView;

    iput p2, p0, Lcom/fiio/music/widget/m;->b:I

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3

    .prologue
    .line 38
    if-nez p2, :cond_0

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/fiio/music/widget/n;

    iget v2, p0, Lcom/fiio/music/widget/m;->b:I

    invoke-direct {v1, p0, p1, v2}, Lcom/fiio/music/widget/n;-><init>(Lcom/fiio/music/widget/m;Landroid/widget/AbsListView;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49
    :cond_0
    return-void
.end method
