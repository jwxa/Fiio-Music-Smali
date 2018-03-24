.class final Lcom/fiio/music/service/a;
.super Ljava/lang/Object;
.source "CrPlayList.java"


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field protected a:Landroid/database/Cursor;

.field private final c:Lcom/fiio/music/service/b;

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/fiio/music/service/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fiio/music/service/a;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/fiio/music/service/a;->d:I

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/service/a;->h:Ljava/util/ArrayList;

    .line 409
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fiio/music/service/a;->i:Z

    .line 45
    new-instance v0, Lcom/fiio/music/service/b;

    invoke-direct {v0, p0}, Lcom/fiio/music/service/b;-><init>(Lcom/fiio/music/service/a;)V

    iput-object v0, p0, Lcom/fiio/music/service/a;->c:Lcom/fiio/music/service/b;

    .line 46
    sget-object v0, Lcom/fiio/music/service/a;->b:Ljava/lang/String;

    const-string v1, "new CrPlayList ----"

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method private a(Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    if-ne p1, v0, :cond_1

    const/4 v0, 0x0

    .line 51
    :goto_0
    if-eqz v0, :cond_0

    .line 52
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 54
    :cond_0
    return-void

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    iput-object p1, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    goto :goto_0
.end method

.method static synthetic a(Lcom/fiio/music/service/a;)V
    .locals 0

    .prologue
    .line 413
    invoke-direct {p0}, Lcom/fiio/music/service/a;->k()V

    return-void
.end method

.method static synthetic a(Lcom/fiio/music/service/a;I)V
    .locals 0

    .prologue
    .line 26
    iput p1, p0, Lcom/fiio/music/service/a;->d:I

    return-void
.end method

.method public static a(II)Z
    .locals 1

    .prologue
    .line 583
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/fiio/music/service/a;)I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/fiio/music/service/a;->d:I

    return v0
.end method

.method static synthetic c(Lcom/fiio/music/service/a;)Lcom/fiio/music/entity/Song;
    .locals 1

    .prologue
    .line 494
    invoke-direct {p0}, Lcom/fiio/music/service/a;->l()Lcom/fiio/music/entity/Song;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/fiio/music/service/a;)Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/fiio/music/service/a;->g:Z

    return v0
.end method

.method static synthetic e(Lcom/fiio/music/service/a;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/fiio/music/service/a;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method private f(I)Lcom/fiio/music/entity/Song;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 129
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    move-object v0, v1

    .line 154
    :goto_0
    return-object v0

    .line 131
    :cond_0
    invoke-direct {p0}, Lcom/fiio/music/service/a;->k()V

    .line 136
    iget-object v0, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    invoke-direct {p0}, Lcom/fiio/music/service/a;->l()Lcom/fiio/music/entity/Song;

    move-result-object v0

    goto :goto_0

    .line 143
    :cond_1
    sget-object v0, Lcom/fiio/music/service/a;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "crplayList peek cann\'t move to position "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " remove"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/fiio/music/util/aw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget v0, p0, Lcom/fiio/music/service/a;->d:I

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/fiio/music/service/a;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 145
    :goto_1
    iget-object v2, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 147
    invoke-direct {p0}, Lcom/fiio/music/service/a;->l()Lcom/fiio/music/entity/Song;

    move-result-object v0

    goto :goto_0

    .line 144
    :cond_2
    iget v0, p0, Lcom/fiio/music/service/a;->d:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 152
    :cond_3
    sget-object v0, Lcom/fiio/music/service/a;->b:Ljava/lang/String;

    const-string v2, "crplayList peek cann\'t move to position again"

    invoke-static {v0, v2}, Lcom/fiio/music/util/aw;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 154
    goto :goto_0
.end method

.method private g(I)Lcom/fiio/music/entity/Song;
    .locals 1

    .prologue
    .line 164
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 165
    const/4 v0, 0x0

    .line 173
    :goto_0
    return-object v0

    .line 166
    :cond_0
    invoke-direct {p0}, Lcom/fiio/music/service/a;->k()V

    .line 171
    iget-object v0, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 172
    iput p1, p0, Lcom/fiio/music/service/a;->d:I

    .line 173
    invoke-direct {p0}, Lcom/fiio/music/service/a;->l()Lcom/fiio/music/entity/Song;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/fiio/music/service/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method private h()Lcom/fiio/music/entity/Song;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 182
    invoke-direct {p0}, Lcom/fiio/music/service/a;->k()V

    .line 184
    sget-object v0, Lcom/fiio/music/service/a;->b:Ljava/lang/String;

    const-string v1, "get First Song"

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-boolean v0, p0, Lcom/fiio/music/service/a;->g:Z

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 187
    iput v2, p0, Lcom/fiio/music/service/a;->d:I

    .line 193
    :goto_0
    invoke-direct {p0}, Lcom/fiio/music/service/a;->l()Lcom/fiio/music/entity/Song;

    move-result-object v0

    return-object v0

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/service/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 190
    iget-object v1, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 191
    iput v0, p0, Lcom/fiio/music/service/a;->d:I

    goto :goto_0
.end method

.method private h(I)V
    .locals 3

    .prologue
    .line 387
    iget v0, p0, Lcom/fiio/music/service/a;->e:I

    if-eq v0, p1, :cond_0

    .line 388
    iput p1, p0, Lcom/fiio/music/service/a;->e:I

    .line 389
    sget-object v0, Lcom/fiio/music/service/a;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "validate PlayMdoe -- "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    :cond_0
    return-void
.end method

.method private i()Lcom/fiio/music/entity/Song;
    .locals 1

    .prologue
    .line 202
    invoke-direct {p0}, Lcom/fiio/music/service/a;->k()V

    .line 204
    iget-object v0, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    .line 205
    invoke-direct {p0}, Lcom/fiio/music/service/a;->l()Lcom/fiio/music/entity/Song;

    move-result-object v0

    return-object v0
.end method

.method private j()Lcom/fiio/music/entity/Song;
    .locals 2

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/fiio/music/service/a;->k()V

    .line 216
    sget-object v0, Lcom/fiio/music/service/a;->b:Ljava/lang/String;

    const-string v1, "get Last Song"

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-boolean v0, p0, Lcom/fiio/music/service/a;->g:Z

    if-nez v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    .line 219
    invoke-virtual {p0}, Lcom/fiio/music/service/a;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/fiio/music/service/a;->d:I

    .line 226
    :goto_0
    invoke-direct {p0}, Lcom/fiio/music/service/a;->l()Lcom/fiio/music/entity/Song;

    move-result-object v0

    return-object v0

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/service/a;->h:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/fiio/music/service/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 223
    iget-object v1, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 224
    iput v0, p0, Lcom/fiio/music/service/a;->d:I

    goto :goto_0
.end method

.method private k()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 414
    iget-object v0, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/fiio/music/service/a;->i:Z

    if-nez v0, :cond_0

    .line 450
    :goto_0
    return-void

    .line 416
    :cond_0
    iget-boolean v0, p0, Lcom/fiio/music/service/a;->i:Z

    if-eqz v0, :cond_1

    iput-boolean v3, p0, Lcom/fiio/music/service/a;->i:Z

    .line 417
    :cond_1
    sget-object v0, Lcom/fiio/music/service/a;->b:Ljava/lang/String;

    const-string v1, "validateCursor --- "

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const/4 v0, 0x0

    .line 425
    new-instance v1, Lcom/fiio/music/b/k;

    invoke-static {}, Lcom/fiio/music/activity/FiiOMusicApplication;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/fiio/music/b/k;-><init>(Landroid/content/Context;)V

    .line 426
    iget v2, p0, Lcom/fiio/music/service/a;->f:I

    sparse-switch v2, :sswitch_data_0

    .line 444
    :goto_1
    invoke-direct {p0, v0}, Lcom/fiio/music/service/a;->a(Landroid/database/Cursor;)V

    goto :goto_0

    .line 428
    :sswitch_0
    invoke-static {}, Lcom/fiio/music/activity/FiiOMusicApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/h;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 429
    invoke-virtual {v1, v0}, Lcom/fiio/music/b/k;->b(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1

    .line 432
    :sswitch_1
    invoke-static {}, Lcom/fiio/music/service/MediaPlayerService;->aa()[Ljava/lang/String;

    move-result-object v0

    .line 433
    aget-object v2, v0, v3

    aget-object v0, v0, v4

    invoke-virtual {v1, v2, v0}, Lcom/fiio/music/b/k;->e(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1

    .line 436
    :sswitch_2
    invoke-static {}, Lcom/fiio/music/service/MediaPlayerService;->aa()[Ljava/lang/String;

    move-result-object v0

    .line 437
    invoke-static {}, Lcom/fiio/music/activity/FiiOMusicApplication;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/fiio/music/util/h;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 438
    const-string v3, "WHERE CName=?"

    .line 439
    invoke-virtual {v1, v3, v0, v2}, Lcom/fiio/music/b/k;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1

    .line 442
    :sswitch_3
    invoke-static {}, Lcom/fiio/music/service/MediaPlayerService;->aa()[Ljava/lang/String;

    move-result-object v0

    .line 443
    aget-object v2, v0, v3

    aget-object v0, v0, v4

    invoke-virtual {v1, v2, v0}, Lcom/fiio/music/b/k;->f(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1

    .line 426
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0xa -> :sswitch_3
    .end sparse-switch
.end method

.method private l()Lcom/fiio/music/entity/Song;
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 496
    invoke-direct {p0}, Lcom/fiio/music/service/a;->k()V

    .line 501
    new-instance v3, Lcom/fiio/music/entity/Song;

    invoke-direct {v3}, Lcom/fiio/music/entity/Song;-><init>()V

    .line 502
    iget-object v0, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    const-string v5, "_id"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/fiio/music/entity/Song;->setId_(I)V

    .line 503
    iget-object v0, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    const-string v5, "albumPath"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/fiio/music/entity/Song;->setAlbumPath(Ljava/lang/String;)V

    .line 504
    iget-object v0, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    .line 505
    const-string v5, "displayName"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 504
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/fiio/music/entity/Song;->setDisplayName(Ljava/lang/String;)V

    .line 506
    new-instance v0, Lcom/fiio/music/entity/Artist;

    iget-object v4, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    .line 507
    const-string v6, "artistid"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 506
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 507
    iget-object v5, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    .line 508
    const-string v7, "Bname"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 507
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 508
    iget-object v6, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    const-string v8, "Bpicpath"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v4, v5, v6}, Lcom/fiio/music/entity/Artist;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 506
    invoke-virtual {v3, v0}, Lcom/fiio/music/entity/Song;->setArtist(Lcom/fiio/music/entity/Artist;)V

    .line 509
    new-instance v0, Lcom/fiio/music/entity/Album;

    iget-object v4, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    .line 510
    const-string v6, "albumid"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 509
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 510
    iget-object v5, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    .line 511
    const-string v7, "Cname"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 510
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 511
    iget-object v6, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    const-string v8, "Cpicpath"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v4, v5, v6}, Lcom/fiio/music/entity/Album;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 509
    invoke-virtual {v3, v0}, Lcom/fiio/music/entity/Song;->setAlbum(Lcom/fiio/music/entity/Album;)V

    .line 512
    new-instance v0, Lcom/fiio/music/entity/SongStyle;

    iget-object v4, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    .line 513
    const-string v6, "styleid"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 512
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 513
    iget-object v5, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    .line 514
    const-string v7, "Dname"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 513
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 514
    iget-object v6, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    const-string v8, "Dpicpath"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v4, v5, v6}, Lcom/fiio/music/entity/SongStyle;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 512
    invoke-virtual {v3, v0}, Lcom/fiio/music/entity/Song;->setStyle(Lcom/fiio/music/entity/SongStyle;)V

    .line 515
    iget-object v0, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    const-string v5, "Aname"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/fiio/music/entity/Song;->setName(Ljava/lang/String;)V

    .line 516
    iget-object v0, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    .line 517
    const-string v5, "filePath"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 516
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/fiio/music/entity/Song;->setFilePath(Ljava/lang/String;)V

    .line 518
    iget-object v0, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    .line 519
    const-string v5, "durationTime"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 518
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/fiio/music/entity/Song;->setDurationTime(I)V

    .line 520
    iget-object v0, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    .line 521
    const-string v5, "channels"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 520
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/fiio/music/entity/Song;->setChannels(Ljava/lang/String;)V

    .line 522
    iget-object v0, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    .line 523
    const-string v5, "track"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 522
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/fiio/music/entity/Song;->setTrack(I)V

    .line 524
    iget-object v0, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    .line 525
    const-string v5, "discoNum"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 524
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/fiio/music/entity/Song;->setDisc(I)V

    .line 526
    iget-object v0, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    const-string v5, "sampleRate"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/fiio/music/entity/Song;->setSampleRate(I)V

    .line 527
    iget-object v0, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    const-string v5, "EncodingRate"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/fiio/music/entity/Song;->setEncodingRate(I)V

    .line 528
    iget-object v0, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    const-string v5, "bitRate"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/fiio/music/entity/Song;->setBitRate(I)V

    .line 529
    iget-object v0, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    const-string v5, "isLike"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/fiio/music/entity/Song;->setIsLike(I)V

    .line 530
    iget-object v0, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    const-string v5, "songname_ascii"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/fiio/music/entity/Song;->setNameAscii(I)V

    .line 531
    iget-object v0, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    const-string v5, "isCue"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/fiio/music/entity/Song;->setCue(Z)V

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    const-string v6, "year"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/fiio/music/entity/Song;->setYear(Ljava/lang/String;)V

    .line 534
    iget-object v0, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    const-string v5, "CUENAME"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/fiio/music/entity/Song;->setCue_songName(Ljava/lang/String;)V

    .line 535
    iget-object v0, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    const-string v5, "CUEARTIST"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/fiio/music/entity/Song;->setCue_artistName(Ljava/lang/String;)V

    .line 536
    iget-object v0, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    const-string v5, "CUESTART"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/fiio/music/entity/Song;->setCue_startTime(I)V

    .line 537
    iget-object v0, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    const-string v5, "CUEDURATION"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/fiio/music/entity/Song;->setCue_duration(I)V

    .line 539
    iget-object v0, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    const-string v5, "isSacd"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    invoke-virtual {v3, v1}, Lcom/fiio/music/entity/Song;->setSacd(Z)V

    .line 540
    iget-object v0, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    const-string v2, "SACDNAME"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/fiio/music/entity/Song;->setSacd_songName(Ljava/lang/String;)V

    .line 541
    iget-object v0, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    const-string v2, "SACDARTIST"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/fiio/music/entity/Song;->setSacd_artistName(Ljava/lang/String;)V

    .line 542
    iget-object v0, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    const-string v2, "SACDSTART"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/fiio/music/entity/Song;->setSacd_startTime(I)V

    .line 543
    iget-object v0, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    const-string v2, "SACDDURATION"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/fiio/music/entity/Song;->setSacd_duration(I)V

    .line 545
    iget-object v0, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    const-string v2, "songname_ascii"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const v1, 0xf4240

    div-int/2addr v0, v1

    .line 546
    const/16 v1, 0x7a

    if-gt v0, v1, :cond_0

    const/16 v1, 0x61

    if-lt v0, v1, :cond_0

    .line 547
    add-int/lit8 v0, v0, -0x20

    .line 549
    :cond_0
    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 550
    invoke-virtual {v3, v0}, Lcom/fiio/music/entity/Song;->setSortLetters(Ljava/lang/String;)V

    .line 552
    sget-object v1, Lcom/fiio/music/service/a;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "parse to Song : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v3}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v1, v0}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    return-object v3

    :cond_1
    move v0, v2

    .line 531
    goto/16 :goto_0

    :cond_2
    move v1, v2

    .line 539
    goto/16 :goto_1

    .line 552
    :cond_3
    const-string v0, "song name cannot get"

    goto :goto_2
.end method


# virtual methods
.method public final a(I)Lcom/fiio/music/entity/Song;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 256
    sget-object v1, Lcom/fiio/music/service/a;->b:Ljava/lang/String;

    const-string v2, "auto get next song"

    invoke-static {v1, v2}, Lcom/fiio/music/util/aw;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-direct {p0, p1}, Lcom/fiio/music/service/a;->h(I)V

    .line 258
    packed-switch p1, :pswitch_data_0

    .line 278
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "playMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :pswitch_0
    iget v0, p0, Lcom/fiio/music/service/a;->d:I

    invoke-direct {p0, v0}, Lcom/fiio/music/service/a;->g(I)Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 276
    :cond_0
    :goto_0
    return-object v0

    .line 262
    :pswitch_1
    iget-boolean v0, p0, Lcom/fiio/music/service/a;->g:Z

    if-nez v0, :cond_2

    .line 263
    iget v0, p0, Lcom/fiio/music/service/a;->d:I

    invoke-virtual {p0}, Lcom/fiio/music/service/a;->b()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/fiio/music/service/a;->h()Lcom/fiio/music/entity/Song;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/fiio/music/service/a;->d:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/fiio/music/service/a;->g(I)Lcom/fiio/music/entity/Song;

    move-result-object v0

    goto :goto_0

    .line 265
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/service/a;->h:Ljava/util/ArrayList;

    iget v1, p0, Lcom/fiio/music/service/a;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 266
    iget-object v1, p0, Lcom/fiio/music/service/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/fiio/music/service/a;->h()Lcom/fiio/music/entity/Song;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/fiio/music/service/a;->h:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/fiio/music/service/a;->g(I)Lcom/fiio/music/entity/Song;

    move-result-object v0

    goto :goto_0

    .line 269
    :pswitch_2
    iget-boolean v1, p0, Lcom/fiio/music/service/a;->g:Z

    if-nez v1, :cond_4

    .line 270
    iget v1, p0, Lcom/fiio/music/service/a;->d:I

    invoke-virtual {p0}, Lcom/fiio/music/service/a;->b()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    iget v0, p0, Lcom/fiio/music/service/a;->d:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/fiio/music/service/a;->g(I)Lcom/fiio/music/entity/Song;

    move-result-object v0

    goto :goto_0

    .line 272
    :cond_4
    iget-object v1, p0, Lcom/fiio/music/service/a;->h:Ljava/util/ArrayList;

    iget v2, p0, Lcom/fiio/music/service/a;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 273
    iget-object v2, p0, Lcom/fiio/music/service/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v0, p0, Lcom/fiio/music/service/a;->h:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/fiio/music/service/a;->g(I)Lcom/fiio/music/entity/Song;

    move-result-object v0

    goto/16 :goto_0

    .line 276
    :pswitch_3
    iget-object v0, p0, Lcom/fiio/music/service/a;->c:Lcom/fiio/music/service/b;

    invoke-virtual {v0}, Lcom/fiio/music/service/b;->a()Lcom/fiio/music/entity/Song;

    move-result-object v0

    goto/16 :goto_0

    .line 258
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fiio/music/service/a;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final a(Landroid/database/Cursor;I)V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/fiio/music/service/a;->a(Landroid/database/Cursor;)V

    .line 89
    iput p2, p0, Lcom/fiio/music/service/a;->d:I

    .line 90
    iget-object v0, p0, Lcom/fiio/music/service/a;->c:Lcom/fiio/music/service/b;

    invoke-virtual {v0}, Lcom/fiio/music/service/b;->e()V

    .line 91
    return-void
.end method

.method public final a(Landroid/database/Cursor;IIZ)V
    .locals 2

    .prologue
    .line 68
    sget-object v0, Lcom/fiio/music/service/a;->b:Ljava/lang/String;

    const-string v1, "init crPlayList ----"

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-direct {p0, p1}, Lcom/fiio/music/service/a;->a(Landroid/database/Cursor;)V

    .line 80
    iput p2, p0, Lcom/fiio/music/service/a;->d:I

    .line 81
    iput p3, p0, Lcom/fiio/music/service/a;->f:I

    .line 82
    iput-boolean p4, p0, Lcom/fiio/music/service/a;->g:Z

    .line 83
    iget-object v0, p0, Lcom/fiio/music/service/a;->c:Lcom/fiio/music/service/b;

    invoke-virtual {v0}, Lcom/fiio/music/service/b;->e()V

    .line 84
    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    iput-object p1, p0, Lcom/fiio/music/service/a;->h:Ljava/util/ArrayList;

    .line 42
    return-void
.end method

.method public final b()I
    .locals 2

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/fiio/music/service/a;->k()V

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 119
    :goto_0
    return v0

    .line 116
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 117
    new-instance v0, Lcom/fiio/music/b/k;

    invoke-static {}, Lcom/fiio/music/activity/FiiOMusicApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fiio/music/b/k;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/fiio/music/b/k;->a()I

    move-result v0

    goto :goto_0
.end method

.method public final b(I)Lcom/fiio/music/entity/Song;
    .locals 2

    .prologue
    .line 288
    sget-object v0, Lcom/fiio/music/service/a;->b:Ljava/lang/String;

    const-string v1, "get next song"

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 290
    sget-object v0, Lcom/fiio/music/service/a;->b:Ljava/lang/String;

    const-string v1, "cr is closed"

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    :cond_0
    invoke-direct {p0, p1}, Lcom/fiio/music/service/a;->h(I)V

    .line 294
    packed-switch p1, :pswitch_data_0

    .line 307
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "playMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 292
    const/4 v0, 0x0

    .line 305
    :goto_0
    return-object v0

    .line 298
    :pswitch_0
    iget-boolean v0, p0, Lcom/fiio/music/service/a;->g:Z

    if-nez v0, :cond_3

    .line 299
    iget v0, p0, Lcom/fiio/music/service/a;->d:I

    invoke-virtual {p0}, Lcom/fiio/music/service/a;->b()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/fiio/music/service/a;->h()Lcom/fiio/music/entity/Song;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/fiio/music/service/a;->d:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/fiio/music/service/a;->g(I)Lcom/fiio/music/entity/Song;

    move-result-object v0

    goto :goto_0

    .line 301
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/service/a;->h:Ljava/util/ArrayList;

    iget v1, p0, Lcom/fiio/music/service/a;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 302
    iget-object v1, p0, Lcom/fiio/music/service/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_4

    invoke-direct {p0}, Lcom/fiio/music/service/a;->h()Lcom/fiio/music/entity/Song;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/fiio/music/service/a;->h:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/fiio/music/service/a;->g(I)Lcom/fiio/music/entity/Song;

    move-result-object v0

    goto :goto_0

    .line 305
    :pswitch_1
    iget-object v0, p0, Lcom/fiio/music/service/a;->c:Lcom/fiio/music/service/b;

    invoke-virtual {v0}, Lcom/fiio/music/service/b;->a()Lcom/fiio/music/entity/Song;

    move-result-object v0

    goto :goto_0

    .line 294
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final c()Landroid/database/Cursor;
    .locals 2

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/fiio/music/service/a;->k()V

    .line 237
    sget-object v0, Lcom/fiio/music/service/a;->b:Ljava/lang/String;

    const-string v1, "get Cursor"

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    return-object v0
.end method

.method public final c(I)Lcom/fiio/music/entity/Song;
    .locals 2

    .prologue
    .line 347
    invoke-direct {p0, p1}, Lcom/fiio/music/service/a;->h(I)V

    .line 348
    packed-switch p1, :pswitch_data_0

    .line 358
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "playMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :pswitch_0
    iget v0, p0, Lcom/fiio/music/service/a;->d:I

    invoke-virtual {p0}, Lcom/fiio/music/service/a;->b()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/fiio/music/service/a;->i()Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 356
    :goto_0
    return-object v0

    .line 353
    :cond_0
    iget v0, p0, Lcom/fiio/music/service/a;->d:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/fiio/music/service/a;->f(I)Lcom/fiio/music/entity/Song;

    move-result-object v0

    goto :goto_0

    .line 356
    :pswitch_1
    iget v0, p0, Lcom/fiio/music/service/a;->d:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/fiio/music/service/a;->c:Lcom/fiio/music/service/b;

    invoke-virtual {v0}, Lcom/fiio/music/service/b;->c()Lcom/fiio/music/entity/Song;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 348
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lcom/fiio/music/service/a;->d:I

    return v0
.end method

.method public final d(I)Lcom/fiio/music/entity/Song;
    .locals 2

    .prologue
    .line 368
    invoke-direct {p0, p1}, Lcom/fiio/music/service/a;->h(I)V

    .line 369
    packed-switch p1, :pswitch_data_0

    .line 378
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "playMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 374
    :pswitch_0
    iget v0, p0, Lcom/fiio/music/service/a;->d:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/fiio/music/service/a;->i()Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 376
    :goto_0
    return-object v0

    .line 374
    :cond_0
    iget v0, p0, Lcom/fiio/music/service/a;->d:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/fiio/music/service/a;->f(I)Lcom/fiio/music/entity/Song;

    move-result-object v0

    goto :goto_0

    .line 376
    :pswitch_1
    iget v0, p0, Lcom/fiio/music/service/a;->d:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/fiio/music/service/a;->c:Lcom/fiio/music/service/b;

    invoke-virtual {v0}, Lcom/fiio/music/service/b;->d()Lcom/fiio/music/entity/Song;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 369
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final e()Lcom/fiio/music/entity/Song;
    .locals 2

    .prologue
    .line 317
    sget-object v0, Lcom/fiio/music/service/a;->b:Ljava/lang/String;

    const-string v1, "get previous song"

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    sget-object v0, Lcom/fiio/music/service/a;->b:Ljava/lang/String;

    const-string v1, "cr is closed"

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :cond_0
    iget v0, p0, Lcom/fiio/music/service/a;->e:I

    invoke-direct {p0, v0}, Lcom/fiio/music/service/a;->h(I)V

    .line 323
    iget v0, p0, Lcom/fiio/music/service/a;->e:I

    packed-switch v0, :pswitch_data_0

    .line 337
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "playMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/service/a;->a:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 321
    const/4 v0, 0x0

    .line 335
    :goto_0
    return-object v0

    .line 327
    :pswitch_0
    iget-boolean v0, p0, Lcom/fiio/music/service/a;->g:Z

    if-nez v0, :cond_3

    .line 328
    iget v0, p0, Lcom/fiio/music/service/a;->d:I

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/fiio/music/service/a;->j()Lcom/fiio/music/entity/Song;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/fiio/music/service/a;->d:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/fiio/music/service/a;->g(I)Lcom/fiio/music/entity/Song;

    move-result-object v0

    goto :goto_0

    .line 331
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/service/a;->h:Ljava/util/ArrayList;

    iget v1, p0, Lcom/fiio/music/service/a;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 332
    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/fiio/music/service/a;->j()Lcom/fiio/music/entity/Song;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/fiio/music/service/a;->h:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/fiio/music/service/a;->g(I)Lcom/fiio/music/entity/Song;

    move-result-object v0

    goto :goto_0

    .line 335
    :pswitch_1
    iget-object v0, p0, Lcom/fiio/music/service/a;->c:Lcom/fiio/music/service/b;

    invoke-virtual {v0}, Lcom/fiio/music/service/b;->b()Lcom/fiio/music/entity/Song;

    move-result-object v0

    goto :goto_0

    .line 323
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final e(I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 470
    packed-switch p1, :pswitch_data_0

    .line 478
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "playMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 481
    :pswitch_0
    if-ne p1, v1, :cond_0

    .line 482
    iget v0, p0, Lcom/fiio/music/service/a;->e:I

    if-eq v0, v1, :cond_0

    .line 483
    iget-object v0, p0, Lcom/fiio/music/service/a;->c:Lcom/fiio/music/service/b;

    invoke-virtual {v0}, Lcom/fiio/music/service/b;->e()V

    .line 485
    :cond_0
    iput p1, p0, Lcom/fiio/music/service/a;->e:I

    .line 487
    return-void

    .line 470
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 453
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fiio/music/service/a;->i:Z

    .line 455
    invoke-direct {p0}, Lcom/fiio/music/service/a;->k()V

    .line 458
    iget v0, p0, Lcom/fiio/music/service/a;->d:I

    if-eqz v0, :cond_0

    .line 459
    iget v0, p0, Lcom/fiio/music/service/a;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/fiio/music/service/a;->d:I

    .line 462
    :cond_0
    return-void
.end method
