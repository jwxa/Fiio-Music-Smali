.class final Lcom/fiio/music/fragment/ar;
.super Ljava/lang/Object;
.source "TabAFm.java"

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
.field final synthetic a:Lcom/fiio/music/fragment/TabAFm;


# direct methods
.method constructor <init>(Lcom/fiio/music/fragment/TabAFm;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/fragment/ar;->a:Lcom/fiio/music/fragment/TabAFm;

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 194
    iget-object v0, p0, Lcom/fiio/music/fragment/ar;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabAFm;->access$0(Lcom/fiio/music/fragment/TabAFm;)Lcom/fiio/music/test/simpleCursorSongAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/fragment/ar;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabAFm;->access$0(Lcom/fiio/music/fragment/TabAFm;)Lcom/fiio/music/test/simpleCursorSongAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/test/simpleCursorSongAdapter;->getShowCheckBoxState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/fiio/music/fragment/ar;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabAFm;->access$0(Lcom/fiio/music/fragment/TabAFm;)Lcom/fiio/music/test/simpleCursorSongAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/fiio/music/test/simpleCursorSongAdapter;->toggleCheckBox(I)V

    .line 222
    :goto_0
    return-void

    .line 197
    :cond_0
    check-cast p2, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;

    invoke-virtual {p2}, Lcom/fiio/music/swipemenulistview/SwipeMenuLayout;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lcom/fiio/music/fragment/ar;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabAFm;->access$1(Lcom/fiio/music/fragment/TabAFm;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v1, p3}, Lcom/fiio/music/util/h;->a(Landroid/database/Cursor;I)Lcom/fiio/music/entity/Song;

    move-result-object v1

    .line 201
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 203
    const v1, 0x7f0b0208

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 207
    iget-object v0, p0, Lcom/fiio/music/fragment/ar;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabAFm;->access$2(Lcom/fiio/music/fragment/TabAFm;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "kuishe"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 209
    const-string v1, "enable_viper"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 211
    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/fiio/music/fragment/ar;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabAFm;->access$3(Lcom/fiio/music/fragment/TabAFm;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->S()Lcom/fiio/music/service/MediaPlayerService;

    invoke-static {}, Lcom/fiio/music/service/MediaPlayerService;->X()Lcom/example/root/checkappmusic/FiioMediaPlayer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->setJumpToSong(Z)V

    .line 214
    :cond_1
    invoke-static {}, Lcom/fiio/music/util/cj;->a()Lcom/fiio/music/util/cj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/util/cj;->e()Z

    .line 218
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/fragment/ar;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabAFm;->access$1(Lcom/fiio/music/fragment/TabAFm;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 219
    iget-object v0, p0, Lcom/fiio/music/fragment/ar;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabAFm;->access$3(Lcom/fiio/music/fragment/TabAFm;)Lcom/fiio/music/service/h;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/fragment/ar;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabAFm;->access$2(Lcom/fiio/music/fragment/TabAFm;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/fragment/ar;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v2}, Lcom/fiio/music/fragment/TabAFm;->access$1(Lcom/fiio/music/fragment/TabAFm;)Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/fiio/music/service/h;->a(Landroid/content/Context;Landroid/database/Cursor;I)V

    goto :goto_0
.end method
