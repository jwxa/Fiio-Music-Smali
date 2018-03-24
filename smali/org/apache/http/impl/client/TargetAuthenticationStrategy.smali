.class public Lorg/apache/http/impl/client/TargetAuthenticationStrategy;
.super Lorg/apache/http/impl/client/b;
.source "TargetAuthenticationStrategy.java"


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 45
    const/16 v0, 0x191

    const-string v1, "WWW-Authenticate"

    const-string v2, "http.auth.target-scheme-pref"

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/http/impl/client/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method
