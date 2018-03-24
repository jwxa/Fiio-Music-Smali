.class final enum Lg/a/a/x;
.super Ljava/lang/Enum;
.source "SSLStreams.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lg/a/a/x;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lg/a/a/x;

.field public static final enum b:Lg/a/a/x;

.field private static final synthetic c:[Lg/a/a/x;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 153
    new-instance v0, Lg/a/a/x;

    const-string v1, "PACKET"

    invoke-direct {v0, v1, v2}, Lg/a/a/x;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/a/x;->a:Lg/a/a/x;

    new-instance v0, Lg/a/a/x;

    const-string v1, "APPLICATION"

    invoke-direct {v0, v1, v3}, Lg/a/a/x;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/a/x;->b:Lg/a/a/x;

    .line 152
    const/4 v0, 0x2

    new-array v0, v0, [Lg/a/a/x;

    sget-object v1, Lg/a/a/x;->a:Lg/a/a/x;

    aput-object v1, v0, v2

    sget-object v1, Lg/a/a/x;->b:Lg/a/a/x;

    aput-object v1, v0, v3

    sput-object v0, Lg/a/a/x;->c:[Lg/a/a/x;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 152
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/a/a/x;
    .locals 5

    .prologue
    .line 152
    sget-object v1, Lg/a/a/x;->c:[Lg/a/a/x;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lg/a/a/x;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final values()[Lg/a/a/x;
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lg/a/a/x;->c:[Lg/a/a/x;

    invoke-virtual {v0}, [Lg/a/a/x;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/a/a/x;

    return-object v0
.end method
