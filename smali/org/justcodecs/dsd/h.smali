.class final Lorg/justcodecs/dsd/h;
.super Ljava/lang/Object;
.source "DSTDecoder.java"


# instance fields
.field A:J

.field B:J

.field C:J

.field a:I

.field b:I

.field c:I

.field d:I

.field e:I

.field f:[I

.field g:[I

.field h:[[I

.field i:I

.field j:I

.field k:J

.field l:[I

.field m:[I

.field n:Lorg/justcodecs/dsd/i;

.field o:[[B

.field p:Lorg/justcodecs/dsd/i;

.field q:[[B

.field r:I

.field s:I

.field t:I

.field u:I

.field v:I

.field w:I

.field x:I

.field y:I

.field z:I


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    const v3, 0x9300

    const/16 v1, 0xc

    const/4 v2, 0x6

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-array v0, v1, [I

    iput-object v0, p0, Lorg/justcodecs/dsd/h;->f:[I

    .line 103
    new-array v0, v1, [I

    iput-object v0, p0, Lorg/justcodecs/dsd/h;->g:[I

    .line 112
    new-array v0, v2, [I

    iput-object v0, p0, Lorg/justcodecs/dsd/h;->l:[I

    .line 115
    new-array v0, v2, [I

    iput-object v0, p0, Lorg/justcodecs/dsd/h;->m:[I

    .line 119
    filled-new-array {v2, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lorg/justcodecs/dsd/h;->o:[[B

    .line 121
    filled-new-array {v2, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lorg/justcodecs/dsd/h;->q:[[B

    .line 137
    new-instance v0, Lorg/justcodecs/dsd/i;

    invoke-direct {v0}, Lorg/justcodecs/dsd/i;-><init>()V

    iput-object v0, p0, Lorg/justcodecs/dsd/h;->n:Lorg/justcodecs/dsd/i;

    .line 138
    new-instance v0, Lorg/justcodecs/dsd/i;

    invoke-direct {v0}, Lorg/justcodecs/dsd/i;-><init>()V

    iput-object v0, p0, Lorg/justcodecs/dsd/h;->p:Lorg/justcodecs/dsd/i;

    .line 139
    return-void
.end method
