.class public Lorg/eclipse/jetty/util/Utf8StringBuffer;
.super Lorg/eclipse/jetty/util/Utf8Appendable;
.source "Utf8StringBuffer.java"


# instance fields
.field final _buffer:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/util/Utf8Appendable;-><init>(Ljava/lang/Appendable;)V

    .line 41
    iget-object v0, p0, Lorg/eclipse/jetty/util/Utf8StringBuffer;->_appendable:Ljava/lang/Appendable;

    check-cast v0, Ljava/lang/StringBuffer;

    iput-object v0, p0, Lorg/eclipse/jetty/util/Utf8StringBuffer;->_buffer:Ljava/lang/StringBuffer;

    .line 42
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/util/Utf8Appendable;-><init>(Ljava/lang/Appendable;)V

    .line 47
    iget-object v0, p0, Lorg/eclipse/jetty/util/Utf8StringBuffer;->_appendable:Ljava/lang/Appendable;

    check-cast v0, Ljava/lang/StringBuffer;

    iput-object v0, p0, Lorg/eclipse/jetty/util/Utf8StringBuffer;->_buffer:Ljava/lang/StringBuffer;

    .line 48
    return-void
.end method

.method private checkState()V
    .locals 2

    .prologue
    .line 78
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/Utf8StringBuffer;->isUtf8SequenceComplete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tried to read incomplete UTF8 decoded String"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    return-void
.end method


# virtual methods
.method public getStringBuffer()Ljava/lang/StringBuffer;
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lorg/eclipse/jetty/util/Utf8StringBuffer;->checkState()V

    .line 66
    iget-object v0, p0, Lorg/eclipse/jetty/util/Utf8StringBuffer;->_buffer:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/eclipse/jetty/util/Utf8StringBuffer;->_buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 59
    invoke-super {p0}, Lorg/eclipse/jetty/util/Utf8Appendable;->reset()V

    .line 60
    iget-object v0, p0, Lorg/eclipse/jetty/util/Utf8StringBuffer;->_buffer:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 61
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Lorg/eclipse/jetty/util/Utf8StringBuffer;->checkState()V

    .line 73
    iget-object v0, p0, Lorg/eclipse/jetty/util/Utf8StringBuffer;->_buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
