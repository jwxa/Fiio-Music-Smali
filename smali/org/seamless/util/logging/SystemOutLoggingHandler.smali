.class public Lorg/seamless/util/logging/SystemOutLoggingHandler;
.super Ljava/util/logging/StreamHandler;
.source "SystemOutLoggingHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Lorg/seamless/util/logging/SystemOutLoggingHandler$SimpleFormatter;

    invoke-direct {v1}, Lorg/seamless/util/logging/SystemOutLoggingHandler$SimpleFormatter;-><init>()V

    invoke-direct {p0, v0, v1}, Ljava/util/logging/StreamHandler;-><init>(Ljava/io/OutputStream;Ljava/util/logging/Formatter;)V

    .line 39
    sget-object v0, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-virtual {p0, v0}, Lorg/seamless/util/logging/SystemOutLoggingHandler;->setLevel(Ljava/util/logging/Level;)V

    .line 40
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 43
    invoke-virtual {p0}, Lorg/seamless/util/logging/SystemOutLoggingHandler;->flush()V

    .line 44
    return-void
.end method

.method public publish(Ljava/util/logging/LogRecord;)V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0, p1}, Ljava/util/logging/StreamHandler;->publish(Ljava/util/logging/LogRecord;)V

    .line 48
    invoke-virtual {p0}, Lorg/seamless/util/logging/SystemOutLoggingHandler;->flush()V

    .line 49
    return-void
.end method
