.class final Lorg/eclipse/jetty/util/p;
.super Ljava/lang/Object;
.source "StringMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# instance fields
.field final synthetic a:Lorg/eclipse/jetty/util/StringMap;


# direct methods
.method private constructor <init>(Lorg/eclipse/jetty/util/StringMap;)V
    .locals 0

    .prologue
    .line 667
    iput-object p1, p0, Lorg/eclipse/jetty/util/p;->a:Lorg/eclipse/jetty/util/StringMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/jetty/util/StringMap;B)V
    .locals 0

    .prologue
    .line 667
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/util/p;-><init>(Lorg/eclipse/jetty/util/StringMap;)V

    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 669
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Lorg/eclipse/jetty/util/p;->a:Lorg/eclipse/jetty/util/StringMap;

    iget-object v0, v0, Lorg/eclipse/jetty/util/StringMap;->_nullValue:Ljava/lang/Object;

    return-object v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 672
    iget-object v0, p0, Lorg/eclipse/jetty/util/p;->a:Lorg/eclipse/jetty/util/StringMap;

    iget-object v0, v0, Lorg/eclipse/jetty/util/StringMap;->_nullValue:Ljava/lang/Object;

    iget-object v1, p0, Lorg/eclipse/jetty/util/p;->a:Lorg/eclipse/jetty/util/StringMap;

    iput-object p1, v1, Lorg/eclipse/jetty/util/StringMap;->_nullValue:Ljava/lang/Object;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[:null="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jetty/util/p;->a:Lorg/eclipse/jetty/util/StringMap;

    iget-object v1, v1, Lorg/eclipse/jetty/util/StringMap;->_nullValue:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
