.class final enum Lcom/fiio/music/activity/o;
.super Ljava/lang/Enum;
.source "AddPlayListActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fiio/music/activity/o;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/fiio/music/activity/o;

.field private static final synthetic c:[Lcom/fiio/music/activity/o;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 83
    new-instance v0, Lcom/fiio/music/activity/o;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1}, Lcom/fiio/music/activity/o;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/fiio/music/activity/o;->a:Lcom/fiio/music/activity/o;

    .line 82
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/fiio/music/activity/o;

    const/4 v1, 0x0

    sget-object v2, Lcom/fiio/music/activity/o;->a:Lcom/fiio/music/activity/o;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fiio/music/activity/o;->c:[Lcom/fiio/music/activity/o;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    sget-object v0, Lcom/fiio/music/activity/o;->a:Lcom/fiio/music/activity/o;

    iput-object p0, v0, Lcom/fiio/music/activity/o;->b:Ljava/util/List;

    .line 93
    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/fiio/music/activity/o;->a:Lcom/fiio/music/activity/o;

    iget-object v0, v0, Lcom/fiio/music/activity/o;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fiio/music/entity/Song;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    sget-object v0, Lcom/fiio/music/activity/o;->a:Lcom/fiio/music/activity/o;

    iget-object v0, v0, Lcom/fiio/music/activity/o;->b:Ljava/util/List;

    .line 97
    sget-object v1, Lcom/fiio/music/activity/o;->a:Lcom/fiio/music/activity/o;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/fiio/music/activity/o;->b:Ljava/util/List;

    .line 98
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fiio/music/activity/o;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/fiio/music/activity/o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/activity/o;

    return-object v0
.end method

.method public static values()[Lcom/fiio/music/activity/o;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/fiio/music/activity/o;->c:[Lcom/fiio/music/activity/o;

    array-length v1, v0

    new-array v2, v1, [Lcom/fiio/music/activity/o;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
