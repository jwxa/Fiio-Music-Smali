.class final Lcom/fiio/music/activity/de;
.super Ljava/lang/Object;
.source "LocalMusicActivity.java"

# interfaces
.implements Lcom/fiio/music/satellitemenu/f;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/LocalMusicActivity;

.field private final synthetic b:Lcom/fiio/music/custom/a;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/LocalMusicActivity;Lcom/fiio/music/custom/a;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/de;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    iput-object p2, p0, Lcom/fiio/music/activity/de;->b:Lcom/fiio/music/custom/a;

    .line 1315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1318
    iget-object v0, p0, Lcom/fiio/music/activity/de;->b:Lcom/fiio/music/custom/a;

    invoke-virtual {v0}, Lcom/fiio/music/custom/a;->dismiss()V

    .line 1319
    return-void
.end method
