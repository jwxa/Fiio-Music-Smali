.class public Lorg/fourthline/cling/binding/staging/MutableUDAVersion;
.super Ljava/lang/Object;
.source "MutableUDAVersion.java"


# instance fields
.field public major:I

.field public minor:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x1

    iput v0, p0, Lorg/fourthline/cling/binding/staging/MutableUDAVersion;->major:I

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lorg/fourthline/cling/binding/staging/MutableUDAVersion;->minor:I

    .line 21
    return-void
.end method
