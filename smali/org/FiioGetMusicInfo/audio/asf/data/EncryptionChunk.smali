.class public Lorg/FiioGetMusicInfo/audio/asf/data/EncryptionChunk;
.super Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;
.source "EncryptionChunk.java"


# instance fields
.field private keyID:Ljava/lang/String;

.field private licenseURL:Ljava/lang/String;

.field private protectionType:Ljava/lang/String;

.field private secretData:Ljava/lang/String;

.field private final strings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lorg/FiioGetMusicInfo/audio/asf/data/GUID;->GUID_CONTENT_ENCRYPTION:Lorg/FiioGetMusicInfo/audio/asf/data/GUID;

    invoke-direct {p0, v0, p1}, Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;-><init>(Lorg/FiioGetMusicInfo/audio/asf/data/GUID;Ljava/math/BigInteger;)V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/EncryptionChunk;->strings:Ljava/util/ArrayList;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/EncryptionChunk;->secretData:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/EncryptionChunk;->protectionType:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/EncryptionChunk;->keyID:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/EncryptionChunk;->licenseURL:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public addString(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/EncryptionChunk;->strings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method

.method public getKeyID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/EncryptionChunk;->keyID:Ljava/lang/String;

    return-object v0
.end method

.method public getLicenseURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/EncryptionChunk;->licenseURL:Ljava/lang/String;

    return-object v0
.end method

.method public getProtectionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/EncryptionChunk;->protectionType:Ljava/lang/String;

    return-object v0
.end method

.method public getSecretData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/EncryptionChunk;->secretData:Ljava/lang/String;

    return-object v0
.end method

.method public getStrings()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/FiioGetMusicInfo/audio/asf/data/EncryptionChunk;->strings:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public prettyPrint(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-super {p0, p1}, Lorg/FiioGetMusicInfo/audio/asf/data/Chunk;->prettyPrint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Encryption:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 97
    sget-object v3, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 96
    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\t|->keyID "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/FiioGetMusicInfo/audio/asf/data/EncryptionChunk;->keyID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 99
    sget-object v2, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 98
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\t|->secretData "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/FiioGetMusicInfo/audio/asf/data/EncryptionChunk;->secretData:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 101
    sget-object v2, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\t|->protectionType "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 103
    iget-object v2, p0, Lorg/FiioGetMusicInfo/audio/asf/data/EncryptionChunk;->protectionType:Ljava/lang/String;

    .line 102
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 103
    sget-object v2, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\t|->licenseURL "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/FiioGetMusicInfo/audio/asf/data/EncryptionChunk;->licenseURL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 105
    sget-object v2, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/EncryptionChunk;->strings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 107
    iget-object v0, p0, Lorg/FiioGetMusicInfo/audio/asf/data/EncryptionChunk;->strings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 107
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 108
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   |->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lorg/FiioGetMusicInfo/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public setKeyID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lorg/FiioGetMusicInfo/audio/asf/data/EncryptionChunk;->keyID:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setLicenseURL(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lorg/FiioGetMusicInfo/audio/asf/data/EncryptionChunk;->licenseURL:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setProtectionType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lorg/FiioGetMusicInfo/audio/asf/data/EncryptionChunk;->protectionType:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setSecretData(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lorg/FiioGetMusicInfo/audio/asf/data/EncryptionChunk;->secretData:Ljava/lang/String;

    .line 151
    return-void
.end method
