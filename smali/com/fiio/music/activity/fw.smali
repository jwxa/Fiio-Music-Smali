.class final Lcom/fiio/music/activity/fw;
.super Ljava/lang/Object;
.source "PlayerMainActivity.java"

# interfaces
.implements Lcom/fiio/music/h/g;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/PlayerMainActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/PlayerMainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/fw;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    .line 3287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .prologue
    .line 3307
    iget-object v0, p0, Lcom/fiio/music/activity/fw;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0, p1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$55(Lcom/fiio/music/activity/PlayerMainActivity;I)V

    .line 3308
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
    const/4 v1, 0x3

    .line 3292
    if-eqz p1, :cond_0

    .line 3294
    iget-object v0, p0, Lcom/fiio/music/activity/fw;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0, p1, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$53(Lcom/fiio/music/activity/PlayerMainActivity;Ljava/util/List;I)V

    .line 3295
    iget-object v0, p0, Lcom/fiio/music/activity/fw;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0, p1, v1}, Lcom/fiio/music/activity/PlayerMainActivity;->access$54(Lcom/fiio/music/activity/PlayerMainActivity;Ljava/util/List;I)V

    .line 3296
    iget-object v0, p0, Lcom/fiio/music/activity/fw;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$46(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/adapter/LyricAdapter;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/LyricAdapter;->setPaddingCount(I)V

    .line 3297
    iget-object v0, p0, Lcom/fiio/music/activity/fw;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$46(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/adapter/LyricAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fiio/music/adapter/LyricAdapter;->setLyric(Ljava/util/List;)V

    .line 3298
    iget-object v0, p0, Lcom/fiio/music/activity/fw;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$46(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/adapter/LyricAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/fiio/music/adapter/LyricAdapter;->setCurrentSentenceIndex(I)V

    .line 3299
    iget-object v0, p0, Lcom/fiio/music/activity/fw;->a:Lcom/fiio/music/activity/PlayerMainActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/PlayerMainActivity;->access$46(Lcom/fiio/music/activity/PlayerMainActivity;)Lcom/fiio/music/adapter/LyricAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/LyricAdapter;->notifyDataSetChanged()V

    .line 3302
    :cond_0
    return-void
.end method
