.class public final Lcom/fiio/music/util/cp;
.super Ljava/lang/Object;
.source "SpreadFileItem.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/fiio/music/service/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fiio/music/service/h;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/util/cp;->a:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/fiio/music/util/cp;->b:Lcom/fiio/music/service/h;

    .line 33
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/FileItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/FileItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 36
    if-eqz p1, :cond_0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 81
    :goto_0
    return-object v0

    .line 38
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 40
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 41
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 67
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 68
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 69
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 70
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_a

    :cond_4
    move-object v0, v9

    .line 81
    goto :goto_0

    .line 41
    :cond_5
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/fiio/music/entity/FileItem;

    .line 42
    invoke-virtual {v7}, Lcom/fiio/music/entity/FileItem;->isCue()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 43
    invoke-virtual {v7}, Lcom/fiio/music/entity/FileItem;->getTrack()I

    move-result v0

    if-nez v0, :cond_7

    .line 44
    new-instance v0, Lcom/fiio/music/util/j;

    iget-object v1, p0, Lcom/fiio/music/util/cp;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/fiio/music/util/cp;->b:Lcom/fiio/music/service/h;

    new-instance v4, Ljava/io/File;

    invoke-virtual {v7}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v4}, Lcom/fiio/music/util/j;-><init>(Landroid/content/Context;Lcom/fiio/music/service/h;Ljava/io/File;)V

    .line 45
    invoke-virtual {v0}, Lcom/fiio/music/util/j;->c()[Ljava/lang/String;

    move-result-object v12

    .line 46
    if-eqz v12, :cond_2

    array-length v0, v12

    if-lez v0, :cond_2

    move v8, v3

    .line 47
    :goto_2
    array-length v0, v12

    if-lt v8, v0, :cond_6

    .line 51
    new-instance v0, Ljava/io/File;

    invoke-virtual {v7}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/fiio/music/util/j;->c(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 53
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 48
    :cond_6
    new-instance v0, Lcom/fiio/music/entity/FileItem;

    aget-object v1, v12, v8

    invoke-virtual {v7}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    add-int/lit8 v6, v8, 0x1

    move v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/fiio/music/entity/FileItem;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZI)V

    .line 49
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_2

    .line 57
    :cond_7
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 60
    :cond_8
    invoke-virtual {v7}, Lcom/fiio/music/entity/FileItem;->isFile()Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/util/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".cue"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 62
    :cond_9
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 70
    :cond_a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 71
    :cond_b
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 72
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/FileItem;

    .line 73
    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 74
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_3
.end method

.method public final a(Ljava/util/List;II)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/FileItem;",
            ">;II)",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    new-instance v2, Lcom/fiio/music/util/bh;

    iget-object v0, p0, Lcom/fiio/music/util/cp;->a:Landroid/content/Context;

    invoke-direct {v2, v0}, Lcom/fiio/music/util/bh;-><init>(Landroid/content/Context;)V

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 88
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 89
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 90
    if-eqz p1, :cond_0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 91
    :cond_0
    const/4 v0, 0x0

    .line 125
    :goto_0
    return-object v0

    .line 93
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    .line 102
    invoke-static {v3, p2, p3}, Lcom/fiio/music/util/cn;->d(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    .line 104
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8

    .line 114
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 115
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 120
    :cond_4
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_5
    move-object v0, v1

    .line 125
    goto :goto_0

    .line 93
    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/FileItem;

    .line 94
    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->isFile()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 95
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 97
    :cond_7
    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->isCue()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 98
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 104
    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/FileItem;

    .line 105
    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->isFile()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 106
    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/fiio/music/util/bh;->c(Ljava/lang/String;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_3

    .line 108
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 115
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/FileItem;

    .line 116
    new-instance v3, Lcom/fiio/music/util/j;

    iget-object v4, p0, Lcom/fiio/music/util/cp;->a:Landroid/content/Context;

    new-instance v5, Ljava/io/File;

    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/fiio/music/entity/FileItem;->getTrack()I

    move-result v0

    invoke-direct {v3, v4, v5, v0}, Lcom/fiio/music/util/j;-><init>(Landroid/content/Context;Ljava/io/File;I)V

    .line 117
    invoke-virtual {v3}, Lcom/fiio/music/util/j;->b()Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 118
    if-eqz v0, :cond_4

    .line 119
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method
