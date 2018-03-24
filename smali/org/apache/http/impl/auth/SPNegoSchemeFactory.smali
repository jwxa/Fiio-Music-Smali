.class public Lorg/apache/http/impl/auth/SPNegoSchemeFactory;
.super Ljava/lang/Object;
.source "SPNegoSchemeFactory.java"

# interfaces
.implements Lorg/apache/http/auth/AuthSchemeFactory;


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# instance fields
.field private final stripPort:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/http/impl/auth/SPNegoSchemeFactory;-><init>(Z)V

    .line 52
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-boolean p1, p0, Lorg/apache/http/impl/auth/SPNegoSchemeFactory;->stripPort:Z

    .line 48
    return-void
.end method


# virtual methods
.method public isStripPort()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lorg/apache/http/impl/auth/SPNegoSchemeFactory;->stripPort:Z

    return v0
.end method

.method public newInstance(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/auth/AuthScheme;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lorg/apache/http/impl/auth/SPNegoScheme;

    iget-boolean v1, p0, Lorg/apache/http/impl/auth/SPNegoSchemeFactory;->stripPort:Z

    invoke-direct {v0, v1}, Lorg/apache/http/impl/auth/SPNegoScheme;-><init>(Z)V

    return-object v0
.end method
