.class final enum Lcom/fiio/music/activity/df;
.super Ljava/lang/Enum;
.source "LocalMusicActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fiio/music/activity/df;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/fiio/music/activity/df;

.field private static final synthetic c:[Lcom/fiio/music/activity/df;


# instance fields
.field private b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 4301
    new-instance v0, Lcom/fiio/music/activity/df;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1}, Lcom/fiio/music/activity/df;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/fiio/music/activity/df;->a:Lcom/fiio/music/activity/df;

    .line 4300
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/fiio/music/activity/df;

    const/4 v1, 0x0

    sget-object v2, Lcom/fiio/music/activity/df;->a:Lcom/fiio/music/activity/df;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fiio/music/activity/df;->c:[Lcom/fiio/music/activity/df;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 4300
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 4310
    sget-object v0, Lcom/fiio/music/activity/df;->a:Lcom/fiio/music/activity/df;

    iput-object p0, v0, Lcom/fiio/music/activity/df;->b:[Ljava/lang/String;

    .line 4311
    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 4306
    sget-object v0, Lcom/fiio/music/activity/df;->a:Lcom/fiio/music/activity/df;

    iget-object v0, v0, Lcom/fiio/music/activity/df;->b:[Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 4314
    sget-object v0, Lcom/fiio/music/activity/df;->a:Lcom/fiio/music/activity/df;

    iget-object v0, v0, Lcom/fiio/music/activity/df;->b:[Ljava/lang/String;

    .line 4315
    sget-object v1, Lcom/fiio/music/activity/df;->a:Lcom/fiio/music/activity/df;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/fiio/music/activity/df;->b:[Ljava/lang/String;

    .line 4316
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fiio/music/activity/df;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/fiio/music/activity/df;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/activity/df;

    return-object v0
.end method

.method public static values()[Lcom/fiio/music/activity/df;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/fiio/music/activity/df;->c:[Lcom/fiio/music/activity/df;

    array-length v1, v0

    new-array v2, v1, [Lcom/fiio/music/activity/df;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
