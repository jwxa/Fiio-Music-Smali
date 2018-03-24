.class public Lorg/fourthline/cling/support/model/DIDLContent;
.super Ljava/lang/Object;
.source "DIDLContent.java"


# static fields
.field public static final DESC_WRAPPER_NAMESPACE_URI:Ljava/lang/String; = "urn:fourthline-org:cling:support:content-directory-desc-1-0"

.field public static final NAMESPACE_URI:Ljava/lang/String; = "urn:schemas-upnp-org:metadata-1-0/DIDL-Lite/"


# instance fields
.field protected containers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/fourthline/cling/support/model/container/Container;",
            ">;"
        }
    .end annotation
.end field

.field protected descMetadata:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/fourthline/cling/support/model/DescMeta;",
            ">;"
        }
    .end annotation
.end field

.field protected items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/fourthline/cling/support/model/item/Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/support/model/DIDLContent;->containers:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/support/model/DIDLContent;->items:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/support/model/DIDLContent;->descMetadata:Ljava/util/List;

    .line 51
    return-void
.end method


# virtual methods
.method public addContainer(Lorg/fourthline/cling/support/model/container/Container;)Lorg/fourthline/cling/support/model/DIDLContent;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/DIDLContent;->getContainers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    return-object p0
.end method

.method public addDescMetadata(Lorg/fourthline/cling/support/model/DescMeta;)Lorg/fourthline/cling/support/model/DIDLContent;
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/DIDLContent;->getDescMetadata()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    return-object p0
.end method

.method public addItem(Lorg/fourthline/cling/support/model/item/Item;)Lorg/fourthline/cling/support/model/DIDLContent;
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/DIDLContent;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    return-object p0
.end method

.method public addObject(Ljava/lang/Object;)Lorg/fourthline/cling/support/model/DIDLContent;
    .locals 1

    .prologue
    .line 81
    instance-of v0, p1, Lorg/fourthline/cling/support/model/item/Item;

    if-eqz v0, :cond_1

    .line 82
    check-cast p1, Lorg/fourthline/cling/support/model/item/Item;

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/model/DIDLContent;->addItem(Lorg/fourthline/cling/support/model/item/Item;)Lorg/fourthline/cling/support/model/DIDLContent;

    .line 86
    :cond_0
    :goto_0
    return-object p0

    .line 83
    :cond_1
    instance-of v0, p1, Lorg/fourthline/cling/support/model/container/Container;

    if-eqz v0, :cond_0

    .line 84
    check-cast p1, Lorg/fourthline/cling/support/model/container/Container;

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/model/DIDLContent;->addContainer(Lorg/fourthline/cling/support/model/container/Container;)Lorg/fourthline/cling/support/model/DIDLContent;

    goto :goto_0
.end method

.method public getContainers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/fourthline/cling/support/model/container/Container;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lorg/fourthline/cling/support/model/DIDLContent;->containers:Ljava/util/List;

    return-object v0
.end method

.method public getCount()J
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lorg/fourthline/cling/support/model/DIDLContent;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lorg/fourthline/cling/support/model/DIDLContent;->containers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getDescMetadata()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/fourthline/cling/support/model/DescMeta;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lorg/fourthline/cling/support/model/DIDLContent;->descMetadata:Ljava/util/List;

    return-object v0
.end method

.method public getFirstContainer()Lorg/fourthline/cling/support/model/container/Container;
    .locals 2

    .prologue
    .line 61
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/DIDLContent;->getContainers()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/container/Container;

    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/fourthline/cling/support/model/item/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lorg/fourthline/cling/support/model/DIDLContent;->items:Ljava/util/List;

    return-object v0
.end method

.method public replaceGenericContainerAndItems()V
    .locals 1

    .prologue
    .line 116
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/DIDLContent;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/DIDLContent;->replaceGenericItems(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/DIDLContent;->setItems(Ljava/util/List;)V

    .line 117
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/DIDLContent;->getContainers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/DIDLContent;->replaceGenericContainers(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/DIDLContent;->setContainers(Ljava/util/List;)V

    .line 118
    return-void
.end method

.method protected replaceGenericContainers(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/fourthline/cling/support/model/container/Container;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/fourthline/cling/support/model/container/Container;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 166
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    return-object v2

    .line 166
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/container/Container;

    .line 167
    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/container/Container;->getClazz()Lorg/fourthline/cling/support/model/DIDLObject$Class;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/support/model/DIDLObject$Class;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 171
    sget-object v4, Lorg/fourthline/cling/support/model/container/Album;->CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    invoke-virtual {v4}, Lorg/fourthline/cling/support/model/DIDLObject$Class;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 172
    new-instance v1, Lorg/fourthline/cling/support/model/container/Album;

    invoke-direct {v1, v0}, Lorg/fourthline/cling/support/model/container/Album;-><init>(Lorg/fourthline/cling/support/model/container/Container;)V

    .line 211
    :goto_1
    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/container/Container;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/DIDLContent;->replaceGenericItems(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/fourthline/cling/support/model/container/Container;->setItems(Ljava/util/List;)V

    .line 212
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 174
    :cond_1
    sget-object v4, Lorg/fourthline/cling/support/model/container/MusicAlbum;->CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    invoke-virtual {v4}, Lorg/fourthline/cling/support/model/DIDLObject$Class;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 175
    new-instance v1, Lorg/fourthline/cling/support/model/container/MusicAlbum;

    invoke-direct {v1, v0}, Lorg/fourthline/cling/support/model/container/MusicAlbum;-><init>(Lorg/fourthline/cling/support/model/container/Container;)V

    goto :goto_1

    .line 177
    :cond_2
    sget-object v4, Lorg/fourthline/cling/support/model/container/PhotoAlbum;->CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    invoke-virtual {v4}, Lorg/fourthline/cling/support/model/DIDLObject$Class;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 178
    new-instance v1, Lorg/fourthline/cling/support/model/container/PhotoAlbum;

    invoke-direct {v1, v0}, Lorg/fourthline/cling/support/model/container/PhotoAlbum;-><init>(Lorg/fourthline/cling/support/model/container/Container;)V

    goto :goto_1

    .line 180
    :cond_3
    sget-object v4, Lorg/fourthline/cling/support/model/container/GenreContainer;->CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    invoke-virtual {v4}, Lorg/fourthline/cling/support/model/DIDLObject$Class;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 181
    new-instance v1, Lorg/fourthline/cling/support/model/container/GenreContainer;

    invoke-direct {v1, v0}, Lorg/fourthline/cling/support/model/container/GenreContainer;-><init>(Lorg/fourthline/cling/support/model/container/Container;)V

    goto :goto_1

    .line 183
    :cond_4
    sget-object v4, Lorg/fourthline/cling/support/model/container/MusicGenre;->CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    invoke-virtual {v4}, Lorg/fourthline/cling/support/model/DIDLObject$Class;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 184
    new-instance v1, Lorg/fourthline/cling/support/model/container/MusicGenre;

    invoke-direct {v1, v0}, Lorg/fourthline/cling/support/model/container/MusicGenre;-><init>(Lorg/fourthline/cling/support/model/container/Container;)V

    goto :goto_1

    .line 186
    :cond_5
    sget-object v4, Lorg/fourthline/cling/support/model/container/MovieGenre;->CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    invoke-virtual {v4}, Lorg/fourthline/cling/support/model/DIDLObject$Class;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 187
    new-instance v1, Lorg/fourthline/cling/support/model/container/MovieGenre;

    invoke-direct {v1, v0}, Lorg/fourthline/cling/support/model/container/MovieGenre;-><init>(Lorg/fourthline/cling/support/model/container/Container;)V

    goto :goto_1

    .line 189
    :cond_6
    sget-object v4, Lorg/fourthline/cling/support/model/container/PlaylistContainer;->CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    invoke-virtual {v4}, Lorg/fourthline/cling/support/model/DIDLObject$Class;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 190
    new-instance v1, Lorg/fourthline/cling/support/model/container/PlaylistContainer;

    invoke-direct {v1, v0}, Lorg/fourthline/cling/support/model/container/PlaylistContainer;-><init>(Lorg/fourthline/cling/support/model/container/Container;)V

    goto :goto_1

    .line 192
    :cond_7
    sget-object v4, Lorg/fourthline/cling/support/model/container/PersonContainer;->CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    invoke-virtual {v4}, Lorg/fourthline/cling/support/model/DIDLObject$Class;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 193
    new-instance v1, Lorg/fourthline/cling/support/model/container/PersonContainer;

    invoke-direct {v1, v0}, Lorg/fourthline/cling/support/model/container/PersonContainer;-><init>(Lorg/fourthline/cling/support/model/container/Container;)V

    goto/16 :goto_1

    .line 195
    :cond_8
    sget-object v4, Lorg/fourthline/cling/support/model/container/MusicArtist;->CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    invoke-virtual {v4}, Lorg/fourthline/cling/support/model/DIDLObject$Class;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 196
    new-instance v1, Lorg/fourthline/cling/support/model/container/MusicArtist;

    invoke-direct {v1, v0}, Lorg/fourthline/cling/support/model/container/MusicArtist;-><init>(Lorg/fourthline/cling/support/model/container/Container;)V

    goto/16 :goto_1

    .line 198
    :cond_9
    sget-object v4, Lorg/fourthline/cling/support/model/container/StorageSystem;->CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    invoke-virtual {v4}, Lorg/fourthline/cling/support/model/DIDLObject$Class;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 199
    new-instance v1, Lorg/fourthline/cling/support/model/container/StorageSystem;

    invoke-direct {v1, v0}, Lorg/fourthline/cling/support/model/container/StorageSystem;-><init>(Lorg/fourthline/cling/support/model/container/Container;)V

    goto/16 :goto_1

    .line 201
    :cond_a
    sget-object v4, Lorg/fourthline/cling/support/model/container/StorageVolume;->CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    invoke-virtual {v4}, Lorg/fourthline/cling/support/model/DIDLObject$Class;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 202
    new-instance v1, Lorg/fourthline/cling/support/model/container/StorageVolume;

    invoke-direct {v1, v0}, Lorg/fourthline/cling/support/model/container/StorageVolume;-><init>(Lorg/fourthline/cling/support/model/container/Container;)V

    goto/16 :goto_1

    .line 204
    :cond_b
    sget-object v4, Lorg/fourthline/cling/support/model/container/StorageFolder;->CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    invoke-virtual {v4}, Lorg/fourthline/cling/support/model/DIDLObject$Class;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 205
    new-instance v1, Lorg/fourthline/cling/support/model/container/StorageFolder;

    invoke-direct {v1, v0}, Lorg/fourthline/cling/support/model/container/StorageFolder;-><init>(Lorg/fourthline/cling/support/model/container/Container;)V

    goto/16 :goto_1

    :cond_c
    move-object v1, v0

    .line 208
    goto/16 :goto_1
.end method

.method protected replaceGenericItems(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/fourthline/cling/support/model/item/Item;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/fourthline/cling/support/model/item/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 123
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    return-object v1

    .line 123
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/item/Item;

    .line 124
    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/item/Item;->getClazz()Lorg/fourthline/cling/support/model/DIDLObject$Class;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fourthline/cling/support/model/DIDLObject$Class;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 126
    sget-object v4, Lorg/fourthline/cling/support/model/item/AudioItem;->CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    invoke-virtual {v4}, Lorg/fourthline/cling/support/model/DIDLObject$Class;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 127
    new-instance v3, Lorg/fourthline/cling/support/model/item/AudioItem;

    invoke-direct {v3, v0}, Lorg/fourthline/cling/support/model/item/AudioItem;-><init>(Lorg/fourthline/cling/support/model/item/Item;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 128
    :cond_1
    sget-object v4, Lorg/fourthline/cling/support/model/item/MusicTrack;->CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    invoke-virtual {v4}, Lorg/fourthline/cling/support/model/DIDLObject$Class;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 129
    new-instance v3, Lorg/fourthline/cling/support/model/item/MusicTrack;

    invoke-direct {v3, v0}, Lorg/fourthline/cling/support/model/item/MusicTrack;-><init>(Lorg/fourthline/cling/support/model/item/Item;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 130
    :cond_2
    sget-object v4, Lorg/fourthline/cling/support/model/item/AudioBook;->CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    invoke-virtual {v4}, Lorg/fourthline/cling/support/model/DIDLObject$Class;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 131
    new-instance v3, Lorg/fourthline/cling/support/model/item/AudioBook;

    invoke-direct {v3, v0}, Lorg/fourthline/cling/support/model/item/AudioBook;-><init>(Lorg/fourthline/cling/support/model/item/Item;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 132
    :cond_3
    sget-object v4, Lorg/fourthline/cling/support/model/item/AudioBroadcast;->CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    invoke-virtual {v4}, Lorg/fourthline/cling/support/model/DIDLObject$Class;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 133
    new-instance v3, Lorg/fourthline/cling/support/model/item/AudioBroadcast;

    invoke-direct {v3, v0}, Lorg/fourthline/cling/support/model/item/AudioBroadcast;-><init>(Lorg/fourthline/cling/support/model/item/Item;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 135
    :cond_4
    sget-object v4, Lorg/fourthline/cling/support/model/item/VideoItem;->CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    invoke-virtual {v4}, Lorg/fourthline/cling/support/model/DIDLObject$Class;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 136
    new-instance v3, Lorg/fourthline/cling/support/model/item/VideoItem;

    invoke-direct {v3, v0}, Lorg/fourthline/cling/support/model/item/VideoItem;-><init>(Lorg/fourthline/cling/support/model/item/Item;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 137
    :cond_5
    sget-object v4, Lorg/fourthline/cling/support/model/item/Movie;->CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    invoke-virtual {v4}, Lorg/fourthline/cling/support/model/DIDLObject$Class;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 138
    new-instance v3, Lorg/fourthline/cling/support/model/item/Movie;

    invoke-direct {v3, v0}, Lorg/fourthline/cling/support/model/item/Movie;-><init>(Lorg/fourthline/cling/support/model/item/Item;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 139
    :cond_6
    sget-object v4, Lorg/fourthline/cling/support/model/item/VideoBroadcast;->CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    invoke-virtual {v4}, Lorg/fourthline/cling/support/model/DIDLObject$Class;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 140
    new-instance v3, Lorg/fourthline/cling/support/model/item/VideoBroadcast;

    invoke-direct {v3, v0}, Lorg/fourthline/cling/support/model/item/VideoBroadcast;-><init>(Lorg/fourthline/cling/support/model/item/Item;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 141
    :cond_7
    sget-object v4, Lorg/fourthline/cling/support/model/item/MusicVideoClip;->CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    invoke-virtual {v4}, Lorg/fourthline/cling/support/model/DIDLObject$Class;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 142
    new-instance v3, Lorg/fourthline/cling/support/model/item/MusicVideoClip;

    invoke-direct {v3, v0}, Lorg/fourthline/cling/support/model/item/MusicVideoClip;-><init>(Lorg/fourthline/cling/support/model/item/Item;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 144
    :cond_8
    sget-object v4, Lorg/fourthline/cling/support/model/item/ImageItem;->CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    invoke-virtual {v4}, Lorg/fourthline/cling/support/model/DIDLObject$Class;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 145
    new-instance v3, Lorg/fourthline/cling/support/model/item/ImageItem;

    invoke-direct {v3, v0}, Lorg/fourthline/cling/support/model/item/ImageItem;-><init>(Lorg/fourthline/cling/support/model/item/Item;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 146
    :cond_9
    sget-object v4, Lorg/fourthline/cling/support/model/item/Photo;->CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    invoke-virtual {v4}, Lorg/fourthline/cling/support/model/DIDLObject$Class;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 147
    new-instance v3, Lorg/fourthline/cling/support/model/item/Photo;

    invoke-direct {v3, v0}, Lorg/fourthline/cling/support/model/item/Photo;-><init>(Lorg/fourthline/cling/support/model/item/Item;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 149
    :cond_a
    sget-object v4, Lorg/fourthline/cling/support/model/item/PlaylistItem;->CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    invoke-virtual {v4}, Lorg/fourthline/cling/support/model/DIDLObject$Class;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 150
    new-instance v3, Lorg/fourthline/cling/support/model/item/PlaylistItem;

    invoke-direct {v3, v0}, Lorg/fourthline/cling/support/model/item/PlaylistItem;-><init>(Lorg/fourthline/cling/support/model/item/Item;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 152
    :cond_b
    sget-object v4, Lorg/fourthline/cling/support/model/item/TextItem;->CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    invoke-virtual {v4}, Lorg/fourthline/cling/support/model/DIDLObject$Class;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 153
    new-instance v3, Lorg/fourthline/cling/support/model/item/TextItem;

    invoke-direct {v3, v0}, Lorg/fourthline/cling/support/model/item/TextItem;-><init>(Lorg/fourthline/cling/support/model/item/Item;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 156
    :cond_c
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public setContainers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/fourthline/cling/support/model/container/Container;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    iput-object p1, p0, Lorg/fourthline/cling/support/model/DIDLContent;->containers:Ljava/util/List;

    .line 75
    return-void
.end method

.method public setDescMetadata(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/fourthline/cling/support/model/DescMeta;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    iput-object p1, p0, Lorg/fourthline/cling/support/model/DIDLContent;->descMetadata:Ljava/util/List;

    .line 113
    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/fourthline/cling/support/model/item/Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    iput-object p1, p0, Lorg/fourthline/cling/support/model/DIDLContent;->items:Ljava/util/List;

    .line 100
    return-void
.end method
