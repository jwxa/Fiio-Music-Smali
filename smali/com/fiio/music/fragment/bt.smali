.class final Lcom/fiio/music/fragment/bt;
.super Ljava/lang/Object;
.source "TabCFr.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/fiio/music/fragment/TabCFr;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/fiio/music/fragment/TabCFr;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/fragment/bt;->a:Lcom/fiio/music/fragment/TabCFr;

    iput p2, p0, Lcom/fiio/music/fragment/bt;->b:I

    .line 795
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x6

    .line 798
    iget-object v0, p0, Lcom/fiio/music/fragment/bt;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabCFr;->access$0(Lcom/fiio/music/fragment/TabCFr;)I

    move-result v0

    if-nez v0, :cond_2

    .line 799
    iget-object v0, p0, Lcom/fiio/music/fragment/bt;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabCFr;->access$4(Lcom/fiio/music/fragment/TabCFr;)Lcom/fiio/music/adapter/QueryAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/fiio/music/adapter/QueryAdapter;->parameterList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/fragment/bt;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabCFr;->access$4(Lcom/fiio/music/fragment/TabCFr;)Lcom/fiio/music/adapter/QueryAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/fiio/music/adapter/QueryAdapter;->parameterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 800
    iget-object v0, p0, Lcom/fiio/music/fragment/bt;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabCFr;->access$4(Lcom/fiio/music/fragment/TabCFr;)Lcom/fiio/music/adapter/QueryAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/fiio/music/adapter/QueryAdapter;->parameterList:Ljava/util/List;

    iget v1, p0, Lcom/fiio/music/fragment/bt;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Album;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Album;->getId()I

    move-result v0

    .line 802
    iget-object v1, p0, Lcom/fiio/music/fragment/bt;->a:Lcom/fiio/music/fragment/TabCFr;

    iget-object v1, v1, Lcom/fiio/music/fragment/TabCFr;->songDao:Lcom/fiio/music/b/k;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/fiio/music/b/k;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 803
    if-eqz v0, :cond_1

    .line 804
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 805
    iput v4, v1, Landroid/os/Message;->what:I

    .line 806
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 807
    iget-object v0, p0, Lcom/fiio/music/fragment/bt;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabCFr;->access$29(Lcom/fiio/music/fragment/TabCFr;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 833
    :cond_0
    :goto_0
    return-void

    .line 809
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/fragment/bt;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabCFr;->access$29(Lcom/fiio/music/fragment/TabCFr;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 815
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/fragment/bt;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabCFr;->access$4(Lcom/fiio/music/fragment/TabCFr;)Lcom/fiio/music/adapter/QueryAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/fiio/music/adapter/QueryAdapter;->songList:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/fiio/music/fragment/bt;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabCFr;->access$4(Lcom/fiio/music/fragment/TabCFr;)Lcom/fiio/music/adapter/QueryAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/fiio/music/adapter/QueryAdapter;->songList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 816
    iget-object v0, p0, Lcom/fiio/music/fragment/bt;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabCFr;->access$4(Lcom/fiio/music/fragment/TabCFr;)Lcom/fiio/music/adapter/QueryAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/fiio/music/adapter/QueryAdapter;->songList:Ljava/util/List;

    iget v1, p0, Lcom/fiio/music/fragment/bt;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 817
    if-eqz v0, :cond_3

    .line 818
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 819
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 821
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 822
    iput v4, v0, Landroid/os/Message;->what:I

    .line 823
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 824
    iget-object v1, p0, Lcom/fiio/music/fragment/bt;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabCFr;->access$29(Lcom/fiio/music/fragment/TabCFr;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 826
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/fragment/bt;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabCFr;->access$29(Lcom/fiio/music/fragment/TabCFr;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 830
    :cond_4
    iget-object v0, p0, Lcom/fiio/music/fragment/bt;->a:Lcom/fiio/music/fragment/TabCFr;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabCFr;->access$29(Lcom/fiio/music/fragment/TabCFr;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
