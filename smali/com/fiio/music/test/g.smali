.class final Lcom/fiio/music/test/g;
.super Ljava/lang/Object;
.source "simpleCursorSongAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/test/simpleCursorSongAdapter;

.field private b:Landroid/widget/Toast;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/fiio/music/test/simpleCursorSongAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/test/g;->a:Lcom/fiio/music/test/simpleCursorSongAdapter;

    .line 503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 509
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/test/g;->c:Ljava/util/List;

    .line 510
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 535
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/test/g;->a:Lcom/fiio/music/test/simpleCursorSongAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/test/simpleCursorSongAdapter;->cancelSelect()V

    .line 541
    return-void

    .line 512
    :pswitch_0
    iget-object v0, p0, Lcom/fiio/music/test/g;->a:Lcom/fiio/music/test/simpleCursorSongAdapter;

    invoke-static {v0}, Lcom/fiio/music/test/simpleCursorSongAdapter;->access$1(Lcom/fiio/music/test/simpleCursorSongAdapter;)Lcom/fiio/music/test/l;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/test/g;->a:Lcom/fiio/music/test/simpleCursorSongAdapter;

    invoke-static {v1}, Lcom/fiio/music/test/simpleCursorSongAdapter;->access$2(Lcom/fiio/music/test/simpleCursorSongAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fiio/music/test/l;->a(Ljava/util/List;)V

    goto :goto_0

    .line 517
    :pswitch_1
    iget-object v0, p0, Lcom/fiio/music/test/g;->a:Lcom/fiio/music/test/simpleCursorSongAdapter;

    invoke-static {v0}, Lcom/fiio/music/test/simpleCursorSongAdapter;->access$3(Lcom/fiio/music/test/simpleCursorSongAdapter;)Lcom/fiio/music/test/j;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/test/g;->a:Lcom/fiio/music/test/simpleCursorSongAdapter;

    invoke-static {v1}, Lcom/fiio/music/test/simpleCursorSongAdapter;->access$2(Lcom/fiio/music/test/simpleCursorSongAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fiio/music/test/j;->a(Ljava/util/List;)V

    goto :goto_0

    .line 522
    :pswitch_2
    iget-object v0, p0, Lcom/fiio/music/test/g;->a:Lcom/fiio/music/test/simpleCursorSongAdapter;

    invoke-static {v0}, Lcom/fiio/music/test/simpleCursorSongAdapter;->access$4(Lcom/fiio/music/test/simpleCursorSongAdapter;)Lcom/fiio/music/test/k;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/test/g;->a:Lcom/fiio/music/test/simpleCursorSongAdapter;

    invoke-static {v1}, Lcom/fiio/music/test/simpleCursorSongAdapter;->access$2(Lcom/fiio/music/test/simpleCursorSongAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fiio/music/test/k;->a(Ljava/util/List;)V

    goto :goto_0

    .line 526
    :pswitch_3
    iget-object v0, p0, Lcom/fiio/music/test/g;->b:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/fiio/music/test/g;->a:Lcom/fiio/music/test/simpleCursorSongAdapter;

    invoke-static {v1}, Lcom/fiio/music/test/simpleCursorSongAdapter;->access$5(Lcom/fiio/music/test/simpleCursorSongAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/test/g;->a:Lcom/fiio/music/test/simpleCursorSongAdapter;

    invoke-static {v2}, Lcom/fiio/music/test/simpleCursorSongAdapter;->access$5(Lcom/fiio/music/test/simpleCursorSongAdapter;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c00fe

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/fiio/music/util/h;->a(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/test/g;->b:Landroid/widget/Toast;

    goto :goto_0

    .line 530
    :pswitch_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 531
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/fiio/music/test/g;->a:Lcom/fiio/music/test/simpleCursorSongAdapter;

    invoke-static {v0}, Lcom/fiio/music/test/simpleCursorSongAdapter;->access$2(Lcom/fiio/music/test/simpleCursorSongAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/fiio/music/test/g;->a:Lcom/fiio/music/test/simpleCursorSongAdapter;

    invoke-static {v0}, Lcom/fiio/music/test/simpleCursorSongAdapter;->access$6(Lcom/fiio/music/test/simpleCursorSongAdapter;)Lcom/fiio/music/test/m;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/fiio/music/test/m;->a(Ljava/util/List;)V

    goto :goto_0

    .line 532
    :cond_0
    new-instance v3, Ljava/lang/Integer;

    iget-object v0, p0, Lcom/fiio/music/test/g;->a:Lcom/fiio/music/test/simpleCursorSongAdapter;

    invoke-static {v0}, Lcom/fiio/music/test/simpleCursorSongAdapter;->access$2(Lcom/fiio/music/test/simpleCursorSongAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 531
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 510
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0062
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
