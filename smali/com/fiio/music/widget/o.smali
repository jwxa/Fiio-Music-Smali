.class final Lcom/fiio/music/widget/o;
.super Ljava/lang/Object;
.source "SmootheListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/fiio/music/widget/SmootheListView;

.field private final synthetic b:I

.field private final synthetic c:I

.field private final synthetic d:I


# direct methods
.method constructor <init>(Lcom/fiio/music/widget/SmootheListView;III)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/widget/o;->a:Lcom/fiio/music/widget/SmootheListView;

    iput p2, p0, Lcom/fiio/music/widget/o;->b:I

    iput p3, p0, Lcom/fiio/music/widget/o;->c:I

    iput p4, p0, Lcom/fiio/music/widget/o;->d:I

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 61
    iget-object v0, p0, Lcom/fiio/music/widget/o;->a:Lcom/fiio/music/widget/SmootheListView;

    iget v1, p0, Lcom/fiio/music/widget/o;->b:I

    iget v2, p0, Lcom/fiio/music/widget/o;->c:I

    iget v3, p0, Lcom/fiio/music/widget/o;->d:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/fiio/music/widget/SmootheListView;->smoothScrollToPositionFromTop(III)V

    .line 62
    return-void
.end method
