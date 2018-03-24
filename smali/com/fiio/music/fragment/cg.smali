.class final Lcom/fiio/music/fragment/cg;
.super Landroid/os/AsyncTask;
.source "TabDFm.java"


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
.field final synthetic a:Lcom/fiio/music/fragment/TabDFm;


# direct methods
.method constructor <init>(Lcom/fiio/music/fragment/TabDFm;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/fiio/music/fragment/cg;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/fiio/music/fragment/cg;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 246
    :goto_0
    return-object v0

    .line 235
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/fiio/music/fragment/cg;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabDFm;->access$10(Lcom/fiio/music/fragment/TabDFm;)Ljava/lang/String;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :try_start_1
    iget-object v0, p0, Lcom/fiio/music/fragment/cg;->a:Lcom/fiio/music/fragment/TabDFm;

    iget-object v2, p0, Lcom/fiio/music/fragment/cg;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v2}, Lcom/fiio/music/fragment/TabDFm;->access$18(Lcom/fiio/music/fragment/TabDFm;)Lcom/fiio/music/b/k;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/fragment/cg;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v3}, Lcom/fiio/music/fragment/TabDFm;->access$10(Lcom/fiio/music/fragment/TabDFm;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fiio/music/b/k;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/fiio/music/fragment/TabDFm;->data:Ljava/util/List;

    .line 238
    sget v0, Lcom/fiio/music/util/cn;->d:I

    .line 239
    iget-object v2, p0, Lcom/fiio/music/fragment/cg;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v2}, Lcom/fiio/music/fragment/TabDFm;->access$25(Lcom/fiio/music/fragment/TabDFm;)Lcom/fiio/music/util/cr;

    move-result-object v2

    const-string v3, "sortDFm"

    invoke-virtual {v2, v3}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v2

    .line 240
    iget-object v3, p0, Lcom/fiio/music/fragment/cg;->a:Lcom/fiio/music/fragment/TabDFm;

    iget-object v4, p0, Lcom/fiio/music/fragment/cg;->a:Lcom/fiio/music/fragment/TabDFm;

    iget-object v4, v4, Lcom/fiio/music/fragment/TabDFm;->data:Ljava/util/List;

    invoke-static {v4, v2, v0}, Lcom/fiio/music/util/cn;->b(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    iput-object v0, v3, Lcom/fiio/music/fragment/TabDFm;->data:Ljava/util/List;

    .line 235
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 242
    const-wide/16 v0, 0x64

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 246
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

    .line 235
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 243
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected final onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/fiio/music/fragment/cg;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabDFm;->access$6(Lcom/fiio/music/fragment/TabDFm;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->setProgressBarRun(Ljava/lang/Boolean;)V

    .line 251
    iget-object v0, p0, Lcom/fiio/music/fragment/cg;->a:Lcom/fiio/music/fragment/TabDFm;

    iget-object v0, v0, Lcom/fiio/music/fragment/TabDFm;->data:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/fiio/music/fragment/cg;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabDFm;->access$5(Lcom/fiio/music/fragment/TabDFm;)Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/fragment/cg;->a:Lcom/fiio/music/fragment/TabDFm;

    iget-object v1, v1, Lcom/fiio/music/fragment/TabDFm;->data:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/SongItemAdapter;->setData(Ljava/util/List;)V

    .line 253
    iget-object v0, p0, Lcom/fiio/music/fragment/cg;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabDFm;->access$6(Lcom/fiio/music/fragment/TabDFm;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    iget-object v1, p0, Lcom/fiio/music/fragment/cg;->a:Lcom/fiio/music/fragment/TabDFm;

    iget-object v1, v1, Lcom/fiio/music/fragment/TabDFm;->data:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->updateHeadBar(I)V

    .line 256
    :cond_0
    return-void
.end method

.method protected final onPreExecute()V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/fiio/music/fragment/cg;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabDFm;->access$6(Lcom/fiio/music/fragment/TabDFm;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/LocalMusicActivity;->setProgressBarRun(Ljava/lang/Boolean;)V

    .line 227
    iget-object v0, p0, Lcom/fiio/music/fragment/cg;->a:Lcom/fiio/music/fragment/TabDFm;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/fiio/music/fragment/TabDFm;->data:Ljava/util/List;

    .line 228
    iget-object v0, p0, Lcom/fiio/music/fragment/cg;->a:Lcom/fiio/music/fragment/TabDFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabDFm;->access$5(Lcom/fiio/music/fragment/TabDFm;)Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/fragment/cg;->a:Lcom/fiio/music/fragment/TabDFm;

    iget-object v1, v1, Lcom/fiio/music/fragment/TabDFm;->data:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/SongItemAdapter;->setData(Ljava/util/List;)V

    .line 229
    return-void
.end method
