.class public Lorg/eclipse/jetty/servlet/ServletContextHandler$TagLib;
.super Ljava/lang/Object;
.source "ServletContextHandler.java"

# interfaces
.implements Lc/c/b/c;


# instance fields
.field private _location:Ljava/lang/String;

.field private _uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 718
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTaglibLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 741
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$TagLib;->_location:Ljava/lang/String;

    return-object v0
.end method

.method public getTaglibURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 728
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$TagLib;->_uri:Ljava/lang/String;

    return-object v0
.end method

.method public setTaglibLocation(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 746
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$TagLib;->_location:Ljava/lang/String;

    .line 747
    return-void
.end method

.method public setTaglibURI(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 733
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$TagLib;->_uri:Ljava/lang/String;

    .line 734
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 751
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TagLibDescriptor: taglib-uri="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$TagLib;->_uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$TagLib;->_location:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
