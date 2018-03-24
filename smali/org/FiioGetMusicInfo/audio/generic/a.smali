.class final Lorg/FiioGetMusicInfo/audio/generic/a;
.super Ljava/lang/Object;
.source "AbstractTag.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lorg/FiioGetMusicInfo/tag/TagField;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;

.field private b:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lorg/FiioGetMusicInfo/tag/TagField;",
            ">;"
        }
    .end annotation
.end field

.field private final synthetic c:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/FiioGetMusicInfo/audio/generic/a;->a:Lorg/FiioGetMusicInfo/audio/generic/AbstractTag;

    iput-object p2, p0, Lorg/FiioGetMusicInfo/audio/generic/a;->c:Ljava/util/Iterator;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/generic/a;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/generic/a;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 169
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 170
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/generic/a;->b:Ljava/util/Iterator;

    goto :goto_0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/generic/a;->b:Ljava/util/Iterator;

    if-nez v0, :cond_0

    .line 178
    invoke-direct {p0}, Lorg/FiioGetMusicInfo/audio/generic/a;->a()V

    .line 180
    :cond_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/generic/a;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/generic/a;->b:Ljava/util/Iterator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/generic/a;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/generic/a;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/FiioGetMusicInfo/audio/generic/a;->a()V

    :cond_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/generic/a;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/TagField;

    return-object v0
.end method

.method public final remove()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/generic/a;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 198
    return-void
.end method
