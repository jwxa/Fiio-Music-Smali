.class public Lorg/fourthline/cling/support/model/item/MusicTrack;
.super Lorg/fourthline/cling/support/model/item/AudioItem;
.source "MusicTrack.java"


# static fields
.field public static final CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLObject$Class;

    const-string v1, "object.item.audioItem.musicTrack"

    invoke-direct {v0, v1}, Lorg/fourthline/cling/support/model/DIDLObject$Class;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/fourthline/cling/support/model/item/MusicTrack;->CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/fourthline/cling/support/model/item/AudioItem;-><init>()V

    .line 37
    sget-object v0, Lorg/fourthline/cling/support/model/item/MusicTrack;->CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/MusicTrack;->setClazz(Lorg/fourthline/cling/support/model/DIDLObject$Class;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 38
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/fourthline/cling/support/model/Res;)V
    .locals 8

    .prologue
    .line 53
    new-instance v6, Lorg/fourthline/cling/support/model/PersonWithRole;

    invoke-direct {v6, p6}, Lorg/fourthline/cling/support/model/PersonWithRole;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lorg/fourthline/cling/support/model/item/MusicTrack;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/fourthline/cling/support/model/PersonWithRole;[Lorg/fourthline/cling/support/model/Res;)V

    .line 54
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/fourthline/cling/support/model/PersonWithRole;[Lorg/fourthline/cling/support/model/Res;)V
    .locals 6

    .prologue
    .line 57
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lorg/fourthline/cling/support/model/item/AudioItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/fourthline/cling/support/model/Res;)V

    .line 58
    sget-object v0, Lorg/fourthline/cling/support/model/item/MusicTrack;->CLASS:Lorg/fourthline/cling/support/model/DIDLObject$Class;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/MusicTrack;->setClazz(Lorg/fourthline/cling/support/model/DIDLObject$Class;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 59
    if-eqz p5, :cond_0

    .line 60
    invoke-virtual {p0, p5}, Lorg/fourthline/cling/support/model/item/MusicTrack;->setAlbum(Ljava/lang/String;)Lorg/fourthline/cling/support/model/item/MusicTrack;

    .line 61
    :cond_0
    if-eqz p6, :cond_1

    .line 62
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ARTIST;

    invoke-direct {v0, p6}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ARTIST;-><init>(Lorg/fourthline/cling/support/model/PersonWithRole;)V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/MusicTrack;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 63
    :cond_1
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Lorg/fourthline/cling/support/model/container/Container;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/fourthline/cling/support/model/Res;)V
    .locals 8

    .prologue
    .line 45
    invoke-virtual {p2}, Lorg/fourthline/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lorg/fourthline/cling/support/model/item/MusicTrack;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/fourthline/cling/support/model/Res;)V

    .line 46
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Lorg/fourthline/cling/support/model/container/Container;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/fourthline/cling/support/model/PersonWithRole;[Lorg/fourthline/cling/support/model/Res;)V
    .locals 8

    .prologue
    .line 49
    invoke-virtual {p2}, Lorg/fourthline/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lorg/fourthline/cling/support/model/item/MusicTrack;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/fourthline/cling/support/model/PersonWithRole;[Lorg/fourthline/cling/support/model/Res;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/model/item/Item;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lorg/fourthline/cling/support/model/item/AudioItem;-><init>(Lorg/fourthline/cling/support/model/item/Item;)V

    .line 42
    return-void
.end method


# virtual methods
.method public getAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ALBUM;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/MusicTrack;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getArtists()[Lorg/fourthline/cling/support/model/PersonWithRole;
    .locals 2

    .prologue
    .line 70
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ARTIST;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/MusicTrack;->getPropertyValues(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 71
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/fourthline/cling/support/model/PersonWithRole;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/support/model/PersonWithRole;

    return-object v0
.end method

.method public getContributors()[Lorg/fourthline/cling/support/model/Person;
    .locals 2

    .prologue
    .line 131
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$CONTRIBUTOR;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/MusicTrack;->getPropertyValues(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 132
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/fourthline/cling/support/model/Person;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/support/model/Person;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$DATE;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/MusicTrack;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFirstArtist()Lorg/fourthline/cling/support/model/PersonWithRole;
    .locals 1

    .prologue
    .line 66
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ARTIST;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/MusicTrack;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/PersonWithRole;

    return-object v0
.end method

.method public getFirstContributor()Lorg/fourthline/cling/support/model/Person;
    .locals 1

    .prologue
    .line 127
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$CONTRIBUTOR;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/MusicTrack;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/Person;

    return-object v0
.end method

.method public getFirstPlaylist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$PLAYLIST;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/MusicTrack;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalTrackNumber()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 92
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ORIGINAL_TRACK_NUMBER;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/MusicTrack;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getPlaylists()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$PLAYLIST;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/MusicTrack;->getPropertyValues(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 106
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getStorageMedium()Lorg/fourthline/cling/support/model/StorageMedium;
    .locals 1

    .prologue
    .line 118
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MEDIUM;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/MusicTrack;->getFirstPropertyValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/support/model/StorageMedium;

    return-object v0
.end method

.method public setAlbum(Ljava/lang/String;)Lorg/fourthline/cling/support/model/item/MusicTrack;
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ALBUM;

    invoke-direct {v0, p1}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ALBUM;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/MusicTrack;->replaceFirstProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 88
    return-object p0
.end method

.method public setArtists([Lorg/fourthline/cling/support/model/PersonWithRole;)Lorg/fourthline/cling/support/model/item/MusicTrack;
    .locals 4

    .prologue
    .line 75
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ARTIST;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/MusicTrack;->removeProperties(Ljava/lang/Class;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 76
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    .line 79
    return-object p0

    .line 76
    :cond_0
    aget-object v2, p1, v0

    .line 77
    new-instance v3, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ARTIST;

    invoke-direct {v3, v2}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ARTIST;-><init>(Lorg/fourthline/cling/support/model/PersonWithRole;)V

    invoke-virtual {p0, v3}, Lorg/fourthline/cling/support/model/item/MusicTrack;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setContributors([Lorg/fourthline/cling/support/model/Person;)Lorg/fourthline/cling/support/model/item/MusicTrack;
    .locals 4

    .prologue
    .line 136
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$CONTRIBUTOR;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/MusicTrack;->removeProperties(Ljava/lang/Class;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 137
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    .line 140
    return-object p0

    .line 137
    :cond_0
    aget-object v2, p1, v0

    .line 138
    new-instance v3, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$CONTRIBUTOR;

    invoke-direct {v3, v2}, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$CONTRIBUTOR;-><init>(Lorg/fourthline/cling/support/model/Person;)V

    invoke-virtual {p0, v3}, Lorg/fourthline/cling/support/model/item/MusicTrack;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setDate(Ljava/lang/String;)Lorg/fourthline/cling/support/model/item/MusicTrack;
    .locals 1

    .prologue
    .line 148
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$DATE;

    invoke-direct {v0, p1}, Lorg/fourthline/cling/support/model/DIDLObject$Property$DC$DATE;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/MusicTrack;->replaceFirstProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 149
    return-object p0
.end method

.method public setOriginalTrackNumber(Ljava/lang/Integer;)Lorg/fourthline/cling/support/model/item/MusicTrack;
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ORIGINAL_TRACK_NUMBER;

    invoke-direct {v0, p1}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ORIGINAL_TRACK_NUMBER;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/MusicTrack;->replaceFirstProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 97
    return-object p0
.end method

.method public setPlaylists([Ljava/lang/String;)Lorg/fourthline/cling/support/model/item/MusicTrack;
    .locals 4

    .prologue
    .line 110
    const-class v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$PLAYLIST;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/MusicTrack;->removeProperties(Ljava/lang/Class;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 111
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    .line 114
    return-object p0

    .line 111
    :cond_0
    aget-object v2, p1, v0

    .line 112
    new-instance v3, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$PLAYLIST;

    invoke-direct {v3, v2}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$PLAYLIST;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/fourthline/cling/support/model/item/MusicTrack;->addProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setStorageMedium(Lorg/fourthline/cling/support/model/StorageMedium;)Lorg/fourthline/cling/support/model/item/MusicTrack;
    .locals 1

    .prologue
    .line 122
    new-instance v0, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MEDIUM;

    invoke-direct {v0, p1}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$STORAGE_MEDIUM;-><init>(Lorg/fourthline/cling/support/model/StorageMedium;)V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/item/MusicTrack;->replaceFirstProperty(Lorg/fourthline/cling/support/model/DIDLObject$Property;)Lorg/fourthline/cling/support/model/DIDLObject;

    .line 123
    return-object p0
.end method
