.class public Lorg/fourthline/cling/model/ServerClientTokens;
.super Ljava/lang/Object;
.source "ServerClientTokens.java"


# static fields
.field public static final UNKNOWN_PLACEHOLDER:Ljava/lang/String; = "UNKNOWN"


# instance fields
.field private majorVersion:I

.field private minorVersion:I

.field private osName:Ljava/lang/String;

.field private osVersion:Ljava/lang/String;

.field private productName:Ljava/lang/String;

.field private productVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x1

    iput v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->majorVersion:I

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->minorVersion:I

    .line 35
    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[^a-zA-Z0-9\\.\\-_]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->osName:Ljava/lang/String;

    .line 36
    const-string v0, "os.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[^a-zA-Z0-9\\.\\-_]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->osVersion:Ljava/lang/String;

    .line 37
    const-string v0, "Cling"

    iput-object v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->productName:Ljava/lang/String;

    .line 38
    const-string v0, "2.0"

    iput-object v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->productVersion:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public constructor <init>(II)V
    .locals 3

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x1

    iput v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->majorVersion:I

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->minorVersion:I

    .line 35
    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[^a-zA-Z0-9\\.\\-_]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->osName:Ljava/lang/String;

    .line 36
    const-string v0, "os.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[^a-zA-Z0-9\\.\\-_]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->osVersion:Ljava/lang/String;

    .line 37
    const-string v0, "Cling"

    iput-object v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->productName:Ljava/lang/String;

    .line 38
    const-string v0, "2.0"

    iput-object v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->productVersion:Ljava/lang/String;

    .line 44
    iput p1, p0, Lorg/fourthline/cling/model/ServerClientTokens;->majorVersion:I

    .line 45
    iput p2, p0, Lorg/fourthline/cling/model/ServerClientTokens;->minorVersion:I

    .line 46
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x1

    iput v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->majorVersion:I

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->minorVersion:I

    .line 35
    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[^a-zA-Z0-9\\.\\-_]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->osName:Ljava/lang/String;

    .line 36
    const-string v0, "os.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[^a-zA-Z0-9\\.\\-_]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->osVersion:Ljava/lang/String;

    .line 37
    const-string v0, "Cling"

    iput-object v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->productName:Ljava/lang/String;

    .line 38
    const-string v0, "2.0"

    iput-object v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->productVersion:Ljava/lang/String;

    .line 54
    iput p1, p0, Lorg/fourthline/cling/model/ServerClientTokens;->majorVersion:I

    .line 55
    iput p2, p0, Lorg/fourthline/cling/model/ServerClientTokens;->minorVersion:I

    .line 56
    iput-object p3, p0, Lorg/fourthline/cling/model/ServerClientTokens;->osName:Ljava/lang/String;

    .line 57
    iput-object p4, p0, Lorg/fourthline/cling/model/ServerClientTokens;->osVersion:Ljava/lang/String;

    .line 58
    iput-object p5, p0, Lorg/fourthline/cling/model/ServerClientTokens;->productName:Ljava/lang/String;

    .line 59
    iput-object p6, p0, Lorg/fourthline/cling/model/ServerClientTokens;->productVersion:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x1

    iput v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->majorVersion:I

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->minorVersion:I

    .line 35
    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[^a-zA-Z0-9\\.\\-_]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->osName:Ljava/lang/String;

    .line 36
    const-string v0, "os.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[^a-zA-Z0-9\\.\\-_]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->osVersion:Ljava/lang/String;

    .line 37
    const-string v0, "Cling"

    iput-object v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->productName:Ljava/lang/String;

    .line 38
    const-string v0, "2.0"

    iput-object v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->productVersion:Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lorg/fourthline/cling/model/ServerClientTokens;->productName:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lorg/fourthline/cling/model/ServerClientTokens;->productVersion:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 133
    if-ne p0, p1, :cond_1

    .line 145
    :cond_0
    :goto_0
    return v0

    .line 134
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 136
    :cond_3
    check-cast p1, Lorg/fourthline/cling/model/ServerClientTokens;

    .line 138
    iget v2, p0, Lorg/fourthline/cling/model/ServerClientTokens;->majorVersion:I

    iget v3, p1, Lorg/fourthline/cling/model/ServerClientTokens;->majorVersion:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    .line 139
    :cond_4
    iget v2, p0, Lorg/fourthline/cling/model/ServerClientTokens;->minorVersion:I

    iget v3, p1, Lorg/fourthline/cling/model/ServerClientTokens;->minorVersion:I

    if-eq v2, v3, :cond_5

    move v0, v1

    goto :goto_0

    .line 140
    :cond_5
    iget-object v2, p0, Lorg/fourthline/cling/model/ServerClientTokens;->osName:Ljava/lang/String;

    iget-object v3, p1, Lorg/fourthline/cling/model/ServerClientTokens;->osName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    goto :goto_0

    .line 141
    :cond_6
    iget-object v2, p0, Lorg/fourthline/cling/model/ServerClientTokens;->osVersion:Ljava/lang/String;

    iget-object v3, p1, Lorg/fourthline/cling/model/ServerClientTokens;->osVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    goto :goto_0

    .line 142
    :cond_7
    iget-object v2, p0, Lorg/fourthline/cling/model/ServerClientTokens;->productName:Ljava/lang/String;

    iget-object v3, p1, Lorg/fourthline/cling/model/ServerClientTokens;->productName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v1

    goto :goto_0

    .line 143
    :cond_8
    iget-object v2, p0, Lorg/fourthline/cling/model/ServerClientTokens;->productVersion:Ljava/lang/String;

    iget-object v3, p1, Lorg/fourthline/cling/model/ServerClientTokens;->productVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getHttpToken()Ljava/lang/String;
    .locals 4

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/ServerClientTokens;->getOsName()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, "_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/fourthline/cling/model/ServerClientTokens;->getOsVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, "_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 119
    const-string v1, " UPnP/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/fourthline/cling/model/ServerClientTokens;->getMajorVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/fourthline/cling/model/ServerClientTokens;->getMinorVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 120
    invoke-virtual {p0}, Lorg/fourthline/cling/model/ServerClientTokens;->getProductName()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, "_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/fourthline/cling/model/ServerClientTokens;->getProductVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, "_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMajorVersion()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->majorVersion:I

    return v0
.end method

.method public getMinorVersion()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->minorVersion:I

    return v0
.end method

.method public getOsName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->osName:Ljava/lang/String;

    return-object v0
.end method

.method public getOsToken()Ljava/lang/String;
    .locals 4

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/ServerClientTokens;->getOsName()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, "_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/fourthline/cling/model/ServerClientTokens;->getOsVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, "_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->osVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->productName:Ljava/lang/String;

    return-object v0
.end method

.method public getProductToken()Ljava/lang/String;
    .locals 4

    .prologue
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/ServerClientTokens;->getProductName()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, "_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/fourthline/cling/model/ServerClientTokens;->getProductVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, "_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProductVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->productVersion:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 150
    iget v0, p0, Lorg/fourthline/cling/model/ServerClientTokens;->majorVersion:I

    .line 151
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/fourthline/cling/model/ServerClientTokens;->minorVersion:I

    add-int/2addr v0, v1

    .line 152
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fourthline/cling/model/ServerClientTokens;->osName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 153
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fourthline/cling/model/ServerClientTokens;->osVersion:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 154
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fourthline/cling/model/ServerClientTokens;->productName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 155
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fourthline/cling/model/ServerClientTokens;->productVersion:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 156
    return v0
.end method

.method public setMajorVersion(I)V
    .locals 0

    .prologue
    .line 67
    iput p1, p0, Lorg/fourthline/cling/model/ServerClientTokens;->majorVersion:I

    .line 68
    return-void
.end method

.method public setMinorVersion(I)V
    .locals 0

    .prologue
    .line 75
    iput p1, p0, Lorg/fourthline/cling/model/ServerClientTokens;->minorVersion:I

    .line 76
    return-void
.end method

.method public setOsName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lorg/fourthline/cling/model/ServerClientTokens;->osName:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setOsVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lorg/fourthline/cling/model/ServerClientTokens;->osVersion:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setProductName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lorg/fourthline/cling/model/ServerClientTokens;->productName:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setProductVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lorg/fourthline/cling/model/ServerClientTokens;->productVersion:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/ServerClientTokens;->getOsName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/fourthline/cling/model/ServerClientTokens;->getOsVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 113
    const-string v1, " UPnP/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/fourthline/cling/model/ServerClientTokens;->getMajorVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/fourthline/cling/model/ServerClientTokens;->getMinorVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 114
    invoke-virtual {p0}, Lorg/fourthline/cling/model/ServerClientTokens;->getProductName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/fourthline/cling/model/ServerClientTokens;->getProductVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
