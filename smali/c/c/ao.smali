.class public Lc/c/ao;
.super Lc/c/x;
.source "UnavailableException.java"


# instance fields
.field private a:Z

.field private b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lc/c/x;-><init>(Ljava/lang/String;)V

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/c/ao;->a:Z

    .line 159
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;B)V
    .locals 1

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lc/c/x;-><init>(Ljava/lang/String;)V

    .line 186
    const/4 v0, -0x1

    iput v0, p0, Lc/c/ao;->b:I

    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/c/ao;->a:Z

    .line 192
    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Lc/c/ao;->a:Z

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 244
    iget-boolean v0, p0, Lc/c/ao;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lc/c/ao;->b:I

    goto :goto_0
.end method
