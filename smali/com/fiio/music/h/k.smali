.class public final Lcom/fiio/music/h/k;
.super Ljava/lang/Object;
.source "LyricXMLParser.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "count"

    iput-object v0, p0, Lcom/fiio/music/h/k;->a:Ljava/lang/String;

    .line 27
    const-string v0, "lrcid"

    iput-object v0, p0, Lcom/fiio/music/h/k;->b:Ljava/lang/String;

    .line 23
    return-void
.end method
