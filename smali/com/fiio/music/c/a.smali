.class public final Lcom/fiio/music/c/a;
.super Ljava/lang/Object;
.source "SearchAutoData.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/fiio/music/c/a;->a:Ljava/lang/String;

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/fiio/music/c/a;->b:Ljava/lang/String;

    .line 3
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/fiio/music/c/a;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/fiio/music/c/a;->b:Ljava/lang/String;

    .line 19
    return-object p0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/fiio/music/c/a;->b:Ljava/lang/String;

    return-object v0
.end method
