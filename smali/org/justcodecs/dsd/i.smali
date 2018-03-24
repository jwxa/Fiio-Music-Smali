.class final Lorg/justcodecs/dsd/i;
.super Ljava/lang/Object;
.source "DSTDecoder.java"


# instance fields
.field a:I

.field b:[[I

.field c:[I

.field d:[[I


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x6

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    filled-new-array {v2, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lorg/justcodecs/dsd/i;->b:[[I

    .line 92
    new-array v0, v2, [I

    iput-object v0, p0, Lorg/justcodecs/dsd/i;->c:[I

    .line 93
    filled-new-array {v2, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lorg/justcodecs/dsd/i;->d:[[I

    .line 89
    return-void
.end method
