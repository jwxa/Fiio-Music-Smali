.class final Lcom/fiio/music/fragment/ci;
.super Ljava/lang/Object;
.source "TabEFm.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/fiio/music/fragment/TabEFm;


# direct methods
.method constructor <init>(Lcom/fiio/music/fragment/TabEFm;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/fragment/ci;->a:Lcom/fiio/music/fragment/TabEFm;

    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 396
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/fiio/music/fragment/ci;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabEFm;->access$12(Lcom/fiio/music/fragment/TabEFm;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/fiio/music/fragment/ci;->a:Lcom/fiio/music/fragment/TabEFm;

    iget-object v0, v0, Lcom/fiio/music/fragment/TabEFm;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 403
    return-void

    .line 398
    :cond_0
    new-instance v2, Lcom/fiio/music/b/k;

    iget-object v0, p0, Lcom/fiio/music/fragment/ci;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabEFm;->access$5(Lcom/fiio/music/fragment/TabEFm;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/fiio/music/b/k;-><init>(Landroid/content/Context;)V

    .line 399
    iget-object v0, p0, Lcom/fiio/music/fragment/ci;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabEFm;->access$12(Lcom/fiio/music/fragment/TabEFm;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/fiio/music/b/k;->m(Ljava/lang/String;)I

    move-result v2

    .line 400
    iget-object v0, p0, Lcom/fiio/music/fragment/ci;->a:Lcom/fiio/music/fragment/TabEFm;

    iget-object v3, v0, Lcom/fiio/music/fragment/TabEFm;->listMap:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/fiio/music/fragment/ci;->a:Lcom/fiio/music/fragment/TabEFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabEFm;->access$12(Lcom/fiio/music/fragment/TabEFm;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/FileItem;

    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
