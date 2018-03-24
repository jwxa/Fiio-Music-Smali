.class public final Le/f;
.super Ljava/lang/Object;
.source "CacheControl.java"


# instance fields
.field a:Z

.field b:Z

.field c:I

.field d:I

.field e:I

.field f:Z

.field g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    iput v0, p0, Le/f;->c:I

    .line 269
    iput v0, p0, Le/f;->d:I

    .line 270
    iput v0, p0, Le/f;->e:I

    return-void
.end method


# virtual methods
.method public final a()Le/e;
    .locals 1

    .prologue
    .line 351
    new-instance v0, Le/e;

    invoke-direct {v0, p0}, Le/e;-><init>(Le/f;)V

    return-object v0
.end method
