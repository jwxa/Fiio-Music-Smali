.class final Lcom/fiio/music/fragment/aw;
.super Ljava/lang/Object;
.source "TabAFm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/fragment/TabAFm;

.field private final synthetic b:Lcom/fiio/music/entity/Song;

.field private final synthetic c:Z

.field private final synthetic d:I

.field private final synthetic e:Lcom/fiio/music/custom/f;


# direct methods
.method constructor <init>(Lcom/fiio/music/fragment/TabAFm;Lcom/fiio/music/entity/Song;ZILcom/fiio/music/custom/f;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/fragment/aw;->a:Lcom/fiio/music/fragment/TabAFm;

    iput-object p2, p0, Lcom/fiio/music/fragment/aw;->b:Lcom/fiio/music/entity/Song;

    iput-boolean p3, p0, Lcom/fiio/music/fragment/aw;->c:Z

    iput p4, p0, Lcom/fiio/music/fragment/aw;->d:I

    iput-object p5, p0, Lcom/fiio/music/fragment/aw;->e:Lcom/fiio/music/custom/f;

    .line 820
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 12

    .prologue
    const/4 v0, 0x0

    const/4 v11, 0x1

    .line 825
    iget-object v1, p0, Lcom/fiio/music/fragment/aw;->b:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v2

    .line 826
    iget-object v1, p0, Lcom/fiio/music/fragment/aw;->b:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v3

    .line 829
    iget-object v1, p0, Lcom/fiio/music/fragment/aw;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabAFm;->access$3(Lcom/fiio/music/fragment/TabAFm;)Lcom/fiio/music/service/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 830
    iget-object v0, p0, Lcom/fiio/music/fragment/aw;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabAFm;->access$3(Lcom/fiio/music/fragment/TabAFm;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v1

    .line 831
    iget-object v0, p0, Lcom/fiio/music/fragment/aw;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabAFm;->access$3(Lcom/fiio/music/fragment/TabAFm;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->k()Ljava/lang/String;

    move-result-object v0

    .line 835
    :goto_0
    iget-object v4, p0, Lcom/fiio/music/fragment/aw;->b:Lcom/fiio/music/entity/Song;

    invoke-virtual {v4}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fiio/music/entity/Artist;->getId()I

    move-result v4

    .line 836
    iget-object v5, p0, Lcom/fiio/music/fragment/aw;->b:Lcom/fiio/music/entity/Song;

    invoke-virtual {v5}, Lcom/fiio/music/entity/Song;->getAlbum()Lcom/fiio/music/entity/Album;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fiio/music/entity/Album;->getId()I

    move-result v5

    .line 837
    iget-object v6, p0, Lcom/fiio/music/fragment/aw;->b:Lcom/fiio/music/entity/Song;

    invoke-virtual {v6}, Lcom/fiio/music/entity/Song;->getStyle()Lcom/fiio/music/entity/SongStyle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fiio/music/entity/SongStyle;->getId()I

    move-result v6

    .line 839
    iget-object v7, p0, Lcom/fiio/music/fragment/aw;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v7}, Lcom/fiio/music/fragment/TabAFm;->access$22(Lcom/fiio/music/fragment/TabAFm;)Lcom/fiio/music/b/k;

    move-result-object v7

    new-array v8, v11, [Ljava/lang/Integer;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/fiio/music/fragment/aw;->b:Lcom/fiio/music/entity/Song;

    invoke-virtual {v10}, Lcom/fiio/music/entity/Song;->getId_()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v7, v8}, Lcom/fiio/music/b/k;->a([Ljava/lang/Integer;)I

    move-result v7

    .line 841
    if-ne v7, v11, :cond_1

    .line 843
    iget-object v7, p0, Lcom/fiio/music/fragment/aw;->a:Lcom/fiio/music/fragment/TabAFm;

    iget-object v8, p0, Lcom/fiio/music/fragment/aw;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v8}, Lcom/fiio/music/fragment/TabAFm;->access$22(Lcom/fiio/music/fragment/TabAFm;)Lcom/fiio/music/b/k;

    move-result-object v8

    iget-object v9, p0, Lcom/fiio/music/fragment/aw;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v9}, Lcom/fiio/music/fragment/TabAFm;->access$11(Lcom/fiio/music/fragment/TabAFm;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/fiio/music/b/k;->b(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/fiio/music/fragment/TabAFm;->access$23(Lcom/fiio/music/fragment/TabAFm;Landroid/database/Cursor;)V

    .line 845
    iget-boolean v7, p0, Lcom/fiio/music/fragment/aw;->c:Z

    if-eqz v7, :cond_0

    .line 846
    iget-object v7, p0, Lcom/fiio/music/fragment/aw;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v7}, Lcom/fiio/music/fragment/TabAFm;->access$0(Lcom/fiio/music/fragment/TabAFm;)Lcom/fiio/music/test/simpleCursorSongAdapter;

    move-result-object v7

    iget-object v8, p0, Lcom/fiio/music/fragment/aw;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v8}, Lcom/fiio/music/fragment/TabAFm;->access$1(Lcom/fiio/music/fragment/TabAFm;)Landroid/database/Cursor;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/fiio/music/test/simpleCursorSongAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 850
    :cond_0
    new-instance v7, Lcom/fiio/music/b/c;

    iget-object v8, p0, Lcom/fiio/music/fragment/aw;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v8}, Lcom/fiio/music/fragment/TabAFm;->access$2(Lcom/fiio/music/fragment/TabAFm;)Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/fiio/music/b/c;-><init>(Landroid/content/Context;)V

    .line 851
    invoke-virtual {v7, v4}, Lcom/fiio/music/b/c;->a(I)I

    move-result v8

    .line 852
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v4, v8}, Lcom/fiio/music/b/c;->a(Ljava/lang/String;I)I

    .line 854
    new-instance v4, Lcom/fiio/music/b/b;

    iget-object v7, p0, Lcom/fiio/music/fragment/aw;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v7}, Lcom/fiio/music/fragment/TabAFm;->access$2(Lcom/fiio/music/fragment/TabAFm;)Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/fiio/music/b/b;-><init>(Landroid/content/Context;)V

    .line 855
    invoke-virtual {v4, v5}, Lcom/fiio/music/b/b;->a(I)I

    move-result v7

    .line 856
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v4, v5, v7}, Lcom/fiio/music/b/b;->a(Ljava/lang/String;I)I

    .line 858
    new-instance v4, Lcom/fiio/music/b/l;

    iget-object v5, p0, Lcom/fiio/music/fragment/aw;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v5}, Lcom/fiio/music/fragment/TabAFm;->access$2(Lcom/fiio/music/fragment/TabAFm;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/fiio/music/b/l;-><init>(Landroid/content/Context;)V

    .line 859
    invoke-virtual {v4, v6}, Lcom/fiio/music/b/l;->a(I)I

    move-result v5

    .line 860
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v6, v5}, Lcom/fiio/music/b/l;->a(Ljava/lang/String;I)I

    .line 865
    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    .line 866
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 867
    iget-object v0, p0, Lcom/fiio/music/fragment/aw;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabAFm;->access$1(Lcom/fiio/music/fragment/TabAFm;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_4

    .line 868
    iget v0, p0, Lcom/fiio/music/fragment/aw;->d:I

    .line 869
    iget-object v1, p0, Lcom/fiio/music/fragment/aw;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabAFm;->access$1(Lcom/fiio/music/fragment/TabAFm;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 870
    iget-object v1, p0, Lcom/fiio/music/fragment/aw;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabAFm;->access$1(Lcom/fiio/music/fragment/TabAFm;)Landroid/database/Cursor;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 871
    add-int/lit8 v0, v0, -0x1

    .line 875
    :goto_1
    iget-object v1, p0, Lcom/fiio/music/fragment/aw;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabAFm;->access$1(Lcom/fiio/music/fragment/TabAFm;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/fiio/music/util/h;->a(Landroid/database/Cursor;I)Lcom/fiio/music/entity/Song;

    move-result-object v1

    .line 876
    if-eqz v1, :cond_3

    .line 877
    iget-object v2, p0, Lcom/fiio/music/fragment/aw;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v2}, Lcom/fiio/music/fragment/TabAFm;->access$3(Lcom/fiio/music/fragment/TabAFm;)Lcom/fiio/music/service/h;

    move-result-object v2

    iget-object v3, p0, Lcom/fiio/music/fragment/aw;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v3}, Lcom/fiio/music/fragment/TabAFm;->access$1(Lcom/fiio/music/fragment/TabAFm;)Landroid/database/Cursor;

    move-result-object v3

    invoke-virtual {v2, v1, v3, v0}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/entity/Song;Landroid/database/Cursor;I)V

    .line 889
    :goto_2
    iget-object v0, p0, Lcom/fiio/music/fragment/aw;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabAFm;->access$2(Lcom/fiio/music/fragment/TabAFm;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->setTabContent()V

    .line 891
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/fragment/aw;->e:Lcom/fiio/music/custom/f;

    invoke-virtual {v0}, Lcom/fiio/music/custom/f;->cancel()V

    .line 892
    iget-object v0, p0, Lcom/fiio/music/fragment/aw;->e:Lcom/fiio/music/custom/f;

    invoke-virtual {v0}, Lcom/fiio/music/custom/f;->dismiss()V

    .line 893
    return-void

    .line 873
    :cond_2
    iget-object v1, p0, Lcom/fiio/music/fragment/aw;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabAFm;->access$1(Lcom/fiio/music/fragment/TabAFm;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_1

    .line 879
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/fragment/aw;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabAFm;->access$3(Lcom/fiio/music/fragment/TabAFm;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->f()V

    goto :goto_2

    .line 882
    :cond_4
    iget-object v0, p0, Lcom/fiio/music/fragment/aw;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v0}, Lcom/fiio/music/fragment/TabAFm;->access$3(Lcom/fiio/music/fragment/TabAFm;)Lcom/fiio/music/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->f()V

    goto :goto_2

    .line 884
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 885
    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, Lcom/fiio/music/fragment/aw;->d:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 886
    iget-object v1, p0, Lcom/fiio/music/fragment/aw;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabAFm;->access$3(Lcom/fiio/music/fragment/TabAFm;)Lcom/fiio/music/service/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/service/h;->Y()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, v0}, Lcom/fiio/music/util/h;->b(ILjava/util/List;)I

    move-result v0

    .line 887
    iget-object v1, p0, Lcom/fiio/music/fragment/aw;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v1}, Lcom/fiio/music/fragment/TabAFm;->access$3(Lcom/fiio/music/fragment/TabAFm;)Lcom/fiio/music/service/h;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/fragment/aw;->a:Lcom/fiio/music/fragment/TabAFm;

    invoke-static {v2}, Lcom/fiio/music/fragment/TabAFm;->access$1(Lcom/fiio/music/fragment/TabAFm;)Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/fiio/music/service/h;->a(Landroid/database/Cursor;I)V

    goto :goto_2

    :cond_6
    move-object v1, v0

    goto/16 :goto_0
.end method
