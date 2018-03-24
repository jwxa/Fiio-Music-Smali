.class public Lorg/eclipse/jetty/server/AbstractHttpConnection$OutputWriter;
.super Lorg/eclipse/jetty/server/HttpWriter;
.source "AbstractHttpConnection.java"


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V
    .locals 1

    .prologue
    .line 1228
    iput-object p1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$OutputWriter;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    .line 1229
    iget-object v0, p1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_out:Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/server/HttpWriter;-><init>(Lorg/eclipse/jetty/server/HttpOutput;)V

    .line 1230
    return-void
.end method
