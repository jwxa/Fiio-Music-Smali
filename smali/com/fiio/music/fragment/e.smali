.class final Lcom/fiio/music/fragment/e;
.super Landroid/os/Handler;
.source "DlnaFragment.java"


# instance fields
.field final synthetic a:Lcom/fiio/music/fragment/DlnaFragment;


# direct methods
.method constructor <init>(Lcom/fiio/music/fragment/DlnaFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/fragment/e;->a:Lcom/fiio/music/fragment/DlnaFragment;

    .line 148
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 152
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 168
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 175
    return-void

    .line 157
    :pswitch_1
    iget-object v0, p0, Lcom/fiio/music/fragment/e;->a:Lcom/fiio/music/fragment/DlnaFragment;

    invoke-static {v0}, Lcom/fiio/music/fragment/DlnaFragment;->access$0(Lcom/fiio/music/fragment/DlnaFragment;)Lcom/fiio/music/fragment/i;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/fragment/e;->a:Lcom/fiio/music/fragment/DlnaFragment;

    invoke-static {v1}, Lcom/fiio/music/fragment/DlnaFragment;->access$1(Lcom/fiio/music/fragment/DlnaFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/fragment/i;->b(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/fiio/music/fragment/e;->a:Lcom/fiio/music/fragment/DlnaFragment;

    invoke-static {v0}, Lcom/fiio/music/fragment/DlnaFragment;->access$0(Lcom/fiio/music/fragment/DlnaFragment;)Lcom/fiio/music/fragment/i;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/fragment/e;->a:Lcom/fiio/music/fragment/DlnaFragment;

    iget-object v1, v1, Lcom/fiio/music/fragment/DlnaFragment;->mediaPlayerManager:Lcom/fiio/music/service/h;

    invoke-virtual {v0, v1}, Lcom/fiio/music/fragment/i;->a(Lcom/fiio/music/service/h;)V

    .line 159
    iget-object v0, p0, Lcom/fiio/music/fragment/e;->a:Lcom/fiio/music/fragment/DlnaFragment;

    invoke-static {v0}, Lcom/fiio/music/fragment/DlnaFragment;->access$0(Lcom/fiio/music/fragment/DlnaFragment;)Lcom/fiio/music/fragment/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/i;->notifyDataSetChanged()V

    .line 160
    iget-object v0, p0, Lcom/fiio/music/fragment/e;->a:Lcom/fiio/music/fragment/DlnaFragment;

    iget-object v1, p0, Lcom/fiio/music/fragment/e;->a:Lcom/fiio/music/fragment/DlnaFragment;

    invoke-static {v1}, Lcom/fiio/music/fragment/DlnaFragment;->access$2(Lcom/fiio/music/fragment/DlnaFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/fragment/DlnaFragment;->access$3(Lcom/fiio/music/fragment/DlnaFragment;Ljava/util/List;)V

    .line 161
    iget-object v0, p0, Lcom/fiio/music/fragment/e;->a:Lcom/fiio/music/fragment/DlnaFragment;

    invoke-static {v0}, Lcom/fiio/music/fragment/DlnaFragment;->access$4(Lcom/fiio/music/fragment/DlnaFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/fiio/music/fragment/e;->a:Lcom/fiio/music/fragment/DlnaFragment;

    invoke-static {v0}, Lcom/fiio/music/fragment/DlnaFragment;->access$5(Lcom/fiio/music/fragment/DlnaFragment;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/fragment/DlnaFragment;->access$6(Lcom/fiio/music/fragment/DlnaFragment;Ljava/lang/Integer;)V

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 166
    iget-object v1, p0, Lcom/fiio/music/fragment/e;->a:Lcom/fiio/music/fragment/DlnaFragment;

    invoke-static {v1}, Lcom/fiio/music/fragment/DlnaFragment;->access$2(Lcom/fiio/music/fragment/DlnaFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 167
    iget-object v1, p0, Lcom/fiio/music/fragment/e;->a:Lcom/fiio/music/fragment/DlnaFragment;

    invoke-static {v1}, Lcom/fiio/music/fragment/DlnaFragment;->access$7(Lcom/fiio/music/fragment/DlnaFragment;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/fragment/e;->a:Lcom/fiio/music/fragment/DlnaFragment;

    invoke-static {v2}, Lcom/fiio/music/fragment/DlnaFragment;->access$5(Lcom/fiio/music/fragment/DlnaFragment;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
