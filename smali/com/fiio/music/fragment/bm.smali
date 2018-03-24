.class final Lcom/fiio/music/fragment/bm;
.super Landroid/os/AsyncTask;
.source "TabBFm.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/fiio/music/fragment/TabBFm;


# direct methods
.method constructor <init>(Lcom/fiio/music/fragment/TabBFm;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/fiio/music/fragment/bm;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/fiio/music/fragment/bm;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 300
    :goto_0
    return-object v0

    .line 292
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/fiio/music/fragment/bm;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabBFm;->access$27(Lcom/fiio/music/fragment/TabBFm;)Lcom/fiio/music/util/cr;

    move-result-object v0

    const-string v1, "tabBfmFir"

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v0

    .line 293
    iget-object v1, p0, Lcom/fiio/music/fragment/bm;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabBFm;->access$27(Lcom/fiio/music/fragment/TabBFm;)Lcom/fiio/music/util/cr;

    move-result-object v1

    const-string v2, "sortBFm"

    invoke-virtual {v1, v2}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v1

    .line 294
    iget-object v2, p0, Lcom/fiio/music/fragment/bm;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v2}, Lcom/fiio/music/fragment/TabBFm;->access$10(Lcom/fiio/music/fragment/TabBFm;)Ljava/lang/String;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :try_start_1
    iget-object v3, p0, Lcom/fiio/music/fragment/bm;->a:Lcom/fiio/music/fragment/TabBFm;

    iget-object v4, p0, Lcom/fiio/music/fragment/bm;->a:Lcom/fiio/music/fragment/TabBFm;

    iget-object v5, p0, Lcom/fiio/music/fragment/bm;->a:Lcom/fiio/music/fragment/TabBFm;

    iget-object v5, v5, Lcom/fiio/music/fragment/TabBFm;->data:Ljava/util/List;

    iget-object v6, p0, Lcom/fiio/music/fragment/bm;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v6}, Lcom/fiio/music/fragment/TabBFm;->access$10(Lcom/fiio/music/fragment/TabBFm;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6, v0, v1}, Lcom/fiio/music/fragment/TabBFm;->access$28(Lcom/fiio/music/fragment/TabBFm;Ljava/util/List;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    iput-object v0, v3, Lcom/fiio/music/fragment/TabBFm;->data:Ljava/util/List;

    .line 294
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 297
    const-wide/16 v0, 0x64

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 300
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 294
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected final onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/fiio/music/fragment/bm;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabBFm;->access$6(Lcom/fiio/music/fragment/TabBFm;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->setProgressBarRun(Ljava/lang/Boolean;)V

    .line 306
    iget-object v0, p0, Lcom/fiio/music/fragment/bm;->a:Lcom/fiio/music/fragment/TabBFm;

    iget-object v0, v0, Lcom/fiio/music/fragment/TabBFm;->data:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/fiio/music/fragment/bm;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabBFm;->access$5(Lcom/fiio/music/fragment/TabBFm;)Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/fragment/bm;->a:Lcom/fiio/music/fragment/TabBFm;

    iget-object v1, v1, Lcom/fiio/music/fragment/TabBFm;->data:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/SongItemAdapter;->setData(Ljava/util/List;)V

    .line 310
    iget-object v0, p0, Lcom/fiio/music/fragment/bm;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabBFm;->access$6(Lcom/fiio/music/fragment/TabBFm;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, p0, Lcom/fiio/music/fragment/bm;->a:Lcom/fiio/music/fragment/TabBFm;

    iget-object v1, v1, Lcom/fiio/music/fragment/TabBFm;->data:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->updateHeadBar(I)V

    .line 312
    :cond_0
    return-void
.end method

.method protected final onPreExecute()V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/fiio/music/fragment/bm;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabBFm;->access$6(Lcom/fiio/music/fragment/TabBFm;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->setProgressBarRun(Ljava/lang/Boolean;)V

    .line 284
    iget-object v0, p0, Lcom/fiio/music/fragment/bm;->a:Lcom/fiio/music/fragment/TabBFm;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/fiio/music/fragment/TabBFm;->data:Ljava/util/List;

    .line 285
    iget-object v0, p0, Lcom/fiio/music/fragment/bm;->a:Lcom/fiio/music/fragment/TabBFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabBFm;->access$5(Lcom/fiio/music/fragment/TabBFm;)Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/fragment/bm;->a:Lcom/fiio/music/fragment/TabBFm;

    iget-object v1, v1, Lcom/fiio/music/fragment/TabBFm;->data:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/SongItemAdapter;->setData(Ljava/util/List;)V

    .line 286
    return-void
.end method
