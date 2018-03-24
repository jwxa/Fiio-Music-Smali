.class public Lorg/eclipse/jetty/util/ajax/JSON$Literal;
.super Ljava/lang/Object;
.source "JSON.java"

# interfaces
.implements Lorg/eclipse/jetty/util/ajax/JSON$Generator;


# instance fields
.field private _json:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1659
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1660
    sget-object v0, Lorg/eclipse/jetty/util/ajax/JSON;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1661
    invoke-static {p1}, Lorg/eclipse/jetty/util/ajax/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    .line 1662
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/util/ajax/JSON$Literal;->_json:Ljava/lang/String;

    .line 1663
    return-void
.end method


# virtual methods
.method public addJSON(Ljava/lang/Appendable;)V
    .locals 2

    .prologue
    .line 1675
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSON$Literal;->_json:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1680
    return-void

    .line 1677
    :catch_0
    move-exception v0

    .line 1679
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1668
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSON$Literal;->_json:Ljava/lang/String;

    return-object v0
.end method
