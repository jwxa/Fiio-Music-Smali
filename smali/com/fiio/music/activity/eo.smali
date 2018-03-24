.class final Lcom/fiio/music/activity/eo;
.super Landroid/os/AsyncTask;
.source "MyMusicListActivity.java"


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
.field final synthetic a:Lcom/fiio/music/activity/MyMusicListActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/MyMusicListActivity;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/fiio/music/activity/eo;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/fiio/music/activity/eo;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 350
    :goto_0
    return-object v0

    .line 328
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/fiio/music/activity/eo;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    iget-object v0, v0, Lcom/fiio/music/activity/MyMusicListActivity;->sortTypeEfm:Lcom/fiio/music/util/cr;

    const-string v1, "AZplagListSong"

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/cr;->b(Ljava/lang/String;)I

    move-result v0

    .line 329
    sget v1, Lcom/fiio/music/util/cn;->f:I

    if-ne v0, v1, :cond_3

    .line 330
    iget-object v0, p0, Lcom/fiio/music/activity/eo;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    iget-object v0, v0, Lcom/fiio/music/activity/MyMusicListActivity;->sortTypeEfm:Lcom/fiio/music/util/cr;

    const-string v1, "PlayListSong"

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v0

    .line 332
    sget v1, Lcom/fiio/music/util/cn;->a:I

    if-ne v0, v1, :cond_2

    .line 333
    iget-object v0, p0, Lcom/fiio/music/activity/eo;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/eo;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$22(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/util/bw;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/eo;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/MyMusicListActivity;->access$1(Lcom/fiio/music/activity/MyMusicListActivity;)Landroid/content/Context;

    iget-object v2, p0, Lcom/fiio/music/activity/eo;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/MyMusicListActivity;->access$15(Lcom/fiio/music/activity/MyMusicListActivity;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/fiio/music/util/bw;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/fiio/music/activity/MyMusicListActivity;->data:Ljava/util/List;

    .line 345
    :cond_1
    :goto_1
    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    :goto_2
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

    .line 335
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/fiio/music/activity/eo;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/eo;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/MyMusicListActivity;->access$22(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/util/bw;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/activity/eo;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/MyMusicListActivity;->access$1(Lcom/fiio/music/activity/MyMusicListActivity;)Landroid/content/Context;

    iget-object v2, p0, Lcom/fiio/music/activity/eo;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/MyMusicListActivity;->access$15(Lcom/fiio/music/activity/MyMusicListActivity;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/fiio/music/util/bw;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/fiio/music/activity/MyMusicListActivity;->data:Ljava/util/List;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    .line 338
    :cond_3
    iget-object v1, p0, Lcom/fiio/music/activity/eo;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    iget-object v2, p0, Lcom/fiio/music/activity/eo;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/MyMusicListActivity;->access$22(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/util/bw;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/activity/eo;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/MyMusicListActivity;->access$1(Lcom/fiio/music/activity/MyMusicListActivity;)Landroid/content/Context;

    iget-object v3, p0, Lcom/fiio/music/activity/eo;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v3}, Lcom/fiio/music/activity/MyMusicListActivity;->access$15(Lcom/fiio/music/activity/MyMusicListActivity;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/fiio/music/util/bw;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/fiio/music/activity/MyMusicListActivity;->data:Ljava/util/List;

    .line 339
    iget-object v1, p0, Lcom/fiio/music/activity/eo;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    iget-object v1, v1, Lcom/fiio/music/activity/MyMusicListActivity;->data:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 340
    iget-object v1, p0, Lcom/fiio/music/activity/eo;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    iget-object v1, v1, Lcom/fiio/music/activity/MyMusicListActivity;->sortTypeEfm:Lcom/fiio/music/util/cr;

    const-string v2, "PlayListSong"

    invoke-virtual {v1, v2}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v1

    .line 341
    iget-object v2, p0, Lcom/fiio/music/activity/eo;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    iget-object v3, p0, Lcom/fiio/music/activity/eo;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    iget-object v3, v3, Lcom/fiio/music/activity/MyMusicListActivity;->data:Ljava/util/List;

    invoke-static {v3, v1, v0}, Lcom/fiio/music/util/cn;->e(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    iput-object v0, v2, Lcom/fiio/music/activity/MyMusicListActivity;->data:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected final onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/fiio/music/activity/eo;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$21(Lcom/fiio/music/activity/MyMusicListActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 355
    iget-object v0, p0, Lcom/fiio/music/activity/eo;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    iget-object v0, v0, Lcom/fiio/music/activity/MyMusicListActivity;->data:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/fiio/music/activity/eo;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$11(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/eo;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    iget-object v1, v1, Lcom/fiio/music/activity/MyMusicListActivity;->data:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/SongItemAdapter;->setData(Ljava/util/List;)V

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/activity/eo;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$11(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/SongItemAdapter;->notifyDataSetChanged()V

    .line 359
    return-void
.end method

.method protected final onPreExecute()V
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/fiio/music/activity/eo;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$21(Lcom/fiio/music/activity/MyMusicListActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lcom/fiio/music/activity/eo;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/fiio/music/activity/MyMusicListActivity;->data:Ljava/util/List;

    .line 321
    iget-object v0, p0, Lcom/fiio/music/activity/eo;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/MyMusicListActivity;->access$11(Lcom/fiio/music/activity/MyMusicListActivity;)Lcom/fiio/music/adapter/SongItemAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/activity/eo;->a:Lcom/fiio/music/activity/MyMusicListActivity;

    iget-object v1, v1, Lcom/fiio/music/activity/MyMusicListActivity;->data:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/fiio/music/adapter/SongItemAdapter;->setData(Ljava/util/List;)V

    .line 322
    return-void
.end method
