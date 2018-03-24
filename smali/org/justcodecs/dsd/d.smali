.class final Lorg/justcodecs/dsd/d;
.super Ljava/lang/Object;
.source "DSTDecoder.java"


# instance fields
.field a:[I

.field b:[[I

.field c:[I

.field d:[I

.field e:[[I

.field f:[I

.field g:I


# direct methods
.method constructor <init>(Lorg/justcodecs/dsd/h;)V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    new-array v0, v2, [I

    iput-object v0, p0, Lorg/justcodecs/dsd/d;->a:[I

    .line 154
    filled-new-array {v2, v2}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lorg/justcodecs/dsd/d;->b:[[I

    .line 155
    iget v0, p1, Lorg/justcodecs/dsd/h;->x:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/justcodecs/dsd/d;->c:[I

    .line 156
    iget v0, p1, Lorg/justcodecs/dsd/h;->x:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/justcodecs/dsd/d;->d:[I

    .line 157
    iget v0, p1, Lorg/justcodecs/dsd/h;->y:I

    filled-new-array {v0, v2}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lorg/justcodecs/dsd/d;->e:[[I

    .line 158
    iget v0, p1, Lorg/justcodecs/dsd/h;->y:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/justcodecs/dsd/d;->f:[I

    .line 159
    return-void
.end method
