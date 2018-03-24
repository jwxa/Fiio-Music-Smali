.class public Lorg/fourthline/cling/model/message/header/ServerHeader;
.super Lorg/fourthline/cling/model/message/header/UpnpHeader;
.source "ServerHeader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/model/message/header/UpnpHeader",
        "<",
        "Lorg/fourthline/cling/model/ServerClientTokens;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/fourthline/cling/model/message/header/UpnpHeader;-><init>()V

    .line 26
    new-instance v0, Lorg/fourthline/cling/model/ServerClientTokens;

    invoke-direct {v0}, Lorg/fourthline/cling/model/ServerClientTokens;-><init>()V

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/model/message/header/ServerHeader;->setValue(Ljava/lang/Object;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/ServerClientTokens;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/fourthline/cling/model/message/header/UpnpHeader;-><init>()V

    .line 30
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/message/header/ServerHeader;->setValue(Ljava/lang/Object;)V

    .line 31
    return-void
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/header/ServerHeader;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/ServerClientTokens;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/ServerClientTokens;->getHttpToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setString(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 38
    new-instance v2, Lorg/fourthline/cling/model/ServerClientTokens;

    invoke-direct {v2}, Lorg/fourthline/cling/model/ServerClientTokens;-><init>()V

    .line 41
    const-string v1, "UNKNOWN"

    invoke-virtual {v2, v1}, Lorg/fourthline/cling/model/ServerClientTokens;->setOsName(Ljava/lang/String;)V

    .line 42
    const-string v1, "UNKNOWN"

    invoke-virtual {v2, v1}, Lorg/fourthline/cling/model/ServerClientTokens;->setOsVersion(Ljava/lang/String;)V

    .line 43
    const-string v1, "UNKNOWN"

    invoke-virtual {v2, v1}, Lorg/fourthline/cling/model/ServerClientTokens;->setProductName(Ljava/lang/String;)V

    .line 44
    const-string v1, "UNKNOWN"

    invoke-virtual {v2, v1}, Lorg/fourthline/cling/model/ServerClientTokens;->setProductVersion(Ljava/lang/String;)V

    .line 47
    const-string v1, "UPnP/1.1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 48
    invoke-virtual {v2, v5}, Lorg/fourthline/cling/model/ServerClientTokens;->setMinorVersion(I)V

    :cond_0
    move v1, v0

    .line 57
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_4

    .line 64
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 67
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 68
    const/4 v0, 0x0

    aget-object v0, v1, v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 69
    const/4 v3, 0x2

    aget-object v1, v1, v3

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 88
    :goto_1
    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/fourthline/cling/model/ServerClientTokens;->setOsName(Ljava/lang/String;)V

    .line 89
    array-length v3, v0

    if-le v3, v5, :cond_1

    .line 90
    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/fourthline/cling/model/ServerClientTokens;->setOsVersion(Ljava/lang/String;)V

    .line 92
    :cond_1
    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/fourthline/cling/model/ServerClientTokens;->setProductName(Ljava/lang/String;)V

    .line 93
    array-length v0, v1

    if-le v0, v5, :cond_2

    .line 94
    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/fourthline/cling/model/ServerClientTokens;->setProductVersion(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :cond_2
    :goto_2
    invoke-virtual {p0, v2}, Lorg/fourthline/cling/model/message/header/ServerHeader;->setValue(Ljava/lang/Object;)V

    .line 120
    return-void

    .line 49
    :cond_3
    const-string v1, "UPnP/1."

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    new-instance v0, Lorg/fourthline/cling/model/message/header/InvalidHeaderException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Missing \'UPnP/1.\' in server information: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/message/header/InvalidHeaderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_4
    :try_start_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    add-int/lit8 v0, v0, 0x1

    .line 57
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 71
    :cond_6
    if-le v0, v6, :cond_7

    .line 74
    const/4 v0, 0x0

    const-string v1, "UPnP/1."

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 75
    const-string v1, "UPnP/1."

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 76
    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 77
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 82
    :cond_7
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 83
    const/4 v0, 0x0

    aget-object v0, v1, v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 84
    const/4 v3, 0x2

    aget-object v1, v1, v3

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto/16 :goto_1

    .line 100
    :catch_0
    move-exception v0

    const-string v0, "UNKNOWN"

    invoke-virtual {v2, v0}, Lorg/fourthline/cling/model/ServerClientTokens;->setOsName(Ljava/lang/String;)V

    .line 101
    const-string v0, "UNKNOWN"

    invoke-virtual {v2, v0}, Lorg/fourthline/cling/model/ServerClientTokens;->setOsVersion(Ljava/lang/String;)V

    .line 102
    const-string v0, "UNKNOWN"

    invoke-virtual {v2, v0}, Lorg/fourthline/cling/model/ServerClientTokens;->setProductName(Ljava/lang/String;)V

    .line 103
    const-string v0, "UNKNOWN"

    invoke-virtual {v2, v0}, Lorg/fourthline/cling/model/ServerClientTokens;->setProductVersion(Ljava/lang/String;)V

    goto/16 :goto_2
.end method
