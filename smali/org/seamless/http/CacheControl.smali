.class public Lorg/seamless/http/CacheControl;
.super Ljava/lang/Object;
.source "CacheControl.java"


# instance fields
.field private cacheExtensions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private maxAge:I

.field private mustRevalidate:Z

.field private noCache:Z

.field private noCacheFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private noStore:Z

.field private noTransform:Z

.field private privateFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private privateFlag:Z

.field private proxyRevalidate:Z

.field private sharedMaxAge:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput v0, p0, Lorg/seamless/http/CacheControl;->maxAge:I

    .line 28
    iput v0, p0, Lorg/seamless/http/CacheControl;->sharedMaxAge:I

    .line 30
    iput-boolean v1, p0, Lorg/seamless/http/CacheControl;->noCache:Z

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/seamless/http/CacheControl;->noCacheFields:Ljava/util/List;

    .line 33
    iput-boolean v1, p0, Lorg/seamless/http/CacheControl;->privateFlag:Z

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/seamless/http/CacheControl;->privateFields:Ljava/util/List;

    .line 36
    iput-boolean v1, p0, Lorg/seamless/http/CacheControl;->noStore:Z

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/seamless/http/CacheControl;->noTransform:Z

    .line 38
    iput-boolean v1, p0, Lorg/seamless/http/CacheControl;->mustRevalidate:Z

    .line 39
    iput-boolean v1, p0, Lorg/seamless/http/CacheControl;->proxyRevalidate:Z

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/seamless/http/CacheControl;->cacheExtensions:Ljava/util/Map;

    return-void
.end method

.method private append(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 1

    .prologue
    .line 224
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    :cond_0
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    return-object p2
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/seamless/http/CacheControl;
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v10, 0x1

    .line 132
    if-nez p0, :cond_0

    .line 182
    :goto_0
    return-object v1

    .line 133
    :cond_0
    new-instance v2, Lorg/seamless/http/CacheControl;

    invoke-direct {v2}, Lorg/seamless/http/CacheControl;-><init>()V

    .line 135
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 136
    array-length v6, v5

    move v3, v4

    :goto_1
    if-ge v3, v6, :cond_f

    aget-object v0, v5, v3

    .line 137
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 139
    const-string v7, "="

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 140
    aget-object v7, v0, v4

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 142
    array-length v8, v0

    if-le v8, v10, :cond_10

    .line 143
    aget-object v0, v0, v10

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 144
    const-string v8, "\""

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 145
    :cond_1
    const-string v8, "\""

    invoke-virtual {v0, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v0, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 148
    :cond_2
    :goto_2
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 149
    const-string v9, "no-cache"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 150
    invoke-virtual {v2, v10}, Lorg/seamless/http/CacheControl;->setNoCache(Z)V

    .line 151
    if-eqz v0, :cond_3

    const-string v7, ""

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 152
    invoke-virtual {v2}, Lorg/seamless/http/CacheControl;->getNoCacheFields()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_3
    :goto_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 154
    :cond_4
    const-string v9, "private"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 155
    invoke-virtual {v2, v10}, Lorg/seamless/http/CacheControl;->setPrivateFlag(Z)V

    .line 156
    if-eqz v0, :cond_3

    const-string v7, ""

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 157
    invoke-virtual {v2}, Lorg/seamless/http/CacheControl;->getPrivateFields()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 159
    :cond_5
    const-string v9, "no-store"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 160
    invoke-virtual {v2, v10}, Lorg/seamless/http/CacheControl;->setNoStore(Z)V

    goto :goto_3

    .line 161
    :cond_6
    const-string v9, "max-age"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 162
    if-nez v0, :cond_7

    .line 163
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CacheControl max-age header does not have a value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 164
    :cond_7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lorg/seamless/http/CacheControl;->setMaxAge(I)V

    goto :goto_3

    .line 165
    :cond_8
    const-string v9, "s-maxage"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 166
    if-nez v0, :cond_9

    .line 167
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CacheControl s-maxage header does not have a value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 168
    :cond_9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lorg/seamless/http/CacheControl;->setSharedMaxAge(I)V

    goto/16 :goto_3

    .line 169
    :cond_a
    const-string v9, "no-transform"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 170
    invoke-virtual {v2, v10}, Lorg/seamless/http/CacheControl;->setNoTransform(Z)V

    goto/16 :goto_3

    .line 171
    :cond_b
    const-string v9, "must-revalidate"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 172
    invoke-virtual {v2, v10}, Lorg/seamless/http/CacheControl;->setMustRevalidate(Z)V

    goto/16 :goto_3

    .line 173
    :cond_c
    const-string v9, "proxy-revalidate"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 174
    invoke-virtual {v2, v10}, Lorg/seamless/http/CacheControl;->setProxyRevalidate(Z)V

    goto/16 :goto_3

    .line 175
    :cond_d
    const-string v9, "public"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 178
    if-nez v0, :cond_e

    const-string v0, ""

    .line 179
    :cond_e
    invoke-virtual {v2}, Lorg/seamless/http/CacheControl;->getCacheExtensions()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_f
    move-object v1, v2

    .line 182
    goto/16 :goto_0

    :cond_10
    move-object v0, v1

    goto/16 :goto_2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 231
    if-ne p0, p1, :cond_1

    .line 248
    :cond_0
    :goto_0
    return v0

    .line 232
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

    .line 234
    :cond_3
    check-cast p1, Lorg/seamless/http/CacheControl;

    .line 236
    iget v2, p0, Lorg/seamless/http/CacheControl;->maxAge:I

    iget v3, p1, Lorg/seamless/http/CacheControl;->maxAge:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    .line 237
    :cond_4
    iget-boolean v2, p0, Lorg/seamless/http/CacheControl;->mustRevalidate:Z

    iget-boolean v3, p1, Lorg/seamless/http/CacheControl;->mustRevalidate:Z

    if-eq v2, v3, :cond_5

    move v0, v1

    goto :goto_0

    .line 238
    :cond_5
    iget-boolean v2, p0, Lorg/seamless/http/CacheControl;->noCache:Z

    iget-boolean v3, p1, Lorg/seamless/http/CacheControl;->noCache:Z

    if-eq v2, v3, :cond_6

    move v0, v1

    goto :goto_0

    .line 239
    :cond_6
    iget-boolean v2, p0, Lorg/seamless/http/CacheControl;->noStore:Z

    iget-boolean v3, p1, Lorg/seamless/http/CacheControl;->noStore:Z

    if-eq v2, v3, :cond_7

    move v0, v1

    goto :goto_0

    .line 240
    :cond_7
    iget-boolean v2, p0, Lorg/seamless/http/CacheControl;->noTransform:Z

    iget-boolean v3, p1, Lorg/seamless/http/CacheControl;->noTransform:Z

    if-eq v2, v3, :cond_8

    move v0, v1

    goto :goto_0

    .line 241
    :cond_8
    iget-boolean v2, p0, Lorg/seamless/http/CacheControl;->privateFlag:Z

    iget-boolean v3, p1, Lorg/seamless/http/CacheControl;->privateFlag:Z

    if-eq v2, v3, :cond_9

    move v0, v1

    goto :goto_0

    .line 242
    :cond_9
    iget-boolean v2, p0, Lorg/seamless/http/CacheControl;->proxyRevalidate:Z

    iget-boolean v3, p1, Lorg/seamless/http/CacheControl;->proxyRevalidate:Z

    if-eq v2, v3, :cond_a

    move v0, v1

    goto :goto_0

    .line 243
    :cond_a
    iget v2, p0, Lorg/seamless/http/CacheControl;->sharedMaxAge:I

    iget v3, p1, Lorg/seamless/http/CacheControl;->sharedMaxAge:I

    if-eq v2, v3, :cond_b

    move v0, v1

    goto :goto_0

    .line 244
    :cond_b
    iget-object v2, p0, Lorg/seamless/http/CacheControl;->cacheExtensions:Ljava/util/Map;

    iget-object v3, p1, Lorg/seamless/http/CacheControl;->cacheExtensions:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    move v0, v1

    goto :goto_0

    .line 245
    :cond_c
    iget-object v2, p0, Lorg/seamless/http/CacheControl;->noCacheFields:Ljava/util/List;

    iget-object v3, p1, Lorg/seamless/http/CacheControl;->noCacheFields:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    move v0, v1

    goto :goto_0

    .line 246
    :cond_d
    iget-object v2, p0, Lorg/seamless/http/CacheControl;->privateFields:Ljava/util/List;

    iget-object v3, p1, Lorg/seamless/http/CacheControl;->privateFields:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getCacheExtensions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lorg/seamless/http/CacheControl;->cacheExtensions:Ljava/util/Map;

    return-object v0
.end method

.method public getMaxAge()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lorg/seamless/http/CacheControl;->maxAge:I

    return v0
.end method

.method public getNoCacheFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lorg/seamless/http/CacheControl;->noCacheFields:Ljava/util/List;

    return-object v0
.end method

.method public getPrivateFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lorg/seamless/http/CacheControl;->privateFields:Ljava/util/List;

    return-object v0
.end method

.method public getSharedMaxAge()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lorg/seamless/http/CacheControl;->sharedMaxAge:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 253
    iget v0, p0, Lorg/seamless/http/CacheControl;->maxAge:I

    .line 254
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lorg/seamless/http/CacheControl;->sharedMaxAge:I

    add-int/2addr v0, v3

    .line 255
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lorg/seamless/http/CacheControl;->noCache:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    .line 256
    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lorg/seamless/http/CacheControl;->noCacheFields:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 257
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lorg/seamless/http/CacheControl;->privateFlag:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v3

    .line 258
    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lorg/seamless/http/CacheControl;->privateFields:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 259
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lorg/seamless/http/CacheControl;->noStore:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v3

    .line 260
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lorg/seamless/http/CacheControl;->noTransform:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v3

    .line 261
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lorg/seamless/http/CacheControl;->mustRevalidate:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v3

    .line 262
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lorg/seamless/http/CacheControl;->proxyRevalidate:Z

    if-eqz v3, :cond_5

    :goto_5
    add-int/2addr v0, v1

    .line 263
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/seamless/http/CacheControl;->cacheExtensions:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 264
    return v0

    :cond_0
    move v0, v2

    .line 255
    goto :goto_0

    :cond_1
    move v0, v2

    .line 257
    goto :goto_1

    :cond_2
    move v0, v2

    .line 259
    goto :goto_2

    :cond_3
    move v0, v2

    .line 260
    goto :goto_3

    :cond_4
    move v0, v2

    .line 261
    goto :goto_4

    :cond_5
    move v1, v2

    .line 262
    goto :goto_5
.end method

.method public isMustRevalidate()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lorg/seamless/http/CacheControl;->mustRevalidate:Z

    return v0
.end method

.method public isNoCache()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lorg/seamless/http/CacheControl;->noCache:Z

    return v0
.end method

.method public isNoStore()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lorg/seamless/http/CacheControl;->noStore:Z

    return v0
.end method

.method public isNoTransform()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lorg/seamless/http/CacheControl;->noTransform:Z

    return v0
.end method

.method public isPrivateFlag()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lorg/seamless/http/CacheControl;->privateFlag:Z

    return v0
.end method

.method public isProxyRevalidate()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lorg/seamless/http/CacheControl;->proxyRevalidate:Z

    return v0
.end method

.method public setCacheExtensions(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    iput-object p1, p0, Lorg/seamless/http/CacheControl;->cacheExtensions:Ljava/util/Map;

    .line 129
    return-void
.end method

.method public setMaxAge(I)V
    .locals 0

    .prologue
    .line 48
    iput p1, p0, Lorg/seamless/http/CacheControl;->maxAge:I

    .line 49
    return-void
.end method

.method public setMustRevalidate(Z)V
    .locals 0

    .prologue
    .line 112
    iput-boolean p1, p0, Lorg/seamless/http/CacheControl;->mustRevalidate:Z

    .line 113
    return-void
.end method

.method public setNoCache(Z)V
    .locals 0

    .prologue
    .line 64
    iput-boolean p1, p0, Lorg/seamless/http/CacheControl;->noCache:Z

    .line 65
    return-void
.end method

.method public setNoCacheFields(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    iput-object p1, p0, Lorg/seamless/http/CacheControl;->noCacheFields:Ljava/util/List;

    .line 73
    return-void
.end method

.method public setNoStore(Z)V
    .locals 0

    .prologue
    .line 96
    iput-boolean p1, p0, Lorg/seamless/http/CacheControl;->noStore:Z

    .line 97
    return-void
.end method

.method public setNoTransform(Z)V
    .locals 0

    .prologue
    .line 104
    iput-boolean p1, p0, Lorg/seamless/http/CacheControl;->noTransform:Z

    .line 105
    return-void
.end method

.method public setPrivateFields(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    iput-object p1, p0, Lorg/seamless/http/CacheControl;->privateFields:Ljava/util/List;

    .line 89
    return-void
.end method

.method public setPrivateFlag(Z)V
    .locals 0

    .prologue
    .line 80
    iput-boolean p1, p0, Lorg/seamless/http/CacheControl;->privateFlag:Z

    .line 81
    return-void
.end method

.method public setProxyRevalidate(Z)V
    .locals 0

    .prologue
    .line 120
    iput-boolean p1, p0, Lorg/seamless/http/CacheControl;->proxyRevalidate:Z

    .line 121
    return-void
.end method

.method public setSharedMaxAge(I)V
    .locals 0

    .prologue
    .line 56
    iput p1, p0, Lorg/seamless/http/CacheControl;->sharedMaxAge:I

    .line 57
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 187
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    invoke-virtual {p0}, Lorg/seamless/http/CacheControl;->isPrivateFlag()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "public"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    :cond_0
    invoke-virtual {p0}, Lorg/seamless/http/CacheControl;->isMustRevalidate()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "must-revalidate"

    invoke-direct {p0, v0, v2}, Lorg/seamless/http/CacheControl;->append(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 190
    :cond_1
    invoke-virtual {p0}, Lorg/seamless/http/CacheControl;->isNoTransform()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "no-transform"

    invoke-direct {p0, v0, v2}, Lorg/seamless/http/CacheControl;->append(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 191
    :cond_2
    invoke-virtual {p0}, Lorg/seamless/http/CacheControl;->isNoStore()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "no-store"

    invoke-direct {p0, v0, v2}, Lorg/seamless/http/CacheControl;->append(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 192
    :cond_3
    invoke-virtual {p0}, Lorg/seamless/http/CacheControl;->isProxyRevalidate()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "proxy-revalidate"

    invoke-direct {p0, v0, v2}, Lorg/seamless/http/CacheControl;->append(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 193
    :cond_4
    invoke-virtual {p0}, Lorg/seamless/http/CacheControl;->getSharedMaxAge()I

    move-result v0

    if-ltz v0, :cond_5

    const-string v0, "s-maxage"

    invoke-direct {p0, v0, v2}, Lorg/seamless/http/CacheControl;->append(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/seamless/http/CacheControl;->getSharedMaxAge()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 194
    :cond_5
    invoke-virtual {p0}, Lorg/seamless/http/CacheControl;->getMaxAge()I

    move-result v0

    if-ltz v0, :cond_6

    const-string v0, "max-age"

    invoke-direct {p0, v0, v2}, Lorg/seamless/http/CacheControl;->append(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/seamless/http/CacheControl;->getMaxAge()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    :cond_6
    invoke-virtual {p0}, Lorg/seamless/http/CacheControl;->isNoCache()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 196
    invoke-virtual {p0}, Lorg/seamless/http/CacheControl;->getNoCacheFields()Ljava/util/List;

    move-result-object v0

    .line 197
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_a

    const-string v0, "no-cache"

    invoke-direct {p0, v0, v2}, Lorg/seamless/http/CacheControl;->append(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 204
    :cond_7
    invoke-virtual {p0}, Lorg/seamless/http/CacheControl;->isPrivateFlag()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 205
    invoke-virtual {p0}, Lorg/seamless/http/CacheControl;->getPrivateFields()Ljava/util/List;

    move-result-object v0

    .line 206
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_b

    const-string v0, "private"

    invoke-direct {p0, v0, v2}, Lorg/seamless/http/CacheControl;->append(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 213
    :cond_8
    invoke-virtual {p0}, Lorg/seamless/http/CacheControl;->getCacheExtensions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 214
    invoke-virtual {p0}, Lorg/seamless/http/CacheControl;->getCacheExtensions()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 215
    invoke-direct {p0, v0, v2}, Lorg/seamless/http/CacheControl;->append(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 216
    if-eqz v1, :cond_9

    const-string v0, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 217
    const-string v0, "=\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 199
    :cond_a
    invoke-virtual {p0}, Lorg/seamless/http/CacheControl;->getNoCacheFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 200
    const-string v3, "no-cache"

    invoke-direct {p0, v3, v2}, Lorg/seamless/http/CacheControl;->append(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 208
    :cond_b
    invoke-virtual {p0}, Lorg/seamless/http/CacheControl;->getPrivateFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 209
    const-string v3, "private"

    invoke-direct {p0, v3, v2}, Lorg/seamless/http/CacheControl;->append(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 220
    :cond_c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
