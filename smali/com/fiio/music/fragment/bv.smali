.class final Lcom/fiio/music/fragment/bv;
.super Ljava/lang/Object;
.source "TabCFr.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/fiio/music/fragment/TabCFr;


# direct methods
.method constructor <init>(Lcom/fiio/music/fragment/TabCFr;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/fragment/bv;->a:Lcom/fiio/music/fragment/TabCFr;

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 349
    const/16 v0, 0xfa

    invoke-static {v0}, Lcom/fiio/music/util/bd;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/fragment/bv;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabCFr;->access$4(Lcom/fiio/music/fragment/TabCFr;)Lcom/fiio/music/adapter/QueryAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 354
    invoke-static {}, Lcom/fiio/music/util/an;->a()Lcom/fiio/music/util/an;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/fragment/bv;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabCFr;->access$12(Lcom/fiio/music/fragment/TabCFr;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/an;->a(Z)V

    .line 355
    invoke-static {}, Lcom/fiio/music/util/an;->a()Lcom/fiio/music/util/an;

    move-result-object v0

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/an;->a(I)V

    .line 357
    iget-object v0, p0, Lcom/fiio/music/fragment/bv;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabCFr;->access$0(Lcom/fiio/music/fragment/TabCFr;)I

    move-result v0

    if-nez v0, :cond_3

    .line 359
    iget-object v0, p0, Lcom/fiio/music/fragment/bv;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabCFr;->access$4(Lcom/fiio/music/fragment/TabCFr;)Lcom/fiio/music/adapter/QueryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/QueryAdapter;->getShowCheckBoxState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 360
    iget-object v0, p0, Lcom/fiio/music/fragment/bv;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabCFr;->access$4(Lcom/fiio/music/fragment/TabCFr;)Lcom/fiio/music/adapter/QueryAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/fiio/music/adapter/QueryAdapter;->toggleCheckBox(I)V

    goto :goto_0

    .line 362
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/fragment/bv;->a:Lcom/fiio/music/fragment/TabCFr;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fiio/music/fragment/TabCFr;->access$13(Lcom/fiio/music/fragment/TabCFr;I)V

    .line 363
    iget-object v1, p0, Lcom/fiio/music/fragment/bv;->a:Lcom/fiio/music/fragment/TabCFr;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/fiio/music/fragment/bv;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabCFr;->access$4(Lcom/fiio/music/fragment/TabCFr;)Lcom/fiio/music/adapter/QueryAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/fiio/music/adapter/QueryAdapter;->parameterList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Album;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Album;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/fiio/music/fragment/TabCFr;->access$14(Lcom/fiio/music/fragment/TabCFr;Ljava/lang/String;)V

    .line 364
    iget-object v1, p0, Lcom/fiio/music/fragment/bv;->a:Lcom/fiio/music/fragment/TabCFr;

    iget-object v0, p0, Lcom/fiio/music/fragment/bv;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabCFr;->access$4(Lcom/fiio/music/fragment/TabCFr;)Lcom/fiio/music/adapter/QueryAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/fiio/music/adapter/QueryAdapter;->parameterList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Album;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Album;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/fiio/music/fragment/TabCFr;->access$15(Lcom/fiio/music/fragment/TabCFr;Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/fiio/music/fragment/bv;->a:Lcom/fiio/music/fragment/TabCFr;

    iget-object v1, p0, Lcom/fiio/music/fragment/bv;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabCFr;->access$4(Lcom/fiio/music/fragment/TabCFr;)Lcom/fiio/music/adapter/QueryAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/adapter/QueryAdapter;->getQueryHandler()Lcom/fiio/music/adapter/ae;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/fragment/bv;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v2}, Lcom/fiio/music/fragment/TabCFr;->access$16(Lcom/fiio/music/fragment/TabCFr;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/fiio/music/fragment/TabCFr;->access$17(Lcom/fiio/music/fragment/TabCFr;Landroid/os/AsyncTask;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 369
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/fragment/bv;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabCFr;->access$4(Lcom/fiio/music/fragment/TabCFr;)Lcom/fiio/music/adapter/QueryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/adapter/QueryAdapter;->getShowCheckBoxState()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 370
    iget-object v0, p0, Lcom/fiio/music/fragment/bv;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabCFr;->access$4(Lcom/fiio/music/fragment/TabCFr;)Lcom/fiio/music/adapter/QueryAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/fiio/music/adapter/QueryAdapter;->toggleCheckBox(I)V

    goto/16 :goto_0

    .line 372
    :cond_4
    iget-object v0, p0, Lcom/fiio/music/fragment/bv;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v0, p3}, Lcom/fiio/music/fragment/TabCFr;->access$18(Lcom/fiio/music/fragment/TabCFr;I)V

    goto/16 :goto_0
.end method
