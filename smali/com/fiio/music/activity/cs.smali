.class final Lcom/fiio/music/activity/cs;
.super Ljava/lang/Object;
.source "LocalMusicActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/cq;

.field private final synthetic b:Lcom/fiio/music/custom/f;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/cq;Lcom/fiio/music/custom/f;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/cs;->a:Lcom/fiio/music/activity/cq;

    iput-object p2, p0, Lcom/fiio/music/activity/cs;->b:Lcom/fiio/music/custom/f;

    .line 3484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 3487
    iget-object v0, p0, Lcom/fiio/music/activity/cs;->b:Lcom/fiio/music/custom/f;

    invoke-virtual {v0}, Lcom/fiio/music/custom/f;->cancel()V

    .line 3488
    return-void
.end method
