.class public final Lc/c/m;
.super Ljava/lang/Object;
.source "MultipartConfigElement.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:J

.field private d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    if-nez p1, :cond_0

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lc/c/m;->a:Ljava/lang/String;

    .line 68
    :goto_0
    iput-wide v2, p0, Lc/c/m;->b:J

    .line 69
    iput-wide v2, p0, Lc/c/m;->c:J

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lc/c/m;->d:I

    .line 71
    return-void

    .line 66
    :cond_0
    iput-object p1, p0, Lc/c/m;->a:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lc/c/m;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 122
    iget-wide v0, p0, Lc/c/m;->b:J

    return-wide v0
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 131
    iget-wide v0, p0, Lc/c/m;->c:J

    return-wide v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lc/c/m;->d:I

    return v0
.end method
