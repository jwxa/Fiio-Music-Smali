.class final Lcom/fiio/music/satellitemenu/e;
.super Ljava/lang/Object;
.source "SatelliteMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/fiio/music/satellitemenu/SatelliteMenu;

.field private final synthetic b:Lcom/fiio/music/satellitemenu/SatelliteMenu;


# direct methods
.method constructor <init>(Lcom/fiio/music/satellitemenu/SatelliteMenu;Lcom/fiio/music/satellitemenu/SatelliteMenu;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/satellitemenu/e;->a:Lcom/fiio/music/satellitemenu/SatelliteMenu;

    iput-object p2, p0, Lcom/fiio/music/satellitemenu/e;->b:Lcom/fiio/music/satellitemenu/SatelliteMenu;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/fiio/music/satellitemenu/e;->a:Lcom/fiio/music/satellitemenu/SatelliteMenu;

    iget-object v1, p0, Lcom/fiio/music/satellitemenu/e;->b:Lcom/fiio/music/satellitemenu/SatelliteMenu;

    invoke-static {v0, v1}, Lcom/fiio/music/satellitemenu/SatelliteMenu;->a(Lcom/fiio/music/satellitemenu/SatelliteMenu;Lcom/fiio/music/satellitemenu/SatelliteMenu;)V

    .line 160
    return-void
.end method
