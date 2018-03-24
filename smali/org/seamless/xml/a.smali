.class final Lorg/seamless/xml/a;
.super Ljava/lang/Object;
.source "CatalogResourceResolver.java"

# interfaces
.implements Lorg/w3c/dom/ls/LSInput;


# instance fields
.field a:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lorg/seamless/xml/a;->a:Ljava/io/InputStream;

    .line 77
    return-void
.end method


# virtual methods
.method public final getBaseURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getByteStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/seamless/xml/a;->a:Ljava/io/InputStream;

    return-object v0
.end method

.method public final getCertifiedText()Z
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public final getCharacterStream()Ljava/io/Reader;
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getPublicId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getStringData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return-object v0
.end method

.method public final setBaseURI(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 119
    return-void
.end method

.method public final setByteStream(Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public final setCertifiedText(Z)V
    .locals 0

    .prologue
    .line 133
    return-void
.end method

.method public final setCharacterStream(Ljava/io/Reader;)V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method public final setEncoding(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public final setPublicId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public final setStringData(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method public final setSystemId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 105
    return-void
.end method
