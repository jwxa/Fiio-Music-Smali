.class final enum Lcom/fiio/music/service/w;
.super Ljava/lang/Enum;
.source "MediaPlayerService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fiio/music/service/w;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/fiio/music/service/w;

.field private static final synthetic c:[Lcom/fiio/music/service/w;


# instance fields
.field private b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 5727
    new-instance v0, Lcom/fiio/music/service/w;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1}, Lcom/fiio/music/service/w;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/fiio/music/service/w;->a:Lcom/fiio/music/service/w;

    .line 5726
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/fiio/music/service/w;

    const/4 v1, 0x0

    sget-object v2, Lcom/fiio/music/service/w;->a:Lcom/fiio/music/service/w;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fiio/music/service/w;->c:[Lcom/fiio/music/service/w;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 5726
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 5740
    sget-object v0, Lcom/fiio/music/service/w;->a:Lcom/fiio/music/service/w;

    iget-object v0, v0, Lcom/fiio/music/service/w;->b:[Ljava/lang/String;

    sget-object v1, Lcom/fiio/music/service/w;->a:Lcom/fiio/music/service/w;

    iget-object v1, v1, Lcom/fiio/music/service/w;->b:[Ljava/lang/String;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 5741
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fiio/music/service/w;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/fiio/music/service/w;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/service/w;

    return-object v0
.end method

.method public static values()[Lcom/fiio/music/service/w;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/fiio/music/service/w;->c:[Lcom/fiio/music/service/w;

    array-length v1, v0

    new-array v2, v1, [Lcom/fiio/music/service/w;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
