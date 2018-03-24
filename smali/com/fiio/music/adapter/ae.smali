.class final Lcom/fiio/music/adapter/ae;
.super Landroid/os/AsyncTask;
.source "QueryAdapter.java"


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
.field final synthetic a:Lcom/fiio/music/adapter/QueryAdapter;


# direct methods
.method constructor <init>(Lcom/fiio/music/adapter/QueryAdapter;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/fiio/music/adapter/ae;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 212
    invoke-static {}, Lcom/fiio/music/adapter/QueryAdapter;->access$10()Ljava/lang/String;

    move-result-object v0

    const-string v1, "doInBackgroud"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, p0, Lcom/fiio/music/adapter/ae;->a:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v0, v0, Lcom/fiio/music/adapter/QueryAdapter;->parameter:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/fiio/music/adapter/ae;->a:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v1, p0, Lcom/fiio/music/adapter/ae;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-static {v1}, Lcom/fiio/music/adapter/QueryAdapter;->access$11(Lcom/fiio/music/adapter/QueryAdapter;)Lcom/fiio/music/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/b/b;->c()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/fiio/music/adapter/QueryAdapter;->parameterList:Ljava/util/List;

    .line 216
    iget-object v0, p0, Lcom/fiio/music/adapter/ae;->a:Lcom/fiio/music/adapter/QueryAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fiio/music/adapter/QueryAdapter;->access$12(Lcom/fiio/music/adapter/QueryAdapter;I)V

    .line 221
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/adapter/ae;->a:Lcom/fiio/music/adapter/QueryAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fiio/music/adapter/QueryAdapter;->access$12(Lcom/fiio/music/adapter/QueryAdapter;I)V

    .line 219
    iget-object v0, p0, Lcom/fiio/music/adapter/ae;->a:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v1, p0, Lcom/fiio/music/adapter/ae;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-static {v1}, Lcom/fiio/music/adapter/QueryAdapter;->access$9(Lcom/fiio/music/adapter/QueryAdapter;)Lcom/fiio/music/b/k;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/adapter/ae;->a:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v2, v2, Lcom/fiio/music/adapter/QueryAdapter;->parameter:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/fiio/music/b/k;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/fiio/music/adapter/QueryAdapter;->songList:Ljava/util/List;

    goto :goto_0
.end method

.method protected final onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 227
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 228
    invoke-static {}, Lcom/fiio/music/adapter/QueryAdapter;->access$10()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPostExecute"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v0, p0, Lcom/fiio/music/adapter/ae;->a:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v0, v0, Lcom/fiio/music/adapter/QueryAdapter;->parameter:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 231
    invoke-static {}, Lcom/fiio/music/adapter/QueryAdapter;->access$10()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "parameter list count : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fiio/music/adapter/ae;->a:Lcom/fiio/music/adapter/QueryAdapter;

    iget-object v2, v2, Lcom/fiio/music/adapter/QueryAdapter;->parameterList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/adapter/ae;->a:Lcom/fiio/music/adapter/QueryAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/QueryAdapter;->access$13(Lcom/fiio/music/adapter/QueryAdapter;)Lcom/fiio/music/adapter/QueryAdapter$InitSuccessCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/fiio/music/adapter/QueryAdapter$InitSuccessCallBack;->initSuccess()V

    .line 236
    return-void
.end method
