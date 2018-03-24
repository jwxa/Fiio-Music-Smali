.class final Lcom/fiio/music/service/af;
.super Ljava/lang/Object;
.source "PlayList.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/fiio/music/service/ag;

.field private d:I

.field private e:I

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/fiio/music/service/af;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fiio/music/service/af;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Lcom/fiio/music/service/af;->d:I

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/service/af;->b:Ljava/util/List;

    .line 82
    new-instance v0, Lcom/fiio/music/service/ag;

    invoke-direct {v0, p0}, Lcom/fiio/music/service/ag;-><init>(Lcom/fiio/music/service/af;)V

    iput-object v0, p0, Lcom/fiio/music/service/af;->c:Lcom/fiio/music/service/ag;

    .line 83
    return-void
.end method

.method public static a(Ljava/util/List;Lcom/fiio/music/entity/Song;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;",
            "Lcom/fiio/music/entity/Song;",
            ")I"
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 33
    if-nez p0, :cond_0

    .line 34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listOfSongs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    if-nez p1, :cond_2

    move v1, v2

    .line 48
    :cond_1
    :goto_0
    return v1

    .line 43
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_3

    move v1, v2

    .line 48
    goto :goto_0

    .line 44
    :cond_3
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    invoke-static {v0, p1}, Lcom/fiio/music/service/af;->a(Lcom/fiio/music/entity/Song;Lcom/fiio/music/entity/Song;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 43
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public static a(Lcom/fiio/music/entity/Song;Lcom/fiio/music/entity/Song;)Z
    .locals 2

    .prologue
    .line 62
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    .line 63
    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->isCue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->isSacd()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/fiio/music/entity/Song;->getTrack()I

    move-result v0

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getTrack()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 65
    invoke-virtual {p0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    const/4 v0, 0x1

    .line 68
    :goto_0
    return v0

    .line 64
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 68
    :cond_2
    invoke-virtual {p0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 70
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "song is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b(Lcom/fiio/music/entity/Song;)I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 513
    iget-object v1, p0, Lcom/fiio/music/service/af;->b:Ljava/util/List;

    invoke-static {v1, p1}, Lcom/fiio/music/service/af;->a(Ljava/util/List;Lcom/fiio/music/entity/Song;)I

    move-result v1

    .line 514
    if-ne v1, v0, :cond_0

    .line 519
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private d(I)V
    .locals 1

    .prologue
    .line 502
    iget v0, p0, Lcom/fiio/music/service/af;->d:I

    if-eq p1, v0, :cond_0

    .line 505
    iget v0, p0, Lcom/fiio/music/service/af;->d:I

    .line 507
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)Lcom/fiio/music/entity/Song;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/fiio/music/service/af;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    return-object v0
.end method

.method public final a(ILcom/fiio/music/entity/Song;)Lcom/fiio/music/entity/Song;
    .locals 7

    .prologue
    const/16 v6, 0xa

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v0, 0x0

    .line 205
    invoke-direct {p0, p1}, Lcom/fiio/music/service/af;->d(I)V

    .line 209
    invoke-direct {p0, p2}, Lcom/fiio/music/service/af;->b(Lcom/fiio/music/entity/Song;)I

    move-result v1

    .line 211
    packed-switch p1, :pswitch_data_0

    .line 245
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "playMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :pswitch_0
    iget-boolean v2, p0, Lcom/fiio/music/service/af;->f:Z

    if-eqz v2, :cond_2

    .line 219
    iget v2, p0, Lcom/fiio/music/service/af;->e:I

    if-eq v2, v5, :cond_0

    .line 220
    iget v2, p0, Lcom/fiio/music/service/af;->e:I

    if-eq v2, v4, :cond_0

    .line 221
    iget v2, p0, Lcom/fiio/music/service/af;->e:I

    if-eq v2, v3, :cond_0

    .line 222
    iget v2, p0, Lcom/fiio/music/service/af;->e:I

    if-ne v2, v6, :cond_2

    .line 223
    :cond_0
    invoke-virtual {p0}, Lcom/fiio/music/service/af;->b()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_1

    move-object p2, v0

    .line 241
    :goto_0
    :pswitch_1
    return-object p2

    .line 223
    :cond_1
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Lcom/fiio/music/service/af;->a(I)Lcom/fiio/music/entity/Song;

    move-result-object p2

    goto :goto_0

    .line 225
    :cond_2
    invoke-virtual {p0}, Lcom/fiio/music/service/af;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_3

    invoke-virtual {p0}, Lcom/fiio/music/service/af;->d()Lcom/fiio/music/entity/Song;

    move-result-object p2

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Lcom/fiio/music/service/af;->a(I)Lcom/fiio/music/entity/Song;

    move-result-object p2

    goto :goto_0

    .line 229
    :pswitch_2
    invoke-virtual {p0}, Lcom/fiio/music/service/af;->b()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_4

    move-object p2, v0

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Lcom/fiio/music/service/af;->a(I)Lcom/fiio/music/entity/Song;

    move-result-object p2

    goto :goto_0

    .line 234
    :pswitch_3
    iget-boolean v1, p0, Lcom/fiio/music/service/af;->f:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/fiio/music/service/af;->c:Lcom/fiio/music/service/ag;

    invoke-virtual {v1}, Lcom/fiio/music/service/ag;->a()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 235
    iget v1, p0, Lcom/fiio/music/service/af;->e:I

    if-eq v1, v5, :cond_5

    .line 236
    iget v1, p0, Lcom/fiio/music/service/af;->e:I

    if-eq v1, v4, :cond_5

    .line 237
    iget v1, p0, Lcom/fiio/music/service/af;->e:I

    if-eq v1, v6, :cond_5

    .line 238
    iget v1, p0, Lcom/fiio/music/service/af;->e:I

    if-ne v1, v3, :cond_6

    :cond_5
    move-object p2, v0

    .line 239
    goto :goto_0

    .line 241
    :cond_6
    iget-object v0, p0, Lcom/fiio/music/service/af;->c:Lcom/fiio/music/service/ag;

    invoke-virtual {v0, p2}, Lcom/fiio/music/service/ag;->a(Lcom/fiio/music/entity/Song;)Lcom/fiio/music/entity/Song;

    move-result-object p2

    goto :goto_0

    .line 211
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;)Lcom/fiio/music/entity/Song;
    .locals 3

    .prologue
    .line 410
    iget-object v0, p0, Lcom/fiio/music/service/af;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 415
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 410
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 411
    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public final a(Lcom/fiio/music/entity/Song;)V
    .locals 2

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/fiio/music/service/af;->b(Lcom/fiio/music/entity/Song;)I

    move-result v0

    .line 115
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/fiio/music/service/af;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lcom/fiio/music/service/af;->c:Lcom/fiio/music/service/ag;

    invoke-virtual {v0, p1}, Lcom/fiio/music/service/ag;->e(Lcom/fiio/music/entity/Song;)V

    .line 119
    :cond_0
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 444
    invoke-virtual {p0}, Lcom/fiio/music/service/af;->f()V

    .line 445
    if-eqz p1, :cond_1

    .line 446
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 451
    iget-object v0, p0, Lcom/fiio/music/service/af;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 453
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/service/af;->c:Lcom/fiio/music/service/ag;

    invoke-virtual {v0}, Lcom/fiio/music/service/ag;->b()V

    .line 454
    return-void

    .line 446
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/entity/Song;

    .line 447
    if-nez v0, :cond_0

    .line 448
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "try to add null to the play list"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 300
    iput-boolean p1, p0, Lcom/fiio/music/service/af;->f:Z

    .line 301
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/fiio/music/service/af;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/fiio/music/service/af;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final b(ILcom/fiio/music/entity/Song;)Lcom/fiio/music/entity/Song;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 264
    invoke-direct {p0, p1}, Lcom/fiio/music/service/af;->d(I)V

    .line 268
    invoke-direct {p0, p2}, Lcom/fiio/music/service/af;->b(Lcom/fiio/music/entity/Song;)I

    move-result v1

    .line 270
    packed-switch p1, :pswitch_data_0

    .line 292
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "playMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :pswitch_0
    iget-boolean v2, p0, Lcom/fiio/music/service/af;->f:Z

    if-eqz v2, :cond_3

    .line 275
    iget v2, p0, Lcom/fiio/music/service/af;->e:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 276
    iget v2, p0, Lcom/fiio/music/service/af;->e:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 277
    iget v2, p0, Lcom/fiio/music/service/af;->e:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 278
    iget v2, p0, Lcom/fiio/music/service/af;->e:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_3

    .line 279
    :cond_0
    invoke-virtual {p0}, Lcom/fiio/music/service/af;->b()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_2

    .line 288
    :cond_1
    :goto_0
    return-object v0

    .line 279
    :cond_2
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Lcom/fiio/music/service/af;->a(I)Lcom/fiio/music/entity/Song;

    move-result-object v0

    goto :goto_0

    .line 281
    :cond_3
    invoke-virtual {p0}, Lcom/fiio/music/service/af;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_4

    invoke-virtual {p0}, Lcom/fiio/music/service/af;->d()Lcom/fiio/music/entity/Song;

    move-result-object v0

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Lcom/fiio/music/service/af;->a(I)Lcom/fiio/music/entity/Song;

    move-result-object v0

    goto :goto_0

    .line 285
    :pswitch_1
    iget-boolean v1, p0, Lcom/fiio/music/service/af;->f:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/fiio/music/service/af;->c:Lcom/fiio/music/service/ag;

    invoke-virtual {v1}, Lcom/fiio/music/service/ag;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 288
    :cond_5
    iget-object v0, p0, Lcom/fiio/music/service/af;->c:Lcom/fiio/music/service/ag;

    invoke-virtual {v0, p2}, Lcom/fiio/music/service/ag;->a(Lcom/fiio/music/entity/Song;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    goto :goto_0

    .line 270
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(I)V
    .locals 0

    .prologue
    .line 187
    iput p1, p0, Lcom/fiio/music/service/af;->e:I

    .line 188
    return-void
.end method

.method public final c(ILcom/fiio/music/entity/Song;)Lcom/fiio/music/entity/Song;
    .locals 2

    .prologue
    .line 319
    packed-switch p1, :pswitch_data_0

    .line 329
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "playMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/fiio/music/service/af;->b(ILcom/fiio/music/entity/Song;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 326
    :goto_0
    return-object v0

    :pswitch_1
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/fiio/music/service/af;->c:Lcom/fiio/music/service/ag;

    invoke-virtual {v0, p2}, Lcom/fiio/music/service/ag;->b(Lcom/fiio/music/entity/Song;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 319
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lcom/fiio/music/service/af;->b:Ljava/util/List;

    return-object v0
.end method

.method public final c(I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 482
    packed-switch p1, :pswitch_data_0

    .line 490
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "playMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 493
    :pswitch_0
    if-ne p1, v1, :cond_0

    .line 494
    iget v0, p0, Lcom/fiio/music/service/af;->d:I

    if-eq v0, v1, :cond_0

    .line 495
    iget-object v0, p0, Lcom/fiio/music/service/af;->c:Lcom/fiio/music/service/ag;

    invoke-virtual {v0}, Lcom/fiio/music/service/ag;->b()V

    .line 497
    :cond_0
    iput p1, p0, Lcom/fiio/music/service/af;->d:I

    .line 498
    return-void

    .line 482
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final d()Lcom/fiio/music/entity/Song;
    .locals 1

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/fiio/music/service/af;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fiio/music/service/af;->a(I)Lcom/fiio/music/entity/Song;

    move-result-object v0

    goto :goto_0
.end method

.method public final d(ILcom/fiio/music/entity/Song;)Lcom/fiio/music/entity/Song;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 348
    invoke-direct {p0, p1}, Lcom/fiio/music/service/af;->d(I)V

    .line 352
    invoke-direct {p0, p2}, Lcom/fiio/music/service/af;->b(Lcom/fiio/music/entity/Song;)I

    move-result v1

    .line 353
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 365
    :cond_0
    :goto_0
    return-object v0

    .line 355
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 369
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "playMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :pswitch_0
    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/fiio/music/service/af;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/fiio/music/service/af;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/fiio/music/service/af;->a(I)Lcom/fiio/music/entity/Song;

    move-result-object v0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v0}, Lcom/fiio/music/service/af;->a(I)Lcom/fiio/music/entity/Song;

    move-result-object v0

    goto :goto_0

    .line 365
    :pswitch_1
    iget-object v0, p0, Lcom/fiio/music/service/af;->c:Lcom/fiio/music/service/ag;

    invoke-virtual {v0, p2}, Lcom/fiio/music/service/ag;->c(Lcom/fiio/music/entity/Song;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    goto :goto_0

    .line 355
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final e(ILcom/fiio/music/entity/Song;)Lcom/fiio/music/entity/Song;
    .locals 2

    .prologue
    .line 387
    packed-switch p1, :pswitch_data_0

    .line 397
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "playMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/fiio/music/service/af;->d(ILcom/fiio/music/entity/Song;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 394
    :goto_0
    return-object v0

    :pswitch_1
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/fiio/music/service/af;->c:Lcom/fiio/music/service/ag;

    invoke-virtual {v0, p2}, Lcom/fiio/music/service/ag;->d(Lcom/fiio/music/entity/Song;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 387
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/fiio/music/service/af;->f:Z

    return v0
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/fiio/music/service/af;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 471
    iget-object v0, p0, Lcom/fiio/music/service/af;->c:Lcom/fiio/music/service/ag;

    invoke-virtual {v0}, Lcom/fiio/music/service/ag;->c()V

    .line 472
    return-void
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/fiio/music/service/af;->c:Lcom/fiio/music/service/ag;

    invoke-virtual {v0}, Lcom/fiio/music/service/ag;->a()Z

    move-result v0

    return v0
.end method
