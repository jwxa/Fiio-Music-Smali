.class public Lcom/fiio/music/util/ap;
.super Ljava/lang/Object;
.source "GaplessPlaybackManager.java"


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private b:Z

.field private c:Z

.field private d:Lcom/fiio/music/entity/Song;

.field private e:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/fiio/music/util/aq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/fiio/music/util/ap;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fiio/music/util/ap;->a:Ljava/lang/String;

    .line 336
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean v0, p0, Lcom/fiio/music/util/ap;->b:Z

    .line 24
    iput-boolean v0, p0, Lcom/fiio/music/util/ap;->c:Z

    .line 26
    iput-object v1, p0, Lcom/fiio/music/util/ap;->d:Lcom/fiio/music/entity/Song;

    .line 29
    iput-object v1, p0, Lcom/fiio/music/util/ap;->e:Ljava/util/LinkedList;

    .line 42
    sget-object v0, Lcom/fiio/music/util/ap;->a:Ljava/lang/String;

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/fiio/music/util/ap;->e:Ljava/util/LinkedList;

    .line 44
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/fiio/music/util/ap;-><init>()V

    return-void
.end method

.method public static a()Lcom/fiio/music/util/ap;
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcom/fiio/music/util/ar;->a()Lcom/fiio/music/util/ap;

    move-result-object v0

    return-object v0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/fiio/music/util/ap;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/fiio/music/util/ap;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 152
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/example/root/checkappmusic/FiioMediaPlayer;)I
    .locals 7

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 344
    const/4 v3, -0x1

    .line 348
    const/4 v2, 0x0

    move v6, v2

    move v2, v3

    move v3, v6

    :goto_0
    const/4 v4, 0x5

    if-lt v3, v4, :cond_2

    .line 361
    :cond_0
    if-ltz v2, :cond_3

    .line 365
    iget-object v1, p0, Lcom/fiio/music/util/ap;->d:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lcom/fiio/music/util/ap;->a(Ljava/lang/String;I)V

    .line 380
    :cond_1
    :goto_1
    return v0

    .line 349
    :cond_2
    sget-object v2, Lcom/fiio/music/util/ap;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "open handle failed , retry open handle "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/fiio/music/util/aw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    invoke-virtual {p1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->peekNextSongInGapless()I

    move-result v2

    .line 351
    if-gez v2, :cond_0

    .line 352
    sget-object v4, Lcom/fiio/music/util/ap;->a:Ljava/lang/String;

    const-string v5, "open error again"

    invoke-static {v4, v5}, Lcom/fiio/music/util/aw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 368
    :cond_3
    invoke-virtual {p1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->resetAllHandle()Ljava/util/List;

    move-result-object v2

    .line 369
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 370
    sget-object v2, Lcom/fiio/music/util/ap;->a:Ljava/lang/String;

    const-string v3, "close all handle and reset the Decoder succes ---"

    invoke-static {v2, v3}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    invoke-virtual {p1}, Lcom/example/root/checkappmusic/FiioMediaPlayer;->peekNextSongInGapless()I

    move-result v2

    .line 372
    if-gez v2, :cond_1

    move v0, v1

    .line 373
    goto :goto_1

    :cond_4
    move v0, v1

    .line 380
    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 176
    sget-object v1, Lcom/fiio/music/util/ap;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "pop : "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " and nextSongPath : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/fiio/music/util/ap;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/util/aq;

    invoke-static {v0}, Lcom/fiio/music/util/aq;->b(Lcom/fiio/music/util/aq;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/fiio/music/util/aw;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lcom/fiio/music/util/ap;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 199
    :goto_0
    return v0

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/util/ap;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 182
    iget-object v0, p0, Lcom/fiio/music/util/ap;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/util/aq;

    invoke-static {v0}, Lcom/fiio/music/util/aq;->b(Lcom/fiio/music/util/aq;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/fiio/music/util/ap;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/util/aq;

    invoke-static {v0}, Lcom/fiio/music/util/aq;->a(Lcom/fiio/music/util/aq;)I

    move-result v0

    .line 184
    iget-object v1, p0, Lcom/fiio/music/util/ap;->e:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 185
    sget-object v1, Lcom/fiio/music/util/ap;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pop : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fiio/music/util/aw;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 188
    goto :goto_0

    .line 191
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/util/ap;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    .line 199
    goto :goto_0

    .line 191
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/util/aq;

    .line 192
    iget-object v1, p0, Lcom/fiio/music/util/ap;->e:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fiio/music/util/aq;

    invoke-static {v1}, Lcom/fiio/music/util/aq;->b(Lcom/fiio/music/util/aq;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 193
    invoke-static {v0}, Lcom/fiio/music/util/aq;->a(Lcom/fiio/music/util/aq;)I

    move-result v0

    .line 194
    iget-object v1, p0, Lcom/fiio/music/util/ap;->e:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 195
    sget-object v1, Lcom/fiio/music/util/ap;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pop : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fiio/music/util/aw;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final a(Lcom/fiio/music/entity/Song;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/fiio/music/util/ap;->d:Lcom/fiio/music/entity/Song;

    .line 73
    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/fiio/music/util/ap;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/fiio/music/util/ap;->e:Ljava/util/LinkedList;

    new-instance v1, Lcom/fiio/music/util/aq;

    invoke-direct {v1, p0, p1, p2}, Lcom/fiio/music/util/aq;-><init>(Lcom/fiio/music/util/ap;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 166
    :goto_0
    sget-object v0, Lcom/fiio/music/util/ap;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "push nextHandle : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-void

    .line 163
    :cond_0
    invoke-direct {p0}, Lcom/fiio/music/util/ap;->f()V

    .line 164
    iget-object v0, p0, Lcom/fiio/music/util/ap;->e:Ljava/util/LinkedList;

    new-instance v1, Lcom/fiio/music/util/aq;

    invoke-direct {v1, p0, p1, p2}, Lcom/fiio/music/util/aq;-><init>(Lcom/fiio/music/util/ap;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 3

    .prologue
    .line 62
    sget-object v0, Lcom/fiio/music/util/ap;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "set GaplessOpen : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iput-boolean p1, p0, Lcom/fiio/music/util/ap;->b:Z

    .line 64
    return-void
.end method

.method public final a(IILjava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 214
    sget-object v0, Lcom/fiio/music/util/ap;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "judge : curSampleRate : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " and cur_AudioFormat : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/fiio/music/util/ap;->d:Lcom/fiio/music/entity/Song;

    if-eqz v0, :cond_8

    .line 217
    iget-object v0, p0, Lcom/fiio/music/util/ap;->d:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fiio/music/util/h;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    if-eqz v0, :cond_1

    const-string v1, "APE"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "APE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 221
    :cond_0
    sget-object v0, Lcom/fiio/music/util/ap;->a:Ljava/lang/String;

    const-string v1, "APE\u7279\u6b8a\u5904\u7406,\u5f53\u524d\u4e0d\u9700\u8981\u65e0\u7f1d\u64ad\u653e"

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iput-object v7, p0, Lcom/fiio/music/util/ap;->d:Lcom/fiio/music/entity/Song;

    move v0, v2

    .line 273
    :goto_0
    return v0

    .line 226
    :cond_1
    if-eqz v0, :cond_3

    const-string v1, "ISO"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ISO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 227
    :cond_2
    sget-object v0, Lcom/fiio/music/util/ap;->a:Ljava/lang/String;

    const-string v1, "ISO\u7279\u6b8a\u5904\u7406,\u5f53\u524d\u4e0d\u9700\u8981\u65e0\u7f1d\u64ad\u653e"

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iput-object v7, p0, Lcom/fiio/music/util/ap;->d:Lcom/fiio/music/entity/Song;

    move v0, v2

    .line 229
    goto :goto_0

    .line 232
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 233
    sget-object v0, Lcom/fiio/music/util/ap;->a:Ljava/lang/String;

    const-string v1, "\u4e0d\u540c\u683c\u5f0f,\u5f53\u524d\u4e0d\u9700\u8981\u65e0\u7f1d\u64ad\u653e"

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iput-object v7, p0, Lcom/fiio/music/util/ap;->d:Lcom/fiio/music/entity/Song;

    move v0, v2

    .line 235
    goto :goto_0

    .line 238
    :cond_4
    iget-object v0, p0, Lcom/fiio/music/util/ap;->d:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/util/ap;->d:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dsf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 242
    iget-object v0, p0, Lcom/fiio/music/util/ap;->d:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/util/ap;->d:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "diff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 243
    iget-object v0, p0, Lcom/fiio/music/util/ap;->d:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/util/ap;->d:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 245
    :cond_5
    new-instance v0, Lcom/example/root/checkappmusic/DsfExtractor;

    iget-object v1, p0, Lcom/fiio/music/util/ap;->d:Lcom/fiio/music/entity/Song;

    invoke-virtual {v1}, Lcom/fiio/music/entity/Song;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/example/root/checkappmusic/DsfExtractor;-><init>(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v0}, Lcom/example/root/checkappmusic/DsfExtractor;->getSamplerate()I

    move-result v0

    .line 247
    const v1, 0x15888

    if-ne v0, v1, :cond_6

    .line 248
    const/4 v1, 0x7

    .line 264
    :goto_1
    sget-object v4, Lcom/fiio/music/util/ap;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "judge : nextSongSampleRate : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and nextSongaudioDataFormat : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/fiio/music/util/aw;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    if-ne p1, v0, :cond_8

    if-ne p2, v1, :cond_8

    .line 266
    sget-object v0, Lcom/fiio/music/util/ap;->a:Ljava/lang/String;

    const-string v1, "\u5f53\u524d\u9996\u6b4c\u9700\u8981\u65e0\u7f1d\u64ad\u653e\u65e0\u7f1d\u64ad\u653e"

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iput-object v7, p0, Lcom/fiio/music/util/ap;->d:Lcom/fiio/music/entity/Song;

    move v0, v3

    .line 268
    goto/16 :goto_0

    .line 250
    :cond_6
    const/16 v1, 0x8

    .line 252
    goto :goto_1

    .line 254
    :cond_7
    iget-object v0, p0, Lcom/fiio/music/util/ap;->d:Lcom/fiio/music/entity/Song;

    invoke-virtual {v0}, Lcom/fiio/music/entity/Song;->getSampleRate()I

    move-result v0

    invoke-static {v0, v3, v3}, Lcom/example/root/checkappmusic/PlayerUtil;->GetSampedRateToPlay(IZZ)I

    move-result v0

    .line 255
    const/16 v1, 0xa

    goto :goto_1

    .line 271
    :cond_8
    sget-object v0, Lcom/fiio/music/util/ap;->a:Ljava/lang/String;

    const-string v1, "\u5f53\u524d\u4e0d\u9700\u8981\u65e0\u7f1d\u64ad\u653e\u65e0\u7f1d\u64ad\u653e"

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iput-object v7, p0, Lcom/fiio/music/util/ap;->d:Lcom/fiio/music/entity/Song;

    move v0, v2

    .line 273
    goto/16 :goto_0
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 329
    iput-boolean p1, p0, Lcom/fiio/music/util/ap;->c:Z

    .line 330
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/fiio/music/util/ap;->b:Z

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/fiio/music/util/ap;->e:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/fiio/music/util/ap;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    .line 129
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()[I
    .locals 5

    .prologue
    .line 133
    iget-object v0, p0, Lcom/fiio/music/util/ap;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/fiio/music/util/ap;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    new-array v3, v0, [I

    .line 135
    const/4 v0, 0x0

    .line 136
    iget-object v1, p0, Lcom/fiio/music/util/ap;->e:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    invoke-direct {p0}, Lcom/fiio/music/util/ap;->f()V

    move-object v0, v3

    .line 142
    :goto_1
    return-object v0

    .line 136
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/util/aq;

    .line 137
    add-int/lit8 v2, v1, 0x1

    invoke-static {v0}, Lcom/fiio/music/util/aq;->a(Lcom/fiio/music/util/aq;)I

    move-result v0

    aput v0, v3, v1

    move v1, v2

    goto :goto_0

    .line 142
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 321
    iget-boolean v0, p0, Lcom/fiio/music/util/ap;->c:Z

    return v0
.end method
