.class final Lcom/fiio/music/activity/dj;
.super Ljava/lang/Object;
.source "LockScreenActivity.java"

# interfaces
.implements Lcom/fiio/music/h/g;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/LockScreenActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/LockScreenActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/dj;->a:Lcom/fiio/music/activity/LockScreenActivity;

    .line 752
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .prologue
    .line 777
    iget-object v0, p0, Lcom/fiio/music/activity/dj;->a:Lcom/fiio/music/activity/LockScreenActivity;

    invoke-static {v0, p1}, Lcom/fiio/music/activity/LockScreenActivity;->a(Lcom/fiio/music/activity/LockScreenActivity;I)V

    .line 778
    return-void
.end method

.method public final a(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/i/a;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 757
    if-eqz p1, :cond_0

    .line 760
    iget-object v0, p0, Lcom/fiio/music/activity/dj;->a:Lcom/fiio/music/activity/LockScreenActivity;

    invoke-static {p1}, Lcom/fiio/music/activity/LockScreenActivity;->a(Ljava/util/List;)V

    .line 761
    iget-object v0, p0, Lcom/fiio/music/activity/dj;->a:Lcom/fiio/music/activity/LockScreenActivity;

    invoke-static {p1}, Lcom/fiio/music/activity/LockScreenActivity;->b(Ljava/util/List;)V

    .line 762
    iget-object v0, p0, Lcom/fiio/music/activity/dj;->a:Lcom/fiio/music/activity/LockScreenActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LockScreenActivity;->c(Lcom/fiio/music/activity/LockScreenActivity;)Lcom/fiio/music/adapter/LyricAdapter;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/LyricAdapter;->setPaddingCount(I)V

    .line 763
    iget-object v0, p0, Lcom/fiio/music/activity/dj;->a:Lcom/fiio/music/activity/LockScreenActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LockScreenActivity;->c(Lcom/fiio/music/activity/LockScreenActivity;)Lcom/fiio/music/adapter/LyricAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fiio/music/adapter/LyricAdapter;->setLyric(Ljava/util/List;)V

    .line 764
    iget-object v0, p0, Lcom/fiio/music/activity/dj;->a:Lcom/fiio/music/activity/LockScreenActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LockScreenActivity;->c(Lcom/fiio/music/activity/LockScreenActivity;)Lcom/fiio/music/adapter/LyricAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/fiio/music/adapter/LyricAdapter;->setCurrentSentenceIndex(I)V

    .line 765
    iget-object v0, p0, Lcom/fiio/music/activity/dj;->a:Lcom/fiio/music/activity/LockScreenActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LockScreenActivity;->c(Lcom/fiio/music/activity/LockScreenActivity;)Lcom/fiio/music/adapter/LyricAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/LyricAdapter;->notifyDataSetChanged()V

    .line 771
    :cond_0
    return-void
.end method
