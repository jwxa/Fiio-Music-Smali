.class public Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;
.super Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;
.source "MetadataContainer.java"

# interfaces
.implements Lorg/FiioGetMusicInfo/audio/asf/io/WriteableChunk;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final containerType:Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;

.field private final descriptors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/FiioGetMusicInfo/audio/asf/data/a;",
            "Ljava/util/List",
            "<",
            "Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;",
            ">;>;"
        }
    .end annotation
.end field

.field private final perfPoint:Lorg/FiioGetMusicInfo/audio/asf/data/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;)V
    .locals 3

    .prologue
    .line 140
    const-wide/16 v0, 0x0

    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;-><init>(Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;JLjava/math/BigInteger;)V

    .line 141
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;JLjava/math/BigInteger;)V
    .locals 4

    .prologue
    .line 155
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;->getContainerGUID()Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;-><init>(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;JLjava/math/BigInteger;)V

    .line 124
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->descriptors:Ljava/util/Map;

    .line 130
    new-instance v0, Lorg/FiioGetMusicInfo/audio/asf/data/a;

    .line 131
    new-instance v1, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;

    const-string v2, ""

    invoke-direct {v1, v2}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/FiioGetMusicInfo/audio/asf/data/a;-><init>(Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;)V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->perfPoint:Lorg/FiioGetMusicInfo/audio/asf/data/a;

    .line 156
    iput-object p1, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->containerType:Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;

    .line 157
    return-void
.end method

.method public constructor <init>(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;JLjava/math/BigInteger;)V
    .locals 2

    .prologue
    .line 171
    invoke-static {p1}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->determineType(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;)Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;-><init>(Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;JLjava/math/BigInteger;)V

    .line 172
    return-void
.end method

.method private static determineType(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;)Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;
    .locals 6

    .prologue
    .line 100
    sget-boolean v0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 101
    :cond_0
    const/4 v1, 0x0

    .line 102
    invoke-static {}, Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;->values()[Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-lt v2, v4, :cond_2

    move-object v0, v1

    .line 108
    :cond_1
    if-nez v0, :cond_3

    .line 109
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown metadata container specified by GUID ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 110
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_2
    aget-object v0, v3, v2

    .line 103
    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;->getContainerGUID()Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    move-result-object v5

    invoke-virtual {v5, p0}, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 102
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 113
    :cond_3
    return-object v0
.end method


# virtual methods
.method public final addDescriptor(Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;)V
    .locals 6

    .prologue
    .line 186
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->containerType:Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    .line 187
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getRawData()[B

    move-result-object v2

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getType()I

    move-result v3

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getStreamNumber()I

    move-result v4

    .line 188
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getLanguageIndex()I

    move-result v5

    .line 186
    invoke-virtual/range {v0 .. v5}, Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;->assertConstraints(Ljava/lang/String;[BIII)V

    .line 190
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->isAddSupported(Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 192
    const-string v1, "Descriptor cannot be added, see isAddSupported(...)"

    .line 191
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_0
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->perfPoint:Lorg/FiioGetMusicInfo/audio/asf/data/a;

    monitor-enter v1

    .line 200
    :try_start_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->descriptors:Ljava/util/Map;

    iget-object v2, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->perfPoint:Lorg/FiioGetMusicInfo/audio/asf/data/a;

    invoke-virtual {v2, p1}, Lorg/FiioGetMusicInfo/audio/asf/data/a;->a(Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;)Lorg/FiioGetMusicInfo/audio/asf/data/a;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 199
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    if-nez v0, :cond_2

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 204
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->descriptors:Ljava/util/Map;

    new-instance v2, Lorg/FiioGetMusicInfo/audio/asf/data/a;

    invoke-direct {v2, p1}, Lorg/FiioGetMusicInfo/audio/asf/data/a;-><init>(Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;)V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    return-void

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 206
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->containerType:Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;->isMultiValued()Z

    move-result v1

    if-nez v1, :cond_1

    .line 207
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 208
    const-string v1, "Container does not allow multiple values of descriptors with same name, language index and stream number"

    .line 207
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final assertDescriptor(Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->assertDescriptor(Ljava/lang/String;I)Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;

    move-result-object v0

    return-object v0
.end method

.method protected final assertDescriptor(Ljava/lang/String;I)Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;
    .locals 2

    .prologue
    .line 240
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->getDescriptorsByName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 241
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 242
    :cond_0
    new-instance v0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->getContainerType()Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;-><init>(Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;Ljava/lang/String;I)V

    .line 243
    invoke-virtual {p0, v0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->addDescriptor(Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;)V

    .line 247
    :goto_0
    return-object v0

    .line 245
    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;

    goto :goto_0
.end method

.method public final containsDescriptor(Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;)Z
    .locals 2

    .prologue
    .line 260
    sget-boolean v0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 261
    :cond_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->descriptors:Ljava/util/Map;

    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->perfPoint:Lorg/FiioGetMusicInfo/audio/asf/data/a;

    .line 262
    invoke-virtual {v1, p1}, Lorg/FiioGetMusicInfo/audio/asf/data/a;->a(Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;)Lorg/FiioGetMusicInfo/audio/asf/data/a;

    move-result-object v1

    .line 261
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final getContainerType()Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->containerType:Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;

    return-object v0
.end method

.method public getCurrentAsfChunkSize()J
    .locals 5

    .prologue
    .line 281
    const-wide/16 v0, 0x1a

    .line 282
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->getDescriptors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    return-wide v2

    .line 282
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;

    .line 283
    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->containerType:Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;

    invoke-virtual {v0, v1}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getCurrentAsfSize(Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;)I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, v2

    move-wide v2, v0

    goto :goto_0
.end method

.method public final getDescriptorCount()I
    .locals 1

    .prologue
    .line 294
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->getDescriptors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getDescriptors()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 303
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 304
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->descriptors:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    return-object v1

    .line 304
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 305
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public final getDescriptorsByName(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 319
    sget-boolean v0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 320
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 321
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->descriptors:Ljava/util/Map;

    .line 322
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 321
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 323
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 328
    return-object v2

    .line 321
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    .line 324
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 325
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method protected final getValueFor(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 341
    const-string v0, ""

    .line 342
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->getDescriptorsByName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 343
    if-eqz v1, :cond_1

    .line 344
    sget-boolean v2, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 345
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 346
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getString()Ljava/lang/String;

    move-result-object v0

    .line 349
    :cond_1
    return-object v0
.end method

.method public final hasDescriptor(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 361
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->getDescriptorsByName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isAddSupported(Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;)Z
    .locals 6

    .prologue
    .line 375
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->getContainerType()Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;

    move-result-object v0

    .line 376
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getRawData()[B

    move-result-object v2

    .line 377
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getType()I

    move-result v3

    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getStreamNumber()I

    move-result v4

    .line 378
    invoke-virtual {p1}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getLanguageIndex()I

    move-result v5

    .line 375
    invoke-virtual/range {v0 .. v5}, Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;->checkConstraints(Ljava/lang/String;[BIII)Ljava/lang/RuntimeException;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    .line 380
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->getContainerType()Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;->isMultiValued()Z

    move-result v0

    if-nez v0, :cond_2

    .line 381
    iget-object v2, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->perfPoint:Lorg/FiioGetMusicInfo/audio/asf/data/a;

    monitor-enter v2

    .line 382
    :try_start_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->descriptors:Ljava/util/Map;

    .line 383
    iget-object v3, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->perfPoint:Lorg/FiioGetMusicInfo/audio/asf/data/a;

    invoke-virtual {v3, p1}, Lorg/FiioGetMusicInfo/audio/asf/data/a;->a(Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;)Lorg/FiioGetMusicInfo/audio/asf/data/a;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 384
    if-eqz v0, :cond_1

    .line 385
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 381
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    :goto_2
    return v0

    .line 375
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 381
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public final isEmpty()Z
    .locals 3

    .prologue
    .line 396
    const/4 v0, 0x1

    .line 397
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->getDescriptorCount()I

    move-result v1

    if-eqz v1, :cond_1

    .line 398
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->getDescriptors()Ljava/util/List;

    move-result-object v1

    .line 399
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    .line 400
    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move v0, v1

    .line 404
    :cond_1
    return v0

    .line 401
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->isEmpty()Z

    move-result v0

    and-int/2addr v1, v0

    goto :goto_0
.end method

.method public prettyPrint(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-super {p0, p1}, Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;->prettyPrint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 413
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->getDescriptors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 418
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 413
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;

    .line 414
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  |-> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 416
    sget-object v0, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public final removeDescriptorsByName(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 429
    sget-boolean v0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 430
    :cond_0
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->descriptors:Ljava/util/Map;

    .line 431
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 432
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 438
    return-void

    .line 433
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 434
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;

    invoke-virtual {v0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 435
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method protected final setStringValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 452
    invoke-virtual {p0, p1}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->assertDescriptor(Ljava/lang/String;)Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->setStringValue(Ljava/lang/String;)V

    .line 453
    return-void
.end method

.method public writeInto(Ljava/io/OutputStream;)J
    .locals 5

    .prologue
    .line 459
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->getCurrentAsfChunkSize()J

    move-result-wide v2

    .line 460
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->getDescriptors()Ljava/util/List;

    move-result-object v0

    .line 461
    invoke-virtual {p0}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->getGuid()Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    move-result-object v1

    invoke-virtual {v1}, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->getBytes()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 462
    invoke-static {v2, v3, p1}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->writeUINT64(JLjava/io/OutputStream;)V

    .line 463
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1, p1}, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->writeUINT16(ILjava/io/OutputStream;)V

    .line 464
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 467
    return-wide v2

    .line 464
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;

    .line 465
    iget-object v4, p0, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataContainer;->containerType:Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;

    invoke-virtual {v0, p1, v4}, Lorg/FiioGetMusicInfo/audio/asf/data/MetadataDescriptor;->writeInto(Ljava/io/OutputStream;Lorg/FiioGetMusicInfo/audio/asf/data/ContainerType;)I

    goto :goto_0
.end method
