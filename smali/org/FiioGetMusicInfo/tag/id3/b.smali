.class final Lorg/FiioGetMusicInfo/tag/id3/b;
.super Ljava/lang/Object;
.source "AbstractID3v2Tag.java"

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
.field a:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

.field private c:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lorg/FiioGetMusicInfo/tag/TagField;",
            ">;"
        }
    .end annotation
.end field

.field private final synthetic d:Ljava/util/Iterator;

.field private final synthetic e:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;Ljava/util/Iterator;Ljava/util/Iterator;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lorg/FiioGetMusicInfo/tag/id3/b;->b:Lorg/FiioGetMusicInfo/tag/id3/AbstractID3v2Tag;

    iput-object p2, p0, Lorg/FiioGetMusicInfo/tag/id3/b;->d:Ljava/util/Iterator;

    iput-object p3, p0, Lorg/FiioGetMusicInfo/tag/id3/b;->e:Ljava/util/Iterator;

    .line 1946
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1948
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/b;->a:Ljava/util/Map$Entry;

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 1955
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/b;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1987
    :goto_0
    return-void

    .line 1962
    :cond_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/b;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1963
    iget-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/b;->e:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iput-object v1, p0, Lorg/FiioGetMusicInfo/tag/id3/b;->a:Ljava/util/Map$Entry;

    .line 1964
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 1966
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1968
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_2

    .line 1970
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/b;->c:Ljava/util/Iterator;

    goto :goto_0

    .line 1981
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1982
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/TagField;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1983
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/b;->c:Ljava/util/Iterator;

    goto :goto_0

    .line 1960
    :cond_2
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/b;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .prologue
    .line 1994
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/b;->c:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    .line 1996
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/b;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1998
    const/4 v0, 0x1

    .line 2011
    :goto_0
    return v0

    .line 2003
    :cond_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/b;->e:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2005
    const/4 v0, 0x0

    goto :goto_0

    .line 2011
    :cond_1
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/b;->e:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    goto :goto_0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/b;->c:Ljava/util/Iterator;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/b;->a()V

    :cond_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/b;->c:Ljava/util/Iterator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/b;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/FiioGetMusicInfo/tag/id3/b;->a()V

    :cond_1
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/b;->c:Ljava/util/Iterator;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_2
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/b;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/tag/TagField;

    return-object v0
.end method

.method public final remove()V
    .locals 1

    .prologue
    .line 2040
    iget-object v0, p0, Lorg/FiioGetMusicInfo/tag/id3/b;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 2041
    return-void
.end method
