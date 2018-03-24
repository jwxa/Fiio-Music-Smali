.class final Lcom/fiio/music/activity/dl;
.super Ljava/lang/Object;
.source "LockScreenActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/LockScreenActivity;

.field private final synthetic b:Landroid/widget/AbsListView;

.field private final synthetic c:I

.field private final synthetic d:I

.field private final synthetic e:I


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/LockScreenActivity;Landroid/widget/AbsListView;II)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/dl;->a:Lcom/fiio/music/activity/LockScreenActivity;

    iput-object p2, p0, Lcom/fiio/music/activity/dl;->b:Landroid/widget/AbsListView;

    iput p3, p0, Lcom/fiio/music/activity/dl;->c:I

    iput p4, p0, Lcom/fiio/music/activity/dl;->d:I

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/fiio/music/activity/dl;->e:I

    .line 968
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .prologue
    .line 981
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 4

    .prologue
    .line 972
    if-nez p2, :cond_0

    .line 973
    iget-object v0, p0, Lcom/fiio/music/activity/dl;->b:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 974
    iget-object v0, p0, Lcom/fiio/music/activity/dl;->b:Landroid/widget/AbsListView;

    iget v1, p0, Lcom/fiio/music/activity/dl;->c:I

    iget v2, p0, Lcom/fiio/music/activity/dl;->d:I

    iget v3, p0, Lcom/fiio/music/activity/dl;->e:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->smoothScrollToPositionFromTop(III)V

    .line 977
    :cond_0
    return-void
.end method
