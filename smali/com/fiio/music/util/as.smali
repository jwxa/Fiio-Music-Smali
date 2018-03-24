.class public final Lcom/fiio/music/util/as;
.super Ljava/lang/Object;
.source "Group.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/fiio/music/util/as;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 29
    iput p1, p0, Lcom/fiio/music/util/as;->b:I

    .line 30
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcom/fiio/music/util/as;->a:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/fiio/music/util/as;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/fiio/music/util/as;->c:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/fiio/music/util/as;->b:I

    return v0
.end method
