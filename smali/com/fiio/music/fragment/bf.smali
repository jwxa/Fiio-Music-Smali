.class final Lcom/fiio/music/fragment/bf;
.super Ljava/lang/Object;
.source "TabAFm.java"

# interfaces
.implements Lcom/fiio/music/test/l;


# instance fields
.field final synthetic a:Lcom/fiio/music/fragment/TabAFm;


# direct methods
.method constructor <init>(Lcom/fiio/music/fragment/TabAFm;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/fragment/bf;->a:Lcom/fiio/music/fragment/TabAFm;

    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 439
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 440
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 446
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 447
    iget-object v0, p0, Lcom/fiio/music/fragment/bf;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabAFm;->access$3(Lcom/fiio/music/fragment/TabAFm;)Lcom/fiio/music/service/h;

    move-result-object v2

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4, v1}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/entity/Song;ILjava/lang/String;Ljava/util/List;)V

    .line 448
    iget-object v0, p0, Lcom/fiio/music/fragment/bf;->a:Lcom/fiio/music/fragment/TabAFm;

    iget-object v2, p0, Lcom/fiio/music/fragment/bf;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v2}, Lcom/fiio/music/fragment/TabAFm;->access$25(Lcom/fiio/music/fragment/TabAFm;)Landroid/widget/Toast;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/fragment/bf;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v3}, Lcom/fiio/music/fragment/TabAFm;->access$2(Lcom/fiio/music/fragment/TabAFm;)Landroid/content/Context;

    move-result-object v3

    .line 449
    iget-object v4, p0, Lcom/fiio/music/fragment/bf;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v4}, Lcom/fiio/music/fragment/TabAFm;->access$2(Lcom/fiio/music/fragment/TabAFm;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0c00dd

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 448
    invoke-static {v2, v3, v1}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/fragment/TabAFm;->access$26(Lcom/fiio/music/fragment/TabAFm;Landroid/widget/Toast;)V

    .line 451
    :cond_1
    return-void

    .line 440
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 441
    iget-object v3, p0, Lcom/fiio/music/fragment/bf;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v3}, Lcom/fiio/music/fragment/TabAFm;->access$1(Lcom/fiio/music/fragment/TabAFm;)Landroid/database/Cursor;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v3, v0}, Lcom/fiio/music/util/h;->a(Landroid/database/Cursor;I)Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 442
    if-eqz v0, :cond_0

    .line 443
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
