.class final Lorg/apache/http/impl/client/h;
.super Ljava/lang/Object;
.source "SystemClock.java"

# interfaces
.implements Lorg/apache/http/impl/client/c;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
