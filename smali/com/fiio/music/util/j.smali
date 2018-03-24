.class public Lcom/fiio/music/util/j;
.super Ljava/lang/Object;
.source "CueSheetManager.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final H:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/lang/String;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:I

.field private E:I

.field private F:I

.field private G:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;"
        }
    .end annotation
.end field

.field a:[Ljava/lang/String;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Landroid/content/Context;

.field private s:Lcom/fiio/music/service/h;

.field private t:Ljava/lang/Boolean;

.field private u:Ljava/io/File;

.field private v:Lcom/fiio/music/util/ce;

.field private w:Lcom/fiio/music/util/n;

.field private x:Z

.field private y:Lcom/fiio/music/entity/Song;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    const-class v0, Lcom/fiio/music/util/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fiio/music/util/j;->b:Ljava/lang/String;

    .line 49
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "UTF-8"

    aput-object v1, v0, v2

    const-string v1, "GBK"

    aput-object v1, v0, v3

    const-string v1, "UTF-16BE"

    aput-object v1, v0, v4

    const-string v1, "ANSI"

    aput-object v1, v0, v5

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/fiio/music/util/j;->c:Ljava/util/List;

    .line 50
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "EUC-KR"

    aput-object v1, v0, v2

    const-string v1, "EUC-CN"

    aput-object v1, v0, v3

    const-string v1, "EUC-JP"

    aput-object v1, v0, v4

    const-string v1, "EUC-ZH"

    aput-object v1, v0, v5

    const-string v1, "GB18030"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    .line 51
    const-string v2, "void"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/fiio/music/util/j;->d:Ljava/util/List;

    .line 53
    invoke-static {}, Lcom/fiio/music/util/bl;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fiio/music/util/j;->e:Ljava/lang/String;

    .line 979
    invoke-static {}, Lcom/fiio/music/util/bl;->d()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fiio/music/util/j;->H:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/fiio/music/service/h;Ljava/io/File;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/util/j;->t:Ljava/lang/Boolean;

    .line 92
    iput-boolean v1, p0, Lcom/fiio/music/util/j;->x:Z

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/util/j;->r:Landroid/content/Context;

    .line 78
    iput-object p2, p0, Lcom/fiio/music/util/j;->s:Lcom/fiio/music/service/h;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    .line 80
    invoke-static {p3}, Lcom/fiio/music/util/n;->a(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-static {}, Lcom/fiio/music/util/n;->a()Lcom/fiio/music/util/n;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/util/j;->w:Lcom/fiio/music/util/n;

    .line 82
    iget-object v0, p0, Lcom/fiio/music/util/j;->w:Lcom/fiio/music/util/n;

    invoke-virtual {v0, p3, p1}, Lcom/fiio/music/util/n;->a(Ljava/io/File;Landroid/content/Context;)V

    .line 83
    iget-object v0, p0, Lcom/fiio/music/util/j;->w:Lcom/fiio/music/util/n;

    invoke-virtual {v0}, Lcom/fiio/music/util/n;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fiio/music/util/j;->x:Z

    .line 89
    :goto_0
    invoke-direct {p0}, Lcom/fiio/music/util/j;->g()V

    .line 90
    return-void

    .line 86
    :cond_0
    iput-object p3, p0, Lcom/fiio/music/util/j;->u:Ljava/io/File;

    .line 87
    invoke-direct {p0, p3}, Lcom/fiio/music/util/j;->e(Ljava/io/File;)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/util/j;->t:Ljava/lang/Boolean;

    .line 92
    iput-boolean v1, p0, Lcom/fiio/music/util/j;->x:Z

    .line 207
    iput-object p1, p0, Lcom/fiio/music/util/j;->r:Landroid/content/Context;

    .line 209
    iput-object p2, p0, Lcom/fiio/music/util/j;->u:Ljava/io/File;

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    .line 212
    sget-object v0, Lcom/fiio/music/util/j;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fiio/music/util/h;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 213
    invoke-direct {p0, p2}, Lcom/fiio/music/util/j;->e(Ljava/io/File;)V

    .line 214
    invoke-static {p2}, Lcom/fiio/music/util/j;->b(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 223
    :goto_0
    invoke-direct {p0}, Lcom/fiio/music/util/j;->g()V

    .line 224
    new-instance v1, Lcom/fiio/music/util/bh;

    invoke-direct {v1, p1}, Lcom/fiio/music/util/bh;-><init>(Landroid/content/Context;)V

    .line 225
    if-eqz v0, :cond_4

    .line 226
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/fiio/music/util/bh;->a(Ljava/lang/String;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/util/j;->y:Lcom/fiio/music/entity/Song;

    .line 233
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/fiio/music/util/j;->y:Lcom/fiio/music/entity/Song;

    if-eqz v0, :cond_1

    .line 235
    :try_start_0
    invoke-direct {p0}, Lcom/fiio/music/util/j;->i()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :cond_1
    :goto_2
    return-void

    .line 217
    :cond_2
    invoke-static {p2}, Lcom/fiio/music/util/n;->a(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 218
    invoke-static {}, Lcom/fiio/music/util/n;->a()Lcom/fiio/music/util/n;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/util/j;->w:Lcom/fiio/music/util/n;

    .line 219
    iget-object v0, p0, Lcom/fiio/music/util/j;->w:Lcom/fiio/music/util/n;

    invoke-virtual {v0, p2, p1}, Lcom/fiio/music/util/n;->a(Ljava/io/File;Landroid/content/Context;)V

    .line 220
    iget-object v0, p0, Lcom/fiio/music/util/j;->w:Lcom/fiio/music/util/n;

    invoke-virtual {v0}, Lcom/fiio/music/util/n;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    :cond_3
    move-object v0, p2

    goto :goto_0

    .line 228
    :cond_4
    invoke-static {p2}, Lcom/fiio/music/util/j;->c(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 229
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 230
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/fiio/music/util/bh;->a(Ljava/lang/String;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/util/j;->y:Lcom/fiio/music/entity/Song;

    goto :goto_1

    .line 236
    :catch_0
    move-exception v0

    .line 238
    sget-object v1, Lcom/fiio/music/util/j;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/fiio/music/util/aw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    sget-object v0, Lcom/fiio/music/util/j;->b:Ljava/lang/String;

    const-string v1, "add to playList"

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fiio/music/util/j;->G:Ljava/util/List;

    goto :goto_2
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;I)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/util/j;->t:Ljava/lang/Boolean;

    .line 92
    iput-boolean v2, p0, Lcom/fiio/music/util/j;->x:Z

    .line 255
    iput-object p1, p0, Lcom/fiio/music/util/j;->r:Landroid/content/Context;

    .line 256
    iput-object p2, p0, Lcom/fiio/music/util/j;->u:Ljava/io/File;

    .line 257
    iput-object v0, p0, Lcom/fiio/music/util/j;->y:Lcom/fiio/music/entity/Song;

    .line 258
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    .line 260
    sget-object v1, Lcom/fiio/music/util/j;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fiio/music/util/h;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    invoke-direct {p0, p2}, Lcom/fiio/music/util/j;->e(Ljava/io/File;)V

    .line 262
    invoke-static {p2}, Lcom/fiio/music/util/j;->b(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 263
    if-nez v0, :cond_0

    .line 264
    invoke-static {p2}, Lcom/fiio/music/util/j;->c(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 267
    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 268
    invoke-direct {p0}, Lcom/fiio/music/util/j;->g()V

    .line 269
    new-instance v1, Lcom/fiio/music/util/bh;

    invoke-direct {v1, p1}, Lcom/fiio/music/util/bh;-><init>(Landroid/content/Context;)V

    .line 270
    if-eqz v0, :cond_1

    .line 271
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/fiio/music/util/bh;->c(Ljava/lang/String;)Lcom/fiio/music/entity/Song;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/util/j;->y:Lcom/fiio/music/entity/Song;

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/util/j;->y:Lcom/fiio/music/entity/Song;

    if-eqz v0, :cond_2

    if-lez p3, :cond_2

    .line 274
    iget-object v1, p0, Lcom/fiio/music/util/j;->y:Lcom/fiio/music/entity/Song;

    iget-object v0, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    add-int/lit8 v2, p3, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Lcom/fiio/music/entity/Song;->setArtistName(Ljava/lang/String;)V

    .line 275
    iget-object v1, p0, Lcom/fiio/music/util/j;->y:Lcom/fiio/music/entity/Song;

    iget-object v0, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    add-int/lit8 v2, p3, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v4

    invoke-virtual {v1, v0}, Lcom/fiio/music/entity/Song;->setName(Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/fiio/music/util/j;->y:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0, p3}, Lcom/fiio/music/entity/Song;->setTrack(I)V

    .line 277
    iget-object v0, p0, Lcom/fiio/music/util/j;->y:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0, v4}, Lcom/fiio/music/entity/Song;->setCue(Z)V

    .line 280
    :cond_2
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Lcom/fiio/music/entity/Song;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/util/j;->t:Ljava/lang/Boolean;

    .line 92
    iput-boolean v1, p0, Lcom/fiio/music/util/j;->x:Z

    .line 310
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/util/j;->r:Landroid/content/Context;

    .line 311
    iput-object p2, p0, Lcom/fiio/music/util/j;->u:Ljava/io/File;

    .line 312
    iput-object p3, p0, Lcom/fiio/music/util/j;->y:Lcom/fiio/music/entity/Song;

    .line 313
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    .line 314
    return-void
.end method

.method public constructor <init>(Lcom/fiio/music/service/h;Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/util/j;->t:Ljava/lang/Boolean;

    .line 92
    iput-boolean v1, p0, Lcom/fiio/music/util/j;->x:Z

    .line 285
    iput-object p1, p0, Lcom/fiio/music/util/j;->s:Lcom/fiio/music/service/h;

    .line 286
    iput-object p2, p0, Lcom/fiio/music/util/j;->r:Landroid/content/Context;

    .line 287
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/fiio/music/entity/Song;ILandroid/content/Context;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/util/j;->t:Ljava/lang/Boolean;

    .line 92
    iput-boolean v7, p0, Lcom/fiio/music/util/j;->x:Z

    .line 115
    iput-object p1, p0, Lcom/fiio/music/util/j;->u:Ljava/io/File;

    .line 116
    invoke-virtual {p4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/util/j;->r:Landroid/content/Context;

    .line 117
    new-instance v0, Lcom/fiio/music/entity/Song;

    invoke-direct {v0}, Lcom/fiio/music/entity/Song;-><init>()V

    invoke-virtual {p2}, Lcom/fiio/music/entity/Song;->getTrack()I

    move-result v0

    invoke-virtual {p2}, Lcom/fiio/music/entity/Song;->getId_()I

    move-result v1

    invoke-virtual {p2}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/fiio/music/util/bh;

    iget-object v6, p0, Lcom/fiio/music/util/j;->r:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/fiio/music/util/bh;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v2}, Lcom/fiio/music/util/bh;->a(Ljava/lang/String;)Lcom/fiio/music/entity/Song;

    move-result-object v2

    if-eqz v2, :cond_0

    if-gtz v1, :cond_1

    invoke-virtual {v2, v7}, Lcom/fiio/music/entity/Song;->setId_(I)V

    :goto_0
    invoke-virtual {v2, v0}, Lcom/fiio/music/entity/Song;->setTrack(I)V

    invoke-virtual {v2, v3}, Lcom/fiio/music/entity/Song;->setName(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/fiio/music/entity/Song;->setArtistName(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/fiio/music/entity/Song;->setCue(Z)V

    :cond_0
    iput-object v2, p0, Lcom/fiio/music/util/j;->y:Lcom/fiio/music/entity/Song;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    .line 119
    invoke-static {p1}, Lcom/fiio/music/util/n;->a(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 121
    invoke-static {}, Lcom/fiio/music/util/n;->a()Lcom/fiio/music/util/n;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/util/j;->w:Lcom/fiio/music/util/n;

    .line 122
    iget-object v0, p0, Lcom/fiio/music/util/j;->w:Lcom/fiio/music/util/n;

    invoke-virtual {v0, p1, p4}, Lcom/fiio/music/util/n;->a(Ljava/io/File;Landroid/content/Context;)V

    .line 123
    iget-object v0, p0, Lcom/fiio/music/util/j;->w:Lcom/fiio/music/util/n;

    invoke-virtual {v0}, Lcom/fiio/music/util/n;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    .line 127
    :goto_1
    invoke-direct {p0}, Lcom/fiio/music/util/j;->g()V

    .line 129
    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/fiio/music/util/j;->c(Ljava/io/File;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_2
    return-void

    .line 117
    :cond_1
    invoke-virtual {v2, v1}, Lcom/fiio/music/entity/Song;->setId_(I)V

    goto :goto_0

    .line 125
    :cond_2
    invoke-direct {p0, p1}, Lcom/fiio/music/util/j;->e(Ljava/io/File;)V

    goto :goto_1

    .line 130
    :catch_0
    move-exception v0

    .line 132
    sget-object v1, Lcom/fiio/music/util/j;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/fiio/music/util/aw;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    sget-object v0, Lcom/fiio/music/util/j;->b:Ljava/lang/String;

    const-string v1, "MyMusicActivity initSongInfo"

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    goto :goto_2
.end method

.method private static a(Ljava/lang/String;)I
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 724
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 726
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 727
    array-length v2, v1

    if-ne v2, v6, :cond_1

    .line 728
    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    aget-object v2, v1, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit16 v0, v0, 0x3e8

    aget-object v1, v1, v5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    .line 747
    :cond_0
    :goto_0
    return v0

    .line 729
    :cond_1
    array-length v2, v1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 730
    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0xe10

    aget-object v2, v1, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    add-int/2addr v0, v2

    aget-object v2, v1, v5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit16 v0, v0, 0x3e8

    .line 731
    aget-object v1, v1, v6

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    .line 730
    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public static a(Lcom/fiio/music/entity/Song;Landroid/content/Context;)Lcom/fiio/music/util/j;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 148
    invoke-virtual {p0}, Lcom/fiio/music/entity/Song;->getTrack()I

    move-result v2

    .line 149
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/fiio/music/util/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".cue"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 152
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/fiio/music/util/n;->a(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    :cond_0
    if-gez v2, :cond_2

    .line 163
    :goto_0
    return-object v0

    .line 156
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/fiio/music/util/j;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 157
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fiio/music/util/h;->i(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 163
    :cond_2
    new-instance v0, Lcom/fiio/music/util/j;

    invoke-direct {v0, v1, p0, v2, p1}, Lcom/fiio/music/util/j;-><init>(Ljava/io/File;Lcom/fiio/music/entity/Song;ILandroid/content/Context;)V

    goto :goto_0
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 1249
    .line 1250
    if-eqz p0, :cond_0

    .line 1251
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 1252
    if-eqz v3, :cond_0

    .line 1253
    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-lt v2, v4, :cond_2

    :cond_0
    move-object v0, v1

    .line 1268
    :cond_1
    :goto_1
    return-object v0

    .line 1253
    :cond_2
    aget-object v0, v3, v2

    .line 1254
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    sget-object v5, Lcom/fiio/music/util/j;->e:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/fiio/music/util/h;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1255
    invoke-static {v0}, Lcom/fiio/music/util/j;->c(Ljava/io/File;)Ljava/io/File;

    move-result-object v5

    .line 1256
    if-eqz v5, :cond_4

    .line 1257
    invoke-static {v0}, Lcom/fiio/music/util/j;->c(Ljava/io/File;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 1258
    if-eqz v5, :cond_3

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1253
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_4
    move-object v0, v1

    .line 1262
    goto :goto_1
.end method

.method private a(I)[I
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x4

    const/4 v7, 0x3

    .line 406
    const/4 v0, 0x2

    new-array v4, v0, [I

    move v2, v3

    .line 410
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_2

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 416
    aget-object v1, v0, v7

    if-eqz v1, :cond_3

    .line 417
    aget-object v1, v0, v7

    iput-object v1, p0, Lcom/fiio/music/util/j;->B:Ljava/lang/String;

    .line 423
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fiio/music/util/j;->C:Ljava/lang/String;

    .line 424
    iget-object v1, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_5

    .line 425
    iget-object v1, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    add-int/lit8 v5, v2, 0x1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v7

    if-eqz v1, :cond_4

    .line 426
    iget-object v1, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    add-int/lit8 v5, v2, 0x1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v7

    iput-object v1, p0, Lcom/fiio/music/util/j;->C:Ljava/lang/String;

    .line 427
    iget-object v1, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_1

    iget-object v1, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    add-int/lit8 v5, v2, 0x1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v7

    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/fiio/music/util/j;->B:Ljava/lang/String;

    iget-object v1, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    add-int/lit8 v6, v2, 0x1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v7

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 428
    aget-object v0, v0, v8

    iput-object v0, p0, Lcom/fiio/music/util/j;->B:Ljava/lang/String;

    .line 429
    iget-object v0, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    add-int/lit8 v1, v2, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v8

    iput-object v0, p0, Lcom/fiio/music/util/j;->C:Ljava/lang/String;

    .line 441
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/fiio/music/util/j;->B:Ljava/lang/String;

    invoke-static {v0}, Lcom/fiio/music/util/j;->a(Ljava/lang/String;)I

    move-result v1

    .line 442
    iget-object v0, p0, Lcom/fiio/music/util/j;->C:Ljava/lang/String;

    const-string v2, "end"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 444
    iget-object v0, p0, Lcom/fiio/music/util/j;->C:Ljava/lang/String;

    invoke-static {v0}, Lcom/fiio/music/util/j;->a(Ljava/lang/String;)I

    move-result v0

    .line 450
    :goto_3
    sub-int/2addr v0, v1

    .line 452
    aput v1, v4, v3

    .line 453
    const/4 v1, 0x1

    aput v0, v4, v1

    .line 455
    return-object v4

    .line 409
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 410
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 419
    :cond_3
    aget-object v1, v0, v8

    iput-object v1, p0, Lcom/fiio/music/util/j;->B:Ljava/lang/String;

    goto/16 :goto_1

    .line 432
    :cond_4
    iget-object v0, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    add-int/lit8 v1, v2, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v8

    iput-object v0, p0, Lcom/fiio/music/util/j;->C:Ljava/lang/String;

    goto :goto_2

    .line 434
    :cond_5
    const-string v1, "end"

    iput-object v1, p0, Lcom/fiio/music/util/j;->C:Ljava/lang/String;

    .line 435
    aget-object v1, v0, v7

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    add-int/lit8 v5, v2, -0x1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v7

    if-eqz v1, :cond_1

    aget-object v5, v0, v7

    iget-object v1, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v7

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 436
    aget-object v0, v0, v8

    iput-object v0, p0, Lcom/fiio/music/util/j;->B:Ljava/lang/String;

    goto :goto_2

    .line 446
    :cond_6
    iget-object v0, p0, Lcom/fiio/music/util/j;->y:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getDurationTime()I

    move-result v0

    goto :goto_3
.end method

.method public static b(Ljava/io/File;)Ljava/io/File;
    .locals 6

    .prologue
    .line 986
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 987
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fiio/music/util/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 988
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 990
    if-eqz v2, :cond_0

    .line 991
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_1

    .line 1000
    :cond_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 992
    :cond_1
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/io/File;->isHidden()Z

    move-result v3

    if-nez v3, :cond_2

    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_2

    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 993
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_2

    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/fiio/music/util/j;->H:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v2, v0

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/fiio/music/util/h;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 994
    aget-object v0, v2, v0

    goto :goto_1

    .line 991
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private b(Ljava/io/File;I)V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x1

    const/4 v3, 0x0

    const/4 v9, 0x4

    const/4 v8, 0x3

    .line 763
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move v2, v3

    .line 768
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_3

    .line 771
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 775
    aget-object v1, v0, v8

    if-eqz v1, :cond_4

    .line 776
    aget-object v1, v0, v8

    iput-object v1, p0, Lcom/fiio/music/util/j;->B:Ljava/lang/String;

    .line 782
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fiio/music/util/j;->C:Ljava/lang/String;

    .line 783
    iget-object v1, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_6

    .line 784
    iget-object v1, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    add-int/lit8 v6, v2, 0x1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v8

    if-eqz v1, :cond_5

    .line 785
    iget-object v1, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    add-int/lit8 v6, v2, 0x1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v8

    iput-object v1, p0, Lcom/fiio/music/util/j;->C:Ljava/lang/String;

    .line 786
    iget-object v1, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_1

    iget-object v1, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    add-int/lit8 v6, v2, 0x1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v8

    if-eqz v1, :cond_1

    iget-object v6, p0, Lcom/fiio/music/util/j;->B:Ljava/lang/String;

    iget-object v1, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    add-int/lit8 v7, v2, 0x1

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v8

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 787
    aget-object v1, v0, v9

    iput-object v1, p0, Lcom/fiio/music/util/j;->B:Ljava/lang/String;

    .line 788
    iget-object v1, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    add-int/lit8 v6, v2, 0x1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v9

    iput-object v1, p0, Lcom/fiio/music/util/j;->C:Ljava/lang/String;

    .line 798
    :cond_1
    :goto_2
    new-instance v1, Lcom/fiio/music/util/bh;

    iget-object v6, p0, Lcom/fiio/music/util/j;->r:Landroid/content/Context;

    invoke-direct {v1, v6}, Lcom/fiio/music/util/bh;-><init>(Landroid/content/Context;)V

    .line 799
    if-eqz p1, :cond_2

    .line 800
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/fiio/music/util/bh;->a(Ljava/lang/String;)Lcom/fiio/music/entity/Song;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/util/j;->y:Lcom/fiio/music/entity/Song;

    .line 802
    :cond_2
    iget-object v1, p0, Lcom/fiio/music/util/j;->y:Lcom/fiio/music/entity/Song;

    if-nez v1, :cond_7

    .line 851
    :goto_3
    return-void

    .line 767
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eq p2, v0, :cond_0

    .line 768
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 778
    :cond_4
    aget-object v1, v0, v9

    iput-object v1, p0, Lcom/fiio/music/util/j;->B:Ljava/lang/String;

    goto/16 :goto_1

    .line 791
    :cond_5
    iget-object v1, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    add-int/lit8 v6, v2, 0x1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v9

    iput-object v1, p0, Lcom/fiio/music/util/j;->C:Ljava/lang/String;

    goto :goto_2

    .line 793
    :cond_6
    const-string v1, "end"

    iput-object v1, p0, Lcom/fiio/music/util/j;->C:Ljava/lang/String;

    .line 794
    aget-object v1, v0, v8

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    add-int/lit8 v6, v2, -0x1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v8

    if-eqz v1, :cond_1

    aget-object v6, v0, v8

    iget-object v1, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    add-int/lit8 v7, v2, -0x1

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v8

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 795
    aget-object v1, v0, v9

    iput-object v1, p0, Lcom/fiio/music/util/j;->B:Ljava/lang/String;

    goto :goto_2

    .line 806
    :cond_7
    iget-object v1, p0, Lcom/fiio/music/util/j;->n:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 807
    new-instance v1, Lcom/fiio/music/entity/Album;

    invoke-direct {v1}, Lcom/fiio/music/entity/Album;-><init>()V

    .line 808
    invoke-virtual {v1, v10}, Lcom/fiio/music/entity/Album;->setId(I)V

    .line 809
    iget-object v6, p0, Lcom/fiio/music/util/j;->n:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/fiio/music/entity/Album;->setName(Ljava/lang/String;)V

    .line 810
    iget-object v6, p0, Lcom/fiio/music/util/j;->y:Lcom/fiio/music/entity/Song;

    invoke-virtual {v6, v1}, Lcom/fiio/music/entity/Song;->setAlbum(Lcom/fiio/music/entity/Album;)V

    .line 813
    :cond_8
    const/4 v1, 0x5

    aget-object v1, v0, v1

    if-eqz v1, :cond_9

    .line 814
    new-instance v6, Lcom/fiio/music/entity/SongStyle;

    invoke-direct {v6}, Lcom/fiio/music/entity/SongStyle;-><init>()V

    .line 815
    invoke-virtual {v6, v10}, Lcom/fiio/music/entity/SongStyle;->setId(I)V

    .line 816
    iget-object v1, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const/4 v7, 0x5

    aget-object v1, v1, v7

    invoke-virtual {v6, v1}, Lcom/fiio/music/entity/SongStyle;->setName(Ljava/lang/String;)V

    .line 817
    iget-object v1, p0, Lcom/fiio/music/util/j;->y:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1, v6}, Lcom/fiio/music/entity/Song;->setStyle(Lcom/fiio/music/entity/SongStyle;)V

    .line 820
    :cond_9
    const/4 v1, 0x6

    aget-object v1, v0, v1

    if-eqz v1, :cond_a

    .line 821
    iget-object v6, p0, Lcom/fiio/music/util/j;->y:Lcom/fiio/music/entity/Song;

    iget-object v1, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-virtual {v6, v1}, Lcom/fiio/music/entity/Song;->setYear(Ljava/lang/String;)V

    .line 826
    :cond_a
    iget-object v1, p0, Lcom/fiio/music/util/j;->y:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1, p2}, Lcom/fiio/music/entity/Song;->setTrack(I)V

    .line 827
    iget-object v1, p0, Lcom/fiio/music/util/j;->y:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1, v11}, Lcom/fiio/music/entity/Song;->setCue(Z)V

    .line 829
    iget-object v1, p0, Lcom/fiio/music/util/j;->B:Ljava/lang/String;

    invoke-static {v1}, Lcom/fiio/music/util/j;->a(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/fiio/music/util/j;->D:I

    .line 830
    iput v3, p0, Lcom/fiio/music/util/j;->E:I

    .line 831
    iget-object v1, p0, Lcom/fiio/music/util/j;->C:Ljava/lang/String;

    const-string v2, "end"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 832
    iget-object v1, p0, Lcom/fiio/music/util/j;->C:Ljava/lang/String;

    invoke-static {v1}, Lcom/fiio/music/util/j;->a(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/fiio/music/util/j;->E:I

    .line 838
    :goto_4
    iget v1, p0, Lcom/fiio/music/util/j;->E:I

    iget v2, p0, Lcom/fiio/music/util/j;->D:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/fiio/music/util/j;->F:I

    .line 841
    invoke-direct {p0}, Lcom/fiio/music/util/j;->i()V

    .line 845
    aget-object v1, v0, v11

    iput-object v1, p0, Lcom/fiio/music/util/j;->z:Ljava/lang/String;

    .line 846
    iget-object v1, p0, Lcom/fiio/music/util/j;->y:Lcom/fiio/music/entity/Song;

    iget-object v2, p0, Lcom/fiio/music/util/j;->z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/fiio/music/entity/Song;->setName(Ljava/lang/String;)V

    .line 847
    const/4 v1, 0x2

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/fiio/music/util/j;->A:Ljava/lang/String;

    .line 848
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 850
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "initInfoBeforePlayCueFile runtime \uff1a "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long/2addr v0, v4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 834
    :cond_b
    iget-object v1, p0, Lcom/fiio/music/util/j;->y:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getDurationTime()I

    move-result v1

    iput v1, p0, Lcom/fiio/music/util/j;->E:I

    goto :goto_4
.end method

.method public static c(Ljava/io/File;)Ljava/io/File;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 1185
    .line 1190
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1191
    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1192
    :try_start_1
    invoke-static {p0}, Lcom/fiio/music/util/e;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 1195
    if-eqz v1, :cond_4

    .line 1197
    const-string v2, "Big5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1198
    invoke-static {p0}, Lcom/fiio/music/util/j;->f(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 1214
    :cond_0
    :goto_0
    new-instance v4, Ljava/io/InputStreamReader;

    .line 1215
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1214
    invoke-direct {v4, v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1216
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1218
    const-string v2, "FILE \"(.*?)\" WAVE"

    .line 1219
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 1220
    :cond_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    if-nez v5, :cond_5

    move-object v2, v0

    .line 1230
    :goto_1
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    .line 1231
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1239
    :goto_2
    if-eqz v2, :cond_2

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_2
    return-object v0

    .line 1199
    :cond_3
    :try_start_3
    const-string v2, "windows-1252"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1200
    sget-object v2, Lcom/fiio/music/util/j;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1202
    const-string v1, "GBK"

    goto :goto_0

    .line 1205
    :cond_4
    const-string v1, "Unicode"

    goto :goto_0

    .line 1221
    :cond_5
    invoke-virtual {v2, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 1222
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    .line 1223
    if-eqz v6, :cond_1

    .line 1224
    const-string v2, "FILE \""

    const-string v6, ""

    invoke-virtual {v5, v2, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1225
    const-string v5, "\" WAVE"

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1226
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v2

    goto :goto_1

    .line 1233
    :cond_6
    :try_start_4
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "\u627e\u4e0d\u5230\u6307\u5b9a\u7684\u6587\u4ef6"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-object v2, v0

    move-object v3, v0

    .line 1235
    goto :goto_2

    :catch_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    .line 1236
    :goto_3
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u8bfb\u53d6\u6587\u4ef6\u5185\u5bb9\u51fa\u9519"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1237
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 1235
    :catch_1
    move-exception v1

    move-object v2, v0

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_3
.end method

.method private c(Ljava/io/File;I)V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v3, 0x0

    const/4 v9, 0x4

    const/4 v8, 0x3

    .line 859
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move v2, v3

    .line 864
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_3

    .line 868
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 871
    aget-object v1, v0, v8

    if-eqz v1, :cond_4

    .line 872
    aget-object v1, v0, v8

    iput-object v1, p0, Lcom/fiio/music/util/j;->B:Ljava/lang/String;

    .line 878
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fiio/music/util/j;->C:Ljava/lang/String;

    .line 879
    iget-object v1, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_6

    .line 880
    iget-object v1, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    add-int/lit8 v6, v2, 0x1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v8

    if-eqz v1, :cond_5

    .line 881
    iget-object v1, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    add-int/lit8 v6, v2, 0x1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v8

    iput-object v1, p0, Lcom/fiio/music/util/j;->C:Ljava/lang/String;

    .line 882
    iget-object v1, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_1

    iget-object v1, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    add-int/lit8 v6, v2, 0x1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v8

    if-eqz v1, :cond_1

    iget-object v6, p0, Lcom/fiio/music/util/j;->B:Ljava/lang/String;

    iget-object v1, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    add-int/lit8 v7, v2, 0x1

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v8

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 883
    aget-object v1, v0, v9

    iput-object v1, p0, Lcom/fiio/music/util/j;->B:Ljava/lang/String;

    .line 884
    iget-object v1, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v9

    iput-object v1, p0, Lcom/fiio/music/util/j;->C:Ljava/lang/String;

    .line 897
    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/fiio/music/util/j;->B:Ljava/lang/String;

    invoke-static {v1}, Lcom/fiio/music/util/j;->a(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/fiio/music/util/j;->D:I

    .line 898
    iput v3, p0, Lcom/fiio/music/util/j;->E:I

    .line 899
    iget-object v1, p0, Lcom/fiio/music/util/j;->C:Ljava/lang/String;

    const-string v2, "end"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 900
    iget-object v1, p0, Lcom/fiio/music/util/j;->C:Ljava/lang/String;

    invoke-static {v1}, Lcom/fiio/music/util/j;->a(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/fiio/music/util/j;->E:I

    .line 906
    :goto_3
    iget v1, p0, Lcom/fiio/music/util/j;->E:I

    iget v2, p0, Lcom/fiio/music/util/j;->D:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/fiio/music/util/j;->F:I

    .line 907
    iget v1, p0, Lcom/fiio/music/util/j;->F:I

    if-gez v1, :cond_a

    .line 909
    iget-object v1, p0, Lcom/fiio/music/util/j;->r:Landroid/content/Context;

    invoke-static {p1}, Lcom/fiio/music/util/n;->a(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 915
    :goto_4
    if-nez p1, :cond_9

    .line 929
    :cond_2
    :goto_5
    return-void

    .line 863
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eq p2, v0, :cond_0

    .line 864
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 874
    :cond_4
    aget-object v1, v0, v9

    iput-object v1, p0, Lcom/fiio/music/util/j;->B:Ljava/lang/String;

    goto/16 :goto_1

    .line 887
    :cond_5
    iget-object v1, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v9

    iput-object v1, p0, Lcom/fiio/music/util/j;->C:Ljava/lang/String;

    goto :goto_2

    .line 889
    :cond_6
    const-string v1, "end"

    iput-object v1, p0, Lcom/fiio/music/util/j;->C:Ljava/lang/String;

    .line 890
    aget-object v1, v0, v8

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    add-int/lit8 v6, v2, -0x1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v8

    if-eqz v1, :cond_1

    aget-object v6, v0, v8

    iget-object v1, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, v8

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 891
    aget-object v1, v0, v9

    iput-object v1, p0, Lcom/fiio/music/util/j;->B:Ljava/lang/String;

    goto/16 :goto_2

    .line 902
    :cond_7
    iget-object v1, p0, Lcom/fiio/music/util/j;->y:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getDurationTime()I

    move-result v1

    iput v1, p0, Lcom/fiio/music/util/j;->E:I

    goto :goto_3

    .line 913
    :cond_8
    invoke-static {p1}, Lcom/fiio/music/util/j;->b(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    goto :goto_4

    .line 916
    :cond_9
    new-instance v1, Lcom/fiio/music/util/bh;

    iget-object v2, p0, Lcom/fiio/music/util/j;->r:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/fiio/music/util/bh;-><init>(Landroid/content/Context;)V

    .line 917
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fiio/music/util/bh;->a(Ljava/lang/String;)Lcom/fiio/music/entity/Song;

    move-result-object v1

    iput-object v1, p0, Lcom/fiio/music/util/j;->y:Lcom/fiio/music/entity/Song;

    .line 918
    iget-object v1, p0, Lcom/fiio/music/util/j;->y:Lcom/fiio/music/entity/Song;

    if-eqz v1, :cond_2

    .line 919
    iget-object v1, p0, Lcom/fiio/music/util/j;->y:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getDurationTime()I

    move-result v1

    iput v1, p0, Lcom/fiio/music/util/j;->E:I

    .line 920
    iget-object v1, p0, Lcom/fiio/music/util/j;->y:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1, v10}, Lcom/fiio/music/entity/Song;->setCue(Z)V

    .line 921
    iget v1, p0, Lcom/fiio/music/util/j;->E:I

    iget v2, p0, Lcom/fiio/music/util/j;->D:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/fiio/music/util/j;->F:I

    .line 924
    :cond_a
    aget-object v1, v0, v10

    iput-object v1, p0, Lcom/fiio/music/util/j;->z:Ljava/lang/String;

    .line 925
    const/4 v1, 0x2

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/fiio/music/util/j;->A:Ljava/lang/String;

    .line 926
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 928
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "initInfoBeforePlayCueFile runtime \uff1a "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long/2addr v0, v4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_5
.end method

.method public static d(Ljava/io/File;)I
    .locals 8

    .prologue
    const/4 v1, -0x1

    .line 1272
    .line 1275
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1276
    invoke-static {p0}, Lcom/fiio/music/util/e;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 1279
    if-eqz v0, :cond_3

    .line 1281
    const-string v2, "Big5"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1282
    invoke-static {p0}, Lcom/fiio/music/util/j;->f(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 1298
    :cond_0
    :goto_0
    new-instance v4, Ljava/io/InputStreamReader;

    .line 1299
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1298
    invoke-direct {v4, v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1300
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1302
    const-string v0, "TRACK \\d+ AUDIO"

    .line 1303
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 1304
    const/4 v0, 0x1

    move v2, v0

    move v0, v1

    .line 1305
    :cond_1
    :goto_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    .line 1319
    :goto_2
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    .line 1330
    :goto_3
    add-int/lit8 v0, v0, -0x1

    return v0

    .line 1283
    :cond_2
    const-string v2, "windows-1252"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1284
    sget-object v2, Lcom/fiio/music/util/j;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1286
    const-string v0, "GBK"

    goto :goto_0

    .line 1289
    :cond_3
    const-string v0, "Unicode"

    goto :goto_0

    .line 1306
    :cond_4
    invoke-virtual {v6, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 1307
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    .line 1308
    if-eqz v7, :cond_1

    .line 1309
    const-string v0, "TRACK"

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    const-string v7, "AUDIO"

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v3, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1310
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1311
    if-eq v2, v3, :cond_5

    move v0, v1

    .line 1313
    goto :goto_2

    .line 1315
    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_1

    .line 1321
    :cond_6
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "\u627e\u4e0d\u5230\u6307\u5b9a\u7684\u6587\u4ef6"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1324
    goto :goto_3

    :catch_0
    move-exception v0

    .line 1325
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u8bfb\u53d6\u6587\u4ef6\u5185\u5bb9\u51fa\u9519"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1326
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    .line 1327
    goto :goto_3
.end method

.method private e(Ljava/io/File;)V
    .locals 7

    .prologue
    .line 603
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 604
    invoke-static {p1}, Lcom/fiio/music/util/e;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 608
    if-eqz v0, :cond_4

    .line 610
    const-string v1, "Big5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 611
    invoke-static {p1}, Lcom/fiio/music/util/j;->f(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 627
    :cond_0
    :goto_0
    new-instance v1, Ljava/io/InputStreamReader;

    .line 628
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 627
    invoke-direct {v1, v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 629
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 631
    const-string v2, "TRACK \\d+ AUDIO"

    .line 632
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 633
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    .line 656
    invoke-direct {p0}, Lcom/fiio/music/util/j;->h()Z

    move-result v0

    if-nez v0, :cond_2

    .line 657
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    .line 659
    :cond_2
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    .line 660
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/util/j;->t:Ljava/lang/Boolean;

    .line 668
    :goto_2
    return-void

    .line 612
    :cond_3
    const-string v1, "windows-1252"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 613
    sget-object v1, Lcom/fiio/music/util/j;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 615
    const-string v0, "GBK"

    goto :goto_0

    .line 618
    :cond_4
    const-string v0, "Unicode"

    goto :goto_0

    .line 635
    :cond_5
    iget-object v4, p0, Lcom/fiio/music/util/j;->t:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_6

    .line 636
    const-string v4, "TITLE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 637
    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/fiio/music/util/j;->n:Ljava/lang/String;

    .line 646
    :cond_6
    :goto_3
    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 647
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    .line 648
    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/fiio/music/util/j;->t:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_8

    .line 649
    iget-object v4, p0, Lcom/fiio/music/util/j;->a:[Ljava/lang/String;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/fiio/music/util/j;->a:[Ljava/lang/String;

    .line 650
    :cond_7
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/fiio/music/util/j;->t:Ljava/lang/Boolean;

    .line 652
    :cond_8
    iget-object v4, p0, Lcom/fiio/music/util/j;->t:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 653
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TRACK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "TRACK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x6

    const-string v5, "AUDIO"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/fiio/music/util/j;->g:Ljava/lang/String;

    :cond_9
    const-string v4, "TITLE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/fiio/music/util/j;->h:Ljava/lang/String;

    :cond_a
    const-string v4, "PERFORMER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/fiio/music/util/j;->i:Ljava/lang/String;

    :cond_b
    const-string v4, "REM GENRE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v4, "GENRE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/fiio/music/util/j;->j:Ljava/lang/String;

    :cond_c
    const-string v4, "REM DATE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    const-string v4, "DATE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/fiio/music/util/j;->k:Ljava/lang/String;

    :cond_d
    const-string v4, "INDEX 00"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    const-string v4, "00"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/fiio/music/util/j;->l:Ljava/lang/String;

    :cond_e
    const-string v4, "INDEX 01"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "01"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/fiio/music/util/j;->m:Ljava/lang/String;

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/fiio/music/util/j;->g:Ljava/lang/String;

    aput-object v5, v3, v4

    iget-object v4, p0, Lcom/fiio/music/util/j;->h:Ljava/lang/String;

    if-eqz v4, :cond_12

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/fiio/music/util/j;->h:Ljava/lang/String;

    aput-object v5, v3, v4

    :goto_4
    iget-object v4, p0, Lcom/fiio/music/util/j;->i:Ljava/lang/String;

    if-eqz v4, :cond_13

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/fiio/music/util/j;->i:Ljava/lang/String;

    aput-object v5, v3, v4

    :goto_5
    const/4 v4, 0x3

    iget-object v5, p0, Lcom/fiio/music/util/j;->l:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/fiio/music/util/j;->m:Ljava/lang/String;

    aput-object v5, v3, v4

    iget-object v4, p0, Lcom/fiio/music/util/j;->j:Ljava/lang/String;

    if-eqz v4, :cond_15

    const/4 v4, 0x5

    iget-object v5, p0, Lcom/fiio/music/util/j;->j:Ljava/lang/String;

    aput-object v5, v3, v4

    :goto_6
    iget-object v4, p0, Lcom/fiio/music/util/j;->k:Ljava/lang/String;

    if-eqz v4, :cond_17

    const/4 v4, 0x6

    iget-object v5, p0, Lcom/fiio/music/util/j;->k:Ljava/lang/String;

    aput-object v5, v3, v4

    :goto_7
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/fiio/music/util/j;->g:Ljava/lang/String;

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/fiio/music/util/j;->h:Ljava/lang/String;

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/fiio/music/util/j;->i:Ljava/lang/String;

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/fiio/music/util/j;->l:Ljava/lang/String;

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/fiio/music/util/j;->m:Ljava/lang/String;

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/fiio/music/util/j;->j:Ljava/lang/String;

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/fiio/music/util/j;->k:Ljava/lang/String;

    iget-object v4, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 664
    :catch_0
    move-exception v0

    .line 665
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u8bfb\u53d6\u6587\u4ef6\u5185\u5bb9\u51fa\u9519"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 666
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 638
    :cond_f
    :try_start_1
    const-string v4, "PERFORMER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 639
    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/fiio/music/util/j;->p:Ljava/lang/String;

    goto/16 :goto_3

    .line 640
    :cond_10
    const-string v4, "REM GENRE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 641
    const-string v4, "GENRE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/fiio/music/util/j;->o:Ljava/lang/String;

    goto/16 :goto_3

    .line 642
    :cond_11
    const-string v4, "REM DATE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 643
    const-string v4, "DATE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/fiio/music/util/j;->q:Ljava/lang/String;

    goto/16 :goto_3

    .line 653
    :cond_12
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/fiio/music/util/j;->u:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    goto/16 :goto_4

    :cond_13
    iget-object v4, p0, Lcom/fiio/music/util/j;->p:Ljava/lang/String;

    if-eqz v4, :cond_14

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/fiio/music/util/j;->p:Ljava/lang/String;

    aput-object v5, v3, v4

    goto/16 :goto_5

    :cond_14
    const/4 v4, 0x2

    iget-object v5, p0, Lcom/fiio/music/util/j;->r:Landroid/content/Context;

    const v6, 0x7f0c00d4

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    goto/16 :goto_5

    :cond_15
    iget-object v4, p0, Lcom/fiio/music/util/j;->o:Ljava/lang/String;

    if-eqz v4, :cond_16

    const/4 v4, 0x5

    iget-object v5, p0, Lcom/fiio/music/util/j;->o:Ljava/lang/String;

    aput-object v5, v3, v4

    goto/16 :goto_6

    :cond_16
    const/4 v4, 0x5

    iget-object v5, p0, Lcom/fiio/music/util/j;->r:Landroid/content/Context;

    const v6, 0x7f0c00d6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    goto/16 :goto_6

    :cond_17
    iget-object v4, p0, Lcom/fiio/music/util/j;->q:Ljava/lang/String;

    if-eqz v4, :cond_18

    const/4 v4, 0x6

    iget-object v5, p0, Lcom/fiio/music/util/j;->q:Ljava/lang/String;

    aput-object v5, v3, v4

    goto/16 :goto_7

    :cond_18
    const/4 v4, 0x6

    iget-object v5, p0, Lcom/fiio/music/util/j;->r:Landroid/content/Context;

    const v6, 0x7f0c00c1

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    goto/16 :goto_7

    .line 662
    :cond_19
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u627e\u4e0d\u5230\u6307\u5b9a\u7684\u6587\u4ef6"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method private static f(Ljava/io/File;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 1352
    .line 1355
    :try_start_0
    new-instance v3, Ljava/io/InputStreamReader;

    .line 1356
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v5, "iso-8859-1"

    .line 1355
    invoke-direct {v3, v1, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1357
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1358
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 1360
    new-instance v2, Ljava/lang/String;

    const-string v6, "iso-8859-1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    const-string v7, "GB2312"

    invoke-direct {v2, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v2}, Lcom/fiio/music/util/bh;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/fiio/music/util/j;->b:Ljava/lang/String;

    const-string v6, "is gb2312"

    invoke-static {v2, v6}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move v2, v0

    :goto_0
    if-eqz v2, :cond_1

    .line 1379
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1380
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    .line 1361
    const-string v0, "GB2312"

    .line 1383
    :goto_1
    return-object v0

    :cond_0
    move v2, v4

    .line 1360
    goto :goto_0

    .line 1363
    :cond_1
    :try_start_3
    new-instance v2, Ljava/lang/String;

    const-string v6, "iso-8859-1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    const-string v6, "GBK"

    invoke-direct {v2, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v2}, Lcom/fiio/music/util/bh;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/fiio/music/util/j;->b:Ljava/lang/String;

    const-string v4, "is gbk encoding"

    invoke-static {v2, v4}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_2
    if-eqz v0, :cond_3

    .line 1379
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1380
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    .line 1364
    const-string v0, "GBK"

    goto :goto_1

    :cond_2
    move v0, v4

    .line 1363
    goto :goto_2

    .line 1379
    :cond_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1380
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    .line 1366
    const-string v0, "BIG5"

    goto :goto_1

    .line 1369
    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1379
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1380
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    .line 1383
    :goto_4
    const-string v0, "GBK"

    goto :goto_1

    .line 1372
    :catch_1
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_5
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1379
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1380
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    goto :goto_4

    .line 1375
    :catch_2
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_6
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1379
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1380
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    goto :goto_4

    .line 1378
    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    .line 1379
    :goto_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1380
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    .line 1381
    throw v0

    .line 1379
    :cond_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1380
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    goto :goto_4

    .line 1378
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_7

    :catchall_2
    move-exception v0

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_7

    .line 1375
    :catch_3
    move-exception v0

    move-object v1, v2

    goto :goto_6

    :catch_4
    move-exception v0

    goto :goto_6

    .line 1372
    :catch_5
    move-exception v0

    move-object v1, v2

    goto :goto_5

    :catch_6
    move-exception v0

    goto :goto_5

    .line 1369
    :catch_7
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_3

    :catch_8
    move-exception v0

    move-object v2, v3

    goto :goto_3
.end method

.method private f()Ljava/util/List;
    .locals 10
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
    const/4 v9, 0x5

    const/4 v8, 0x2

    const/4 v2, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x1

    .line 352
    const/4 v0, 0x0

    .line 353
    iget-object v1, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 354
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 355
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    move-object v0, v3

    .line 397
    :cond_0
    return-object v0

    .line 356
    :cond_1
    new-instance v0, Lcom/fiio/music/entity/Song;

    invoke-direct {v0}, Lcom/fiio/music/entity/Song;-><init>()V

    .line 357
    iget-object v0, p0, Lcom/fiio/music/util/j;->y:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->dataClone()Lcom/fiio/music/entity/Song;

    move-result-object v4

    .line 358
    iget-object v0, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/fiio/music/entity/Song;->setId_(I)V

    .line 359
    new-instance v5, Lcom/fiio/music/entity/Artist;

    invoke-direct {v5}, Lcom/fiio/music/entity/Artist;-><init>()V

    .line 360
    invoke-virtual {v5, v7}, Lcom/fiio/music/entity/Artist;->setId(I)V

    .line 361
    iget-object v0, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v8

    invoke-virtual {v5, v0}, Lcom/fiio/music/entity/Artist;->setName(Ljava/lang/String;)V

    .line 362
    invoke-virtual {v4, v5}, Lcom/fiio/music/entity/Song;->setArtist(Lcom/fiio/music/entity/Artist;)V

    .line 364
    iget-object v0, p0, Lcom/fiio/music/util/j;->n:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 365
    new-instance v0, Lcom/fiio/music/entity/Album;

    invoke-direct {v0}, Lcom/fiio/music/entity/Album;-><init>()V

    .line 366
    invoke-virtual {v0, v7}, Lcom/fiio/music/entity/Album;->setId(I)V

    .line 367
    iget-object v5, p0, Lcom/fiio/music/util/j;->n:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/fiio/music/entity/Album;->setName(Ljava/lang/String;)V

    .line 368
    invoke-virtual {v4, v0}, Lcom/fiio/music/entity/Song;->setAlbum(Lcom/fiio/music/entity/Album;)V

    .line 371
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v9

    if-eqz v0, :cond_3

    .line 372
    new-instance v5, Lcom/fiio/music/entity/SongStyle;

    invoke-direct {v5}, Lcom/fiio/music/entity/SongStyle;-><init>()V

    .line 373
    invoke-virtual {v5, v7}, Lcom/fiio/music/entity/SongStyle;->setId(I)V

    .line 374
    iget-object v0, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v9

    invoke-virtual {v5, v0}, Lcom/fiio/music/entity/SongStyle;->setName(Ljava/lang/String;)V

    .line 375
    invoke-virtual {v4, v5}, Lcom/fiio/music/entity/Song;->setStyle(Lcom/fiio/music/entity/SongStyle;)V

    .line 378
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v5, 0x6

    aget-object v0, v0, v5

    if-eqz v0, :cond_4

    .line 379
    iget-object v0, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v5, 0x6

    aget-object v0, v0, v5

    invoke-virtual {v4, v0}, Lcom/fiio/music/entity/Song;->setYear(Ljava/lang/String;)V

    .line 382
    :cond_4
    iget-object v0, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v6

    invoke-virtual {v4, v0}, Lcom/fiio/music/entity/Song;->setName(Ljava/lang/String;)V

    .line 383
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v4, v0}, Lcom/fiio/music/entity/Song;->setTrack(I)V

    .line 384
    invoke-virtual {v4, v6}, Lcom/fiio/music/entity/Song;->setCue(Z)V

    .line 387
    iget-object v0, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v6

    invoke-virtual {v4, v0}, Lcom/fiio/music/entity/Song;->setCue_songName(Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v8

    invoke-virtual {v4, v0}, Lcom/fiio/music/entity/Song;->setCue_artistName(Ljava/lang/String;)V

    .line 390
    add-int/lit8 v0, v1, 0x1

    invoke-direct {p0, v0}, Lcom/fiio/music/util/j;->a(I)[I

    move-result-object v0

    .line 391
    aget v5, v0, v2

    invoke-virtual {v4, v5}, Lcom/fiio/music/entity/Song;->setCue_startTime(I)V

    .line 392
    aget v0, v0, v6

    invoke-virtual {v4, v0}, Lcom/fiio/music/entity/Song;->setCue_duration(I)V

    .line 394
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0
.end method

.method private g()V
    .locals 4

    .prologue
    .line 503
    iget-object v0, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/fiio/music/util/j;->a:[Ljava/lang/String;

    .line 505
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 509
    :cond_0
    return-void

    .line 506
    :cond_1
    iget-object v2, p0, Lcom/fiio/music/util/j;->a:[Ljava/lang/String;

    iget-object v0, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    aput-object v0, v2, v1

    .line 505
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private h()Z
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v2, 0x0

    .line 675
    const/4 v3, 0x1

    .line 680
    iget-object v0, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    move v1, v2

    .line 686
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    .line 697
    :goto_1
    if-eqz v3, :cond_0

    .line 698
    iget-object v0, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    move v1, v2

    .line 699
    :goto_2
    iget-object v0, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_6

    :cond_0
    move v2, v3

    .line 712
    :cond_1
    return v2

    .line 682
    :cond_2
    add-int/lit8 v0, v1, 0x1

    iget-object v4, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    iget-object v0, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v4, v0, v2

    iget-object v0, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    add-int/lit8 v5, v1, 0x1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 683
    :cond_3
    add-int/lit8 v0, v1, 0x1

    iget-object v4, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v0, v4, :cond_4

    iget-object v0, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v4, v0, v2

    iget-object v0, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 686
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_5
    move v3, v2

    .line 691
    goto :goto_1

    .line 701
    :cond_6
    add-int/lit8 v0, v1, 0x1

    iget-object v4, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_7

    iget-object v0, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v4, v0, v6

    iget-object v0, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    add-int/lit8 v5, v1, 0x1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v6

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 704
    :cond_7
    add-int/lit8 v0, v1, 0x1

    iget-object v4, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v0, v4, :cond_8

    iget-object v0, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v4, v0, v6

    iget-object v0, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v6

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 699
    :cond_8
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_2
.end method

.method private i()V
    .locals 10

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x5

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v6, -0x1

    .line 934
    iget-object v0, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 935
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/util/j;->G:Ljava/util/List;

    move v1, v2

    .line 936
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 969
    :cond_0
    return-void

    .line 937
    :cond_1
    new-instance v0, Lcom/fiio/music/entity/Song;

    invoke-direct {v0}, Lcom/fiio/music/entity/Song;-><init>()V

    .line 938
    iget-object v0, p0, Lcom/fiio/music/util/j;->y:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->dataClone()Lcom/fiio/music/entity/Song;

    move-result-object v3

    .line 939
    iget-object v0, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/fiio/music/entity/Song;->setId_(I)V

    .line 940
    new-instance v4, Lcom/fiio/music/entity/Artist;

    invoke-direct {v4}, Lcom/fiio/music/entity/Artist;-><init>()V

    .line 941
    iget-object v0, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v0, v0, v5

    invoke-virtual {v4, v0}, Lcom/fiio/music/entity/Artist;->setName(Ljava/lang/String;)V

    .line 942
    invoke-virtual {v3, v4}, Lcom/fiio/music/entity/Song;->setArtist(Lcom/fiio/music/entity/Artist;)V

    .line 943
    iget-object v0, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v7

    invoke-virtual {v3, v0}, Lcom/fiio/music/entity/Song;->setName(Ljava/lang/String;)V

    .line 944
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v3, v0}, Lcom/fiio/music/entity/Song;->setTrack(I)V

    .line 945
    invoke-virtual {v3, v7}, Lcom/fiio/music/entity/Song;->setCue(Z)V

    .line 947
    iget-object v0, p0, Lcom/fiio/music/util/j;->n:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 948
    new-instance v0, Lcom/fiio/music/entity/Album;

    invoke-direct {v0}, Lcom/fiio/music/entity/Album;-><init>()V

    .line 949
    invoke-virtual {v0, v6}, Lcom/fiio/music/entity/Album;->setId(I)V

    .line 950
    iget-object v4, p0, Lcom/fiio/music/util/j;->n:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/fiio/music/entity/Album;->setName(Ljava/lang/String;)V

    .line 951
    invoke-virtual {v3, v0}, Lcom/fiio/music/entity/Song;->setAlbum(Lcom/fiio/music/entity/Album;)V

    .line 954
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v8

    if-eqz v0, :cond_3

    .line 955
    new-instance v4, Lcom/fiio/music/entity/SongStyle;

    invoke-direct {v4}, Lcom/fiio/music/entity/SongStyle;-><init>()V

    .line 956
    invoke-virtual {v4, v6}, Lcom/fiio/music/entity/SongStyle;->setId(I)V

    .line 957
    iget-object v0, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v8

    invoke-virtual {v4, v0}, Lcom/fiio/music/entity/SongStyle;->setName(Ljava/lang/String;)V

    .line 958
    invoke-virtual {v3, v4}, Lcom/fiio/music/entity/Song;->setStyle(Lcom/fiio/music/entity/SongStyle;)V

    .line 961
    :cond_3
    iget-object v0, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v9

    if-eqz v0, :cond_4

    .line 962
    iget-object v0, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v9

    invoke-virtual {v3, v0}, Lcom/fiio/music/entity/Song;->setYear(Ljava/lang/String;)V

    .line 966
    :cond_4
    iget-object v0, p0, Lcom/fiio/music/util/j;->G:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 936
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0
.end method


# virtual methods
.method public final a(Ljava/io/File;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;"
        }
    .end annotation

    .prologue
    .line 322
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 323
    iget-object v0, p0, Lcom/fiio/music/util/j;->r:Landroid/content/Context;

    invoke-static {p1}, Lcom/fiio/music/util/n;->a(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/fiio/music/util/n;->a()Lcom/fiio/music/util/n;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/util/j;->w:Lcom/fiio/music/util/n;

    iget-object v0, p0, Lcom/fiio/music/util/j;->w:Lcom/fiio/music/util/n;

    iget-object v1, p0, Lcom/fiio/music/util/j;->r:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Lcom/fiio/music/util/n;->a(Ljava/io/File;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/fiio/music/util/j;->w:Lcom/fiio/music/util/n;

    invoke-virtual {v0}, Lcom/fiio/music/util/n;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    :goto_0
    iget-object v0, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    iput-object v0, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    .line 327
    invoke-direct {p0}, Lcom/fiio/music/util/j;->f()Ljava/util/List;

    move-result-object v0

    .line 335
    return-object v0

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/util/j;->u:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/fiio/music/util/j;->e(Ljava/io/File;)V

    goto :goto_0
.end method

.method public final a(Lcom/fiio/music/entity/Song;Ljava/util/List;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fiio/music/entity/Song;",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 468
    iget-object v0, p0, Lcom/fiio/music/util/j;->s:Lcom/fiio/music/service/h;

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getCue_startTime()I

    move-result v2

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getCue_duration()I

    move-result v3

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v4

    .line 469
    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getArtist()Lcom/fiio/music/entity/Artist;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fiio/music/entity/Artist;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    move-object v6, p2

    move v7, p3

    .line 468
    invoke-virtual/range {v0 .. v7}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/entity/Song;IILjava/lang/String;Ljava/lang/String;Ljava/util/List;I)V

    .line 470
    iget-object v0, p0, Lcom/fiio/music/util/j;->r:Landroid/content/Context;

    const-string v1, "memory"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 471
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 472
    const-string v1, "cueTrackNumMemory"

    invoke-virtual {p1}, Lcom/fiio/music/entity/Song;->getTrack()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 473
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 474
    return-void
.end method

.method public final a(Ljava/io/File;I)V
    .locals 8

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/fiio/music/util/j;->s:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->z()I

    move-result v1

    .line 1084
    const-string v0, "sin"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-------------playMode : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "---------------"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    iget-object v0, p0, Lcom/fiio/music/util/j;->s:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->h()Lcom/fiio/music/entity/Song;

    move-result-object v0

    .line 1086
    iget-object v2, p0, Lcom/fiio/music/util/j;->G:Ljava/util/List;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/fiio/music/util/bl;->b(Ljava/util/List;Ljava/lang/String;)I

    move-result v0

    .line 1088
    packed-switch v1, :pswitch_data_0

    .line 1111
    :cond_0
    :goto_0
    :pswitch_0
    invoke-direct {p0, p1, v0}, Lcom/fiio/music/util/j;->b(Ljava/io/File;I)V

    .line 1115
    iget-object v0, p0, Lcom/fiio/music/util/j;->s:Lcom/fiio/music/service/h;

    invoke-virtual {v0, p0}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/util/j;)V

    .line 1116
    iget-object v0, p0, Lcom/fiio/music/util/j;->s:Lcom/fiio/music/service/h;

    iget-object v1, p0, Lcom/fiio/music/util/j;->y:Lcom/fiio/music/entity/Song;

    iget v2, p0, Lcom/fiio/music/util/j;->D:I

    iget v3, p0, Lcom/fiio/music/util/j;->F:I

    iget-object v4, p0, Lcom/fiio/music/util/j;->z:Ljava/lang/String;

    iget-object v5, p0, Lcom/fiio/music/util/j;->A:Ljava/lang/String;

    iget-object v6, p0, Lcom/fiio/music/util/j;->G:Ljava/util/List;

    move v7, p2

    invoke-virtual/range {v0 .. v7}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/entity/Song;IILjava/lang/String;Ljava/lang/String;Ljava/util/List;I)V

    .line 1117
    :goto_1
    return-void

    .line 1090
    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    .line 1091
    iget-object v1, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 1092
    iget-object v0, p0, Lcom/fiio/music/util/j;->s:Lcom/fiio/music/service/h;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/fiio/music/service/h;->b(I)V

    .line 1093
    iget-object v0, p0, Lcom/fiio/music/util/j;->s:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->L()V

    .line 1094
    iget-object v0, p0, Lcom/fiio/music/util/j;->s:Lcom/fiio/music/service/h;

    invoke-virtual {v0}, Lcom/fiio/music/service/h;->N()V

    goto :goto_1

    .line 1099
    :pswitch_2
    add-int/lit8 v0, v0, 0x1

    .line 1100
    iget-object v1, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 1101
    const/4 v0, 0x1

    .line 1103
    goto :goto_0

    .line 1107
    :pswitch_3
    invoke-static {}, Lcom/fiio/music/util/ce;->a()Lcom/fiio/music/util/ce;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/util/j;->v:Lcom/fiio/music/util/ce;

    .line 1108
    iget-object v0, p0, Lcom/fiio/music/util/j;->v:Lcom/fiio/music/util/ce;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/ce;->a(Ljava/lang/String;)V

    .line 1109
    iget-object v0, p0, Lcom/fiio/music/util/j;->v:Lcom/fiio/music/util/ce;

    iget-object v1, p0, Lcom/fiio/music/util/j;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/ce;->a(I)V

    .line 1110
    iget-object v0, p0, Lcom/fiio/music/util/j;->v:Lcom/fiio/music/util/ce;

    invoke-virtual {v0}, Lcom/fiio/music/util/ce;->b()I

    move-result v0

    goto :goto_0

    .line 1088
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Ljava/io/File;IILjava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "II",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1010
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/fiio/music/util/j;->b(Ljava/io/File;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1017
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/util/j;->s:Lcom/fiio/music/service/h;

    invoke-virtual {v0, p0}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/util/j;)V

    .line 1018
    iget-object v0, p0, Lcom/fiio/music/util/j;->y:Lcom/fiio/music/entity/Song;

    if-nez v0, :cond_0

    .line 1033
    :goto_1
    return-void

    .line 1011
    :catch_0
    move-exception v0

    .line 1013
    sget-object v1, Lcom/fiio/music/util/j;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/fiio/music/util/aw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    sget-object v0, Lcom/fiio/music/util/j;->b:Ljava/lang/String;

    const-string v1, "play cue error"

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fiio/music/util/j;->y:Lcom/fiio/music/entity/Song;

    goto :goto_0

    .line 1019
    :cond_0
    if-eqz p4, :cond_1

    .line 1020
    iget-object v0, p0, Lcom/fiio/music/util/j;->s:Lcom/fiio/music/service/h;

    iget-object v1, p0, Lcom/fiio/music/util/j;->y:Lcom/fiio/music/entity/Song;

    iget v2, p0, Lcom/fiio/music/util/j;->D:I

    iget v3, p0, Lcom/fiio/music/util/j;->F:I

    iget-object v4, p0, Lcom/fiio/music/util/j;->z:Ljava/lang/String;

    iget-object v5, p0, Lcom/fiio/music/util/j;->A:Ljava/lang/String;

    move-object v6, p4

    move v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/entity/Song;IILjava/lang/String;Ljava/lang/String;Ljava/util/List;I)V

    .line 1024
    :goto_2
    iget-boolean v0, p0, Lcom/fiio/music/util/j;->x:Z

    if-nez v0, :cond_2

    .line 1025
    iget-object v0, p0, Lcom/fiio/music/util/j;->r:Landroid/content/Context;

    const-string v1, "memory"

    invoke-virtual {v0, v1, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1026
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1027
    const-string v1, "cueTrackNumMemory"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1028
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1029
    const-string v0, "long"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "track: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1022
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/util/j;->s:Lcom/fiio/music/service/h;

    iget-object v1, p0, Lcom/fiio/music/util/j;->y:Lcom/fiio/music/entity/Song;

    iget v2, p0, Lcom/fiio/music/util/j;->D:I

    iget v3, p0, Lcom/fiio/music/util/j;->F:I

    iget-object v4, p0, Lcom/fiio/music/util/j;->z:Ljava/lang/String;

    iget-object v5, p0, Lcom/fiio/music/util/j;->A:Ljava/lang/String;

    iget-object v6, p0, Lcom/fiio/music/util/j;->G:Ljava/util/List;

    move v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/fiio/music/service/h;->a(Lcom/fiio/music/entity/Song;IILjava/lang/String;Ljava/lang/String;Ljava/util/List;I)V

    goto :goto_2

    .line 1031
    :cond_2
    iput-boolean v8, p0, Lcom/fiio/music/util/j;->x:Z

    goto :goto_1
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/fiio/music/util/j;->x:Z

    return v0
.end method

.method public final b()Lcom/fiio/music/entity/Song;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/fiio/music/util/j;->y:Lcom/fiio/music/entity/Song;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/fiio/music/util/j;->y:Lcom/fiio/music/entity/Song;

    .line 198
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/fiio/music/util/j;->a:[Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/util/List;
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
    .line 972
    iget-object v0, p0, Lcom/fiio/music/util/j;->G:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiio/music/util/j;->G:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 973
    iget-object v0, p0, Lcom/fiio/music/util/j;->G:Ljava/util/List;

    .line 975
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 1036
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 1037
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/fiio/music/util/j;->D:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1038
    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/fiio/music/util/j;->F:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1039
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/fiio/music/util/j;->z:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 1040
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/fiio/music/util/j;->A:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 1041
    return-object v0
.end method
