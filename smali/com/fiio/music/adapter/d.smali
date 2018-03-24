.class final Lcom/fiio/music/adapter/d;
.super Ljava/lang/Object;
.source "DragAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/adapter/DragAdapter;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/fiio/music/adapter/DragAdapter;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/adapter/d;->a:Lcom/fiio/music/adapter/DragAdapter;

    iput p2, p0, Lcom/fiio/music/adapter/d;->b:I

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 97
    iget v0, p0, Lcom/fiio/music/adapter/d;->b:I

    packed-switch v0, :pswitch_data_0

    .line 118
    :goto_0
    return-void

    .line 99
    :pswitch_0
    iget-object v0, p0, Lcom/fiio/music/adapter/d;->a:Lcom/fiio/music/adapter/DragAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/DragAdapter;->access$1(Lcom/fiio/music/adapter/DragAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/activity/ListMainActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/ListMainActivity;->startMyMusicListActivity()V

    goto :goto_0

    .line 103
    :pswitch_1
    iget-object v0, p0, Lcom/fiio/music/adapter/d;->a:Lcom/fiio/music/adapter/DragAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/DragAdapter;->access$1(Lcom/fiio/music/adapter/DragAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/activity/ListMainActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/ListMainActivity;->enterLocalMusic()V

    goto :goto_0

    .line 106
    :pswitch_2
    iget-object v0, p0, Lcom/fiio/music/adapter/d;->a:Lcom/fiio/music/adapter/DragAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/DragAdapter;->access$1(Lcom/fiio/music/adapter/DragAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/activity/ListMainActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/ListMainActivity;->startDlnaActivity()V

    goto :goto_0

    .line 109
    :pswitch_3
    iget-object v0, p0, Lcom/fiio/music/adapter/d;->a:Lcom/fiio/music/adapter/DragAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/DragAdapter;->access$1(Lcom/fiio/music/adapter/DragAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/activity/ListMainActivity;

    const-string v1, "R"

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/ListMainActivity;->startRecentListActivity(Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :pswitch_4
    iget-object v0, p0, Lcom/fiio/music/adapter/d;->a:Lcom/fiio/music/adapter/DragAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/DragAdapter;->access$1(Lcom/fiio/music/adapter/DragAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/activity/ListMainActivity;

    const-string v1, "F"

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/ListMainActivity;->startRecentListActivity(Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :pswitch_5
    iget-object v0, p0, Lcom/fiio/music/adapter/d;->a:Lcom/fiio/music/adapter/DragAdapter;

    invoke-static {v0}, Lcom/fiio/music/adapter/DragAdapter;->access$1(Lcom/fiio/music/adapter/DragAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/activity/ListMainActivity;

    const-string v1, "A"

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/ListMainActivity;->startRecentListActivity(Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
