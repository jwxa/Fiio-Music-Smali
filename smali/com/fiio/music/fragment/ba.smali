.class final Lcom/fiio/music/fragment/ba;
.super Ljava/lang/Object;
.source "TabAFm.java"

# interfaces
.implements Lcom/fiio/music/test/k;


# instance fields
.field final synthetic a:Lcom/fiio/music/fragment/TabAFm;


# direct methods
.method constructor <init>(Lcom/fiio/music/fragment/TabAFm;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/fragment/ba;->a:Lcom/fiio/music/fragment/TabAFm;

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 5
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
    .line 328
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 329
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 330
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/fiio/music/fragment/ba;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabAFm;->access$2(Lcom/fiio/music/fragment/TabAFm;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "batch"

    invoke-static {v0, v1, v2}, Lcom/fiio/music/activity/AddPlayListActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    .line 340
    :goto_1
    return-void

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/fragment/ba;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabAFm;->access$1(Lcom/fiio/music/fragment/TabAFm;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v3, v0}, Lcom/fiio/music/util/h;->a(Landroid/database/Cursor;I)Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 332
    if-eqz v0, :cond_1

    .line 333
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 338
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/fragment/ba;->a:Lcom/fiio/music/fragment/TabAFm;

    iget-object v1, p0, Lcom/fiio/music/fragment/ba;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabAFm;->access$25(Lcom/fiio/music/fragment/TabAFm;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/fragment/ba;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v2}, Lcom/fiio/music/fragment/TabAFm;->access$2(Lcom/fiio/music/fragment/TabAFm;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/fragment/ba;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v3}, Lcom/fiio/music/fragment/TabAFm;->access$2(Lcom/fiio/music/fragment/TabAFm;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c00fe

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/fragment/TabAFm;->access$26(Lcom/fiio/music/fragment/TabAFm;Landroid/widget/Toast;)V

    goto :goto_1
.end method
