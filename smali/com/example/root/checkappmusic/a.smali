.class final enum Lcom/example/root/checkappmusic/a;
.super Ljava/lang/Enum;
.source "DsfExtractor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/example/root/checkappmusic/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/example/root/checkappmusic/a;

.field public static final enum b:Lcom/example/root/checkappmusic/a;

.field private static final synthetic c:[Lcom/example/root/checkappmusic/a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/example/root/checkappmusic/a;

    const-string v1, "DSD"

    invoke-direct {v0, v1, v2}, Lcom/example/root/checkappmusic/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/example/root/checkappmusic/a;->a:Lcom/example/root/checkappmusic/a;

    .line 32
    new-instance v0, Lcom/example/root/checkappmusic/a;

    const-string v1, "DIFF"

    invoke-direct {v0, v1, v3}, Lcom/example/root/checkappmusic/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/example/root/checkappmusic/a;->b:Lcom/example/root/checkappmusic/a;

    .line 30
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/example/root/checkappmusic/a;

    sget-object v1, Lcom/example/root/checkappmusic/a;->a:Lcom/example/root/checkappmusic/a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/example/root/checkappmusic/a;->b:Lcom/example/root/checkappmusic/a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/example/root/checkappmusic/a;->c:[Lcom/example/root/checkappmusic/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/example/root/checkappmusic/a;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/example/root/checkappmusic/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/example/root/checkappmusic/a;

    return-object v0
.end method

.method public static values()[Lcom/example/root/checkappmusic/a;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/example/root/checkappmusic/a;->c:[Lcom/example/root/checkappmusic/a;

    array-length v1, v0

    new-array v2, v1, [Lcom/example/root/checkappmusic/a;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
